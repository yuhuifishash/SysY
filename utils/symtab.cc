#include "../include/symtab.h"

Symbol StringTable::add_string(std::string s) {
    auto it = string_table.find(s);
    if (it == string_table.end()) {
        int new_str_number = string_table.size() + 1;
        string_no[s] = new_str_number;
        Symbol new_symbol = new Entry(s);
        string_table[s] = new_symbol;
        return new_symbol;
    } else {
        return string_table[s];
    }
}

Symbol IdTable::add_id(std::string s) {
    auto it = id_table.find(s);
    if (it == id_table.end()) {
        Symbol new_symbol = new Entry(s);
        id_table[s] = new_symbol;
        return new_symbol;
    } else {
        return id_table[s];
    }
}

void SymbolTable::add_Symbol(Symbol C, VarAttribute val) { symbol_table[current_scope][C] = val; }

Type::ty SymbolTable::lookup_type(Symbol C) {
    for (int i = current_scope; i >= 0; --i) {
        auto it = symbol_table[i].find(C);
        if (it != symbol_table[i].end()) {
            return it->second.type;
        }
    }
    return Type::VOID;
}

int SymbolTable::lookup_scope(Symbol C) {
    for (int i = current_scope; i >= 0; --i) {
        auto it = symbol_table[i].find(C);
        if (it != symbol_table[i].end()) {
            return i;
        }
    }
    return -1;
}

VarAttribute SymbolTable::lookup_val(Symbol C) {
    for (int i = current_scope; i >= 0; --i) {
        auto it = symbol_table[i].find(C);
        if (it != symbol_table[i].end()) {
            return it->second;
        }
    }
    return VarAttribute();
}

void SymbolTable::enter_scope() {
    ++current_scope;
    symbol_table.push_back(std::map<Symbol, VarAttribute>());
}

void SymbolTable::exit_scope() {
    --current_scope;
    symbol_table.pop_back();
}

int SymbolRegTable::lookup(Symbol C) {
    for (int i = current_scope; i >= 0; --i) {
        auto it = symbol_table[i].find(C);
        if (it != symbol_table[i].end()) {
            return it->second;
        }
    }
    return -1;
}

void SymbolRegTable::add_Symbol(Symbol C, int val) { symbol_table[current_scope][C] = val; }

void SymbolRegTable::enter_scope() {
    ++current_scope;
    symbol_table.push_back(std::map<Symbol, int>());
}

void SymbolRegTable::exit_scope() {
    --current_scope;
    symbol_table.pop_back();
}
