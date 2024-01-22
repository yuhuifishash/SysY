.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a0:
	.space  12
b0:
	.space  4
	.word  1
	.space  8
c0:
	.word  2
	.word  8
	.word  6
	.word  3
	.word  9
	.word  1
	.word  5
d0:
	.space  44
e0:
	.word  22
	.word  33
f0:
	.space  24
g0:
	.word  85
	.space  4
	.word  1
	.word  29
	.space  20
a:
	.space  60
b:
	.space  60
c:
	.word  1
	.word  2
	.word  3
	.word  4
	.word  5
	.word  6
	.word  7
	.word  8
	.word  9
	.word  10
	.word  11
	.word  12
	.word  13
	.word  14
	.word  15
d:
	.word  1
	.word  2
	.word  3
	.word  4
	.word  5
	.word  6
	.word  7
	.word  8
	.word  9
	.word  10
	.word  11
	.word  12
	.word  13
	.word  14
	.word  15
e:
	.word  1
	.word  2
	.word  3
	.word  4
	.word  5
	.word  6
	.word  7
	.word  8
	.word  9
	.word  10
	.word  11
	.word  12
	.word  13
	.word  14
	.word  15
f:
	.space  20
g:
	.word  1
	.word  2
	.word  3
	.word  4
	.space  8
	.word  7
	.space  8
	.word  10
	.word  11
	.word  12
	.space  12
h:
	.space  12
i:
	.word  1
	.word  2
	.word  3
	.word  4
	.word  5
	.space  76
.text
.global main
.LPIC0:
	.word  a
.LPIC1:
	.word  a0
.LPIC2:
	.word  b
.LPIC3:
	.word  b0
.LPIC4:
	.word  c
.LPIC5:
	.word  c0
.LPIC6:
	.word  d
.LPIC7:
	.word  d0
.LPIC8:
	.word  e
.LPIC9:
	.word  e0
.LPIC10:
	.word  f
.LPIC11:
	.word  f0
.LPIC12:
	.word  g
.LPIC13:
	.word  g0
.LPIC14:
	.word  h
.LPIC15:
	.word  i
main:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r0,#5
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
