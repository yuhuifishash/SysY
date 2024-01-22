.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
func:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	movw r9,#2676
	movt r9,#0  @ 2676
	sub sp,sp,r9
.funcL0:
	mov r9,r3
	str r9,[fp,#-24]
	mov r9,r1
	str r9,[fp,#-20]
	mov r9,r2
	str r9,[fp,#-16]
	mov r9,r0
	str r9,[fp,#-12]
	ldr r8,[fp,#2716]
	ldr r7,[fp,#2712]
	ldr r9,[fp,#2708]
	str r9,[fp,#-2544]
	ldr r6,[fp,#2704]
	ldr r9,[fp,#2700]
	str r9,[fp,#-1856]
	ldr r9,[fp,#2696]
	str r9,[fp,#-1780]
	ldr r9,[fp,#2692]
	str r9,[fp,#-2480]
	ldr r9,[fp,#2688]
	str r9,[fp,#-1892]
	ldr r5,[fp,#2684]
	ldr r4,[fp,#2680]
	ldr r0,[fp,#2676]
	ldr r2,[fp,#2672]
	ldr r1,[fp,#2668]
	ldr r3,[fp,#2664]
	ldr r9,[fp,#2660]
	str r9,[fp,#-2084]
	ldr r9,[fp,#2656]
	str r9,[fp,#-28]
	ldr r9,[fp,#2652]
	str r9,[fp,#-2188]
	ldr r9,[fp,#2648]
	str r9,[fp,#-1572]
	ldr r9,[fp,#2644]
	str r9,[fp,#-32]
	ldr r9,[fp,#2640]
	str r9,[fp,#-1532]
	ldr r9,[fp,#2636]
	str r9,[fp,#-2024]
	ldr r9,[fp,#2632]
	str r9,[fp,#-2472]
	ldr r9,[fp,#2628]
	str r9,[fp,#-36]
	ldr r9,[fp,#2624]
	str r9,[fp,#-40]
	ldr r9,[fp,#2620]
	str r9,[fp,#-1904]
	ldr r9,[fp,#2616]
	str r9,[fp,#-1732]
	ldr r9,[fp,#2612]
	str r9,[fp,#-1816]
	ldr r9,[fp,#2608]
	str r9,[fp,#-44]
	ldr r9,[fp,#2604]
	str r9,[fp,#-2216]
	ldr r9,[fp,#2600]
	str r9,[fp,#-48]
	ldr r9,[fp,#2596]
	str r9,[fp,#-1988]
	ldr r9,[fp,#2592]
	str r9,[fp,#-2612]
	ldr r9,[fp,#2588]
	str r9,[fp,#-2112]
	ldr r9,[fp,#2584]
	str r9,[fp,#-52]
	ldr r9,[fp,#2580]
	str r9,[fp,#-56]
	ldr r9,[fp,#2576]
	str r9,[fp,#-60]
	ldr r9,[fp,#2572]
	str r9,[fp,#-64]
	ldr r9,[fp,#2568]
	str r9,[fp,#-2196]
	ldr r9,[fp,#2564]
	str r9,[fp,#-2412]
	ldr r9,[fp,#2560]
	str r9,[fp,#-1756]
	ldr r9,[fp,#2556]
	str r9,[fp,#-68]
	ldr r9,[fp,#2552]
	str r9,[fp,#-2384]
	ldr r9,[fp,#2548]
	str r9,[fp,#-1616]
	ldr r9,[fp,#2544]
	str r9,[fp,#-72]
	ldr r9,[fp,#2540]
	str r9,[fp,#-76]
	ldr r9,[fp,#2536]
	str r9,[fp,#-2440]
	ldr r9,[fp,#2532]
	str r9,[fp,#-80]
	ldr r9,[fp,#2528]
	str r9,[fp,#-84]
	ldr r9,[fp,#2524]
	str r9,[fp,#-88]
	ldr r9,[fp,#2520]
	str r9,[fp,#-92]
	ldr r9,[fp,#2516]
	str r9,[fp,#-1776]
	ldr r9,[fp,#2512]
	str r9,[fp,#-96]
	ldr r9,[fp,#2508]
	str r9,[fp,#-2116]
	ldr r9,[fp,#2504]
	str r9,[fp,#-1432]
	ldr r9,[fp,#2500]
	str r9,[fp,#-100]
	ldr r9,[fp,#2496]
	str r9,[fp,#-104]
	ldr r9,[fp,#2492]
	str r9,[fp,#-108]
	ldr r9,[fp,#2488]
	str r9,[fp,#-112]
	ldr r9,[fp,#2484]
	str r9,[fp,#-2080]
	ldr r9,[fp,#2480]
	str r9,[fp,#-116]
	ldr r9,[fp,#2476]
	str r9,[fp,#-120]
	ldr r9,[fp,#2472]
	str r9,[fp,#-124]
	ldr r9,[fp,#2468]
	str r9,[fp,#-2492]
	ldr r9,[fp,#2464]
	str r9,[fp,#-128]
	ldr r9,[fp,#2460]
	str r9,[fp,#-132]
	ldr r9,[fp,#2456]
	str r9,[fp,#-136]
	ldr r9,[fp,#2452]
	str r9,[fp,#-140]
	ldr r9,[fp,#2448]
	str r9,[fp,#-2160]
	ldr r9,[fp,#2444]
	str r9,[fp,#-2416]
	ldr r9,[fp,#2440]
	str r9,[fp,#-144]
	ldr r9,[fp,#2436]
	str r9,[fp,#-148]
	ldr r9,[fp,#2432]
	str r9,[fp,#-2000]
	ldr r9,[fp,#2428]
	str r9,[fp,#-2420]
	ldr r9,[fp,#2424]
	str r9,[fp,#-1568]
	ldr r9,[fp,#2420]
	str r9,[fp,#-152]
	ldr r9,[fp,#2416]
	str r9,[fp,#-156]
	ldr r9,[fp,#2412]
	str r9,[fp,#-160]
	ldr r9,[fp,#2408]
	str r9,[fp,#-2248]
	ldr r9,[fp,#2404]
	str r9,[fp,#-164]
	ldr r9,[fp,#2400]
	str r9,[fp,#-168]
	ldr r9,[fp,#2396]
	str r9,[fp,#-1832]
	ldr r9,[fp,#2392]
	str r9,[fp,#-2376]
	ldr r9,[fp,#2388]
	str r9,[fp,#-172]
	ldr r9,[fp,#2384]
	str r9,[fp,#-176]
	ldr r9,[fp,#2380]
	str r9,[fp,#-1712]
	ldr r9,[fp,#2376]
	str r9,[fp,#-1688]
	ldr r9,[fp,#2372]
	str r9,[fp,#-1860]
	ldr r9,[fp,#2368]
	str r9,[fp,#-180]
	ldr r9,[fp,#2364]
	str r9,[fp,#-2576]
	ldr r9,[fp,#2360]
	str r9,[fp,#-2424]
	ldr r9,[fp,#2356]
	str r9,[fp,#-184]
	ldr r9,[fp,#2352]
	str r9,[fp,#-2356]
	ldr r9,[fp,#2348]
	str r9,[fp,#-1460]
	ldr r9,[fp,#2344]
	str r9,[fp,#-188]
	ldr r9,[fp,#2340]
	str r9,[fp,#-1944]
	ldr r9,[fp,#2336]
	str r9,[fp,#-192]
	ldr r9,[fp,#2332]
	str r9,[fp,#-2620]
	ldr r9,[fp,#2328]
	str r9,[fp,#-1464]
	ldr r9,[fp,#2324]
	str r9,[fp,#-196]
	ldr r9,[fp,#2320]
	str r9,[fp,#-2560]
	ldr r9,[fp,#2316]
	str r9,[fp,#-200]
	ldr r9,[fp,#2312]
	str r9,[fp,#-204]
	ldr r9,[fp,#2308]
	str r9,[fp,#-208]
	ldr r9,[fp,#2304]
	str r9,[fp,#-212]
	ldr r9,[fp,#2300]
	str r9,[fp,#-2140]
	ldr r9,[fp,#2296]
	str r9,[fp,#-216]
	ldr r9,[fp,#2292]
	str r9,[fp,#-220]
	ldr r9,[fp,#2288]
	str r9,[fp,#-2020]
	ldr r9,[fp,#2284]
	str r9,[fp,#-1864]
	ldr r9,[fp,#2280]
	str r9,[fp,#-2408]
	ldr r9,[fp,#2276]
	str r9,[fp,#-224]
	ldr r9,[fp,#2272]
	str r9,[fp,#-2256]
	ldr r9,[fp,#2268]
	str r9,[fp,#-2264]
	ldr r9,[fp,#2264]
	str r9,[fp,#-228]
	ldr r9,[fp,#2260]
	str r9,[fp,#-232]
	ldr r9,[fp,#2256]
	str r9,[fp,#-236]
	ldr r9,[fp,#2252]
	str r9,[fp,#-240]
	ldr r9,[fp,#2248]
	str r9,[fp,#-244]
	ldr r9,[fp,#2244]
	str r9,[fp,#-248]
	ldr r9,[fp,#2240]
	str r9,[fp,#-2304]
	ldr r9,[fp,#2236]
	str r9,[fp,#-1800]
	ldr r9,[fp,#2232]
	str r9,[fp,#-252]
	ldr r9,[fp,#2228]
	str r9,[fp,#-2064]
	ldr r9,[fp,#2224]
	str r9,[fp,#-256]
	ldr r9,[fp,#2220]
	str r9,[fp,#-2436]
	ldr r9,[fp,#2216]
	str r9,[fp,#-2324]
	ldr r9,[fp,#2212]
	str r9,[fp,#-1996]
	ldr r9,[fp,#2208]
	str r9,[fp,#-260]
	ldr r9,[fp,#2204]
	str r9,[fp,#-1560]
	ldr r9,[fp,#2200]
	str r9,[fp,#-2348]
	ldr r9,[fp,#2196]
	str r9,[fp,#-2512]
	ldr r9,[fp,#2192]
	str r9,[fp,#-264]
	ldr r9,[fp,#2188]
	str r9,[fp,#-268]
	ldr r9,[fp,#2184]
	str r9,[fp,#-272]
	ldr r9,[fp,#2180]
	str r9,[fp,#-1884]
	ldr r9,[fp,#2176]
	str r9,[fp,#-2400]
	ldr r9,[fp,#2172]
	str r9,[fp,#-1912]
	ldr r9,[fp,#2168]
	str r9,[fp,#-276]
	ldr r9,[fp,#2164]
	str r9,[fp,#-280]
	ldr r9,[fp,#2160]
	str r9,[fp,#-284]
	ldr r9,[fp,#2156]
	str r9,[fp,#-1612]
	ldr r9,[fp,#2152]
	str r9,[fp,#-2088]
	ldr r9,[fp,#2148]
	str r9,[fp,#-288]
	ldr r9,[fp,#2144]
	str r9,[fp,#-292]
	ldr r9,[fp,#2140]
	str r9,[fp,#-1840]
	ldr r9,[fp,#2136]
	str r9,[fp,#-296]
	ldr r9,[fp,#2132]
	str r9,[fp,#-2444]
	ldr r9,[fp,#2128]
	str r9,[fp,#-2456]
	ldr r9,[fp,#2124]
	str r9,[fp,#-300]
	ldr r9,[fp,#2120]
	str r9,[fp,#-1820]
	ldr r9,[fp,#2116]
	str r9,[fp,#-304]
	ldr r9,[fp,#2112]
	str r9,[fp,#-2200]
	ldr r9,[fp,#2108]
	str r9,[fp,#-308]
	ldr r9,[fp,#2104]
	str r9,[fp,#-1984]
	ldr r9,[fp,#2100]
	str r9,[fp,#-312]
	ldr r9,[fp,#2096]
	str r9,[fp,#-2268]
	ldr r9,[fp,#2092]
	str r9,[fp,#-316]
	ldr r9,[fp,#2088]
	str r9,[fp,#-1696]
	ldr r9,[fp,#2084]
	str r9,[fp,#-320]
	ldr r9,[fp,#2080]
	str r9,[fp,#-324]
	ldr r9,[fp,#2076]
	str r9,[fp,#-1824]
	ldr r9,[fp,#2072]
	str r9,[fp,#-328]
	ldr r9,[fp,#2068]
	str r9,[fp,#-2628]
	ldr r9,[fp,#2064]
	str r9,[fp,#-2660]
	ldr r9,[fp,#2060]
	str r9,[fp,#-332]
	ldr r9,[fp,#2056]
	str r9,[fp,#-2648]
	ldr r9,[fp,#2052]
	str r9,[fp,#-336]
	ldr r9,[fp,#2048]
	str r9,[fp,#-340]
	ldr r9,[fp,#2044]
	str r9,[fp,#-344]
	ldr r9,[fp,#2040]
	str r9,[fp,#-2528]
	ldr r9,[fp,#2036]
	str r9,[fp,#-2352]
	ldr r9,[fp,#2032]
	str r9,[fp,#-348]
	ldr r9,[fp,#2028]
	str r9,[fp,#-352]
	ldr r9,[fp,#2024]
	str r9,[fp,#-356]
	ldr r9,[fp,#2020]
	str r9,[fp,#-1784]
	ldr r9,[fp,#2016]
	str r9,[fp,#-360]
	ldr r9,[fp,#2012]
	str r9,[fp,#-364]
	ldr r9,[fp,#2008]
	str r9,[fp,#-2636]
	ldr r9,[fp,#2004]
	str r9,[fp,#-1992]
	ldr r9,[fp,#2000]
	str r9,[fp,#-1672]
	ldr r9,[fp,#1996]
	str r9,[fp,#-368]
	ldr r9,[fp,#1992]
	str r9,[fp,#-2060]
	ldr r9,[fp,#1988]
	str r9,[fp,#-372]
	ldr r9,[fp,#1984]
	str r9,[fp,#-376]
	ldr r9,[fp,#1980]
	str r9,[fp,#-380]
	ldr r9,[fp,#1976]
	str r9,[fp,#-384]
	ldr r9,[fp,#1972]
	str r9,[fp,#-1744]
	ldr r9,[fp,#1968]
	str r9,[fp,#-388]
	ldr r9,[fp,#1964]
	str r9,[fp,#-2028]
	ldr r9,[fp,#1960]
	str r9,[fp,#-1812]
	ldr r9,[fp,#1956]
	str r9,[fp,#-392]
	ldr r9,[fp,#1952]
	str r9,[fp,#-1552]
	ldr r9,[fp,#1948]
	str r9,[fp,#-396]
	ldr r9,[fp,#1944]
	str r9,[fp,#-2220]
	ldr r9,[fp,#1940]
	str r9,[fp,#-400]
	ldr r9,[fp,#1936]
	str r9,[fp,#-404]
	ldr r9,[fp,#1932]
	str r9,[fp,#-2280]
	ldr r9,[fp,#1928]
	str r9,[fp,#-408]
	ldr r9,[fp,#1924]
	str r9,[fp,#-2104]
	ldr r9,[fp,#1920]
	str r9,[fp,#-412]
	ldr r9,[fp,#1916]
	str r9,[fp,#-2388]
	ldr r9,[fp,#1912]
	str r9,[fp,#-2524]
	ldr r9,[fp,#1908]
	str r9,[fp,#-416]
	ldr r9,[fp,#1904]
	str r9,[fp,#-420]
	ldr r9,[fp,#1900]
	str r9,[fp,#-1436]
	ldr r9,[fp,#1896]
	str r9,[fp,#-1576]
	ldr r9,[fp,#1892]
	str r9,[fp,#-2448]
	ldr r9,[fp,#1888]
	str r9,[fp,#-2432]
	ldr r9,[fp,#1884]
	str r9,[fp,#-2096]
	ldr r9,[fp,#1880]
	str r9,[fp,#-424]
	ldr r9,[fp,#1876]
	str r9,[fp,#-2640]
	ldr r9,[fp,#1872]
	str r9,[fp,#-428]
	ldr r9,[fp,#1868]
	str r9,[fp,#-2092]
	ldr r9,[fp,#1864]
	str r9,[fp,#-1960]
	ldr r9,[fp,#1860]
	str r9,[fp,#-432]
	ldr r9,[fp,#1856]
	str r9,[fp,#-436]
	ldr r9,[fp,#1852]
	str r9,[fp,#-2344]
	ldr r9,[fp,#1848]
	str r9,[fp,#-2360]
	ldr r9,[fp,#1844]
	str r9,[fp,#-440]
	ldr r9,[fp,#1840]
	str r9,[fp,#-444]
	ldr r9,[fp,#1836]
	str r9,[fp,#-2380]
	ldr r9,[fp,#1832]
	str r9,[fp,#-448]
	ldr r9,[fp,#1828]
	str r9,[fp,#-452]
	ldr r9,[fp,#1824]
	str r9,[fp,#-456]
	ldr r9,[fp,#1820]
	str r9,[fp,#-2004]
	ldr r9,[fp,#1816]
	str r9,[fp,#-1692]
	ldr r9,[fp,#1812]
	str r9,[fp,#-460]
	ldr r9,[fp,#1808]
	str r9,[fp,#-464]
	ldr r9,[fp,#1804]
	str r9,[fp,#-468]
	ldr r9,[fp,#1800]
	str r9,[fp,#-2564]
	ldr r9,[fp,#1796]
	str r9,[fp,#-2292]
	ldr r9,[fp,#1792]
	str r9,[fp,#-472]
	ldr r9,[fp,#1788]
	str r9,[fp,#-476]
	ldr r9,[fp,#1784]
	str r9,[fp,#-1656]
	ldr r9,[fp,#1780]
	str r9,[fp,#-480]
	ldr r9,[fp,#1776]
	str r9,[fp,#-2224]
	ldr r9,[fp,#1772]
	str r9,[fp,#-484]
	ldr r9,[fp,#1768]
	str r9,[fp,#-488]
	ldr r9,[fp,#1764]
	str r9,[fp,#-492]
	ldr r9,[fp,#1760]
	str r9,[fp,#-2012]
	ldr r9,[fp,#1756]
	str r9,[fp,#-496]
	ldr r9,[fp,#1752]
	str r9,[fp,#-2252]
	ldr r9,[fp,#1748]
	str r9,[fp,#-1444]
	ldr r9,[fp,#1744]
	str r9,[fp,#-2040]
	ldr r9,[fp,#1740]
	str r9,[fp,#-1628]
	ldr r9,[fp,#1736]
	str r9,[fp,#-500]
	ldr r9,[fp,#1732]
	str r9,[fp,#-504]
	ldr r9,[fp,#1728]
	str r9,[fp,#-508]
	ldr r9,[fp,#1724]
	str r9,[fp,#-512]
	ldr r9,[fp,#1720]
	str r9,[fp,#-1452]
	ldr r9,[fp,#1716]
	str r9,[fp,#-2120]
	ldr r9,[fp,#1712]
	str r9,[fp,#-516]
	ldr r9,[fp,#1708]
	str r9,[fp,#-1508]
	ldr r9,[fp,#1704]
	str r9,[fp,#-520]
	ldr r9,[fp,#1700]
	str r9,[fp,#-524]
	ldr r9,[fp,#1696]
	str r9,[fp,#-528]
	ldr r9,[fp,#1692]
	str r9,[fp,#-532]
	ldr r9,[fp,#1688]
	str r9,[fp,#-536]
	ldr r9,[fp,#1684]
	str r9,[fp,#-1636]
	ldr r9,[fp,#1680]
	str r9,[fp,#-2468]
	ldr r9,[fp,#1676]
	str r9,[fp,#-1528]
	ldr r9,[fp,#1672]
	str r9,[fp,#-540]
	ldr r9,[fp,#1668]
	str r9,[fp,#-544]
	ldr r9,[fp,#1664]
	str r9,[fp,#-548]
	ldr r9,[fp,#1660]
	str r9,[fp,#-1720]
	ldr r9,[fp,#1656]
	str r9,[fp,#-552]
	ldr r9,[fp,#1652]
	str r9,[fp,#-556]
	ldr r9,[fp,#1648]
	str r9,[fp,#-560]
	ldr r9,[fp,#1644]
	str r9,[fp,#-2072]
	ldr r9,[fp,#1640]
	str r9,[fp,#-564]
	ldr r9,[fp,#1636]
	str r9,[fp,#-1940]
	ldr r9,[fp,#1632]
	str r9,[fp,#-568]
	ldr r9,[fp,#1628]
	str r9,[fp,#-2556]
	ldr r9,[fp,#1624]
	str r9,[fp,#-2588]
	ldr r9,[fp,#1620]
	str r9,[fp,#-2328]
	ldr r9,[fp,#1616]
	str r9,[fp,#-572]
	ldr r9,[fp,#1612]
	str r9,[fp,#-576]
	ldr r9,[fp,#1608]
	str r9,[fp,#-580]
	ldr r9,[fp,#1604]
	str r9,[fp,#-584]
	ldr r9,[fp,#1600]
	str r9,[fp,#-2372]
	ldr r9,[fp,#1596]
	str r9,[fp,#-588]
	ldr r9,[fp,#1592]
	str r9,[fp,#-2516]
	ldr r9,[fp,#1588]
	str r9,[fp,#-592]
	ldr r9,[fp,#1584]
	str r9,[fp,#-2584]
	ldr r9,[fp,#1580]
	str r9,[fp,#-2504]
	ldr r9,[fp,#1576]
	str r9,[fp,#-1900]
	ldr r9,[fp,#1572]
	str r9,[fp,#-2276]
	ldr r9,[fp,#1568]
	str r9,[fp,#-596]
	ldr r9,[fp,#1564]
	str r9,[fp,#-2508]
	ldr r9,[fp,#1560]
	str r9,[fp,#-600]
	ldr r9,[fp,#1556]
	str r9,[fp,#-2672]
	ldr r9,[fp,#1552]
	str r9,[fp,#-604]
	ldr r9,[fp,#1548]
	str r9,[fp,#-608]
	ldr r9,[fp,#1544]
	str r9,[fp,#-612]
	ldr r9,[fp,#1540]
	str r9,[fp,#-616]
	ldr r9,[fp,#1536]
	str r9,[fp,#-620]
	ldr r9,[fp,#1532]
	str r9,[fp,#-1660]
	ldr r9,[fp,#1528]
	str r9,[fp,#-1680]
	ldr r9,[fp,#1524]
	str r9,[fp,#-2036]
	ldr r9,[fp,#1520]
	str r9,[fp,#-624]
	ldr r9,[fp,#1516]
	str r9,[fp,#-628]
	ldr r9,[fp,#1512]
	str r9,[fp,#-632]
	ldr r9,[fp,#1508]
	str r9,[fp,#-636]
	ldr r9,[fp,#1504]
	str r9,[fp,#-2332]
	ldr r9,[fp,#1500]
	str r9,[fp,#-2144]
	ldr r9,[fp,#1496]
	str r9,[fp,#-640]
	ldr r9,[fp,#1492]
	str r9,[fp,#-644]
	ldr r9,[fp,#1488]
	str r9,[fp,#-648]
	ldr r9,[fp,#1484]
	str r9,[fp,#-652]
	ldr r9,[fp,#1480]
	str r9,[fp,#-2392]
	ldr r9,[fp,#1476]
	str r9,[fp,#-2364]
	ldr r9,[fp,#1472]
	str r9,[fp,#-1472]
	ldr r9,[fp,#1468]
	str r9,[fp,#-656]
	ldr r9,[fp,#1464]
	str r9,[fp,#-660]
	ldr r9,[fp,#1460]
	str r9,[fp,#-664]
	ldr r9,[fp,#1456]
	str r9,[fp,#-668]
	ldr r9,[fp,#1452]
	str r9,[fp,#-672]
	ldr r9,[fp,#1448]
	str r9,[fp,#-676]
	ldr r9,[fp,#1444]
	str r9,[fp,#-1604]
	ldr r9,[fp,#1440]
	str r9,[fp,#-680]
	ldr r9,[fp,#1436]
	str r9,[fp,#-2428]
	ldr r9,[fp,#1432]
	str r9,[fp,#-684]
	ldr r9,[fp,#1428]
	str r9,[fp,#-688]
	ldr r9,[fp,#1424]
	str r9,[fp,#-692]
	ldr r9,[fp,#1420]
	str r9,[fp,#-696]
	ldr r9,[fp,#1416]
	str r9,[fp,#-2184]
	ldr r9,[fp,#1412]
	str r9,[fp,#-1640]
	ldr r9,[fp,#1408]
	str r9,[fp,#-700]
	ldr r9,[fp,#1404]
	str r9,[fp,#-704]
	ldr r9,[fp,#1400]
	str r9,[fp,#-708]
	ldr r9,[fp,#1396]
	str r9,[fp,#-712]
	ldr r9,[fp,#1392]
	str r9,[fp,#-716]
	ldr r9,[fp,#1388]
	str r9,[fp,#-720]
	ldr r9,[fp,#1384]
	str r9,[fp,#-2132]
	ldr r9,[fp,#1380]
	str r9,[fp,#-1948]
	ldr r9,[fp,#1376]
	str r9,[fp,#-2464]
	ldr r9,[fp,#1372]
	str r9,[fp,#-724]
	ldr r9,[fp,#1368]
	str r9,[fp,#-728]
	ldr r9,[fp,#1364]
	str r9,[fp,#-2168]
	ldr r9,[fp,#1360]
	str r9,[fp,#-2616]
	ldr r9,[fp,#1356]
	str r9,[fp,#-732]
	ldr r9,[fp,#1352]
	str r9,[fp,#-736]
	ldr r9,[fp,#1348]
	str r9,[fp,#-2048]
	ldr r9,[fp,#1344]
	str r9,[fp,#-1700]
	ldr r9,[fp,#1340]
	str r9,[fp,#-740]
	ldr r9,[fp,#1336]
	str r9,[fp,#-744]
	ldr r9,[fp,#1332]
	str r9,[fp,#-1500]
	ldr r9,[fp,#1328]
	str r9,[fp,#-2260]
	ldr r9,[fp,#1324]
	str r9,[fp,#-748]
	ldr r9,[fp,#1320]
	str r9,[fp,#-752]
	ldr r9,[fp,#1316]
	str r9,[fp,#-756]
	ldr r9,[fp,#1312]
	str r9,[fp,#-760]
	ldr r9,[fp,#1308]
	str r9,[fp,#-764]
	ldr r9,[fp,#1304]
	str r9,[fp,#-768]
	ldr r9,[fp,#1300]
	str r9,[fp,#-772]
	ldr r9,[fp,#1296]
	str r9,[fp,#-776]
	ldr r9,[fp,#1292]
	str r9,[fp,#-780]
	ldr r9,[fp,#1288]
	str r9,[fp,#-1684]
	ldr r9,[fp,#1284]
	str r9,[fp,#-2108]
	ldr r9,[fp,#1280]
	str r9,[fp,#-784]
	ldr r9,[fp,#1276]
	str r9,[fp,#-788]
	ldr r9,[fp,#1272]
	str r9,[fp,#-792]
	ldr r9,[fp,#1268]
	str r9,[fp,#-796]
	ldr r9,[fp,#1264]
	str r9,[fp,#-800]
	ldr r9,[fp,#1260]
	str r9,[fp,#-804]
	ldr r9,[fp,#1256]
	str r9,[fp,#-808]
	ldr r9,[fp,#1252]
	str r9,[fp,#-2668]
	ldr r9,[fp,#1248]
	str r9,[fp,#-2076]
	ldr r9,[fp,#1244]
	str r9,[fp,#-812]
	ldr r9,[fp,#1240]
	str r9,[fp,#-816]
	ldr r9,[fp,#1236]
	str r9,[fp,#-820]
	ldr r9,[fp,#1232]
	str r9,[fp,#-1872]
	ldr r9,[fp,#1228]
	str r9,[fp,#-824]
	ldr r9,[fp,#1224]
	str r9,[fp,#-828]
	ldr r9,[fp,#1220]
	str r9,[fp,#-832]
	ldr r9,[fp,#1216]
	str r9,[fp,#-836]
	ldr r9,[fp,#1212]
	str r9,[fp,#-840]
	ldr r9,[fp,#1208]
	str r9,[fp,#-1936]
	ldr r9,[fp,#1204]
	str r9,[fp,#-844]
	ldr r9,[fp,#1200]
	str r9,[fp,#-848]
	ldr r9,[fp,#1196]
	str r9,[fp,#-1520]
	ldr r9,[fp,#1192]
	str r9,[fp,#-1888]
	ldr r9,[fp,#1188]
	str r9,[fp,#-1652]
	ldr r9,[fp,#1184]
	str r9,[fp,#-852]
	ldr r9,[fp,#1180]
	str r9,[fp,#-856]
	ldr r9,[fp,#1176]
	str r9,[fp,#-2244]
	ldr r9,[fp,#1172]
	str r9,[fp,#-860]
	ldr r9,[fp,#1168]
	str r9,[fp,#-1632]
	ldr r9,[fp,#1164]
	str r9,[fp,#-864]
	ldr r9,[fp,#1160]
	str r9,[fp,#-868]
	ldr r9,[fp,#1156]
	str r9,[fp,#-2192]
	ldr r9,[fp,#1152]
	str r9,[fp,#-872]
	ldr r9,[fp,#1148]
	str r9,[fp,#-1736]
	ldr r9,[fp,#1144]
	str r9,[fp,#-2488]
	ldr r9,[fp,#1140]
	str r9,[fp,#-876]
	ldr r9,[fp,#1136]
	str r9,[fp,#-1476]
	ldr r9,[fp,#1132]
	str r9,[fp,#-2204]
	ldr r9,[fp,#1128]
	str r9,[fp,#-2320]
	ldr r9,[fp,#1124]
	str r9,[fp,#-880]
	ldr r9,[fp,#1120]
	str r9,[fp,#-884]
	ldr r9,[fp,#1116]
	str r9,[fp,#-888]
	ldr r9,[fp,#1112]
	str r9,[fp,#-1584]
	ldr r9,[fp,#1108]
	str r9,[fp,#-2476]
	ldr r9,[fp,#1104]
	str r9,[fp,#-2580]
	ldr r9,[fp,#1100]
	str r9,[fp,#-2032]
	ldr r9,[fp,#1096]
	str r9,[fp,#-1448]
	ldr r9,[fp,#1092]
	str r9,[fp,#-892]
	ldr r9,[fp,#1088]
	str r9,[fp,#-2128]
	ldr r9,[fp,#1084]
	str r9,[fp,#-896]
	ldr r9,[fp,#1080]
	str r9,[fp,#-1976]
	ldr r9,[fp,#1076]
	str r9,[fp,#-900]
	ldr r9,[fp,#1072]
	str r9,[fp,#-1548]
	ldr r9,[fp,#1068]
	str r9,[fp,#-2336]
	ldr r9,[fp,#1064]
	str r9,[fp,#-904]
	ldr r9,[fp,#1060]
	str r9,[fp,#-1668]
	ldr r9,[fp,#1056]
	str r9,[fp,#-1952]
	ldr r9,[fp,#1052]
	str r9,[fp,#-908]
	ldr r9,[fp,#1048]
	str r9,[fp,#-1748]
	ldr r9,[fp,#1044]
	str r9,[fp,#-912]
	ldr r9,[fp,#1040]
	str r9,[fp,#-916]
	ldr r9,[fp,#1036]
	str r9,[fp,#-1496]
	ldr r9,[fp,#1032]
	str r9,[fp,#-2536]
	ldr r9,[fp,#1028]
	str r9,[fp,#-1456]
	ldr r9,[fp,#1024]
	str r9,[fp,#-1536]
	ldr r9,[fp,#1020]
	str r9,[fp,#-920]
	ldr r9,[fp,#1016]
	str r9,[fp,#-924]
	ldr r9,[fp,#1012]
	str r9,[fp,#-1908]
	ldr r9,[fp,#1008]
	str r9,[fp,#-928]
	ldr r9,[fp,#1004]
	str r9,[fp,#-1956]
	ldr r9,[fp,#1000]
	str r9,[fp,#-932]
	ldr r9,[fp,#996]
	str r9,[fp,#-2664]
	ldr r9,[fp,#992]
	str r9,[fp,#-936]
	ldr r9,[fp,#988]
	str r9,[fp,#-2240]
	ldr r9,[fp,#984]
	str r9,[fp,#-940]
	ldr r9,[fp,#980]
	str r9,[fp,#-944]
	ldr r9,[fp,#976]
	str r9,[fp,#-948]
	ldr r9,[fp,#972]
	str r9,[fp,#-952]
	ldr r9,[fp,#968]
	str r9,[fp,#-956]
	ldr r9,[fp,#964]
	str r9,[fp,#-960]
	ldr r9,[fp,#960]
	str r9,[fp,#-964]
	ldr r9,[fp,#956]
	str r9,[fp,#-1968]
	ldr r9,[fp,#952]
	str r9,[fp,#-968]
	ldr r9,[fp,#948]
	str r9,[fp,#-972]
	ldr r9,[fp,#944]
	str r9,[fp,#-1792]
	ldr r9,[fp,#940]
	str r9,[fp,#-976]
	ldr r9,[fp,#936]
	str r9,[fp,#-980]
	ldr r9,[fp,#932]
	str r9,[fp,#-984]
	ldr r9,[fp,#928]
	str r9,[fp,#-2340]
	ldr r9,[fp,#924]
	str r9,[fp,#-1724]
	ldr r9,[fp,#920]
	str r9,[fp,#-988]
	ldr r9,[fp,#916]
	str r9,[fp,#-992]
	ldr r9,[fp,#912]
	str r9,[fp,#-2232]
	ldr r9,[fp,#908]
	str r9,[fp,#-1876]
	ldr r9,[fp,#904]
	str r9,[fp,#-996]
	ldr r9,[fp,#900]
	str r9,[fp,#-2676]
	ldr r9,[fp,#896]
	str r9,[fp,#-2532]
	ldr r9,[fp,#892]
	str r9,[fp,#-1624]
	ldr r9,[fp,#888]
	str r9,[fp,#-2604]
	ldr r9,[fp,#884]
	str r9,[fp,#-2176]
	ldr r9,[fp,#880]
	str r9,[fp,#-1468]
	ldr r9,[fp,#876]
	str r9,[fp,#-2056]
	ldr r9,[fp,#872]
	str r9,[fp,#-2396]
	ldr r9,[fp,#868]
	str r9,[fp,#-1828]
	ldr r9,[fp,#864]
	str r9,[fp,#-1524]
	ldr r9,[fp,#860]
	str r9,[fp,#-1000]
	ldr r9,[fp,#856]
	str r9,[fp,#-2300]
	ldr r9,[fp,#852]
	str r9,[fp,#-2308]
	ldr r9,[fp,#848]
	str r9,[fp,#-1880]
	ldr r9,[fp,#844]
	str r9,[fp,#-1004]
	ldr r9,[fp,#840]
	str r9,[fp,#-2496]
	ldr r9,[fp,#836]
	str r9,[fp,#-2272]
	ldr r9,[fp,#832]
	str r9,[fp,#-1728]
	ldr r9,[fp,#828]
	str r9,[fp,#-1008]
	ldr r9,[fp,#824]
	str r9,[fp,#-1012]
	ldr r9,[fp,#820]
	str r9,[fp,#-1740]
	ldr r9,[fp,#816]
	str r9,[fp,#-2500]
	ldr r9,[fp,#812]
	str r9,[fp,#-1016]
	ldr r9,[fp,#808]
	str r9,[fp,#-2368]
	ldr r9,[fp,#804]
	str r9,[fp,#-1020]
	ldr r9,[fp,#800]
	str r9,[fp,#-1024]
	ldr r9,[fp,#796]
	str r9,[fp,#-1848]
	ldr r9,[fp,#792]
	str r9,[fp,#-1028]
	ldr r9,[fp,#788]
	str r9,[fp,#-1032]
	ldr r9,[fp,#784]
	str r9,[fp,#-1036]
	ldr r9,[fp,#780]
	str r9,[fp,#-1040]
	ldr r9,[fp,#776]
	str r9,[fp,#-1044]
	ldr r9,[fp,#772]
	str r9,[fp,#-2148]
	ldr r9,[fp,#768]
	str r9,[fp,#-2288]
	ldr r9,[fp,#764]
	str r9,[fp,#-1928]
	ldr r9,[fp,#760]
	str r9,[fp,#-1048]
	ldr r9,[fp,#756]
	str r9,[fp,#-1924]
	ldr r9,[fp,#752]
	str r9,[fp,#-2592]
	ldr r9,[fp,#748]
	str r9,[fp,#-2164]
	ldr r9,[fp,#744]
	str r9,[fp,#-1488]
	ldr r9,[fp,#740]
	str r9,[fp,#-1052]
	ldr r9,[fp,#736]
	str r9,[fp,#-1056]
	ldr r9,[fp,#732]
	str r9,[fp,#-1060]
	ldr r9,[fp,#728]
	str r9,[fp,#-1064]
	ldr r9,[fp,#724]
	str r9,[fp,#-1504]
	ldr r9,[fp,#720]
	str r9,[fp,#-1068]
	ldr r9,[fp,#716]
	str r9,[fp,#-1072]
	ldr r9,[fp,#712]
	str r9,[fp,#-1076]
	ldr r9,[fp,#708]
	str r9,[fp,#-1080]
	ldr r9,[fp,#704]
	str r9,[fp,#-1644]
	ldr r9,[fp,#700]
	str r9,[fp,#-1556]
	ldr r9,[fp,#696]
	str r9,[fp,#-2236]
	ldr r9,[fp,#692]
	str r9,[fp,#-1084]
	ldr r9,[fp,#688]
	str r9,[fp,#-1088]
	ldr r9,[fp,#684]
	str r9,[fp,#-1092]
	ldr r9,[fp,#680]
	str r9,[fp,#-1752]
	ldr r9,[fp,#676]
	str r9,[fp,#-1096]
	ldr r9,[fp,#672]
	str r9,[fp,#-1100]
	ldr r9,[fp,#668]
	str r9,[fp,#-2540]
	ldr r9,[fp,#664]
	str r9,[fp,#-1768]
	ldr r9,[fp,#660]
	str r9,[fp,#-2124]
	ldr r9,[fp,#656]
	str r9,[fp,#-1104]
	ldr r9,[fp,#652]
	str r9,[fp,#-2136]
	ldr r9,[fp,#648]
	str r9,[fp,#-1972]
	ldr r9,[fp,#644]
	str r9,[fp,#-1108]
	ldr r9,[fp,#640]
	str r9,[fp,#-1112]
	ldr r9,[fp,#636]
	str r9,[fp,#-2100]
	ldr r9,[fp,#632]
	str r9,[fp,#-1116]
	ldr r9,[fp,#628]
	str r9,[fp,#-1540]
	ldr r9,[fp,#624]
	str r9,[fp,#-1120]
	ldr r9,[fp,#620]
	str r9,[fp,#-1484]
	ldr r9,[fp,#616]
	str r9,[fp,#-1124]
	ldr r9,[fp,#612]
	str r9,[fp,#-1128]
	ldr r9,[fp,#608]
	str r9,[fp,#-1132]
	ldr r9,[fp,#604]
	str r9,[fp,#-1136]
	ldr r9,[fp,#600]
	str r9,[fp,#-1140]
	ldr r9,[fp,#596]
	str r9,[fp,#-1844]
	ldr r9,[fp,#592]
	str r9,[fp,#-2632]
	ldr r9,[fp,#588]
	str r9,[fp,#-1836]
	ldr r9,[fp,#584]
	str r9,[fp,#-1144]
	ldr r9,[fp,#580]
	str r9,[fp,#-1596]
	ldr r9,[fp,#576]
	str r9,[fp,#-1148]
	ldr r9,[fp,#572]
	str r9,[fp,#-2652]
	ldr r9,[fp,#568]
	str r9,[fp,#-1152]
	ldr r9,[fp,#564]
	str r9,[fp,#-1156]
	ldr r9,[fp,#560]
	str r9,[fp,#-2208]
	ldr r9,[fp,#556]
	str r9,[fp,#-2152]
	ldr r9,[fp,#552]
	str r9,[fp,#-1160]
	ldr r9,[fp,#548]
	str r9,[fp,#-1164]
	ldr r9,[fp,#544]
	str r9,[fp,#-2548]
	ldr r9,[fp,#540]
	str r9,[fp,#-1168]
	ldr r9,[fp,#536]
	str r9,[fp,#-1868]
	ldr r9,[fp,#532]
	str r9,[fp,#-1172]
	ldr r9,[fp,#528]
	str r9,[fp,#-1176]
	ldr r9,[fp,#524]
	str r9,[fp,#-1804]
	ldr r9,[fp,#520]
	str r9,[fp,#-1180]
	ldr r9,[fp,#516]
	str r9,[fp,#-1184]
	ldr r9,[fp,#512]
	str r9,[fp,#-2044]
	ldr r9,[fp,#508]
	str r9,[fp,#-1916]
	ldr r9,[fp,#504]
	str r9,[fp,#-1188]
	ldr r9,[fp,#500]
	str r9,[fp,#-1192]
	ldr r9,[fp,#496]
	str r9,[fp,#-1196]
	ldr r9,[fp,#492]
	str r9,[fp,#-1200]
	ldr r9,[fp,#488]
	str r9,[fp,#-1204]
	ldr r9,[fp,#484]
	str r9,[fp,#-1964]
	ldr r9,[fp,#480]
	str r9,[fp,#-1896]
	ldr r9,[fp,#476]
	str r9,[fp,#-1600]
	ldr r9,[fp,#472]
	str r9,[fp,#-1208]
	ldr r9,[fp,#468]
	str r9,[fp,#-1212]
	ldr r9,[fp,#464]
	str r9,[fp,#-2552]
	ldr r9,[fp,#460]
	str r9,[fp,#-1608]
	ldr r9,[fp,#456]
	str r9,[fp,#-1216]
	ldr r9,[fp,#452]
	str r9,[fp,#-1220]
	ldr r9,[fp,#448]
	str r9,[fp,#-1480]
	ldr r9,[fp,#444]
	str r9,[fp,#-1544]
	ldr r9,[fp,#440]
	str r9,[fp,#-2156]
	ldr r9,[fp,#436]
	str r9,[fp,#-1224]
	ldr r9,[fp,#432]
	str r9,[fp,#-1228]
	ldr r9,[fp,#428]
	str r9,[fp,#-1232]
	ldr r9,[fp,#424]
	str r9,[fp,#-1236]
	ldr r9,[fp,#420]
	str r9,[fp,#-1240]
	ldr r9,[fp,#416]
	str r9,[fp,#-1716]
	ldr r9,[fp,#412]
	str r9,[fp,#-1852]
	ldr r9,[fp,#408]
	str r9,[fp,#-1244]
	ldr r9,[fp,#404]
	str r9,[fp,#-2452]
	ldr r9,[fp,#400]
	str r9,[fp,#-1248]
	ldr r9,[fp,#396]
	str r9,[fp,#-1252]
	ldr r9,[fp,#392]
	str r9,[fp,#-1256]
	ldr r9,[fp,#388]
	str r9,[fp,#-1708]
	ldr r9,[fp,#384]
	str r9,[fp,#-1796]
	ldr r9,[fp,#380]
	str r9,[fp,#-2180]
	ldr r9,[fp,#376]
	str r9,[fp,#-2316]
	ldr r9,[fp,#372]
	str r9,[fp,#-1620]
	ldr r9,[fp,#368]
	str r9,[fp,#-1772]
	ldr r9,[fp,#364]
	str r9,[fp,#-1260]
	ldr r9,[fp,#360]
	str r9,[fp,#-1808]
	ldr r9,[fp,#356]
	str r9,[fp,#-1264]
	ldr r9,[fp,#352]
	str r9,[fp,#-1268]
	ldr r9,[fp,#348]
	str r9,[fp,#-2656]
	ldr r9,[fp,#344]
	str r9,[fp,#-1764]
	ldr r9,[fp,#340]
	str r9,[fp,#-1272]
	ldr r9,[fp,#336]
	str r9,[fp,#-1276]
	ldr r9,[fp,#332]
	str r9,[fp,#-1280]
	ldr r9,[fp,#328]
	str r9,[fp,#-2484]
	ldr r9,[fp,#324]
	str r9,[fp,#-1284]
	ldr r9,[fp,#320]
	str r9,[fp,#-1704]
	ldr r9,[fp,#316]
	str r9,[fp,#-1288]
	ldr r9,[fp,#312]
	str r9,[fp,#-1292]
	ldr r9,[fp,#308]
	str r9,[fp,#-1296]
	ldr r9,[fp,#304]
	str r9,[fp,#-1300]
	ldr r9,[fp,#300]
	str r9,[fp,#-1920]
	ldr r9,[fp,#296]
	str r9,[fp,#-1564]
	ldr r9,[fp,#292]
	str r9,[fp,#-1932]
	ldr r9,[fp,#288]
	str r9,[fp,#-1760]
	ldr r9,[fp,#284]
	str r9,[fp,#-2008]
	ldr r9,[fp,#280]
	str r9,[fp,#-1304]
	ldr r9,[fp,#276]
	str r9,[fp,#-1308]
	ldr r9,[fp,#272]
	str r9,[fp,#-1592]
	ldr r9,[fp,#268]
	str r9,[fp,#-1664]
	ldr r9,[fp,#264]
	str r9,[fp,#-1312]
	ldr r9,[fp,#260]
	str r9,[fp,#-2284]
	ldr r9,[fp,#256]
	str r9,[fp,#-1512]
	ldr r9,[fp,#252]
	str r9,[fp,#-1316]
	ldr r9,[fp,#248]
	str r9,[fp,#-2404]
	ldr r9,[fp,#244]
	str r9,[fp,#-1320]
	ldr r9,[fp,#240]
	str r9,[fp,#-1324]
	ldr r9,[fp,#236]
	str r9,[fp,#-1328]
	ldr r9,[fp,#232]
	str r9,[fp,#-1332]
	ldr r9,[fp,#228]
	str r9,[fp,#-1336]
	ldr r9,[fp,#224]
	str r9,[fp,#-1648]
	ldr r9,[fp,#220]
	str r9,[fp,#-2296]
	ldr r9,[fp,#216]
	str r9,[fp,#-1340]
	ldr r9,[fp,#212]
	str r9,[fp,#-1440]
	ldr r9,[fp,#208]
	str r9,[fp,#-1344]
	ldr r9,[fp,#204]
	str r9,[fp,#-2460]
	ldr r9,[fp,#200]
	str r9,[fp,#-1348]
	ldr r9,[fp,#196]
	str r9,[fp,#-2596]
	ldr r9,[fp,#192]
	str r9,[fp,#-1352]
	ldr r9,[fp,#188]
	str r9,[fp,#-2212]
	ldr r9,[fp,#184]
	str r9,[fp,#-1356]
	ldr r9,[fp,#180]
	str r9,[fp,#-2068]
	ldr r9,[fp,#176]
	str r9,[fp,#-1360]
	ldr r9,[fp,#172]
	str r9,[fp,#-1788]
	ldr r9,[fp,#168]
	str r9,[fp,#-1492]
	ldr r9,[fp,#164]
	str r9,[fp,#-1364]
	ldr r9,[fp,#160]
	str r9,[fp,#-1368]
	ldr r9,[fp,#156]
	str r9,[fp,#-1372]
	ldr r9,[fp,#152]
	str r9,[fp,#-1376]
	ldr r9,[fp,#148]
	str r9,[fp,#-1380]
	ldr r9,[fp,#144]
	str r9,[fp,#-1384]
	ldr r9,[fp,#140]
	str r9,[fp,#-1980]
	ldr r9,[fp,#136]
	str r9,[fp,#-2520]
	ldr r9,[fp,#132]
	str r9,[fp,#-2228]
	ldr r9,[fp,#128]
	str r9,[fp,#-1388]
	ldr r9,[fp,#124]
	str r9,[fp,#-1676]
	ldr r9,[fp,#120]
	str r9,[fp,#-1392]
	ldr r9,[fp,#116]
	str r9,[fp,#-1516]
	ldr r9,[fp,#112]
	str r9,[fp,#-2052]
	ldr r9,[fp,#108]
	str r9,[fp,#-1588]
	ldr r9,[fp,#104]
	str r9,[fp,#-2172]
	ldr r9,[fp,#100]
	str r9,[fp,#-1396]
	ldr r9,[fp,#96]
	str r9,[fp,#-2312]
	ldr r9,[fp,#92]
	str r9,[fp,#-1400]
	ldr r9,[fp,#88]
	str r9,[fp,#-1404]
	ldr r9,[fp,#84]
	str r9,[fp,#-1408]
	ldr r9,[fp,#80]
	str r9,[fp,#-1412]
	ldr r9,[fp,#76]
	str r9,[fp,#-2600]
	ldr r9,[fp,#72]
	str r9,[fp,#-2016]
	ldr r9,[fp,#68]
	str r9,[fp,#-1416]
	ldr r9,[fp,#64]
	str r9,[fp,#-2608]
	ldr r9,[fp,#60]
	str r9,[fp,#-2644]
	ldr r9,[fp,#56]
	str r9,[fp,#-1580]
	ldr r9,[fp,#52]
	str r9,[fp,#-2572]
	ldr r9,[fp,#48]
	str r9,[fp,#-1420]
	ldr r9,[fp,#44]
	str r9,[fp,#-2624]
	ldr r9,[fp,#40]
	str r9,[fp,#-1424]
	ldr r9,[fp,#36]
	str r9,[fp,#-1428]
	ldr r9,[fp,#32]
	str r9,[fp,#-2568]
.funcL1:
	ldr r9,[fp,#-1572]
	ldr r10,[fp,#-1432]
	mul r8,r9,r10
	ldr r9,[fp,#-2324]
	mul r7,r8,r9
	ldr r9,[fp,#-2084]
	mul r8,r7,r9
	ldr r9,[fp,#-1772]
	mul r7,r8,r9
	ldr r9,[fp,#-2456]
	add r8,r7,r9
	ldr r9,[fp,#-1436]
	ldr r10,[fp,#-1440]
	mul r7,r9,r10
	ldr r9,[fp,#-1444]
	mul r6,r7,r9
	ldr r9,[fp,#-1448]
	mul r7,r6,r9
	ldr r9,[fp,#-1452]
	mul r6,r7,r9
	ldr r9,[fp,#-1456]
	mul r7,r6,r9
	ldr r9,[fp,#-2416]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-1460]
	ldr r10,[fp,#-1464]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-1668]
	add r8,r6,r9
	ldr r9,[fp,#-1468]
	ldr r10,[fp,#-1800]
	mul r7,r9,r10
	ldr r9,[fp,#-1472]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-2504]
	ldr r10,[fp,#-1476]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-1480]
	ldr r10,[fp,#-1484]
	mul r8,r9,r10
	add r7,r6,r8
	ldr r9,[fp,#-1488]
	add r8,r7,r9
	ldr r9,[fp,#-1492]
	ldr r10,[fp,#-1496]
	mul r7,r9,r10
	ldr r9,[fp,#-1952]
	mul r6,r7,r9
	ldr r9,[fp,#-1500]
	mul r7,r6,r9
	add r6,r8,r7
	ldr r9,[fp,#-1504]
	add r8,r6,r9
	ldr r9,[fp,#-1508]
	add r7,r8,r9
	ldr r9,[fp,#-1512]
	add r8,r7,r9
	ldr r9,[fp,#-1516]
	ldr r10,[fp,#-1520]
	mul r7,r9,r10
	ldr r9,[fp,#-1524]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-1528]
	ldr r10,[fp,#-1532]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-1536]
	ldr r10,[fp,#-1944]
	mul r8,r9,r10
	ldr r9,[fp,#-1624]
	mul r7,r8,r9
	ldr r9,[fp,#-1540]
	mul r8,r7,r9
	ldr r9,[fp,#-2256]
	mul r7,r8,r9
	add r8,r6,r7
	ldr r9,[fp,#-1544]
	add r7,r8,r9
	ldr r9,[fp,#-2636]
	add r8,r7,r9
	ldr r9,[fp,#-1548]
	add r7,r8,r9
	ldr r9,[fp,#-1552]
	ldr r10,[fp,#-2368]
	mul r8,r9,r10
	ldr r9,[fp,#-2484]
	mul r6,r8,r9
	add r8,r7,r6
	ldr r9,[fp,#-1560]
	ldr r10,[fp,#-1556]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-20]
	ldr r10,[fp,#-1736]
	mul r8,r9,r10
	ldr r9,[fp,#-1632]
	mul r7,r8,r9
	add r8,r6,r7
	ldr r9,[fp,#-2556]
	ldr r10,[fp,#-2568]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-1564]
	ldr r10,[fp,#-2036]
	mul r8,r9,r10
	add r7,r6,r8
	ldr r9,[fp,#-1568]
	add r8,r7,r9
	ldr r9,[fp,#-1572]
	add r7,r8,r9
	ldr r9,[fp,#-2108]
	add r8,r7,r9
	ldr r9,[fp,#-1576]
	ldr r10,[fp,#-1580]
	mul r7,r9,r10
	ldr r9,[fp,#-1584]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-2272]
	ldr r10,[fp,#-1588]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-1972]
	ldr r10,[fp,#-1592]
	mul r8,r9,r10
	add r7,r6,r8
	ldr r9,[fp,#-2212]
	ldr r10,[fp,#-1596]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-1840]
	add r8,r6,r9
	ldr r9,[fp,#-1600]
	add r7,r8,r9
	ldr r9,[fp,#-1604]
	add r8,r7,r9
	ldr r9,[fp,#-2628]
	ldr r10,[fp,#-1608]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-1644]
	add r8,r6,r9
	ldr r9,[fp,#-1612]
	ldr r10,[fp,#-2444]
	mul r7,r9,r10
	ldr r9,[fp,#-2192]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-1616]
	add r8,r7,r9
	ldr r9,[fp,#-2624]
	ldr r10,[fp,#-1620]
	mul r7,r9,r10
	ldr r9,[fp,#-2116]
	mul r6,r7,r9
	ldr r9,[fp,#-1624]
	mul r7,r6,r9
	ldr r9,[fp,#-2580]
	mul r6,r7,r9
	ldr r9,[fp,#-1628]
	mul r7,r6,r9
	ldr r9,[fp,#-2216]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-1632]
	add r8,r7,r9
	ldr r9,[fp,#-2564]
	ldr r10,[fp,#-1636]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-1640]
	add r8,r6,r9
	ldr r9,[fp,#-2036]
	add r7,r8,r9
	ldr r9,[fp,#-1644]
	add r8,r7,r9
	ldr r9,[fp,#-1892]
	add r7,r8,r9
	ldr r9,[fp,#-1648]
	ldr r10,[fp,#-1652]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-1656]
	add r8,r6,r9
	ldr r9,[fp,#-1796]
	ldr r10,[fp,#-1660]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-1664]
	ldr r10,[fp,#-1916]
	mul r8,r9,r10
	ldr r9,[fp,#-24]
	mul r7,r8,r9
	add r8,r6,r7
	ldr r9,[fp,#-1668]
	add r7,r8,r9
	ldr r9,[fp,#-1672]
	add r8,r7,r9
	ldr r9,[fp,#-1676]
	ldr r10,[fp,#-1680]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-1684]
	add r8,r6,r9
	ldr r9,[fp,#-1688]
	ldr r10,[fp,#-2416]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-1692]
	ldr r10,[fp,#-1696]
	mul r8,r9,r10
	ldr r9,[fp,#-1700]
	mul r7,r8,r9
	add r8,r6,r7
	ldr r9,[fp,#-1704]
	add r7,r8,r9
	ldr r9,[fp,#-1708]
	ldr r10,[fp,#-2356]
	mul r8,r9,r10
	ldr r9,[fp,#-1712]
	mul r6,r8,r9
	add r8,r7,r6
	ldr r9,[fp,#-1716]
	add r7,r8,r9
	ldr r9,[fp,#-1720]
	add r8,r7,r9
	ldr r9,[fp,#-1724]
	add r7,r8,r9
	ldr r9,[fp,#-1792]
	add r8,r7,r9
	ldr r9,[fp,#-1724]
	add r7,r8,r9
	ldr r9,[fp,#-1732]
	ldr r10,[fp,#-1728]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-1736]
	ldr r10,[fp,#-2584]
	mul r8,r9,r10
	ldr r9,[fp,#-1892]
	mul r7,r8,r9
	ldr r9,[fp,#-1740]
	mul r8,r7,r9
	ldr r9,[fp,#-1744]
	mul r7,r8,r9
	ldr r9,[fp,#-1748]
	mul r8,r7,r9
	add r7,r6,r8
	ldr r9,[fp,#-1752]
	add r8,r7,r9
	ldr r9,[fp,#-1760]
	ldr r10,[fp,#-1756]
	mul r7,r9,r10
	ldr r9,[fp,#-2140]
	mul r6,r7,r9
	ldr r9,[fp,#-1764]
	mul r7,r6,r9
	ldr r9,[fp,#-1768]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-2548]
	ldr r10,[fp,#-1772]
	mul r8,r9,r10
	ldr r9,[fp,#-1776]
	mul r6,r8,r9
	ldr r9,[fp,#-2356]
	mul r8,r6,r9
	add r6,r7,r8
	ldr r9,[fp,#-1780]
	add r8,r6,r9
	ldr r9,[fp,#-1784]
	ldr r10,[fp,#-1788]
	mul r7,r9,r10
	ldr r9,[fp,#-1792]
	mul r6,r7,r9
	ldr r9,[fp,#-1796]
	mul r7,r6,r9
	add r6,r8,r7
	ldr r9,[fp,#-2644]
	add r8,r6,r9
	ldr r9,[fp,#-1800]
	ldr r10,[fp,#-1804]
	mul r7,r9,r10
	ldr r9,[fp,#-1808]
	mul r6,r7,r9
	ldr r9,[fp,#-1968]
	mul r7,r6,r9
	ldr r9,[fp,#-1812]
	mul r6,r7,r9
	ldr r9,[fp,#-2228]
	mul r7,r6,r9
	ldr r9,[fp,#-2476]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-1816]
	add r8,r7,r9
	ldr r9,[fp,#-2488]
	add r7,r8,r9
	ldr r9,[fp,#-1824]
	ldr r10,[fp,#-1820]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-1828]
	ldr r10,[fp,#-1832]
	mul r8,r9,r10
	ldr r9,[fp,#-1836]
	mul r7,r8,r9
	ldr r9,[fp,#-1840]
	mul r8,r7,r9
	ldr r9,[fp,#-2628]
	mul r7,r8,r9
	ldr r9,[fp,#-1844]
	mul r8,r7,r9
	ldr r9,[fp,#-1848]
	mul r7,r8,r9
	ldr r9,[fp,#-1852]
	mul r8,r7,r9
	ldr r9,[fp,#-1856]
	mul r7,r8,r9
	ldr r9,[fp,#-2644]
	mul r8,r7,r9
	ldr r9,[fp,#-1860]
	mul r7,r8,r9
	add r8,r6,r7
	ldr r9,[fp,#-1868]
	ldr r10,[fp,#-1864]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-1872]
	add r8,r6,r9
	ldr r9,[fp,#-1880]
	ldr r10,[fp,#-1876]
	mul r7,r9,r10
	ldr r9,[fp,#-1884]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-1888]
	add r8,r7,r9
	ldr r9,[fp,#-1892]
	add r7,r8,r9
	ldr r9,[fp,#-1896]
	add r8,r7,r9
	ldr r9,[fp,#-1900]
	ldr r10,[fp,#-2024]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-1904]
	add r8,r6,r9
	ldr r9,[fp,#-2596]
	add r7,r8,r9
	ldr r9,[fp,#-24]
	add r8,r7,r9
	ldr r9,[fp,#-1908]
	add r7,r8,r9
	ldr r9,[fp,#-1912]
	add r8,r7,r9
	ldr r9,[fp,#-2528]
	add r7,r8,r9
	ldr r9,[fp,#-1916]
	add r8,r7,r9
	ldr r9,[fp,#-1920]
	add r7,r8,r9
	ldr r9,[fp,#-2592]
	add r8,r7,r9
	ldr r9,[fp,#-1964]
	ldr r10,[fp,#-1924]
	mul r7,r9,r10
	ldr r9,[fp,#-1928]
	mul r6,r7,r9
	ldr r9,[fp,#-1932]
	mul r7,r6,r9
	ldr r9,[fp,#-1936]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-1940]
	ldr r10,[fp,#-1944]
	mul r8,r9,r10
	ldr r9,[fp,#-1948]
	mul r6,r8,r9
	ldr r9,[fp,#-1952]
	mul r8,r6,r9
	ldr r9,[fp,#-2060]
	mul r6,r8,r9
	add r8,r7,r6
	ldr r9,[fp,#-1960]
	ldr r10,[fp,#-1956]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-1964]
	add r8,r6,r9
	ldr r9,[fp,#-1972]
	ldr r10,[fp,#-1968]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-1976]
	ldr r10,[fp,#-1980]
	mul r8,r9,r10
	add r7,r6,r8
	ldr r9,[fp,#-2280]
	add r8,r7,r9
	ldr r9,[fp,#-2072]
	add r7,r8,r9
	ldr r9,[fp,#-1984]
	add r8,r7,r9
	ldr r9,[fp,#-1988]
	add r7,r8,r9
	ldr r9,[fp,#-1996]
	ldr r10,[fp,#-1992]
	mul r8,r9,r10
	ldr r9,[fp,#-2000]
	mul r6,r8,r9
	add r8,r7,r6
	ldr r9,[fp,#-2008]
	ldr r10,[fp,#-2004]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-2012]
	add r8,r6,r9
	ldr r9,[fp,#-2020]
	ldr r10,[fp,#-2016]
	mul r7,r9,r10
	ldr r9,[fp,#-2276]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-2024]
	add r8,r7,r9
	ldr r9,[fp,#-2120]
	add r7,r8,r9
	ldr r9,[fp,#-2032]
	ldr r10,[fp,#-2028]
	mul r8,r9,r10
	ldr r9,[fp,#-2036]
	mul r6,r8,r9
	ldr r9,[fp,#-2040]
	mul r8,r6,r9
	add r6,r7,r8
	ldr r9,[fp,#-2048]
	ldr r10,[fp,#-2044]
	mul r8,r9,r10
	ldr r9,[fp,#-2052]
	mul r7,r8,r9
	ldr r9,[fp,#-2056]
	mul r8,r7,r9
	ldr r9,[fp,#-2060]
	mul r7,r8,r9
	ldr r9,[fp,#-2528]
	mul r8,r7,r9
	add r7,r6,r8
	ldr r9,[fp,#-2064]
	add r8,r7,r9
	ldr r9,[fp,#-2096]
	add r7,r8,r9
	ldr r9,[fp,#-2412]
	ldr r10,[fp,#-2068]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-2072]
	add r8,r6,r9
	ldr r9,[fp,#-2080]
	ldr r10,[fp,#-2076]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-2088]
	ldr r10,[fp,#-2084]
	mul r8,r9,r10
	ldr r9,[fp,#-2092]
	mul r7,r8,r9
	add r8,r6,r7
	ldr r9,[fp,#-2100]
	ldr r10,[fp,#-2096]
	mul r7,r9,r10
	ldr r9,[fp,#-2100]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-2108]
	ldr r10,[fp,#-2104]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-2116]
	ldr r10,[fp,#-2112]
	mul r8,r9,r10
	add r7,r6,r8
	ldr r9,[fp,#-2120]
	add r8,r7,r9
	ldr r9,[fp,#-2128]
	ldr r10,[fp,#-2124]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-2132]
	add r8,r6,r9
	ldr r9,[fp,#-2136]
	add r7,r8,r9
	ldr r9,[fp,#-2140]
	add r8,r7,r9
	ldr r9,[fp,#-2144]
	add r7,r8,r9
	ldr r9,[fp,#-2148]
	add r8,r7,r9
	ldr r9,[fp,#-2152]
	add r7,r8,r9
	ldr r9,[fp,#-2156]
	ldr r10,[fp,#-2160]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-2164]
	add r8,r6,r9
	ldr r9,[fp,#-2516]
	add r7,r8,r9
	ldr r9,[fp,#-2168]
	ldr r10,[fp,#-2216]
	mul r8,r9,r10
	ldr r9,[fp,#-2172]
	mul r6,r8,r9
	add r8,r7,r6
	ldr r9,[fp,#-2176]
	add r7,r8,r9
	ldr r9,[fp,#-2180]
	add r8,r7,r9
	ldr r9,[fp,#-2188]
	ldr r10,[fp,#-2184]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-2240]
	ldr r10,[fp,#-2192]
	mul r8,r9,r10
	ldr r9,[fp,#-2300]
	mul r7,r8,r9
	ldr r9,[fp,#-2524]
	mul r8,r7,r9
	add r7,r6,r8
	ldr r9,[fp,#-2200]
	ldr r10,[fp,#-2196]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-2244]
	add r8,r6,r9
	ldr r9,[fp,#-2208]
	ldr r10,[fp,#-2204]
	mul r7,r9,r10
	ldr r9,[fp,#-2212]
	mul r6,r7,r9
	ldr r9,[fp,#-2216]
	mul r7,r6,r9
	add r6,r8,r7
	ldr r9,[fp,#-2220]
	ldr r10,[fp,#-2224]
	mul r8,r9,r10
	add r7,r6,r8
	ldr r9,[fp,#-2228]
	add r8,r7,r9
	ldr r9,[fp,#-2484]
	add r7,r8,r9
	ldr r9,[fp,#-2232]
	add r8,r7,r9
	ldr r9,[fp,#-2236]
	add r7,r8,r9
	ldr r9,[fp,#-2400]
	add r8,r7,r9
	ldr r9,[fp,#-2240]
	ldr r10,[fp,#-2244]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-2248]
	add r8,r6,r9
	ldr r9,[fp,#-2256]
	ldr r10,[fp,#-2252]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-2260]
	add r8,r6,r9
	ldr r9,[fp,#-2264]
	add r7,r8,r9
	ldr r9,[fp,#-2268]
	add r8,r7,r9
	ldr r9,[fp,#-2272]
	ldr r10,[fp,#-2276]
	mul r7,r9,r10
	ldr r9,[fp,#-2280]
	mul r6,r7,r9
	ldr r9,[fp,#-2284]
	mul r7,r6,r9
	ldr r9,[fp,#-2288]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-2292]
	ldr r10,[fp,#-2296]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-2304]
	ldr r10,[fp,#-2300]
	mul r8,r9,r10
	add r7,r6,r8
	ldr r9,[fp,#-2308]
	add r8,r7,r9
	ldr r9,[fp,#-2652]
	ldr r10,[fp,#-2312]
	mul r7,r9,r10
	ldr r9,[fp,#-2316]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-2324]
	ldr r10,[fp,#-2320]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-2328]
	ldr r10,[fp,#-2332]
	mul r8,r9,r10
	ldr r9,[fp,#-2336]
	mul r7,r8,r9
	ldr r9,[fp,#-2340]
	mul r8,r7,r9
	add r7,r6,r8
	ldr r9,[fp,#-2520]
	ldr r10,[fp,#-2344]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-2348]
	ldr r10,[fp,#-2592]
	mul r8,r9,r10
	ldr r9,[fp,#-2352]
	mul r7,r8,r9
	add r8,r6,r7
	ldr r9,[fp,#-2356]
	add r7,r8,r9
	ldr r9,[fp,#-2360]
	add r8,r7,r9
	ldr r9,[fp,#-2364]
	add r7,r8,r9
	ldr r9,[fp,#-2372]
	ldr r10,[fp,#-2368]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-2516]
	ldr r10,[fp,#-2376]
	mul r8,r9,r10
	ldr r9,[fp,#-2552]
	mul r7,r8,r9
	ldr r9,[fp,#-2380]
	mul r8,r7,r9
	add r7,r6,r8
	ldr r9,[fp,#-2384]
	add r8,r7,r9
	ldr r9,[fp,#-2392]
	ldr r10,[fp,#-2388]
	mul r7,r9,r10
	ldr r9,[fp,#-2396]
	mul r6,r7,r9
	ldr r9,[fp,#-2400]
	mul r7,r6,r9
	add r6,r8,r7
	ldr r9,[fp,#-2404]
	ldr r10,[fp,#-2408]
	mul r8,r9,r10
	ldr r9,[fp,#-2412]
	mul r7,r8,r9
	add r8,r6,r7
	ldr r9,[fp,#-2416]
	ldr r10,[fp,#-2620]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-2420]
	add r8,r6,r9
	ldr r9,[fp,#-2424]
	add r7,r8,r9
	ldr r9,[fp,#-2428]
	add r8,r7,r9
	ldr r9,[fp,#-2436]
	ldr r10,[fp,#-2432]
	mul r7,r9,r10
	ldr r9,[fp,#-2440]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-2444]
	add r8,r7,r9
	ldr r9,[fp,#-2448]
	add r7,r8,r9
	ldr r9,[fp,#-2452]
	add r8,r7,r9
	ldr r9,[fp,#-2556]
	add r7,r8,r9
	ldr r9,[fp,#-2456]
	add r8,r7,r9
	ldr r9,[fp,#-2464]
	ldr r10,[fp,#-2460]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-2468]
	ldr r10,[fp,#-2472]
	mul r8,r9,r10
	ldr r9,[fp,#-2476]
	mul r7,r8,r9
	add r8,r6,r7
	ldr r9,[fp,#-2480]
	ldr r10,[fp,#-2484]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-2488]
	ldr r10,[fp,#-2492]
	mul r8,r9,r10
	add r7,r6,r8
	ldr r9,[fp,#-2496]
	ldr r10,[fp,#-2500]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-2504]
	add r8,r6,r9
	ldr r9,[fp,#-2508]
	ldr r10,[fp,#-2512]
	mul r7,r9,r10
	ldr r9,[fp,#-2516]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-2520]
	ldr r10,[fp,#-2532]
	mul r8,r9,r10
	add r6,r7,r8
	ldr r9,[fp,#-2524]
	add r8,r6,r9
	ldr r9,[fp,#-2528]
	ldr r10,[fp,#-2532]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-2540]
	ldr r10,[fp,#-2536]
	mul r8,r9,r10
	ldr r9,[fp,#-2544]
	mul r7,r8,r9
	add r8,r6,r7
	ldr r9,[fp,#-2548]
	add r7,r8,r9
	ldr r9,[fp,#-2556]
	ldr r10,[fp,#-2552]
	mul r8,r9,r10
	ldr r9,[fp,#-2560]
	mul r6,r8,r9
	add r8,r7,r6
	ldr r9,[fp,#-2568]
	ldr r10,[fp,#-2564]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-2576]
	ldr r10,[fp,#-2572]
	mul r8,r9,r10
	add r7,r6,r8
	ldr r9,[fp,#-2584]
	ldr r10,[fp,#-2580]
	mul r8,r9,r10
	ldr r9,[fp,#-2588]
	mul r6,r8,r9
	add r8,r7,r6
	ldr r9,[fp,#-2592]
	ldr r10,[fp,#-2596]
	mul r7,r9,r10
	ldr r9,[fp,#-2600]
	mul r6,r7,r9
	ldr r9,[fp,#-2604]
	mul r7,r6,r9
	ldr r9,[fp,#-2608]
	mul r6,r7,r9
	add r7,r8,r6
	ldr r9,[fp,#-2612]
	add r8,r7,r9
	ldr r9,[fp,#-2616]
	add r7,r8,r9
	ldr r9,[fp,#-2620]
	ldr r10,[fp,#-2624]
	mul r8,r9,r10
	ldr r9,[fp,#-2628]
	mul r6,r8,r9
	ldr r9,[fp,#-2632]
	mul r8,r6,r9
	add r6,r7,r8
	ldr r9,[fp,#-2640]
	ldr r10,[fp,#-2636]
	mul r8,r9,r10
	ldr r9,[fp,#-2644]
	mul r7,r8,r9
	add r8,r6,r7
	ldr r9,[fp,#-2648]
	add r7,r8,r9
	ldr r9,[fp,#-2652]
	add r8,r7,r9
	ldr r9,[fp,#-2656]
	ldr r10,[fp,#-2660]
	mul r7,r9,r10
	add r6,r8,r7
	ldr r9,[fp,#-2664]
	add r8,r6,r9
	ldr r9,[fp,#-2668]
	add r7,r8,r9
	ldr r9,[fp,#-2672]
	add r8,r7,r9
	ldr r9,[fp,#-2676]
	add r7,r8,r9
	mov r0,r7
	movw r9,#2676
	movt r9,#0  @ 2676
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r676 = call i32 @func(i32 0,i32 1,i32 1,i32 8,i32 9,i32 5,i32 2,i32 0,i32 6,i32 2,i32 4,i32 7,i32 1,i32 6,i32 9,i32 3,i32 3,i32 5,i32 0,i32 8,i32 9,i32 3,i32 4,i32 5,i32 9,i32 0,i32 8,i32 9,i32 5,i32 5,i32 4,i32 1,i32 4,i32 3,i32 5,i32 9,i32 7,i32 6,i32 1,i32 7,i32 5,i32 4,i32 0,i32 7,i32 5,i32 5,i32 6,i32 4,i32 9,i32 6,i32 6,i32 6,i32 8,i32 0,i32 4,i32 2,i32 3,i32 3,i32 0,i32 5,i32 4,i32 3,i32 9,i32 5,i32 9,i32 3,i32 3,i32 6,i32 4,i32 3,i32 3,i32 0,i32 5,i32 0,i32 2,i32 5,i32 6,i32 6,i32 9,i32 4,i32 0,i32 3,i32 7,i32 2,i32 1,i32 1,i32 9,i32 8,i32 4,i32 8,i32 5,i32 2,i32 5,i32 4,i32 5,i32 0,i32 3,i32 5,i32 0,i32 7,i32 0,i32 7,i32 5,i32 6,i32 7,i32 7,i32 8,i32 2,i32 6,i32 8,i32 9,i32 4,i32 6,i32 7,i32 2,i32 9,i32 8,i32 8,i32 0,i32 0,i32 3,i32 4,i32 8,i32 9,i32 0,i32 5,i32 9,i32 8,i32 5,i32 1,i32 2,i32 7,i32 3,i32 2,i32 5,i32 4,i32 9,i32 9,i32 6,i32 9,i32 2,i32 5,i32 5,i32 7,i32 8,i32 3,i32 8,i32 9,i32 4,i32 9,i32 0,i32 5,i32 9,i32 8,i32 4,i32 2,i32 5,i32 0,i32 7,i32 8,i32 8,i32 4,i32 6,i32 7,i32 9,i32 8,i32 2,i32 4,i32 4,i32 2,i32 9,i32 9,i32 8,i32 1,i32 2,i32 3,i32 7,i32 2,i32 2,i32 1,i32 7,i32 1,i32 2,i32 4,i32 0,i32 6,i32 6,i32 0,i32 9,i32 9,i32 0,i32 7,i32 8,i32 9,i32 8,i32 5,i32 1,i32 8,i32 9,i32 2,i32 4,i32 7,i32 3,i32 4,i32 7,i32 9,i32 9,i32 4,i32 7,i32 1,i32 9,i32 0,i32 6,i32 0,i32 6,i32 9,i32 8,i32 4,i32 3,i32 6,i32 2,i32 9,i32 7,i32 5,i32 6,i32 9,i32 8,i32 6,i32 5,i32 8,i32 4,i32 0,i32 5,i32 2,i32 3,i32 2,i32 4,i32 0,i32 0,i32 9,i32 5,i32 8,i32 9,i32 2,i32 5,i32 2,i32 5,i32 0,i32 9,i32 4,i32 2,i32 0,i32 0,i32 1,i32 5,i32 0,i32 4,i32 9,i32 4,i32 9,i32 4,i32 6,i32 0,i32 0,i32 4,i32 2,i32 6,i32 9,i32 3,i32 7,i32 8,i32 5,i32 5,i32 7,i32 1,i32 0,i32 5,i32 3,i32 6,i32 0,i32 3,i32 3,i32 6,i32 2,i32 9,i32 9,i32 1,i32 9,i32 6,i32 2,i32 4,i32 1,i32 5,i32 1,i32 5,i32 0,i32 8,i32 5,i32 7,i32 9,i32 4,i32 6,i32 1,i32 3,i32 9,i32 4,i32 2,i32 3,i32 0,i32 8,i32 6,i32 0,i32 9,i32 7,i32 3,i32 1,i32 3,i32 7,i32 0,i32 9,i32 2,i32 3,i32 1,i32 2,i32 9,i32 3,i32 8,i32 5,i32 7,i32 3,i32 9,i32 6,i32 7,i32 1,i32 9,i32 6,i32 3,i32 8,i32 1,i32 8,i32 8,i32 2,i32 8,i32 7,i32 5,i32 4,i32 2,i32 0,i32 4,i32 0,i32 7,i32 7,i32 8,i32 9,i32 6,i32 6,i32 7,i32 7,i32 1,i32 6,i32 0,i32 5,i32 3,i32 4,i32 2,i32 6,i32 3,i32 6,i32 3,i32 4,i32 1,i32 3,i32 6,i32 9,i32 4,i32 3,i32 0,i32 9,i32 0,i32 2,i32 2,i32 0,i32 8,i32 8,i32 4,i32 5,i32 8,i32 2,i32 3,i32 3,i32 7,i32 2,i32 5,i32 9,i32 6,i32 7,i32 0,i32 1,i32 8,i32 5,i32 7,i32 8,i32 3,i32 0,i32 2,i32 9,i32 1,i32 5,i32 4,i32 9,i32 4,i32 5,i32 3,i32 7,i32 4,i32 0,i32 2,i32 7,i32 1,i32 3,i32 2,i32 7,i32 1,i32 7,i32 0,i32 0,i32 6,i32 7,i32 8,i32 9,i32 0,i32 2,i32 5,i32 4,i32 6,i32 2,i32 9,i32 2,i32 1,i32 0,i32 2,i32 2,i32 7,i32 3,i32 8,i32 9,i32 6,i32 3,i32 6,i32 9,i32 0,i32 8,i32 1,i32 2,i32 2,i32 9,i32 5,i32 8,i32 2,i32 5,i32 0,i32 4,i32 7,i32 0,i32 8,i32 2,i32 9,i32 6,i32 7,i32 7,i32 5,i32 2,i32 6,i32 6,i32 8,i32 8,i32 9,i32 7,i32 7,i32 4,i32 9,i32 0,i32 8,i32 7,i32 6,i32 8,i32 3,i32 1,i32 6,i32 7,i32 4,i32 6,i32 5,i32 6,i32 2,i32 8,i32 8,i32 5,i32 9,i32 0,i32 3,i32 1,i32 9,i32 1,i32 4,i32 9,i32 6,i32 4,i32 7,i32 6,i32 6,i32 8,i32 9,i32 6,i32 6,i32 1,i32 2,i32 5,i32 2,i32 0,i32 3,i32 8,i32 2,i32 9,i32 1,i32 3,i32 9,i32 6,i32 2,i32 3,i32 2,i32 9,i32 9,i32 3,i32 8,i32 8,i32 1,i32 9,i32 8,i32 5,i32 1,i32 1,i32 2,i32 7,i32 9,i32 3,i32 7,i32 4,i32 3,i32 4,i32 0,i32 7,i32 4,i32 9,i32 1,i32 4,i32 6,i32 4,i32 3,i32 8,i32 3,i32 8,i32 7,i32 6,i32 3,i32 2,i32 1,i32 8,i32 5,i32 2,i32 3,i32 1,i32 3,i32 7,i32 6,i32 2,i32 4,i32 0,i32 9,i32 9,i32 7,i32 8,i32 3,i32 7,i32 5,i32 8,i32 8,i32 5,i32 6,i32 7,i32 3,i32 2,i32 9,i32 5,i32 5,i32 1,i32 5,i32 7,i32 9,i32 7,i32 9,i32 0,i32 5,i32 4,i32 3,i32 3,i32 0,i32 0,i32 0,i32 3,i32 5,i32 1,i32 6,i32 2,i32 0,i32 4,i32 7,i32 4,i32 9,i32 7,i32 3,i32 4,i32 0,i32 6,i32 0,i32 3,i32 1,i32 3,i32 5,i32 7,i32 3,i32 8,i32 3,i32 1,i32 9,i32 6,i32 8,i32 6,i32 7,i32 7,i32 3,i32 2,i32 9,i32 8,i32 1,i32 9,i32 5,i32 8,i32 4,i32 7,i32 8,i32 9,i32 9,i32 0,i32 9,i32 2,i32 9,i32 0,i32 0,i32 7,i32 4,i32 3,i32 9,i32 2,i32 2,i32 7,i32 8,i32 7,i32 1,i32 3,i32 5,i32 8,i32 4,i32 4,i32 0,i32 9)
	sub sp,sp,#4 @stack align 8bytes
	sub sp,sp,#2688
	mov r9,#9
	str r9,[sp,#2684]  @9
	mov r9,#0
	str r9,[sp,#2680]  @0
	mov r9,#4
	str r9,[sp,#2676]  @4
	mov r9,#4
	str r9,[sp,#2672]  @4
	mov r9,#8
	str r9,[sp,#2668]  @8
	mov r9,#5
	str r9,[sp,#2664]  @5
	mov r9,#3
	str r9,[sp,#2660]  @3
	mov r9,#1
	str r9,[sp,#2656]  @1
	mov r9,#7
	str r9,[sp,#2652]  @7
	mov r9,#8
	str r9,[sp,#2648]  @8
	mov r9,#7
	str r9,[sp,#2644]  @7
	mov r9,#2
	str r9,[sp,#2640]  @2
	mov r9,#2
	str r9,[sp,#2636]  @2
	mov r9,#9
	str r9,[sp,#2632]  @9
	mov r9,#3
	str r9,[sp,#2628]  @3
	mov r9,#4
	str r9,[sp,#2624]  @4
	mov r9,#7
	str r9,[sp,#2620]  @7
	mov r9,#0
	str r9,[sp,#2616]  @0
	mov r9,#0
	str r9,[sp,#2612]  @0
	mov r9,#9
	str r9,[sp,#2608]  @9
	mov r9,#2
	str r9,[sp,#2604]  @2
	mov r9,#9
	str r9,[sp,#2600]  @9
	mov r9,#0
	str r9,[sp,#2596]  @0
	mov r9,#9
	str r9,[sp,#2592]  @9
	mov r9,#9
	str r9,[sp,#2588]  @9
	mov r9,#8
	str r9,[sp,#2584]  @8
	mov r9,#7
	str r9,[sp,#2580]  @7
	mov r9,#4
	str r9,[sp,#2576]  @4
	mov r9,#8
	str r9,[sp,#2572]  @8
	mov r9,#5
	str r9,[sp,#2568]  @5
	mov r9,#9
	str r9,[sp,#2564]  @9
	mov r9,#1
	str r9,[sp,#2560]  @1
	mov r9,#8
	str r9,[sp,#2556]  @8
	mov r9,#9
	str r9,[sp,#2552]  @9
	mov r9,#2
	str r9,[sp,#2548]  @2
	mov r9,#3
	str r9,[sp,#2544]  @3
	mov r9,#7
	str r9,[sp,#2540]  @7
	mov r9,#7
	str r9,[sp,#2536]  @7
	mov r9,#6
	str r9,[sp,#2532]  @6
	mov r9,#8
	str r9,[sp,#2528]  @8
	mov r9,#6
	str r9,[sp,#2524]  @6
	mov r9,#9
	str r9,[sp,#2520]  @9
	mov r9,#1
	str r9,[sp,#2516]  @1
	mov r9,#3
	str r9,[sp,#2512]  @3
	mov r9,#8
	str r9,[sp,#2508]  @8
	mov r9,#3
	str r9,[sp,#2504]  @3
	mov r9,#7
	str r9,[sp,#2500]  @7
	mov r9,#5
	str r9,[sp,#2496]  @5
	mov r9,#3
	str r9,[sp,#2492]  @3
	mov r9,#1
	str r9,[sp,#2488]  @1
	mov r9,#3
	str r9,[sp,#2484]  @3
	mov r9,#0
	str r9,[sp,#2480]  @0
	mov r9,#6
	str r9,[sp,#2476]  @6
	mov r9,#0
	str r9,[sp,#2472]  @0
	mov r9,#4
	str r9,[sp,#2468]  @4
	mov r9,#3
	str r9,[sp,#2464]  @3
	mov r9,#7
	str r9,[sp,#2460]  @7
	mov r9,#9
	str r9,[sp,#2456]  @9
	mov r9,#4
	str r9,[sp,#2452]  @4
	mov r9,#7
	str r9,[sp,#2448]  @7
	mov r9,#4
	str r9,[sp,#2444]  @4
	mov r9,#0
	str r9,[sp,#2440]  @0
	mov r9,#2
	str r9,[sp,#2436]  @2
	mov r9,#6
	str r9,[sp,#2432]  @6
	mov r9,#1
	str r9,[sp,#2428]  @1
	mov r9,#5
	str r9,[sp,#2424]  @5
	mov r9,#3
	str r9,[sp,#2420]  @3
	mov r9,#0
	str r9,[sp,#2416]  @0
	mov r9,#0
	str r9,[sp,#2412]  @0
	mov r9,#0
	str r9,[sp,#2408]  @0
	mov r9,#3
	str r9,[sp,#2404]  @3
	mov r9,#3
	str r9,[sp,#2400]  @3
	mov r9,#4
	str r9,[sp,#2396]  @4
	mov r9,#5
	str r9,[sp,#2392]  @5
	mov r9,#0
	str r9,[sp,#2388]  @0
	mov r9,#9
	str r9,[sp,#2384]  @9
	mov r9,#7
	str r9,[sp,#2380]  @7
	mov r9,#9
	str r9,[sp,#2376]  @9
	mov r9,#7
	str r9,[sp,#2372]  @7
	mov r9,#5
	str r9,[sp,#2368]  @5
	mov r9,#1
	str r9,[sp,#2364]  @1
	mov r9,#5
	str r9,[sp,#2360]  @5
	mov r9,#5
	str r9,[sp,#2356]  @5
	mov r9,#9
	str r9,[sp,#2352]  @9
	mov r9,#2
	str r9,[sp,#2348]  @2
	mov r9,#3
	str r9,[sp,#2344]  @3
	mov r9,#7
	str r9,[sp,#2340]  @7
	mov r9,#6
	str r9,[sp,#2336]  @6
	mov r9,#5
	str r9,[sp,#2332]  @5
	mov r9,#8
	str r9,[sp,#2328]  @8
	mov r9,#8
	str r9,[sp,#2324]  @8
	mov r9,#5
	str r9,[sp,#2320]  @5
	mov r9,#7
	str r9,[sp,#2316]  @7
	mov r9,#3
	str r9,[sp,#2312]  @3
	mov r9,#8
	str r9,[sp,#2308]  @8
	mov r9,#7
	str r9,[sp,#2304]  @7
	mov r9,#9
	str r9,[sp,#2300]  @9
	mov r9,#9
	str r9,[sp,#2296]  @9
	mov r9,#0
	str r9,[sp,#2292]  @0
	mov r9,#4
	str r9,[sp,#2288]  @4
	mov r9,#2
	str r9,[sp,#2284]  @2
	mov r9,#6
	str r9,[sp,#2280]  @6
	mov r9,#7
	str r9,[sp,#2276]  @7
	mov r9,#3
	str r9,[sp,#2272]  @3
	mov r9,#1
	str r9,[sp,#2268]  @1
	mov r9,#3
	str r9,[sp,#2264]  @3
	mov r9,#2
	str r9,[sp,#2260]  @2
	mov r9,#5
	str r9,[sp,#2256]  @5
	mov r9,#8
	str r9,[sp,#2252]  @8
	mov r9,#1
	str r9,[sp,#2248]  @1
	mov r9,#2
	str r9,[sp,#2244]  @2
	mov r9,#3
	str r9,[sp,#2240]  @3
	mov r9,#6
	str r9,[sp,#2236]  @6
	mov r9,#7
	str r9,[sp,#2232]  @7
	mov r9,#8
	str r9,[sp,#2228]  @8
	mov r9,#3
	str r9,[sp,#2224]  @3
	mov r9,#8
	str r9,[sp,#2220]  @8
	mov r9,#3
	str r9,[sp,#2216]  @3
	mov r9,#4
	str r9,[sp,#2212]  @4
	mov r9,#6
	str r9,[sp,#2208]  @6
	mov r9,#4
	str r9,[sp,#2204]  @4
	mov r9,#1
	str r9,[sp,#2200]  @1
	mov r9,#9
	str r9,[sp,#2196]  @9
	mov r9,#4
	str r9,[sp,#2192]  @4
	mov r9,#7
	str r9,[sp,#2188]  @7
	mov r9,#0
	str r9,[sp,#2184]  @0
	mov r9,#4
	str r9,[sp,#2180]  @4
	mov r9,#3
	str r9,[sp,#2176]  @3
	mov r9,#4
	str r9,[sp,#2172]  @4
	mov r9,#7
	str r9,[sp,#2168]  @7
	mov r9,#3
	str r9,[sp,#2164]  @3
	mov r9,#9
	str r9,[sp,#2160]  @9
	mov r9,#7
	str r9,[sp,#2156]  @7
	mov r9,#2
	str r9,[sp,#2152]  @2
	mov r9,#1
	str r9,[sp,#2148]  @1
	mov r9,#1
	str r9,[sp,#2144]  @1
	mov r9,#5
	str r9,[sp,#2140]  @5
	mov r9,#8
	str r9,[sp,#2136]  @8
	mov r9,#9
	str r9,[sp,#2132]  @9
	mov r9,#1
	str r9,[sp,#2128]  @1
	mov r9,#8
	str r9,[sp,#2124]  @8
	mov r9,#8
	str r9,[sp,#2120]  @8
	mov r9,#3
	str r9,[sp,#2116]  @3
	mov r9,#9
	str r9,[sp,#2112]  @9
	mov r9,#9
	str r9,[sp,#2108]  @9
	mov r9,#2
	str r9,[sp,#2104]  @2
	mov r9,#3
	str r9,[sp,#2100]  @3
	mov r9,#2
	str r9,[sp,#2096]  @2
	mov r9,#6
	str r9,[sp,#2092]  @6
	mov r9,#9
	str r9,[sp,#2088]  @9
	mov r9,#3
	str r9,[sp,#2084]  @3
	mov r9,#1
	str r9,[sp,#2080]  @1
	mov r9,#9
	str r9,[sp,#2076]  @9
	mov r9,#2
	str r9,[sp,#2072]  @2
	mov r9,#8
	str r9,[sp,#2068]  @8
	mov r9,#3
	str r9,[sp,#2064]  @3
	mov r9,#0
	str r9,[sp,#2060]  @0
	mov r9,#2
	str r9,[sp,#2056]  @2
	mov r9,#5
	str r9,[sp,#2052]  @5
	mov r9,#2
	str r9,[sp,#2048]  @2
	mov r9,#1
	str r9,[sp,#2044]  @1
	mov r9,#6
	str r9,[sp,#2040]  @6
	mov r9,#6
	str r9,[sp,#2036]  @6
	mov r9,#9
	str r9,[sp,#2032]  @9
	mov r9,#8
	str r9,[sp,#2028]  @8
	mov r9,#6
	str r9,[sp,#2024]  @6
	mov r9,#6
	str r9,[sp,#2020]  @6
	mov r9,#7
	str r9,[sp,#2016]  @7
	mov r9,#4
	str r9,[sp,#2012]  @4
	mov r9,#6
	str r9,[sp,#2008]  @6
	mov r9,#9
	str r9,[sp,#2004]  @9
	mov r9,#4
	str r9,[sp,#2000]  @4
	mov r9,#1
	str r9,[sp,#1996]  @1
	mov r9,#9
	str r9,[sp,#1992]  @9
	mov r9,#1
	str r9,[sp,#1988]  @1
	mov r9,#3
	str r9,[sp,#1984]  @3
	mov r9,#0
	str r9,[sp,#1980]  @0
	mov r9,#9
	str r9,[sp,#1976]  @9
	mov r9,#5
	str r9,[sp,#1972]  @5
	mov r9,#8
	str r9,[sp,#1968]  @8
	mov r9,#8
	str r9,[sp,#1964]  @8
	mov r9,#2
	str r9,[sp,#1960]  @2
	mov r9,#6
	str r9,[sp,#1956]  @6
	mov r9,#5
	str r9,[sp,#1952]  @5
	mov r9,#6
	str r9,[sp,#1948]  @6
	mov r9,#4
	str r9,[sp,#1944]  @4
	mov r9,#7
	str r9,[sp,#1940]  @7
	mov r9,#6
	str r9,[sp,#1936]  @6
	mov r9,#1
	str r9,[sp,#1932]  @1
	mov r9,#3
	str r9,[sp,#1928]  @3
	mov r9,#8
	str r9,[sp,#1924]  @8
	mov r9,#6
	str r9,[sp,#1920]  @6
	mov r9,#7
	str r9,[sp,#1916]  @7
	mov r9,#8
	str r9,[sp,#1912]  @8
	mov r9,#0
	str r9,[sp,#1908]  @0
	mov r9,#9
	str r9,[sp,#1904]  @9
	mov r9,#4
	str r9,[sp,#1900]  @4
	mov r9,#7
	str r9,[sp,#1896]  @7
	mov r9,#7
	str r9,[sp,#1892]  @7
	mov r9,#9
	str r9,[sp,#1888]  @9
	mov r9,#8
	str r9,[sp,#1884]  @8
	mov r9,#8
	str r9,[sp,#1880]  @8
	mov r9,#6
	str r9,[sp,#1876]  @6
	mov r9,#6
	str r9,[sp,#1872]  @6
	mov r9,#2
	str r9,[sp,#1868]  @2
	mov r9,#5
	str r9,[sp,#1864]  @5
	mov r9,#7
	str r9,[sp,#1860]  @7
	mov r9,#7
	str r9,[sp,#1856]  @7
	mov r9,#6
	str r9,[sp,#1852]  @6
	mov r9,#9
	str r9,[sp,#1848]  @9
	mov r9,#2
	str r9,[sp,#1844]  @2
	mov r9,#8
	str r9,[sp,#1840]  @8
	mov r9,#0
	str r9,[sp,#1836]  @0
	mov r9,#7
	str r9,[sp,#1832]  @7
	mov r9,#4
	str r9,[sp,#1828]  @4
	mov r9,#0
	str r9,[sp,#1824]  @0
	mov r9,#5
	str r9,[sp,#1820]  @5
	mov r9,#2
	str r9,[sp,#1816]  @2
	mov r9,#8
	str r9,[sp,#1812]  @8
	mov r9,#5
	str r9,[sp,#1808]  @5
	mov r9,#9
	str r9,[sp,#1804]  @9
	mov r9,#2
	str r9,[sp,#1800]  @2
	mov r9,#2
	str r9,[sp,#1796]  @2
	mov r9,#1
	str r9,[sp,#1792]  @1
	mov r9,#8
	str r9,[sp,#1788]  @8
	mov r9,#0
	str r9,[sp,#1784]  @0
	mov r9,#9
	str r9,[sp,#1780]  @9
	mov r9,#6
	str r9,[sp,#1776]  @6
	mov r9,#3
	str r9,[sp,#1772]  @3
	mov r9,#6
	str r9,[sp,#1768]  @6
	mov r9,#9
	str r9,[sp,#1764]  @9
	mov r9,#8
	str r9,[sp,#1760]  @8
	mov r9,#3
	str r9,[sp,#1756]  @3
	mov r9,#7
	str r9,[sp,#1752]  @7
	mov r9,#2
	str r9,[sp,#1748]  @2
	mov r9,#2
	str r9,[sp,#1744]  @2
	mov r9,#0
	str r9,[sp,#1740]  @0
	mov r9,#1
	str r9,[sp,#1736]  @1
	mov r9,#2
	str r9,[sp,#1732]  @2
	mov r9,#9
	str r9,[sp,#1728]  @9
	mov r9,#2
	str r9,[sp,#1724]  @2
	mov r9,#6
	str r9,[sp,#1720]  @6
	mov r9,#4
	str r9,[sp,#1716]  @4
	mov r9,#5
	str r9,[sp,#1712]  @5
	mov r9,#2
	str r9,[sp,#1708]  @2
	mov r9,#0
	str r9,[sp,#1704]  @0
	mov r9,#9
	str r9,[sp,#1700]  @9
	mov r9,#8
	str r9,[sp,#1696]  @8
	mov r9,#7
	str r9,[sp,#1692]  @7
	mov r9,#6
	str r9,[sp,#1688]  @6
	mov r9,#0
	str r9,[sp,#1684]  @0
	mov r9,#0
	str r9,[sp,#1680]  @0
	mov r9,#7
	str r9,[sp,#1676]  @7
	mov r9,#1
	str r9,[sp,#1672]  @1
	mov r9,#7
	str r9,[sp,#1668]  @7
	mov r9,#2
	str r9,[sp,#1664]  @2
	mov r9,#3
	str r9,[sp,#1660]  @3
	mov r9,#1
	str r9,[sp,#1656]  @1
	mov r9,#7
	str r9,[sp,#1652]  @7
	mov r9,#2
	str r9,[sp,#1648]  @2
	mov r9,#0
	str r9,[sp,#1644]  @0
	mov r9,#4
	str r9,[sp,#1640]  @4
	mov r9,#7
	str r9,[sp,#1636]  @7
	mov r9,#3
	str r9,[sp,#1632]  @3
	mov r9,#5
	str r9,[sp,#1628]  @5
	mov r9,#4
	str r9,[sp,#1624]  @4
	mov r9,#9
	str r9,[sp,#1620]  @9
	mov r9,#4
	str r9,[sp,#1616]  @4
	mov r9,#5
	str r9,[sp,#1612]  @5
	mov r9,#1
	str r9,[sp,#1608]  @1
	mov r9,#9
	str r9,[sp,#1604]  @9
	mov r9,#2
	str r9,[sp,#1600]  @2
	mov r9,#0
	str r9,[sp,#1596]  @0
	mov r9,#3
	str r9,[sp,#1592]  @3
	mov r9,#8
	str r9,[sp,#1588]  @8
	mov r9,#7
	str r9,[sp,#1584]  @7
	mov r9,#5
	str r9,[sp,#1580]  @5
	mov r9,#8
	str r9,[sp,#1576]  @8
	mov r9,#1
	str r9,[sp,#1572]  @1
	mov r9,#0
	str r9,[sp,#1568]  @0
	mov r9,#7
	str r9,[sp,#1564]  @7
	mov r9,#6
	str r9,[sp,#1560]  @6
	mov r9,#9
	str r9,[sp,#1556]  @9
	mov r9,#5
	str r9,[sp,#1552]  @5
	mov r9,#2
	str r9,[sp,#1548]  @2
	mov r9,#7
	str r9,[sp,#1544]  @7
	mov r9,#3
	str r9,[sp,#1540]  @3
	mov r9,#3
	str r9,[sp,#1536]  @3
	mov r9,#2
	str r9,[sp,#1532]  @2
	mov r9,#8
	str r9,[sp,#1528]  @8
	mov r9,#5
	str r9,[sp,#1524]  @5
	mov r9,#4
	str r9,[sp,#1520]  @4
	mov r9,#8
	str r9,[sp,#1516]  @8
	mov r9,#8
	str r9,[sp,#1512]  @8
	mov r9,#0
	str r9,[sp,#1508]  @0
	mov r9,#2
	str r9,[sp,#1504]  @2
	mov r9,#2
	str r9,[sp,#1500]  @2
	mov r9,#0
	str r9,[sp,#1496]  @0
	mov r9,#9
	str r9,[sp,#1492]  @9
	mov r9,#0
	str r9,[sp,#1488]  @0
	mov r9,#3
	str r9,[sp,#1484]  @3
	mov r9,#4
	str r9,[sp,#1480]  @4
	mov r9,#9
	str r9,[sp,#1476]  @9
	mov r9,#6
	str r9,[sp,#1472]  @6
	mov r9,#3
	str r9,[sp,#1468]  @3
	mov r9,#1
	str r9,[sp,#1464]  @1
	mov r9,#4
	str r9,[sp,#1460]  @4
	mov r9,#3
	str r9,[sp,#1456]  @3
	mov r9,#6
	str r9,[sp,#1452]  @6
	mov r9,#3
	str r9,[sp,#1448]  @3
	mov r9,#6
	str r9,[sp,#1444]  @6
	mov r9,#2
	str r9,[sp,#1440]  @2
	mov r9,#4
	str r9,[sp,#1436]  @4
	mov r9,#3
	str r9,[sp,#1432]  @3
	mov r9,#5
	str r9,[sp,#1428]  @5
	mov r9,#0
	str r9,[sp,#1424]  @0
	mov r9,#6
	str r9,[sp,#1420]  @6
	mov r9,#1
	str r9,[sp,#1416]  @1
	mov r9,#7
	str r9,[sp,#1412]  @7
	mov r9,#7
	str r9,[sp,#1408]  @7
	mov r9,#6
	str r9,[sp,#1404]  @6
	mov r9,#6
	str r9,[sp,#1400]  @6
	mov r9,#9
	str r9,[sp,#1396]  @9
	mov r9,#8
	str r9,[sp,#1392]  @8
	mov r9,#7
	str r9,[sp,#1388]  @7
	mov r9,#7
	str r9,[sp,#1384]  @7
	mov r9,#0
	str r9,[sp,#1380]  @0
	mov r9,#4
	str r9,[sp,#1376]  @4
	mov r9,#0
	str r9,[sp,#1372]  @0
	mov r9,#2
	str r9,[sp,#1368]  @2
	mov r9,#4
	str r9,[sp,#1364]  @4
	mov r9,#5
	str r9,[sp,#1360]  @5
	mov r9,#7
	str r9,[sp,#1356]  @7
	mov r9,#8
	str r9,[sp,#1352]  @8
	mov r9,#2
	str r9,[sp,#1348]  @2
	mov r9,#8
	str r9,[sp,#1344]  @8
	mov r9,#8
	str r9,[sp,#1340]  @8
	mov r9,#1
	str r9,[sp,#1336]  @1
	mov r9,#8
	str r9,[sp,#1332]  @8
	mov r9,#3
	str r9,[sp,#1328]  @3
	mov r9,#6
	str r9,[sp,#1324]  @6
	mov r9,#9
	str r9,[sp,#1320]  @9
	mov r9,#1
	str r9,[sp,#1316]  @1
	mov r9,#7
	str r9,[sp,#1312]  @7
	mov r9,#6
	str r9,[sp,#1308]  @6
	mov r9,#9
	str r9,[sp,#1304]  @9
	mov r9,#3
	str r9,[sp,#1300]  @3
	mov r9,#7
	str r9,[sp,#1296]  @7
	mov r9,#5
	str r9,[sp,#1292]  @5
	mov r9,#8
	str r9,[sp,#1288]  @8
	mov r9,#3
	str r9,[sp,#1284]  @3
	mov r9,#9
	str r9,[sp,#1280]  @9
	mov r9,#2
	str r9,[sp,#1276]  @2
	mov r9,#1
	str r9,[sp,#1272]  @1
	mov r9,#3
	str r9,[sp,#1268]  @3
	mov r9,#2
	str r9,[sp,#1264]  @2
	mov r9,#9
	str r9,[sp,#1260]  @9
	mov r9,#0
	str r9,[sp,#1256]  @0
	mov r9,#7
	str r9,[sp,#1252]  @7
	mov r9,#3
	str r9,[sp,#1248]  @3
	mov r9,#1
	str r9,[sp,#1244]  @1
	mov r9,#3
	str r9,[sp,#1240]  @3
	mov r9,#7
	str r9,[sp,#1236]  @7
	mov r9,#9
	str r9,[sp,#1232]  @9
	mov r9,#0
	str r9,[sp,#1228]  @0
	mov r9,#6
	str r9,[sp,#1224]  @6
	mov r9,#8
	str r9,[sp,#1220]  @8
	mov r9,#0
	str r9,[sp,#1216]  @0
	mov r9,#3
	str r9,[sp,#1212]  @3
	mov r9,#2
	str r9,[sp,#1208]  @2
	mov r9,#4
	str r9,[sp,#1204]  @4
	mov r9,#9
	str r9,[sp,#1200]  @9
	mov r9,#3
	str r9,[sp,#1196]  @3
	mov r9,#1
	str r9,[sp,#1192]  @1
	mov r9,#6
	str r9,[sp,#1188]  @6
	mov r9,#4
	str r9,[sp,#1184]  @4
	mov r9,#9
	str r9,[sp,#1180]  @9
	mov r9,#7
	str r9,[sp,#1176]  @7
	mov r9,#5
	str r9,[sp,#1172]  @5
	mov r9,#8
	str r9,[sp,#1168]  @8
	mov r9,#0
	str r9,[sp,#1164]  @0
	mov r9,#5
	str r9,[sp,#1160]  @5
	mov r9,#1
	str r9,[sp,#1156]  @1
	mov r9,#5
	str r9,[sp,#1152]  @5
	mov r9,#1
	str r9,[sp,#1148]  @1
	mov r9,#4
	str r9,[sp,#1144]  @4
	mov r9,#2
	str r9,[sp,#1140]  @2
	mov r9,#6
	str r9,[sp,#1136]  @6
	mov r9,#9
	str r9,[sp,#1132]  @9
	mov r9,#1
	str r9,[sp,#1128]  @1
	mov r9,#9
	str r9,[sp,#1124]  @9
	mov r9,#9
	str r9,[sp,#1120]  @9
	mov r9,#2
	str r9,[sp,#1116]  @2
	mov r9,#6
	str r9,[sp,#1112]  @6
	mov r9,#3
	str r9,[sp,#1108]  @3
	mov r9,#3
	str r9,[sp,#1104]  @3
	mov r9,#0
	str r9,[sp,#1100]  @0
	mov r9,#6
	str r9,[sp,#1096]  @6
	mov r9,#3
	str r9,[sp,#1092]  @3
	mov r9,#5
	str r9,[sp,#1088]  @5
	mov r9,#0
	str r9,[sp,#1084]  @0
	mov r9,#1
	str r9,[sp,#1080]  @1
	mov r9,#7
	str r9,[sp,#1076]  @7
	mov r9,#5
	str r9,[sp,#1072]  @5
	mov r9,#5
	str r9,[sp,#1068]  @5
	mov r9,#8
	str r9,[sp,#1064]  @8
	mov r9,#7
	str r9,[sp,#1060]  @7
	mov r9,#3
	str r9,[sp,#1056]  @3
	mov r9,#9
	str r9,[sp,#1052]  @9
	mov r9,#6
	str r9,[sp,#1048]  @6
	mov r9,#2
	str r9,[sp,#1044]  @2
	mov r9,#4
	str r9,[sp,#1040]  @4
	mov r9,#0
	str r9,[sp,#1036]  @0
	mov r9,#0
	str r9,[sp,#1032]  @0
	mov r9,#6
	str r9,[sp,#1028]  @6
	mov r9,#4
	str r9,[sp,#1024]  @4
	mov r9,#9
	str r9,[sp,#1020]  @9
	mov r9,#4
	str r9,[sp,#1016]  @4
	mov r9,#9
	str r9,[sp,#1012]  @9
	mov r9,#4
	str r9,[sp,#1008]  @4
	mov r9,#0
	str r9,[sp,#1004]  @0
	mov r9,#5
	str r9,[sp,#1000]  @5
	mov r9,#1
	str r9,[sp,#996]  @1
	mov r9,#0
	str r9,[sp,#992]  @0
	mov r9,#0
	str r9,[sp,#988]  @0
	mov r9,#2
	str r9,[sp,#984]  @2
	mov r9,#4
	str r9,[sp,#980]  @4
	mov r9,#9
	str r9,[sp,#976]  @9
	mov r9,#0
	str r9,[sp,#972]  @0
	mov r9,#5
	str r9,[sp,#968]  @5
	mov r9,#2
	str r9,[sp,#964]  @2
	mov r9,#5
	str r9,[sp,#960]  @5
	mov r9,#2
	str r9,[sp,#956]  @2
	mov r9,#9
	str r9,[sp,#952]  @9
	mov r9,#8
	str r9,[sp,#948]  @8
	mov r9,#5
	str r9,[sp,#944]  @5
	mov r9,#9
	str r9,[sp,#940]  @9
	mov r9,#0
	str r9,[sp,#936]  @0
	mov r9,#0
	str r9,[sp,#932]  @0
	mov r9,#4
	str r9,[sp,#928]  @4
	mov r9,#2
	str r9,[sp,#924]  @2
	mov r9,#3
	str r9,[sp,#920]  @3
	mov r9,#2
	str r9,[sp,#916]  @2
	mov r9,#5
	str r9,[sp,#912]  @5
	mov r9,#0
	str r9,[sp,#908]  @0
	mov r9,#4
	str r9,[sp,#904]  @4
	mov r9,#8
	str r9,[sp,#900]  @8
	mov r9,#5
	str r9,[sp,#896]  @5
	mov r9,#6
	str r9,[sp,#892]  @6
	mov r9,#8
	str r9,[sp,#888]  @8
	mov r9,#9
	str r9,[sp,#884]  @9
	mov r9,#6
	str r9,[sp,#880]  @6
	mov r9,#5
	str r9,[sp,#876]  @5
	mov r9,#7
	str r9,[sp,#872]  @7
	mov r9,#9
	str r9,[sp,#868]  @9
	mov r9,#2
	str r9,[sp,#864]  @2
	mov r9,#6
	str r9,[sp,#860]  @6
	mov r9,#3
	str r9,[sp,#856]  @3
	mov r9,#4
	str r9,[sp,#852]  @4
	mov r9,#8
	str r9,[sp,#848]  @8
	mov r9,#9
	str r9,[sp,#844]  @9
	mov r9,#6
	str r9,[sp,#840]  @6
	mov r9,#0
	str r9,[sp,#836]  @0
	mov r9,#6
	str r9,[sp,#832]  @6
	mov r9,#0
	str r9,[sp,#828]  @0
	mov r9,#9
	str r9,[sp,#824]  @9
	mov r9,#1
	str r9,[sp,#820]  @1
	mov r9,#7
	str r9,[sp,#816]  @7
	mov r9,#4
	str r9,[sp,#812]  @4
	mov r9,#9
	str r9,[sp,#808]  @9
	mov r9,#9
	str r9,[sp,#804]  @9
	mov r9,#7
	str r9,[sp,#800]  @7
	mov r9,#4
	str r9,[sp,#796]  @4
	mov r9,#3
	str r9,[sp,#792]  @3
	mov r9,#7
	str r9,[sp,#788]  @7
	mov r9,#4
	str r9,[sp,#784]  @4
	mov r9,#2
	str r9,[sp,#780]  @2
	mov r9,#9
	str r9,[sp,#776]  @9
	mov r9,#8
	str r9,[sp,#772]  @8
	mov r9,#1
	str r9,[sp,#768]  @1
	mov r9,#5
	str r9,[sp,#764]  @5
	mov r9,#8
	str r9,[sp,#760]  @8
	mov r9,#9
	str r9,[sp,#756]  @9
	mov r9,#8
	str r9,[sp,#752]  @8
	mov r9,#7
	str r9,[sp,#748]  @7
	mov r9,#0
	str r9,[sp,#744]  @0
	mov r9,#9
	str r9,[sp,#740]  @9
	mov r9,#9
	str r9,[sp,#736]  @9
	mov r9,#0
	str r9,[sp,#732]  @0
	mov r9,#6
	str r9,[sp,#728]  @6
	mov r9,#6
	str r9,[sp,#724]  @6
	mov r9,#0
	str r9,[sp,#720]  @0
	mov r9,#4
	str r9,[sp,#716]  @4
	mov r9,#2
	str r9,[sp,#712]  @2
	mov r9,#1
	str r9,[sp,#708]  @1
	mov r9,#7
	str r9,[sp,#704]  @7
	mov r9,#1
	str r9,[sp,#700]  @1
	mov r9,#2
	str r9,[sp,#696]  @2
	mov r9,#2
	str r9,[sp,#692]  @2
	mov r9,#7
	str r9,[sp,#688]  @7
	mov r9,#3
	str r9,[sp,#684]  @3
	mov r9,#2
	str r9,[sp,#680]  @2
	mov r9,#1
	str r9,[sp,#676]  @1
	mov r9,#8
	str r9,[sp,#672]  @8
	mov r9,#9
	str r9,[sp,#668]  @9
	mov r9,#9
	str r9,[sp,#664]  @9
	mov r9,#2
	str r9,[sp,#660]  @2
	mov r9,#4
	str r9,[sp,#656]  @4
	mov r9,#4
	str r9,[sp,#652]  @4
	mov r9,#2
	str r9,[sp,#648]  @2
	mov r9,#8
	str r9,[sp,#644]  @8
	mov r9,#9
	str r9,[sp,#640]  @9
	mov r9,#7
	str r9,[sp,#636]  @7
	mov r9,#6
	str r9,[sp,#632]  @6
	mov r9,#4
	str r9,[sp,#628]  @4
	mov r9,#8
	str r9,[sp,#624]  @8
	mov r9,#8
	str r9,[sp,#620]  @8
	mov r9,#7
	str r9,[sp,#616]  @7
	mov r9,#0
	str r9,[sp,#612]  @0
	mov r9,#5
	str r9,[sp,#608]  @5
	mov r9,#2
	str r9,[sp,#604]  @2
	mov r9,#4
	str r9,[sp,#600]  @4
	mov r9,#8
	str r9,[sp,#596]  @8
	mov r9,#9
	str r9,[sp,#592]  @9
	mov r9,#5
	str r9,[sp,#588]  @5
	mov r9,#0
	str r9,[sp,#584]  @0
	mov r9,#9
	str r9,[sp,#580]  @9
	mov r9,#4
	str r9,[sp,#576]  @4
	mov r9,#9
	str r9,[sp,#572]  @9
	mov r9,#8
	str r9,[sp,#568]  @8
	mov r9,#3
	str r9,[sp,#564]  @3
	mov r9,#8
	str r9,[sp,#560]  @8
	mov r9,#7
	str r9,[sp,#556]  @7
	mov r9,#5
	str r9,[sp,#552]  @5
	mov r9,#5
	str r9,[sp,#548]  @5
	mov r9,#2
	str r9,[sp,#544]  @2
	mov r9,#9
	str r9,[sp,#540]  @9
	mov r9,#6
	str r9,[sp,#536]  @6
	mov r9,#9
	str r9,[sp,#532]  @9
	mov r9,#9
	str r9,[sp,#528]  @9
	mov r9,#4
	str r9,[sp,#524]  @4
	mov r9,#5
	str r9,[sp,#520]  @5
	mov r9,#2
	str r9,[sp,#516]  @2
	mov r9,#3
	str r9,[sp,#512]  @3
	mov r9,#7
	str r9,[sp,#508]  @7
	mov r9,#2
	str r9,[sp,#504]  @2
	mov r9,#1
	str r9,[sp,#500]  @1
	mov r9,#5
	str r9,[sp,#496]  @5
	mov r9,#8
	str r9,[sp,#492]  @8
	mov r9,#9
	str r9,[sp,#488]  @9
	mov r9,#5
	str r9,[sp,#484]  @5
	mov r9,#0
	str r9,[sp,#480]  @0
	mov r9,#9
	str r9,[sp,#476]  @9
	mov r9,#8
	str r9,[sp,#472]  @8
	mov r9,#4
	str r9,[sp,#468]  @4
	mov r9,#3
	str r9,[sp,#464]  @3
	mov r9,#0
	str r9,[sp,#460]  @0
	mov r9,#0
	str r9,[sp,#456]  @0
	mov r9,#8
	str r9,[sp,#452]  @8
	mov r9,#8
	str r9,[sp,#448]  @8
	mov r9,#9
	str r9,[sp,#444]  @9
	mov r9,#2
	str r9,[sp,#440]  @2
	mov r9,#7
	str r9,[sp,#436]  @7
	mov r9,#6
	str r9,[sp,#432]  @6
	mov r9,#4
	str r9,[sp,#428]  @4
	mov r9,#9
	str r9,[sp,#424]  @9
	mov r9,#8
	str r9,[sp,#420]  @8
	mov r9,#6
	str r9,[sp,#416]  @6
	mov r9,#2
	str r9,[sp,#412]  @2
	mov r9,#8
	str r9,[sp,#408]  @8
	mov r9,#7
	str r9,[sp,#404]  @7
	mov r9,#7
	str r9,[sp,#400]  @7
	mov r9,#6
	str r9,[sp,#396]  @6
	mov r9,#5
	str r9,[sp,#392]  @5
	mov r9,#7
	str r9,[sp,#388]  @7
	mov r9,#0
	str r9,[sp,#384]  @0
	mov r9,#7
	str r9,[sp,#380]  @7
	mov r9,#0
	str r9,[sp,#376]  @0
	mov r9,#5
	str r9,[sp,#372]  @5
	mov r9,#3
	str r9,[sp,#368]  @3
	mov r9,#0
	str r9,[sp,#364]  @0
	mov r9,#5
	str r9,[sp,#360]  @5
	mov r9,#4
	str r9,[sp,#356]  @4
	mov r9,#5
	str r9,[sp,#352]  @5
	mov r9,#2
	str r9,[sp,#348]  @2
	mov r9,#5
	str r9,[sp,#344]  @5
	mov r9,#8
	str r9,[sp,#340]  @8
	mov r9,#4
	str r9,[sp,#336]  @4
	mov r9,#8
	str r9,[sp,#332]  @8
	mov r9,#9
	str r9,[sp,#328]  @9
	mov r9,#1
	str r9,[sp,#324]  @1
	mov r9,#1
	str r9,[sp,#320]  @1
	mov r9,#2
	str r9,[sp,#316]  @2
	mov r9,#7
	str r9,[sp,#312]  @7
	mov r9,#3
	str r9,[sp,#308]  @3
	mov r9,#0
	str r9,[sp,#304]  @0
	mov r9,#4
	str r9,[sp,#300]  @4
	mov r9,#9
	str r9,[sp,#296]  @9
	mov r9,#6
	str r9,[sp,#292]  @6
	mov r9,#6
	str r9,[sp,#288]  @6
	mov r9,#5
	str r9,[sp,#284]  @5
	mov r9,#2
	str r9,[sp,#280]  @2
	mov r9,#0
	str r9,[sp,#276]  @0
	mov r9,#5
	str r9,[sp,#272]  @5
	mov r9,#0
	str r9,[sp,#268]  @0
	mov r9,#3
	str r9,[sp,#264]  @3
	mov r9,#3
	str r9,[sp,#260]  @3
	mov r9,#4
	str r9,[sp,#256]  @4
	mov r9,#6
	str r9,[sp,#252]  @6
	mov r9,#3
	str r9,[sp,#248]  @3
	mov r9,#3
	str r9,[sp,#244]  @3
	mov r9,#9
	str r9,[sp,#240]  @9
	mov r9,#5
	str r9,[sp,#236]  @5
	mov r9,#9
	str r9,[sp,#232]  @9
	mov r9,#3
	str r9,[sp,#228]  @3
	mov r9,#4
	str r9,[sp,#224]  @4
	mov r9,#5
	str r9,[sp,#220]  @5
	mov r9,#0
	str r9,[sp,#216]  @0
	mov r9,#3
	str r9,[sp,#212]  @3
	mov r9,#3
	str r9,[sp,#208]  @3
	mov r9,#2
	str r9,[sp,#204]  @2
	mov r9,#4
	str r9,[sp,#200]  @4
	mov r9,#0
	str r9,[sp,#196]  @0
	mov r9,#8
	str r9,[sp,#192]  @8
	mov r9,#6
	str r9,[sp,#188]  @6
	mov r9,#6
	str r9,[sp,#184]  @6
	mov r9,#6
	str r9,[sp,#180]  @6
	mov r9,#9
	str r9,[sp,#176]  @9
	mov r9,#4
	str r9,[sp,#172]  @4
	mov r9,#6
	str r9,[sp,#168]  @6
	mov r9,#5
	str r9,[sp,#164]  @5
	mov r9,#5
	str r9,[sp,#160]  @5
	mov r9,#7
	str r9,[sp,#156]  @7
	mov r9,#0
	str r9,[sp,#152]  @0
	mov r9,#4
	str r9,[sp,#148]  @4
	mov r9,#5
	str r9,[sp,#144]  @5
	mov r9,#7
	str r9,[sp,#140]  @7
	mov r9,#1
	str r9,[sp,#136]  @1
	mov r9,#6
	str r9,[sp,#132]  @6
	mov r9,#7
	str r9,[sp,#128]  @7
	mov r9,#9
	str r9,[sp,#124]  @9
	mov r9,#5
	str r9,[sp,#120]  @5
	mov r9,#3
	str r9,[sp,#116]  @3
	mov r9,#4
	str r9,[sp,#112]  @4
	mov r9,#1
	str r9,[sp,#108]  @1
	mov r9,#4
	str r9,[sp,#104]  @4
	mov r9,#5
	str r9,[sp,#100]  @5
	mov r9,#5
	str r9,[sp,#96]  @5
	mov r9,#9
	str r9,[sp,#92]  @9
	mov r9,#8
	str r9,[sp,#88]  @8
	mov r9,#0
	str r9,[sp,#84]  @0
	mov r9,#9
	str r9,[sp,#80]  @9
	mov r9,#5
	str r9,[sp,#76]  @5
	mov r9,#4
	str r9,[sp,#72]  @4
	mov r9,#3
	str r9,[sp,#68]  @3
	mov r9,#9
	str r9,[sp,#64]  @9
	mov r9,#8
	str r9,[sp,#60]  @8
	mov r9,#0
	str r9,[sp,#56]  @0
	mov r9,#5
	str r9,[sp,#52]  @5
	mov r9,#3
	str r9,[sp,#48]  @3
	mov r9,#3
	str r9,[sp,#44]  @3
	mov r9,#9
	str r9,[sp,#40]  @9
	mov r9,#6
	str r9,[sp,#36]  @6
	mov r9,#1
	str r9,[sp,#32]  @1
	mov r9,#7
	str r9,[sp,#28]  @7
	mov r9,#4
	str r9,[sp,#24]  @4
	mov r9,#2
	str r9,[sp,#20]  @2
	mov r9,#6
	str r9,[sp,#16]  @6
	mov r9,#0
	str r9,[sp,#12]  @0
	mov r9,#2
	str r9,[sp,#8]  @2
	mov r9,#5
	str r9,[sp,#4]  @5
	mov r9,#9
	str r9,[sp,#0]  @9
	mov r0,#0
	mov r1,#1
	mov r2,#1
	mov r3,#8
	bl func
	add sp,sp,#2688
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
