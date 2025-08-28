
enclave.signed.so:     file format elf64-x86-64


Disassembly of section .plt:

0000000000001000 <.plt>:
    1000:	ff 35 ba ff 00 00    	push   0xffba(%rip)        # 10fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1006:	ff 25 bc ff 00 00    	jmp    *0xffbc(%rip)        # 10fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    100c:	0f 1f 40 00          	nopl   0x0(%rax)

Disassembly of section .plt.got:

0000000000001010 <_Z9pcl_entryPvS_@plt>:
    1010:	ff 25 ba ff 00 00    	jmp    *0xffba(%rip)        # 10fd0 <_Z9pcl_entryPvS_@Base>
    1016:	66 90                	xchg   %ax,%ax

0000000000001018 <ippcpSetCpuFeatures@plt>:
    1018:	ff 25 d2 ff 00 00    	jmp    *0xffd2(%rip)        # 10ff0 <ippcpSetCpuFeatures@Base>
    101e:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001020 <trts_access_version_dummy1>:
    1020:	f3 0f 1e fa          	endbr64
    1024:	48 8d 05 05 02 01 00 	lea    0x10205(%rip),%rax        # 11230 <sgx_trts_version>
    102b:	c6 00 73             	movb   $0x73,(%rax)
    102e:	c3                   	ret
    102f:	90                   	nop

0000000000001030 <tstdc_access_version_dummy1>:
    1030:	f3 0f 1e fa          	endbr64
    1034:	c6 05 a5 20 01 00 73 	movb   $0x73,0x120a5(%rip)        # 130e0 <sgx_tstdc_version>
    103b:	48 8d 05 9e 20 01 00 	lea    0x1209e(%rip),%rax        # 130e0 <sgx_tstdc_version>
    1042:	c3                   	ret
    1043:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    104a:	00 00 00 
    104d:	0f 1f 00             	nopl   (%rax)

0000000000001050 <tcrypto_access_version_dummy1>:
    1050:	f3 0f 1e fa          	endbr64
    1054:	c6 05 a5 20 01 00 73 	movb   $0x73,0x120a5(%rip)        # 13100 <sgx_tcrypto_version>
    105b:	48 8d 05 9e 20 01 00 	lea    0x1209e(%rip),%rax        # 13100 <sgx_tcrypto_version>
    1062:	c3                   	ret
    1063:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    106a:	00 00 00 
    106d:	0f 1f 00             	nopl   (%rax)

0000000000001070 <tservice_access_version_dummy1>:
    1070:	f3 0f 1e fa          	endbr64
    1074:	c6 05 a5 20 01 00 73 	movb   $0x73,0x120a5(%rip)        # 13120 <sgx_tservice_version>
    107b:	48 8d 05 9e 20 01 00 	lea    0x1209e(%rip),%rax        # 13120 <sgx_tservice_version>
    1082:	c3                   	ret

0000000000001083 <sgx_enclave_add>:
    1083:	f3 0f 1e fa          	endbr64
    1087:	55                   	push   %rbp
    1088:	48 89 e5             	mov    %rsp,%rbp
    108b:	48 83 ec 30          	sub    $0x30,%rsp
    108f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1093:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    1098:	74 15                	je     10af <sgx_enclave_add+0x2c>
    109a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    109e:	be 0c 00 00 00       	mov    $0xc,%esi
    10a3:	48 89 c7             	mov    %rax,%rdi
    10a6:	e8 f5 19 00 00       	call   2aa0 <sgx_is_outside_enclave>
    10ab:	85 c0                	test   %eax,%eax
    10ad:	75 07                	jne    10b6 <sgx_enclave_add+0x33>
    10af:	b8 02 00 00 00       	mov    $0x2,%eax
    10b4:	eb 74                	jmp    112a <sgx_enclave_add+0xa7>
    10b6:	0f ae e8             	lfence
    10b9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    10bd:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    10c1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    10c5:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
    10c9:	b9 0c 00 00 00       	mov    $0xc,%ecx
    10ce:	be 0c 00 00 00       	mov    $0xc,%esi
    10d3:	48 89 c7             	mov    %rax,%rdi
    10d6:	e8 85 a5 00 00       	call   b660 <memcpy_s>
    10db:	85 c0                	test   %eax,%eax
    10dd:	74 07                	je     10e6 <sgx_enclave_add+0x63>
    10df:	b8 01 00 00 00       	mov    $0x1,%eax
    10e4:	eb 44                	jmp    112a <sgx_enclave_add+0xa7>
    10e6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    10ed:	8b 55 fc             	mov    -0x4(%rbp),%edx
    10f0:	8b 45 f8             	mov    -0x8(%rbp),%eax
    10f3:	89 d6                	mov    %edx,%esi
    10f5:	89 c7                	mov    %eax,%edi
    10f7:	e8 c0 01 00 00       	call   12bc <enclave_add>
    10fc:	89 45 e0             	mov    %eax,-0x20(%rbp)
    10ff:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1103:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    1107:	b9 04 00 00 00       	mov    $0x4,%ecx
    110c:	be 04 00 00 00       	mov    $0x4,%esi
    1111:	48 89 c7             	mov    %rax,%rdi
    1114:	e8 c7 a5 00 00       	call   b6e0 <memcpy_verw_s>
    1119:	85 c0                	test   %eax,%eax
    111b:	74 09                	je     1126 <sgx_enclave_add+0xa3>
    111d:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%rbp)
    1124:	eb 01                	jmp    1127 <sgx_enclave_add+0xa4>
    1126:	90                   	nop
    1127:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    112a:	c9                   	leave
    112b:	c3                   	ret

000000000000112c <host_print>:
    112c:	f3 0f 1e fa          	endbr64
    1130:	55                   	push   %rbp
    1131:	48 89 e5             	mov    %rsp,%rbp
    1134:	48 83 ec 40          	sub    $0x40,%rsp
    1138:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    113c:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    1143:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
    1148:	74 12                	je     115c <host_print+0x30>
    114a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    114e:	48 89 c7             	mov    %rax,%rdi
    1151:	e8 ba a3 00 00       	call   b510 <strlen>
    1156:	48 83 c0 01          	add    $0x1,%rax
    115a:	eb 05                	jmp    1161 <host_print+0x35>
    115c:	b8 00 00 00 00       	mov    $0x0,%eax
    1161:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1165:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    116c:	00 
    116d:	48 c7 45 f8 08 00 00 	movq   $0x8,-0x8(%rbp)
    1174:	00 
    1175:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    117c:	00 
    117d:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
    1182:	74 21                	je     11a5 <host_print+0x79>
    1184:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    1188:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    118c:	48 89 d6             	mov    %rdx,%rsi
    118f:	48 89 c7             	mov    %rax,%rdi
    1192:	e8 a9 18 00 00       	call   2a40 <sgx_is_within_enclave>
    1197:	85 c0                	test   %eax,%eax
    1199:	75 0a                	jne    11a5 <host_print+0x79>
    119b:	b8 02 00 00 00       	mov    $0x2,%eax
    11a0:	e9 15 01 00 00       	jmp    12ba <host_print+0x18e>
    11a5:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
    11aa:	74 06                	je     11b2 <host_print+0x86>
    11ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11b0:	eb 05                	jmp    11b7 <host_print+0x8b>
    11b2:	b8 00 00 00 00       	mov    $0x0,%eax
    11b7:	48 01 45 f8          	add    %rax,-0x8(%rbp)
    11bb:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
    11c0:	74 06                	je     11c8 <host_print+0x9c>
    11c2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11c6:	eb 05                	jmp    11cd <host_print+0xa1>
    11c8:	b8 00 00 00 00       	mov    $0x0,%eax
    11cd:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
    11d1:	73 0a                	jae    11dd <host_print+0xb1>
    11d3:	b8 02 00 00 00       	mov    $0x2,%eax
    11d8:	e9 dd 00 00 00       	jmp    12ba <host_print+0x18e>
    11dd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    11e1:	48 89 c7             	mov    %rax,%rdi
    11e4:	e8 17 19 00 00       	call   2b00 <sgx_ocalloc>
    11e9:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    11ed:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    11f1:	48 85 c0             	test   %rax,%rax
    11f4:	75 0f                	jne    1205 <host_print+0xd9>
    11f6:	e8 e5 19 00 00       	call   2be0 <sgx_ocfree>
    11fb:	b8 01 00 00 00       	mov    $0x1,%eax
    1200:	e9 b5 00 00 00       	jmp    12ba <host_print+0x18e>
    1205:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1209:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    120d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1211:	48 83 c0 08          	add    $0x8,%rax
    1215:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1219:	48 83 6d f8 08       	subq   $0x8,-0x8(%rbp)
    121e:	48 83 7d c8 00       	cmpq   $0x0,-0x38(%rbp)
    1223:	74 6e                	je     1293 <host_print+0x167>
    1225:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1229:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    122d:	b9 08 00 00 00       	mov    $0x8,%ecx
    1232:	be 08 00 00 00       	mov    $0x8,%esi
    1237:	48 89 c7             	mov    %rax,%rdi
    123a:	e8 a1 a4 00 00       	call   b6e0 <memcpy_verw_s>
    123f:	85 c0                	test   %eax,%eax
    1241:	74 0c                	je     124f <host_print+0x123>
    1243:	e8 98 19 00 00       	call   2be0 <sgx_ocfree>
    1248:	b8 01 00 00 00       	mov    $0x1,%eax
    124d:	eb 6b                	jmp    12ba <host_print+0x18e>
    124f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    1253:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    1257:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    125b:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    125f:	48 89 c7             	mov    %rax,%rdi
    1262:	e8 79 a4 00 00       	call   b6e0 <memcpy_verw_s>
    1267:	85 c0                	test   %eax,%eax
    1269:	74 0c                	je     1277 <host_print+0x14b>
    126b:	e8 70 19 00 00       	call   2be0 <sgx_ocfree>
    1270:	b8 01 00 00 00       	mov    $0x1,%eax
    1275:	eb 43                	jmp    12ba <host_print+0x18e>
    1277:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    127b:	48 89 c2             	mov    %rax,%rdx
    127e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1282:	48 01 d0             	add    %rdx,%rax
    1285:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    1289:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    128d:	48 29 45 f8          	sub    %rax,-0x8(%rbp)
    1291:	eb 0b                	jmp    129e <host_print+0x172>
    1293:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1297:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    129e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    12a2:	48 89 c6             	mov    %rax,%rsi
    12a5:	bf 00 00 00 00       	mov    $0x0,%edi
    12aa:	e8 c1 2b 00 00       	call   3e70 <sgx_ocall>
    12af:	89 45 dc             	mov    %eax,-0x24(%rbp)
    12b2:	e8 29 19 00 00       	call   2be0 <sgx_ocfree>
    12b7:	8b 45 dc             	mov    -0x24(%rbp),%eax
    12ba:	c9                   	leave
    12bb:	c3                   	ret

00000000000012bc <enclave_add>:
    12bc:	f3 0f 1e fa          	endbr64
    12c0:	55                   	push   %rbp
    12c1:	48 89 e5             	mov    %rsp,%rbp
    12c4:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    12c8:	89 7d 8c             	mov    %edi,-0x74(%rbp)
    12cb:	89 75 88             	mov    %esi,-0x78(%rbp)
    12ce:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12d5:	00 00 
    12d7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12db:	31 c0                	xor    %eax,%eax
    12dd:	48 b8 48 65 6c 6c 6f 	movabs $0x7266206f6c6c6548,%rax
    12e4:	20 66 72 
    12e7:	48 ba 6f 6d 20 65 6e 	movabs $0x616c636e65206d6f,%rdx
    12ee:	63 6c 61 
    12f1:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    12f5:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
    12f9:	48 c7 45 a0 76 65 00 	movq   $0x6576,-0x60(%rbp)
    1300:	00 
    1301:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
    1308:	00 
    1309:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
    1310:	00 
    1311:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
    1318:	00 
    1319:	48 c7 45 c0 00 00 00 	movq   $0x0,-0x40(%rbp)
    1320:	00 
    1321:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
    1328:	00 
    1329:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
    1330:	00 
    1331:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
    1338:	00 
    1339:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    1340:	00 
    1341:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
    1348:	00 
    1349:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    1350:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    1354:	48 89 c7             	mov    %rax,%rdi
    1357:	e8 d0 fd ff ff       	call   112c <host_print>
    135c:	8b 55 8c             	mov    -0x74(%rbp),%edx
    135f:	8b 45 88             	mov    -0x78(%rbp),%eax
    1362:	01 d0                	add    %edx,%eax
    1364:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1368:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    136f:	00 00 
    1371:	74 05                	je     1378 <enclave_add+0xbc>
    1373:	e8 a8 a1 00 00       	call   b520 <__stack_chk_fail>
    1378:	c9                   	leave
    1379:	c3                   	ret
    137a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001380 <register_value_select>:
    1380:	89 f1                	mov    %esi,%ecx
    1382:	31 c0                	xor    %eax,%eax
    1384:	48 83 f9 00          	cmp    $0x0,%rcx
    1388:	48 0f 44 07          	cmove  (%rdi),%rax
    138c:	48 83 f9 01          	cmp    $0x1,%rcx
    1390:	48 0f 44 47 08       	cmove  0x8(%rdi),%rax
    1395:	48 83 f9 02          	cmp    $0x2,%rcx
    1399:	48 0f 44 47 10       	cmove  0x10(%rdi),%rax
    139e:	48 83 f9 03          	cmp    $0x3,%rcx
    13a2:	48 0f 44 47 18       	cmove  0x18(%rdi),%rax
    13a7:	48 83 f9 04          	cmp    $0x4,%rcx
    13ab:	48 0f 44 47 20       	cmove  0x20(%rdi),%rax
    13b0:	48 83 f9 05          	cmp    $0x5,%rcx
    13b4:	48 0f 44 47 28       	cmove  0x28(%rdi),%rax
    13b9:	48 83 f9 06          	cmp    $0x6,%rcx
    13bd:	48 0f 44 47 30       	cmove  0x30(%rdi),%rax
    13c2:	48 83 f9 07          	cmp    $0x7,%rcx
    13c6:	48 0f 44 47 38       	cmove  0x38(%rdi),%rax
    13cb:	48 83 f9 08          	cmp    $0x8,%rcx
    13cf:	48 0f 44 47 40       	cmove  0x40(%rdi),%rax
    13d4:	48 83 f9 09          	cmp    $0x9,%rcx
    13d8:	48 0f 44 47 48       	cmove  0x48(%rdi),%rax
    13dd:	48 83 f9 0a          	cmp    $0xa,%rcx
    13e1:	48 0f 44 47 50       	cmove  0x50(%rdi),%rax
    13e6:	48 83 f9 0b          	cmp    $0xb,%rcx
    13ea:	48 0f 44 47 58       	cmove  0x58(%rdi),%rax
    13ef:	48 83 f9 0c          	cmp    $0xc,%rcx
    13f3:	48 0f 44 47 60       	cmove  0x60(%rdi),%rax
    13f8:	48 83 f9 0d          	cmp    $0xd,%rcx
    13fc:	48 0f 44 47 68       	cmove  0x68(%rdi),%rax
    1401:	48 83 f9 0e          	cmp    $0xe,%rcx
    1405:	48 0f 44 47 70       	cmove  0x70(%rdi),%rax
    140a:	48 83 f9 0f          	cmp    $0xf,%rcx
    140e:	48 0f 44 47 78       	cmove  0x78(%rdi),%rax
    1413:	c3                   	ret
    1414:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    141b:	00 00 00 
    141e:	66 90                	xchg   %ax,%ax

0000000000001420 <ct_decode>:
    1420:	f3 0f 1e fa          	endbr64
    1424:	55                   	push   %rbp
    1425:	48 89 e5             	mov    %rsp,%rbp
    1428:	41 57                	push   %r15
    142a:	41 56                	push   %r14
    142c:	41 55                	push   %r13
    142e:	41 54                	push   %r12
    1430:	53                   	push   %rbx
    1431:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    1435:	48 81 ec 40 05 00 00 	sub    $0x540,%rsp
    143c:	48 89 bc 24 98 00 00 	mov    %rdi,0x98(%rsp)
    1443:	00 
    1444:	48 89 b4 24 80 00 00 	mov    %rsi,0x80(%rsp)
    144b:	00 
    144c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1453:	00 00 
    1455:	48 89 84 24 38 05 00 	mov    %rax,0x538(%rsp)
    145c:	00 
    145d:	31 c0                	xor    %eax,%eax
    145f:	48 8d 84 24 00 01 00 	lea    0x100(%rsp),%rax
    1466:	00 
    1467:	f6 05 95 f9 00 00 08 	testb  $0x8,0xf995(%rip)        # 10e03 <g_cpu_feature_indicator+0x3>
    146e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    1473:	0f 84 7f 0f 00 00    	je     23f8 <ct_decode+0xfd8>
    1479:	62 f1 7c 48 29 00    	vmovaps %zmm0,(%rax)
    147f:	62 f1 7c 48 29 48 01 	vmovaps %zmm1,0x40(%rax)
    1486:	62 f1 7c 48 29 50 02 	vmovaps %zmm2,0x80(%rax)
    148d:	62 f1 7c 48 29 58 03 	vmovaps %zmm3,0xc0(%rax)
    1494:	62 f1 7c 48 29 60 04 	vmovaps %zmm4,0x100(%rax)
    149b:	62 f1 7c 48 29 68 05 	vmovaps %zmm5,0x140(%rax)
    14a2:	62 f1 7c 48 29 70 06 	vmovaps %zmm6,0x180(%rax)
    14a9:	62 f1 7c 48 29 78 07 	vmovaps %zmm7,0x1c0(%rax)
    14b0:	62 71 7c 48 29 40 08 	vmovaps %zmm8,0x200(%rax)
    14b7:	62 71 7c 48 29 48 09 	vmovaps %zmm9,0x240(%rax)
    14be:	62 71 7c 48 29 50 0a 	vmovaps %zmm10,0x280(%rax)
    14c5:	62 71 7c 48 29 58 0b 	vmovaps %zmm11,0x2c0(%rax)
    14cc:	62 71 7c 48 29 60 0c 	vmovaps %zmm12,0x300(%rax)
    14d3:	62 71 7c 48 29 68 0d 	vmovaps %zmm13,0x340(%rax)
    14da:	62 71 7c 48 29 70 0e 	vmovaps %zmm14,0x380(%rax)
    14e1:	62 71 7c 48 29 78 0f 	vmovaps %zmm15,0x3c0(%rax)
    14e8:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    14ef:	00 
    14f0:	31 d2                	xor    %edx,%edx
    14f2:	b9 f0 0f 00 00       	mov    $0xff0,%ecx
    14f7:	c5 f9 6f 2d 21 fc 00 	vmovdqa 0xfc21(%rip),%xmm5        # 11120 <standard>
    14fe:	00 
    14ff:	c4 e3 55 38 2d 17 fb 	vinserti128 $0x1,0xfb17(%rip),%ymm5,%ymm5        # 11020 <extended>
    1506:	00 00 01 
    1509:	c5 79 6f 25 2f fc 00 	vmovdqa 0xfc2f(%rip),%xmm12        # 11140 <standard+0x20>
    1510:	00 
    1511:	41 be 01 00 00 00    	mov    $0x1,%r14d
    1517:	41 bb 02 00 00 00    	mov    $0x2,%r11d
    151d:	48 8b 9f 88 00 00 00 	mov    0x88(%rdi),%rbx
    1524:	48 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%rdi
    152b:	c4 63 1d 38 25 0b fb 	vinserti128 $0x1,0xfb0b(%rip),%ymm12,%ymm12        # 11040 <extended+0x20>
    1532:	00 00 01 
    1535:	41 bf 04 00 00 00    	mov    $0x4,%r15d
    153b:	c5 79 6f 1d 2d fc 00 	vmovdqa 0xfc2d(%rip),%xmm11        # 11170 <standard+0x50>
    1542:	00 
    1543:	c5 79 6f 15 35 fc 00 	vmovdqa 0xfc35(%rip),%xmm10        # 11180 <standard+0x60>
    154a:	00 
    154b:	48 89 d8             	mov    %rbx,%rax
    154e:	c5 79 6f 0d 3a fc 00 	vmovdqa 0xfc3a(%rip),%xmm9        # 11190 <standard+0x70>
    1555:	00 
    1556:	c4 63 25 38 1d 10 fb 	vinserti128 $0x1,0xfb10(%rip),%ymm11,%ymm11        # 11070 <extended+0x50>
    155d:	00 00 01 
    1560:	48 89 9c 24 88 00 00 	mov    %rbx,0x88(%rsp)
    1567:	00 
    1568:	25 ff 0f 00 00       	and    $0xfff,%eax
    156d:	c5 79 6f 05 2b fc 00 	vmovdqa 0xfc2b(%rip),%xmm8        # 111a0 <standard+0x80>
    1574:	00 
    1575:	c4 63 2d 38 15 01 fb 	vinserti128 $0x1,0xfb01(%rip),%ymm10,%ymm10        # 11080 <extended+0x60>
    157c:	00 00 01 
    157f:	48 3d f0 0f 00 00    	cmp    $0xff0,%rax
    1585:	c5 79 6f 3d 43 fc 00 	vmovdqa 0xfc43(%rip),%xmm15        # 111d0 <standard+0xb0>
    158c:	00 
    158d:	c4 63 35 38 0d f9 fa 	vinserti128 $0x1,0xfaf9(%rip),%ymm9,%ymm9        # 11090 <extended+0x70>
    1594:	00 00 01 
    1597:	c4 63 3d 38 05 ff fa 	vinserti128 $0x1,0xfaff(%rip),%ymm8,%ymm8        # 110a0 <extended+0x80>
    159e:	00 00 01 
    15a1:	0f 96 c2             	setbe  %dl
    15a4:	c4 63 05 38 3d 22 fb 	vinserti128 $0x1,0xfb22(%rip),%ymm15,%ymm15        # 110d0 <extended+0xb0>
    15ab:	00 00 01 
    15ae:	48 83 fa 00          	cmp    $0x0,%rdx
    15b2:	48 0f 45 c8          	cmovne %rax,%rcx
    15b6:	31 d2                	xor    %edx,%edx
    15b8:	48 3d f0 0f 00 00    	cmp    $0xff0,%rax
    15be:	0f 97 c2             	seta   %dl
    15c1:	31 c0                	xor    %eax,%eax
    15c3:	48 83 fa 00          	cmp    $0x0,%rdx
    15c7:	48 0f 45 c7          	cmovne %rdi,%rax
    15cb:	48 89 da             	mov    %rbx,%rdx
    15ce:	c4 e1 f9 6e e0       	vmovq  %rax,%xmm4
    15d3:	48 b8 f0 f0 f0 f0 f0 	movabs $0xf0f0f0f0f0f0f0f0,%rax
    15da:	f0 f0 f0 
    15dd:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    15e4:	c5 d9 6c e4          	vpunpcklqdq %xmm4,%xmm4,%xmm4
    15e8:	c4 e1 f9 6e c0       	vmovq  %rax,%xmm0
    15ed:	48 b8 80 80 80 80 80 	movabs $0x8080808080808080,%rax
    15f4:	80 80 80 
    15f7:	48 09 ca             	or     %rcx,%rdx
    15fa:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
    15ff:	c4 61 f9 6e f0       	vmovq  %rax,%xmm14
    1604:	b8 10 00 00 00       	mov    $0x10,%eax
    1609:	c5 d9 eb 22          	vpor   (%rdx),%xmm4,%xmm4
    160d:	c4 c2 7d 59 de       	vpbroadcastq %xmm14,%ymm3
    1612:	c4 e2 7d 59 cc       	vpbroadcastq %xmm4,%ymm1
    1617:	c4 e1 f9 7e e6       	vmovq  %xmm4,%rsi
    161c:	c5 fd df d1          	vpandn %ymm1,%ymm0,%ymm2
    1620:	c5 f5 db c8          	vpand  %ymm0,%ymm1,%ymm1
    1624:	c5 f9 ef c0          	vpxor  %xmm0,%xmm0,%xmm0
    1628:	49 89 f2             	mov    %rsi,%r10
    162b:	c5 f5 74 c0          	vpcmpeqb %ymm0,%ymm1,%ymm0
    162f:	c5 fd df c3          	vpandn %ymm3,%ymm0,%ymm0
    1633:	c5 fd eb c2          	vpor   %ymm2,%ymm0,%ymm0
    1637:	c4 62 55 00 e8       	vpshufb %ymm0,%ymm5,%ymm13
    163c:	c5 f9 6e c0          	vmovd  %eax,%xmm0
    1640:	c5 f9 6f 2d e8 fa 00 	vmovdqa 0xfae8(%rip),%xmm5        # 11130 <standard+0x10>
    1647:	00 
    1648:	c4 e3 55 38 2d de f9 	vinserti128 $0x1,0xf9de(%rip),%ymm5,%ymm5        # 11030 <extended+0x10>
    164f:	00 00 01 
    1652:	c4 e2 7d 78 c0       	vpbroadcastb %xmm0,%ymm0
    1657:	b8 20 00 00 00       	mov    $0x20,%eax
    165c:	c5 7d 7f ac 24 c0 00 	vmovdqa %ymm13,0xc0(%rsp)
    1663:	00 00 
    1665:	c5 f5 74 c0          	vpcmpeqb %ymm0,%ymm1,%ymm0
    1669:	c5 fd df c3          	vpandn %ymm3,%ymm0,%ymm0
    166d:	c5 fd eb c2          	vpor   %ymm2,%ymm0,%ymm0
    1671:	c4 e2 55 00 f8       	vpshufb %ymm0,%ymm5,%ymm7
    1676:	c5 f9 6e c0          	vmovd  %eax,%xmm0
    167a:	b8 30 00 00 00       	mov    $0x30,%eax
    167f:	c5 f9 6f 2d c9 fa 00 	vmovdqa 0xfac9(%rip),%xmm5        # 11150 <standard+0x30>
    1686:	00 
    1687:	c4 e3 55 38 2d bf f9 	vinserti128 $0x1,0xf9bf(%rip),%ymm5,%ymm5        # 11050 <extended+0x30>
    168e:	00 00 01 
    1691:	c4 e2 7d 78 c0       	vpbroadcastb %xmm0,%ymm0
    1696:	c5 fd 7f bc 24 e0 00 	vmovdqa %ymm7,0xe0(%rsp)
    169d:	00 00 
    169f:	c5 f9 6f 3d 09 fb 00 	vmovdqa 0xfb09(%rip),%xmm7        # 111b0 <standard+0x90>
    16a6:	00 
    16a7:	c4 e3 45 38 3d ff f9 	vinserti128 $0x1,0xf9ff(%rip),%ymm7,%ymm7        # 110b0 <extended+0x90>
    16ae:	00 00 01 
    16b1:	c5 f5 74 c0          	vpcmpeqb %ymm0,%ymm1,%ymm0
    16b5:	c5 fd df c3          	vpandn %ymm3,%ymm0,%ymm0
    16b9:	c5 fd eb c2          	vpor   %ymm2,%ymm0,%ymm0
    16bd:	c4 62 1d 00 e0       	vpshufb %ymm0,%ymm12,%ymm12
    16c2:	c5 f9 6e c0          	vmovd  %eax,%xmm0
    16c6:	b8 40 00 00 00       	mov    $0x40,%eax
    16cb:	c4 e2 7d 78 c0       	vpbroadcastb %xmm0,%ymm0
    16d0:	c5 f9 6e f0          	vmovd  %eax,%xmm6
    16d4:	b8 50 00 00 00       	mov    $0x50,%eax
    16d9:	c5 f5 74 c0          	vpcmpeqb %ymm0,%ymm1,%ymm0
    16dd:	c4 e2 7d 78 f6       	vpbroadcastb %xmm6,%ymm6
    16e2:	c5 f5 74 f6          	vpcmpeqb %ymm6,%ymm1,%ymm6
    16e6:	c5 fd df c3          	vpandn %ymm3,%ymm0,%ymm0
    16ea:	c5 fd eb c2          	vpor   %ymm2,%ymm0,%ymm0
    16ee:	c5 cd df f3          	vpandn %ymm3,%ymm6,%ymm6
    16f2:	c4 e2 55 00 e8       	vpshufb %ymm0,%ymm5,%ymm5
    16f7:	c5 f9 6f 05 61 fa 00 	vmovdqa 0xfa61(%rip),%xmm0        # 11160 <standard+0x40>
    16fe:	00 
    16ff:	c5 cd eb f2          	vpor   %ymm2,%ymm6,%ymm6
    1703:	c4 e3 7d 38 05 53 f9 	vinserti128 $0x1,0xf953(%rip),%ymm0,%ymm0        # 11060 <extended+0x40>
    170a:	00 00 01 
    170d:	c4 e1 f9 7e ea       	vmovq  %xmm5,%rdx
    1712:	c4 e3 7d 39 ed 01    	vextracti128 $0x1,%ymm5,%xmm5
    1718:	c4 e2 7d 00 c6       	vpshufb %ymm6,%ymm0,%ymm0
    171d:	c5 f9 6e f0          	vmovd  %eax,%xmm6
    1721:	b8 60 00 00 00       	mov    $0x60,%eax
    1726:	c4 e2 7d 78 f6       	vpbroadcastb %xmm6,%ymm6
    172b:	c5 f5 74 f6          	vpcmpeqb %ymm6,%ymm1,%ymm6
    172f:	c5 cd df f3          	vpandn %ymm3,%ymm6,%ymm6
    1733:	c5 cd eb f2          	vpor   %ymm2,%ymm6,%ymm6
    1737:	c4 62 25 00 de       	vpshufb %ymm6,%ymm11,%ymm11
    173c:	c5 f9 6e f0          	vmovd  %eax,%xmm6
    1740:	b8 70 00 00 00       	mov    $0x70,%eax
    1745:	c4 e2 7d 78 f6       	vpbroadcastb %xmm6,%ymm6
    174a:	c5 f5 74 f6          	vpcmpeqb %ymm6,%ymm1,%ymm6
    174e:	c5 cd df f3          	vpandn %ymm3,%ymm6,%ymm6
    1752:	c5 cd eb f2          	vpor   %ymm2,%ymm6,%ymm6
    1756:	c4 62 2d 00 d6       	vpshufb %ymm6,%ymm10,%ymm10
    175b:	c5 f9 6e f0          	vmovd  %eax,%xmm6
    175f:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
    1764:	c4 e2 7d 78 f6       	vpbroadcastb %xmm6,%ymm6
    1769:	c5 f5 74 f6          	vpcmpeqb %ymm6,%ymm1,%ymm6
    176d:	c5 cd df f3          	vpandn %ymm3,%ymm6,%ymm6
    1771:	c5 cd eb f2          	vpor   %ymm2,%ymm6,%ymm6
    1775:	c4 62 35 00 ce       	vpshufb %ymm6,%ymm9,%ymm9
    177a:	c5 f9 6e f0          	vmovd  %eax,%xmm6
    177e:	b8 90 ff ff ff       	mov    $0xffffff90,%eax
    1783:	c4 e2 7d 78 f6       	vpbroadcastb %xmm6,%ymm6
    1788:	c5 f5 74 f6          	vpcmpeqb %ymm6,%ymm1,%ymm6
    178c:	c5 cd df f3          	vpandn %ymm3,%ymm6,%ymm6
    1790:	c5 cd eb f2          	vpor   %ymm2,%ymm6,%ymm6
    1794:	c4 62 3d 00 c6       	vpshufb %ymm6,%ymm8,%ymm8
    1799:	c5 f9 6e f0          	vmovd  %eax,%xmm6
    179d:	b8 a0 ff ff ff       	mov    $0xffffffa0,%eax
    17a2:	c4 e2 7d 78 f6       	vpbroadcastb %xmm6,%ymm6
    17a7:	c5 79 6e e8          	vmovd  %eax,%xmm13
    17ab:	b8 b0 ff ff ff       	mov    $0xffffffb0,%eax
    17b0:	c5 f5 74 f6          	vpcmpeqb %ymm6,%ymm1,%ymm6
    17b4:	c4 42 7d 78 ed       	vpbroadcastb %xmm13,%ymm13
    17b9:	c4 41 75 74 ed       	vpcmpeqb %ymm13,%ymm1,%ymm13
    17be:	c5 cd df f3          	vpandn %ymm3,%ymm6,%ymm6
    17c2:	c5 cd eb f2          	vpor   %ymm2,%ymm6,%ymm6
    17c6:	c5 15 df eb          	vpandn %ymm3,%ymm13,%ymm13
    17ca:	c4 e2 45 00 fe       	vpshufb %ymm6,%ymm7,%ymm7
    17cf:	c5 f9 6f 35 e9 f9 00 	vmovdqa 0xf9e9(%rip),%xmm6        # 111c0 <standard+0xa0>
    17d6:	00 
    17d7:	c5 15 eb ea          	vpor   %ymm2,%ymm13,%ymm13
    17db:	c4 e3 4d 38 35 db f8 	vinserti128 $0x1,0xf8db(%rip),%ymm6,%ymm6        # 110c0 <extended+0xa0>
    17e2:	00 00 01 
    17e5:	c4 c2 4d 00 f5       	vpshufb %ymm13,%ymm6,%ymm6
    17ea:	c5 79 6e e8          	vmovd  %eax,%xmm13
    17ee:	b8 c0 ff ff ff       	mov    $0xffffffc0,%eax
    17f3:	c4 42 7d 78 ed       	vpbroadcastb %xmm13,%ymm13
    17f8:	c4 41 75 74 ed       	vpcmpeqb %ymm13,%ymm1,%ymm13
    17fd:	c5 15 df eb          	vpandn %ymm3,%ymm13,%ymm13
    1801:	c5 15 eb ea          	vpor   %ymm2,%ymm13,%ymm13
    1805:	c4 42 05 00 fd       	vpshufb %ymm13,%ymm15,%ymm15
    180a:	c5 79 6e e8          	vmovd  %eax,%xmm13
    180e:	b8 d0 ff ff ff       	mov    $0xffffffd0,%eax
    1813:	c5 7d 7f bc 24 a0 00 	vmovdqa %ymm15,0xa0(%rsp)
    181a:	00 00 
    181c:	c4 42 7d 78 ed       	vpbroadcastb %xmm13,%ymm13
    1821:	c5 79 6f 3d b7 f9 00 	vmovdqa 0xf9b7(%rip),%xmm15        # 111e0 <standard+0xc0>
    1828:	00 
    1829:	c4 63 05 38 3d ad f8 	vinserti128 $0x1,0xf8ad(%rip),%ymm15,%ymm15        # 110e0 <extended+0xc0>
    1830:	00 00 01 
    1833:	c4 41 75 74 ed       	vpcmpeqb %ymm13,%ymm1,%ymm13
    1838:	c5 15 df eb          	vpandn %ymm3,%ymm13,%ymm13
    183c:	c5 15 eb ea          	vpor   %ymm2,%ymm13,%ymm13
    1840:	c4 42 05 00 fd       	vpshufb %ymm13,%ymm15,%ymm15
    1845:	c5 79 6e e8          	vmovd  %eax,%xmm13
    1849:	b8 e0 ff ff ff       	mov    $0xffffffe0,%eax
    184e:	c4 42 7d 78 ed       	vpbroadcastb %xmm13,%ymm13
    1853:	c5 7d 7f 7c 24 60    	vmovdqa %ymm15,0x60(%rsp)
    1859:	c5 79 6f 3d 8f f9 00 	vmovdqa 0xf98f(%rip),%xmm15        # 111f0 <standard+0xd0>
    1860:	00 
    1861:	c4 63 05 38 3d 85 f8 	vinserti128 $0x1,0xf885(%rip),%ymm15,%ymm15        # 110f0 <extended+0xd0>
    1868:	00 00 01 
    186b:	c4 41 75 74 ed       	vpcmpeqb %ymm13,%ymm1,%ymm13
    1870:	c5 15 df eb          	vpandn %ymm3,%ymm13,%ymm13
    1874:	c5 15 eb ea          	vpor   %ymm2,%ymm13,%ymm13
    1878:	c4 42 05 00 fd       	vpshufb %ymm13,%ymm15,%ymm15
    187d:	c5 79 6e e8          	vmovd  %eax,%xmm13
    1881:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
    1886:	c4 42 7d 78 ed       	vpbroadcastb %xmm13,%ymm13
    188b:	c5 7d 7f 7c 24 40    	vmovdqa %ymm15,0x40(%rsp)
    1891:	c5 79 6f 3d 67 f9 00 	vmovdqa 0xf967(%rip),%xmm15        # 11200 <standard+0xe0>
    1898:	00 
    1899:	c4 63 05 38 3d 5d f8 	vinserti128 $0x1,0xf85d(%rip),%ymm15,%ymm15        # 11100 <extended+0xe0>
    18a0:	00 00 01 
    18a3:	c4 41 75 74 ed       	vpcmpeqb %ymm13,%ymm1,%ymm13
    18a8:	c5 15 df eb          	vpandn %ymm3,%ymm13,%ymm13
    18ac:	c5 15 eb ea          	vpor   %ymm2,%ymm13,%ymm13
    18b0:	c4 42 05 00 fd       	vpshufb %ymm13,%ymm15,%ymm15
    18b5:	c5 79 6e e8          	vmovd  %eax,%xmm13
    18b9:	c4 61 f9 7e e0       	vmovq  %xmm12,%rax
    18be:	c4 42 7d 78 ed       	vpbroadcastb %xmm13,%ymm13
    18c3:	48 09 d0             	or     %rdx,%rax
    18c6:	c4 e1 f9 7e c2       	vmovq  %xmm0,%rdx
    18cb:	c4 c1 75 74 cd       	vpcmpeqb %ymm13,%ymm1,%ymm1
    18d0:	48 09 d0             	or     %rdx,%rax
    18d3:	c4 61 f9 7e da       	vmovq  %xmm11,%rdx
    18d8:	c5 7d 6f ac 24 c0 00 	vmovdqa 0xc0(%rsp),%ymm13
    18df:	00 00 
    18e1:	48 09 d0             	or     %rdx,%rax
    18e4:	c4 61 f9 7e d2       	vmovq  %xmm10,%rdx
    18e9:	c4 43 7d 39 e4 01    	vextracti128 $0x1,%ymm12,%xmm12
    18ef:	48 09 d0             	or     %rdx,%rax
    18f2:	c4 61 f9 7e ca       	vmovq  %xmm9,%rdx
    18f7:	c5 99 eb ed          	vpor   %xmm5,%xmm12,%xmm5
    18fb:	c5 f5 df cb          	vpandn %ymm3,%ymm1,%ymm1
    18ff:	48 09 d0             	or     %rdx,%rax
    1902:	c5 f9 6f 1d 06 f9 00 	vmovdqa 0xf906(%rip),%xmm3        # 11210 <standard+0xf0>
    1909:	00 
    190a:	c4 e3 65 38 1d fc f7 	vinserti128 $0x1,0xf7fc(%rip),%ymm3,%ymm3        # 11110 <extended+0xf0>
    1911:	00 00 01 
    1914:	c5 f5 eb ca          	vpor   %ymm2,%ymm1,%ymm1
    1918:	c4 61 f9 7e c2       	vmovq  %xmm8,%rdx
    191d:	c4 61 f9 7e e9       	vmovq  %xmm13,%rcx
    1922:	c4 e2 65 00 d9       	vpshufb %ymm1,%ymm3,%ymm3
    1927:	48 09 d0             	or     %rdx,%rax
    192a:	c5 f9 6f 8c 24 a0 00 	vmovdqa 0xa0(%rsp),%xmm1
    1931:	00 00 
    1933:	c4 e1 f9 7e fa       	vmovq  %xmm7,%rdx
    1938:	48 09 d0             	or     %rdx,%rax
    193b:	c4 e1 f9 7e f2       	vmovq  %xmm6,%rdx
    1940:	c4 e3 7d 39 c0 01    	vextracti128 $0x1,%ymm0,%xmm0
    1946:	48 09 d0             	or     %rdx,%rax
    1949:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
    194e:	c5 d1 eb c0          	vpor   %xmm0,%xmm5,%xmm0
    1952:	c5 f9 6f 4c 24 60    	vmovdqa 0x60(%rsp),%xmm1
    1958:	48 09 d0             	or     %rdx,%rax
    195b:	c4 43 7d 39 db 01    	vextracti128 $0x1,%ymm11,%xmm11
    1961:	c4 43 7d 39 d2 01    	vextracti128 $0x1,%ymm10,%xmm10
    1967:	c5 fd 6f ac 24 a0 00 	vmovdqa 0xa0(%rsp),%ymm5
    196e:	00 00 
    1970:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
    1975:	c5 f9 6f 4c 24 40    	vmovdqa 0x40(%rsp),%xmm1
    197b:	c4 c1 79 eb c3       	vpor   %xmm11,%xmm0,%xmm0
    1980:	c4 43 7d 39 c9 01    	vextracti128 $0x1,%ymm9,%xmm9
    1986:	48 09 d0             	or     %rdx,%rax
    1989:	c4 c1 79 eb c2       	vpor   %xmm10,%xmm0,%xmm0
    198e:	c4 43 7d 39 c0 01    	vextracti128 $0x1,%ymm8,%xmm8
    1994:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
    1999:	c4 c1 79 eb c1       	vpor   %xmm9,%xmm0,%xmm0
    199e:	c5 f9 6f 8c 24 e0 00 	vmovdqa 0xe0(%rsp),%xmm1
    19a5:	00 00 
    19a7:	c4 e3 7d 39 ff 01    	vextracti128 $0x1,%ymm7,%xmm7
    19ad:	48 09 d0             	or     %rdx,%rax
    19b0:	c4 61 f9 7e fa       	vmovq  %xmm15,%rdx
    19b5:	c4 c1 79 eb c0       	vpor   %xmm8,%xmm0,%xmm0
    19ba:	48 09 d0             	or     %rdx,%rax
    19bd:	c4 e1 f9 7e da       	vmovq  %xmm3,%rdx
    19c2:	c5 f9 eb c7          	vpor   %xmm7,%xmm0,%xmm0
    19c6:	c5 fd 6f bc 24 e0 00 	vmovdqa 0xe0(%rsp),%ymm7
    19cd:	00 00 
    19cf:	48 09 d0             	or     %rdx,%rax
    19d2:	c4 e1 f9 7e ca       	vmovq  %xmm1,%rdx
    19d7:	c4 e3 7d 39 f6 01    	vextracti128 $0x1,%ymm6,%xmm6
    19dd:	48 09 ca             	or     %rcx,%rdx
    19e0:	31 c9                	xor    %ecx,%ecx
    19e2:	c5 f9 eb c6          	vpor   %xmm6,%xmm0,%xmm0
    19e6:	48 09 d0             	or     %rdx,%rax
    19e9:	c4 43 7d 39 ff 01    	vextracti128 $0x1,%ymm15,%xmm15
    19ef:	c4 e3 7d 39 db 01    	vextracti128 $0x1,%ymm3,%xmm3
    19f5:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
    19fc:	ff 00 00 
    19ff:	48 21 c2             	and    %rax,%rdx
    1a02:	25 c0 00 00 00       	and    $0xc0,%eax
    1a07:	48 83 f8 7f          	cmp    $0x7f,%rax
    1a0b:	b8 0f 00 00 00       	mov    $0xf,%eax
    1a10:	0f 97 c1             	seta   %cl
    1a13:	45 31 ed             	xor    %r13d,%r13d
    1a16:	48 83 f9 00          	cmp    $0x0,%rcx
    1a1a:	41 0f 45 c5          	cmovne %r13d,%eax
    1a1e:	48 89 d1             	mov    %rdx,%rcx
    1a21:	41 89 c0             	mov    %eax,%r8d
    1a24:	45 89 ec             	mov    %r13d,%r12d
    1a27:	48 c1 e9 08          	shr    $0x8,%rcx
    1a2b:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
    1a31:	48 83 f9 7f          	cmp    $0x7f,%rcx
    1a35:	0f 97 c1             	seta   %cl
    1a38:	41 c1 e0 08          	shl    $0x8,%r8d
    1a3c:	0f b6 c9             	movzbl %cl,%ecx
    1a3f:	44 09 c1             	or     %r8d,%ecx
    1a42:	81 f9 01 0f 00 00    	cmp    $0xf01,%ecx
    1a48:	0f 94 c1             	sete   %cl
    1a4b:	0f b6 c9             	movzbl %cl,%ecx
    1a4e:	48 83 f9 00          	cmp    $0x0,%rcx
    1a52:	41 0f 45 c6          	cmovne %r14d,%eax
    1a56:	48 89 d1             	mov    %rdx,%rcx
    1a59:	41 89 c0             	mov    %eax,%r8d
    1a5c:	48 c1 e9 10          	shr    $0x10,%rcx
    1a60:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
    1a66:	48 83 f9 7f          	cmp    $0x7f,%rcx
    1a6a:	0f 97 c1             	seta   %cl
    1a6d:	41 c1 e0 08          	shl    $0x8,%r8d
    1a71:	0f b6 c9             	movzbl %cl,%ecx
    1a74:	44 09 c1             	or     %r8d,%ecx
    1a77:	81 f9 01 0f 00 00    	cmp    $0xf01,%ecx
    1a7d:	0f 94 c1             	sete   %cl
    1a80:	0f b6 c9             	movzbl %cl,%ecx
    1a83:	48 83 f9 00          	cmp    $0x0,%rcx
    1a87:	41 0f 45 c3          	cmovne %r11d,%eax
    1a8b:	48 89 d1             	mov    %rdx,%rcx
    1a8e:	41 89 c0             	mov    %eax,%r8d
    1a91:	48 c1 e9 18          	shr    $0x18,%rcx
    1a95:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
    1a9b:	48 83 f9 7f          	cmp    $0x7f,%rcx
    1a9f:	0f 97 c1             	seta   %cl
    1aa2:	41 c1 e0 08          	shl    $0x8,%r8d
    1aa6:	0f b6 c9             	movzbl %cl,%ecx
    1aa9:	44 09 c1             	or     %r8d,%ecx
    1aac:	41 b8 03 00 00 00    	mov    $0x3,%r8d
    1ab2:	81 f9 01 0f 00 00    	cmp    $0xf01,%ecx
    1ab8:	0f 94 c1             	sete   %cl
    1abb:	0f b6 c9             	movzbl %cl,%ecx
    1abe:	48 83 f9 00          	cmp    $0x0,%rcx
    1ac2:	41 0f 45 c0          	cmovne %r8d,%eax
    1ac6:	48 89 d1             	mov    %rdx,%rcx
    1ac9:	41 89 c1             	mov    %eax,%r9d
    1acc:	48 c1 e9 20          	shr    $0x20,%rcx
    1ad0:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
    1ad6:	48 83 f9 7f          	cmp    $0x7f,%rcx
    1ada:	0f 97 c1             	seta   %cl
    1add:	41 c1 e1 08          	shl    $0x8,%r9d
    1ae1:	0f b6 c9             	movzbl %cl,%ecx
    1ae4:	44 09 c9             	or     %r9d,%ecx
    1ae7:	81 f9 01 0f 00 00    	cmp    $0xf01,%ecx
    1aed:	0f 94 c1             	sete   %cl
    1af0:	0f b6 c9             	movzbl %cl,%ecx
    1af3:	48 83 f9 00          	cmp    $0x0,%rcx
    1af7:	41 0f 45 c7          	cmovne %r15d,%eax
    1afb:	48 89 d1             	mov    %rdx,%rcx
    1afe:	41 89 c1             	mov    %eax,%r9d
    1b01:	49 89 d7             	mov    %rdx,%r15
    1b04:	48 c1 e9 28          	shr    $0x28,%rcx
    1b08:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
    1b0e:	48 83 f9 7f          	cmp    $0x7f,%rcx
    1b12:	0f 97 c1             	seta   %cl
    1b15:	41 c1 e1 08          	shl    $0x8,%r9d
    1b19:	0f b6 c9             	movzbl %cl,%ecx
    1b1c:	44 09 c9             	or     %r9d,%ecx
    1b1f:	41 b9 05 00 00 00    	mov    $0x5,%r9d
    1b25:	81 f9 01 0f 00 00    	cmp    $0xf01,%ecx
    1b2b:	0f 94 c1             	sete   %cl
    1b2e:	0f b6 c9             	movzbl %cl,%ecx
    1b31:	48 83 f9 00          	cmp    $0x0,%rcx
    1b35:	41 0f 45 c1          	cmovne %r9d,%eax
    1b39:	8d 0c c5 00 00 00 00 	lea    0x0(,%rax,8),%ecx
    1b40:	49 d3 ef             	shr    %cl,%r15
    1b43:	49 d3 ea             	shr    %cl,%r10
    1b46:	4c 89 d1             	mov    %r10,%rcx
    1b49:	45 89 fa             	mov    %r15d,%r10d
    1b4c:	4c 89 fb             	mov    %r15,%rbx
    1b4f:	48 89 8c 24 90 00 00 	mov    %rcx,0x90(%rsp)
    1b56:	00 
    1b57:	41 c0 ea 02          	shr    $0x2,%r10b
    1b5b:	31 c9                	xor    %ecx,%ecx
    1b5d:	80 bc 24 90 00 00 00 	cmpb   $0xf,0x90(%rsp)
    1b64:	0f 
    1b65:	0f 94 c1             	sete   %cl
    1b68:	44 88 94 24 c0 00 00 	mov    %r10b,0xc0(%rsp)
    1b6f:	00 
    1b70:	45 31 d2             	xor    %r10d,%r10d
    1b73:	48 83 f9 00          	cmp    $0x0,%rcx
    1b77:	45 0f 45 e6          	cmovne %r14d,%r12d
    1b7b:	44 89 f9             	mov    %r15d,%ecx
    1b7e:	45 89 ef             	mov    %r13d,%r15d
    1b81:	83 e1 f0             	and    $0xfffffff0,%ecx
    1b84:	80 f9 a0             	cmp    $0xa0,%cl
    1b87:	41 0f 94 c2          	sete   %r10b
    1b8b:	49 83 fa 00          	cmp    $0x0,%r10
    1b8f:	45 0f 45 fe          	cmovne %r14d,%r15d
    1b93:	80 f9 b0             	cmp    $0xb0,%cl
    1b96:	45 89 ea             	mov    %r13d,%r10d
    1b99:	44 89 7c 24 34       	mov    %r15d,0x34(%rsp)
    1b9e:	45 89 ef             	mov    %r13d,%r15d
    1ba1:	0f 94 c1             	sete   %cl
    1ba4:	41 29 c1             	sub    %eax,%r9d
    1ba7:	0f b6 c9             	movzbl %cl,%ecx
    1baa:	48 83 f9 00          	cmp    $0x0,%rcx
    1bae:	45 0f 45 d6          	cmovne %r14d,%r10d
    1bb2:	42 8d 0c cd 00 00 00 	lea    0x0(,%r9,8),%ecx
    1bb9:	00 
    1bba:	44 89 54 24 30       	mov    %r10d,0x30(%rsp)
    1bbf:	49 ba ff ff ff ff ff 	movabs $0xffffffffff,%r10
    1bc6:	00 00 00 
    1bc9:	49 d3 fa             	sar    %cl,%r10
    1bcc:	8d 0c c5 f8 ff ff ff 	lea    -0x8(,%rax,8),%ecx
    1bd3:	4c 21 d2             	and    %r10,%rdx
    1bd6:	45 31 d2             	xor    %r10d,%r10d
    1bd9:	49 89 d1             	mov    %rdx,%r9
    1bdc:	c4 e1 f9 6e d2       	vmovq  %rdx,%xmm2
    1be1:	49 d3 e9             	shr    %cl,%r9
    1be4:	c4 c1 f9 6e c9       	vmovq  %r9,%xmm1
    1be9:	c4 e3 f1 22 cf 01    	vpinsrq $0x1,%rdi,%xmm1,%xmm1
    1bef:	c5 f1 74 0d 19 b4 00 	vpcmpeqb 0xb419(%rip),%xmm1,%xmm1        # d010 <g_dyn_entry_table+0x10>
    1bf6:	00 
    1bf7:	c4 c1 f9 7e c9       	vmovq  %xmm1,%r9
    1bfc:	c4 e3 e9 22 cf 01    	vpinsrq $0x1,%rdi,%xmm2,%xmm1
    1c02:	48 89 df             	mov    %rbx,%rdi
    1c05:	c5 f1 74 15 13 b4 00 	vpcmpeqb 0xb413(%rip),%xmm1,%xmm2        # d020 <g_dyn_entry_table+0x20>
    1c0c:	00 
    1c0d:	4d 85 c9             	test   %r9,%r9
    1c10:	45 89 f1             	mov    %r14d,%r9d
    1c13:	41 0f 94 c2          	sete   %r10b
    1c17:	48 d3 ee             	shr    %cl,%rsi
    1c1a:	31 c9                	xor    %ecx,%ecx
    1c1c:	83 e6 4f             	and    $0x4f,%esi
    1c1f:	c4 e1 f9 7e d2       	vmovq  %xmm2,%rdx
    1c24:	c5 f1 74 15 04 b4 00 	vpcmpeqb 0xb404(%rip),%xmm1,%xmm2        # d030 <g_dyn_entry_table+0x30>
    1c2b:	00 
    1c2c:	49 83 fa 00          	cmp    $0x0,%r10
    1c30:	45 0f 45 cd          	cmovne %r13d,%r9d
    1c34:	45 89 c9             	mov    %r9d,%r9d
    1c37:	49 83 f9 00          	cmp    $0x0,%r9
    1c3b:	44 0f 45 fe          	cmovne %esi,%r15d
    1c3f:	48 85 d2             	test   %rdx,%rdx
    1c42:	44 89 f2             	mov    %r14d,%edx
    1c45:	44 89 f6             	mov    %r14d,%esi
    1c48:	44 89 7c 24 2c       	mov    %r15d,0x2c(%rsp)
    1c4d:	0f 94 c1             	sete   %cl
    1c50:	48 83 f9 00          	cmp    $0x0,%rcx
    1c54:	41 0f 45 d5          	cmovne %r13d,%edx
    1c58:	89 d1                	mov    %edx,%ecx
    1c5a:	44 89 ea             	mov    %r13d,%edx
    1c5d:	48 83 f9 00          	cmp    $0x0,%rcx
    1c61:	41 0f 45 d6          	cmovne %r14d,%edx
    1c65:	c4 e1 f9 7e d1       	vmovq  %xmm2,%rcx
    1c6a:	c5 f1 74 15 ce b3 00 	vpcmpeqb 0xb3ce(%rip),%xmm1,%xmm2        # d040 <g_dyn_entry_table+0x40>
    1c71:	00 
    1c72:	48 85 c9             	test   %rcx,%rcx
    1c75:	0f 94 c1             	sete   %cl
    1c78:	0f b6 c9             	movzbl %cl,%ecx
    1c7b:	48 83 f9 00          	cmp    $0x0,%rcx
    1c7f:	41 0f 45 f5          	cmovne %r13d,%esi
    1c83:	c4 e1 f9 7e d1       	vmovq  %xmm2,%rcx
    1c88:	c5 f1 74 15 c0 b3 00 	vpcmpeqb 0xb3c0(%rip),%xmm1,%xmm2        # d050 <g_dyn_entry_table+0x50>
    1c8f:	00 
    1c90:	89 74 24 28          	mov    %esi,0x28(%rsp)
    1c94:	44 89 f6             	mov    %r14d,%esi
    1c97:	48 85 c9             	test   %rcx,%rcx
    1c9a:	c5 f1 74 0d be b3 00 	vpcmpeqb 0xb3be(%rip),%xmm1,%xmm1        # d060 <g_dyn_entry_table+0x60>
    1ca1:	00 
    1ca2:	0f 94 c1             	sete   %cl
    1ca5:	0f b6 c9             	movzbl %cl,%ecx
    1ca8:	48 83 f9 00          	cmp    $0x0,%rcx
    1cac:	41 0f 45 f5          	cmovne %r13d,%esi
    1cb0:	c4 e1 f9 7e d1       	vmovq  %xmm2,%rcx
    1cb5:	89 74 24 24          	mov    %esi,0x24(%rsp)
    1cb9:	31 f6                	xor    %esi,%esi
    1cbb:	c4 63 7d 39 ea 01    	vextracti128 $0x1,%ymm13,%xmm2
    1cc1:	48 85 c9             	test   %rcx,%rcx
    1cc4:	44 89 f1             	mov    %r14d,%ecx
    1cc7:	40 0f 94 c6          	sete   %sil
    1ccb:	48 83 fe 00          	cmp    $0x0,%rsi
    1ccf:	41 0f 45 cd          	cmovne %r13d,%ecx
    1cd3:	89 c9                	mov    %ecx,%ecx
    1cd5:	31 f6                	xor    %esi,%esi
    1cd7:	48 83 f9 00          	cmp    $0x0,%rcx
    1cdb:	41 0f 45 d0          	cmovne %r8d,%edx
    1cdf:	c4 e1 f9 7e c9       	vmovq  %xmm1,%rcx
    1ce4:	c4 e3 7d 39 e9 01    	vextracti128 $0x1,%ymm5,%xmm1
    1cea:	41 89 d1             	mov    %edx,%r9d
    1ced:	c5 fd 6f 6c 24 60    	vmovdqa 0x60(%rsp),%ymm5
    1cf3:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
    1cf7:	48 85 c9             	test   %rcx,%rcx
    1cfa:	44 89 f1             	mov    %r14d,%ecx
    1cfd:	c4 e3 7d 39 e9 01    	vextracti128 $0x1,%ymm5,%xmm1
    1d03:	c5 fd 6f 6c 24 40    	vmovdqa 0x40(%rsp),%ymm5
    1d09:	40 0f 94 c6          	sete   %sil
    1d0d:	44 8b 84 24 c0 00 00 	mov    0xc0(%rsp),%r8d
    1d14:	00 
    1d15:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
    1d19:	48 89 7c 24 38       	mov    %rdi,0x38(%rsp)
    1d1e:	c4 e3 7d 39 e9 01    	vextracti128 $0x1,%ymm5,%xmm1
    1d24:	41 83 e0 03          	and    $0x3,%r8d
    1d28:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
    1d2c:	c4 e3 7d 39 f9 01    	vextracti128 $0x1,%ymm7,%xmm1
    1d32:	c4 c1 79 eb c7       	vpor   %xmm15,%xmm0,%xmm0
    1d37:	c5 f1 eb ca          	vpor   %xmm2,%xmm1,%xmm1
    1d3b:	c5 f9 eb c3          	vpor   %xmm3,%xmm0,%xmm0
    1d3f:	c5 f9 eb c1          	vpor   %xmm1,%xmm0,%xmm0
    1d43:	48 83 fe 00          	cmp    $0x0,%rsi
    1d47:	41 0f 45 cd          	cmovne %r13d,%ecx
    1d4b:	c4 e1 f9 7e c2       	vmovq  %xmm0,%rdx
    1d50:	89 c9                	mov    %ecx,%ecx
    1d52:	44 89 c6             	mov    %r8d,%esi
    1d55:	49 b8 00 80 80 80 80 	movabs $0x8080808080808000,%r8
    1d5c:	80 80 80 
    1d5f:	48 83 f9 00          	cmp    $0x0,%rcx
    1d63:	45 0f 45 cb          	cmovne %r11d,%r9d
    1d67:	8d 0c c5 08 00 00 00 	lea    0x8(,%rax,8),%ecx
    1d6e:	44 01 e0             	add    %r12d,%eax
    1d71:	48 d3 fa             	sar    %cl,%rdx
    1d74:	89 d1                	mov    %edx,%ecx
    1d76:	c0 e9 04             	shr    $0x4,%cl
    1d79:	41 89 cb             	mov    %ecx,%r11d
    1d7c:	44 89 e1             	mov    %r12d,%ecx
    1d7f:	41 83 e3 03          	and    $0x3,%r11d
    1d83:	48 83 f9 00          	cmp    $0x0,%rcx
    1d87:	41 0f 45 f3          	cmovne %r11d,%esi
    1d8b:	8d 48 01             	lea    0x1(%rax),%ecx
    1d8e:	0f b6 c9             	movzbl %cl,%ecx
    1d91:	4c 09 c1             	or     %r8,%rcx
    1d94:	c4 e1 f9 6e f9       	vmovq  %rcx,%xmm7
    1d99:	c4 c1 41 6c c6       	vpunpcklqdq %xmm14,%xmm7,%xmm0
    1d9e:	c4 e2 59 00 c0       	vpshufb %xmm0,%xmm4,%xmm0
    1da3:	c4 e1 f9 7e c1       	vmovq  %xmm0,%rcx
    1da8:	41 89 c8             	mov    %ecx,%r8d
    1dab:	41 89 cf             	mov    %ecx,%r15d
    1dae:	41 c0 e8 03          	shr    $0x3,%r8b
    1db2:	41 c0 ef 06          	shr    $0x6,%r15b
    1db6:	45 89 c2             	mov    %r8d,%r10d
    1db9:	44 88 7c 24 60       	mov    %r15b,0x60(%rsp)
    1dbe:	41 83 e2 07          	and    $0x7,%r10d
    1dc2:	44 88 54 24 40       	mov    %r10b,0x40(%rsp)
    1dc7:	41 89 ca             	mov    %ecx,%r10d
    1dca:	41 83 e2 07          	and    $0x7,%r10d
    1dce:	44 88 94 24 a0 00 00 	mov    %r10b,0xa0(%rsp)
    1dd5:	00 
    1dd6:	41 89 ca             	mov    %ecx,%r10d
    1dd9:	31 c9                	xor    %ecx,%ecx
    1ddb:	41 83 e2 c7          	and    $0xffffffc7,%r10d
    1ddf:	41 80 ff 03          	cmp    $0x3,%r15b
    1de3:	45 89 ef             	mov    %r13d,%r15d
    1de6:	0f 95 c1             	setne  %cl
    1de9:	83 e3 30             	and    $0x30,%ebx
    1dec:	41 83 e0 07          	and    $0x7,%r8d
    1df0:	44 88 94 24 e0 00 00 	mov    %r10b,0xe0(%rsp)
    1df7:	00 
    1df8:	48 83 f9 00          	cmp    $0x0,%rcx
    1dfc:	45 0f 45 fe          	cmovne %r14d,%r15d
    1e00:	49 ba aa 6a aa aa a5 	movabs $0x155a55a5aaaa6aaa,%r10
    1e07:	55 5a 15 
    1e0a:	89 d9                	mov    %ebx,%ecx
    1e0c:	89 fb                	mov    %edi,%ebx
    1e0e:	45 01 c0             	add    %r8d,%r8d
    1e11:	c0 eb 06             	shr    $0x6,%bl
    1e14:	0f b6 fb             	movzbl %bl,%edi
    1e17:	31 db                	xor    %ebx,%ebx
    1e19:	40 80 ff 03          	cmp    $0x3,%dil
    1e1d:	0f 94 c3             	sete   %bl
    1e20:	44 01 c1             	add    %r8d,%ecx
    1e23:	49 d3 ea             	shr    %cl,%r10
    1e26:	0f b6 4c 24 40       	movzbl 0x40(%rsp),%ecx
    1e2b:	41 83 e2 03          	and    $0x3,%r10d
    1e2f:	48 83 fb 00          	cmp    $0x0,%rbx
    1e33:	41 0f 45 f2          	cmovne %r10d,%esi
    1e37:	41 ba 4c 00 00 00    	mov    $0x4c,%r10d
    1e3d:	44 89 eb             	mov    %r13d,%ebx
    1e40:	49 d3 ea             	shr    %cl,%r10
    1e43:	0f b6 8c 24 90 00 00 	movzbl 0x90(%rsp),%ecx
    1e4a:	00 
    1e4b:	41 83 e2 01          	and    $0x1,%r10d
    1e4f:	c1 e1 04             	shl    $0x4,%ecx
    1e52:	49 83 fa 00          	cmp    $0x0,%r10
    1e56:	41 0f 45 de          	cmovne %r14d,%ebx
    1e5a:	01 df                	add    %ebx,%edi
    1e5c:	44 89 eb             	mov    %r13d,%ebx
    1e5f:	09 cf                	or     %ecx,%edi
    1e61:	31 c9                	xor    %ecx,%ecx
    1e63:	81 ff f4 0f 00 00    	cmp    $0xff4,%edi
    1e69:	0f 94 c1             	sete   %cl
    1e6c:	48 83 f9 00          	cmp    $0x0,%rcx
    1e70:	41 0f 45 de          	cmovne %r14d,%ebx
    1e74:	89 d1                	mov    %edx,%ecx
    1e76:	89 5c 24 20          	mov    %ebx,0x20(%rsp)
    1e7a:	31 db                	xor    %ebx,%ebx
    1e7c:	c5 fb f0 0d 7c f1 00 	vlddqu 0xf17c(%rip),%xmm1        # 11000 <extension_2op_table>
    1e83:	00 
    1e84:	c0 e9 06             	shr    $0x6,%cl
    1e87:	0f b6 f9             	movzbl %cl,%edi
    1e8a:	44 89 e1             	mov    %r12d,%ecx
    1e8d:	c1 e1 04             	shl    $0x4,%ecx
    1e90:	41 89 ca             	mov    %ecx,%r10d
    1e93:	41 0f b6 c9          	movzbl %r9b,%ecx
    1e97:	49 b9 00 80 80 80 80 	movabs $0x8080808080808000,%r9
    1e9e:	80 80 80 
    1ea1:	41 09 fa             	or     %edi,%r10d
    1ea4:	41 83 fa 11          	cmp    $0x11,%r10d
    1ea8:	0f 94 c3             	sete   %bl
    1eab:	01 c9                	add    %ecx,%ecx
    1ead:	c0 ea 03             	shr    $0x3,%dl
    1eb0:	42 8d 0c d9          	lea    (%rcx,%r11,8),%ecx
    1eb4:	41 bb 1a 05 0a 00    	mov    $0xa051a,%r11d
    1eba:	83 e2 07             	and    $0x7,%edx
    1ebd:	41 d3 eb             	shr    %cl,%r11d
    1ec0:	41 83 e3 03          	and    $0x3,%r11d
    1ec4:	48 83 fb 00          	cmp    $0x0,%rbx
    1ec8:	41 0f 45 f3          	cmovne %r11d,%esi
    1ecc:	44 8d 1c 12          	lea    (%rdx,%rdx,1),%r11d
    1ed0:	41 8d 4b 01          	lea    0x1(%r11),%ecx
    1ed4:	c1 e1 08             	shl    $0x8,%ecx
    1ed7:	44 09 d9             	or     %r11d,%ecx
    1eda:	41 83 fa 13          	cmp    $0x13,%r10d
    1ede:	c5 f9 6e f9          	vmovd  %ecx,%xmm7
    1ee2:	44 89 c1             	mov    %r8d,%ecx
    1ee5:	41 0f 94 c2          	sete   %r10b
    1ee9:	c1 e7 08             	shl    $0x8,%edi
    1eec:	c5 f9 70 c7 00       	vpshufd $0x0,%xmm7,%xmm0
    1ef1:	45 0f b6 d2          	movzbl %r10b,%r10d
    1ef5:	c4 e2 71 00 c0       	vpshufb %xmm0,%xmm1,%xmm0
    1efa:	c4 c1 f9 7e c3       	vmovq  %xmm0,%r11
    1eff:	41 d3 eb             	shr    %cl,%r11d
    1f02:	0f b6 4c 24 60       	movzbl 0x60(%rsp),%ecx
    1f07:	41 83 e3 03          	and    $0x3,%r11d
    1f0b:	89 4c 24 40          	mov    %ecx,0x40(%rsp)
    1f0f:	41 89 c8             	mov    %ecx,%r8d
    1f12:	49 83 fa 00          	cmp    $0x0,%r10
    1f16:	41 0f 45 f3          	cmovne %r11d,%esi
    1f1a:	41 89 cb             	mov    %ecx,%r11d
    1f1d:	44 89 e1             	mov    %r12d,%ecx
    1f20:	41 c1 e0 04          	shl    $0x4,%r8d
    1f24:	45 89 fc             	mov    %r15d,%r12d
    1f27:	c1 e1 0c             	shl    $0xc,%ecx
    1f2a:	44 89 c3             	mov    %r8d,%ebx
    1f2d:	44 09 c1             	or     %r8d,%ecx
    1f30:	09 d1                	or     %edx,%ecx
    1f32:	31 d2                	xor    %edx,%edx
    1f34:	09 cf                	or     %ecx,%edi
    1f36:	81 ff 32 13 00 00    	cmp    $0x1332,%edi
    1f3c:	0f b6 bc 24 e0 00 00 	movzbl 0xe0(%rsp),%edi
    1f43:	00 
    1f44:	0f 97 c2             	seta   %dl
    1f47:	48 83 fa 00          	cmp    $0x0,%rdx
    1f4b:	41 0f 45 f5          	cmovne %r13d,%esi
    1f4f:	31 d2                	xor    %edx,%edx
    1f51:	41 80 fb 03          	cmp    $0x3,%r11b
    1f55:	89 f1                	mov    %esi,%ecx
    1f57:	41 bb ff 00 00 00    	mov    $0xff,%r11d
    1f5d:	0f 94 c2             	sete   %dl
    1f60:	48 83 fa 00          	cmp    $0x0,%rdx
    1f64:	41 0f 45 cd          	cmovne %r13d,%ecx
    1f68:	8d 50 02             	lea    0x2(%rax),%edx
    1f6b:	89 4c 24 1c          	mov    %ecx,0x1c(%rsp)
    1f6f:	83 c0 03             	add    $0x3,%eax
    1f72:	0f b6 d2             	movzbl %dl,%edx
    1f75:	0f b6 c0             	movzbl %al,%eax
    1f78:	48 8d 72 03          	lea    0x3(%rdx),%rsi
    1f7c:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
    1f80:	49 09 d1             	or     %rdx,%r9
    1f83:	48 c1 e6 18          	shl    $0x18,%rsi
    1f87:	48 c1 e1 08          	shl    $0x8,%rcx
    1f8b:	c4 c1 f9 6e c1       	vmovq  %r9,%xmm0
    1f90:	48 09 f1             	or     %rsi,%rcx
    1f93:	48 8d 70 01          	lea    0x1(%rax),%rsi
    1f97:	c4 c1 79 6c c6       	vpunpcklqdq %xmm14,%xmm0,%xmm0
    1f9c:	48 09 d1             	or     %rdx,%rcx
    1f9f:	48 83 c2 02          	add    $0x2,%rdx
    1fa3:	48 c1 e6 08          	shl    $0x8,%rsi
    1fa7:	c4 e2 59 00 c0       	vpshufb %xmm0,%xmm4,%xmm0
    1fac:	48 c1 e2 10          	shl    $0x10,%rdx
    1fb0:	c4 c1 f9 7e c0       	vmovq  %xmm0,%r8
    1fb5:	48 09 ca             	or     %rcx,%rdx
    1fb8:	48 b9 00 00 00 00 80 	movabs $0x8080808000000000,%rcx
    1fbf:	80 80 80 
    1fc2:	48 09 ca             	or     %rcx,%rdx
    1fc5:	c4 e1 f9 6e fa       	vmovq  %rdx,%xmm7
    1fca:	48 8d 50 03          	lea    0x3(%rax),%rdx
    1fce:	48 c1 e2 18          	shl    $0x18,%rdx
    1fd2:	c4 c1 41 6c c6       	vpunpcklqdq %xmm14,%xmm7,%xmm0
    1fd7:	48 09 f2             	or     %rsi,%rdx
    1fda:	48 8d 70 02          	lea    0x2(%rax),%rsi
    1fde:	c4 e2 59 00 c0       	vpshufb %xmm0,%xmm4,%xmm0
    1fe3:	48 09 c2             	or     %rax,%rdx
    1fe6:	48 c1 e6 10          	shl    $0x10,%rsi
    1fea:	c4 c1 f9 7e c1       	vmovq  %xmm0,%r9
    1fef:	48 09 f2             	or     %rsi,%rdx
    1ff2:	4c 89 4c 24 60       	mov    %r9,0x60(%rsp)
    1ff7:	45 89 c1             	mov    %r8d,%r9d
    1ffa:	48 09 ca             	or     %rcx,%rdx
    1ffd:	48 b9 00 80 80 80 80 	movabs $0x8080808080808000,%rcx
    2004:	80 80 80 
    2007:	48 09 c8             	or     %rcx,%rax
    200a:	c4 e1 f9 6e fa       	vmovq  %rdx,%xmm7
    200f:	40 80 ff 05          	cmp    $0x5,%dil
    2013:	44 89 e9             	mov    %r13d,%ecx
    2016:	c4 c1 41 6c c6       	vpunpcklqdq %xmm14,%xmm7,%xmm0
    201b:	c4 e1 f9 6e f8       	vmovq  %rax,%xmm7
    2020:	0f 94 c0             	sete   %al
    2023:	41 c1 e4 08          	shl    $0x8,%r12d
    2027:	0f b6 c0             	movzbl %al,%eax
    202a:	45 31 d2             	xor    %r10d,%r10d
    202d:	c4 e2 59 00 c0       	vpshufb %xmm0,%xmm4,%xmm0
    2032:	48 83 f8 00          	cmp    $0x0,%rax
    2036:	0f 45 4c 24 60       	cmovne 0x60(%rsp),%ecx
    203b:	0f b6 84 24 a0 00 00 	movzbl 0xa0(%rsp),%eax
    2042:	00 
    2043:	c4 e1 f9 7e c2       	vmovq  %xmm0,%rdx
    2048:	c4 c1 41 6c c6       	vpunpcklqdq %xmm14,%xmm7,%xmm0
    204d:	c4 e2 59 00 e0       	vpshufb %xmm0,%xmm4,%xmm4
    2052:	89 84 24 90 00 00 00 	mov    %eax,0x90(%rsp)
    2059:	44 09 e0             	or     %r12d,%eax
    205c:	3d 04 01 00 00       	cmp    $0x104,%eax
    2061:	41 0f 94 c2          	sete   %r10b
    2065:	41 c0 e9 06          	shr    $0x6,%r9b
    2069:	41 0f b6 c1          	movzbl %r9b,%eax
    206d:	45 89 d9             	mov    %r11d,%r9d
    2070:	41 c1 e7 10          	shl    $0x10,%r15d
    2074:	49 83 fa 00          	cmp    $0x0,%r10
    2078:	44 0f 45 c8          	cmovne %eax,%r9d
    207c:	44 89 4c 24 18       	mov    %r9d,0x18(%rsp)
    2081:	45 89 c1             	mov    %r8d,%r9d
    2084:	41 c0 e9 03          	shr    $0x3,%r9b
    2088:	44 89 ce             	mov    %r9d,%esi
    208b:	44 8b 4c 24 2c       	mov    0x2c(%rsp),%r9d
    2090:	83 e6 07             	and    $0x7,%esi
    2093:	42 8d 04 8d 00 00 00 	lea    0x0(,%r9,4),%eax
    209a:	00 
    209b:	83 e0 08             	and    $0x8,%eax
    209e:	09 f0                	or     %esi,%eax
    20a0:	44 89 de             	mov    %r11d,%esi
    20a3:	49 83 fa 00          	cmp    $0x0,%r10
    20a7:	0f 45 f0             	cmovne %eax,%esi
    20aa:	89 74 24 2c          	mov    %esi,0x2c(%rsp)
    20ae:	42 8d 34 cd 00 00 00 	lea    0x0(,%r9,8),%esi
    20b5:	00 
    20b6:	45 89 c1             	mov    %r8d,%r9d
    20b9:	45 0f b6 c0          	movzbl %r8b,%r8d
    20bd:	41 83 e1 07          	and    $0x7,%r9d
    20c1:	83 e6 08             	and    $0x8,%esi
    20c4:	44 89 c8             	mov    %r9d,%eax
    20c7:	45 89 e9             	mov    %r13d,%r9d
    20ca:	09 f0                	or     %esi,%eax
    20cc:	49 83 fa 00          	cmp    $0x0,%r10
    20d0:	44 0f 45 c8          	cmovne %eax,%r9d
    20d4:	40 0f b6 c7          	movzbl %dil,%eax
    20d8:	44 89 cf             	mov    %r9d,%edi
    20db:	c1 e7 08             	shl    $0x8,%edi
    20de:	81 e7 00 07 00 00    	and    $0x700,%edi
    20e4:	44 09 ff             	or     %r15d,%edi
    20e7:	09 c7                	or     %eax,%edi
    20e9:	81 ff 04 05 01 00    	cmp    $0x10504,%edi
    20ef:	40 0f 94 c7          	sete   %dil
    20f3:	41 09 c4             	or     %eax,%r12d
    20f6:	c4 e1 f9 7e e0       	vmovq  %xmm4,%rax
    20fb:	40 0f b6 ff          	movzbl %dil,%edi
    20ff:	0f b6 c0             	movzbl %al,%eax
    2102:	48 83 ff 00          	cmp    $0x0,%rdi
    2106:	0f 45 ca             	cmovne %edx,%ecx
    2109:	31 ff                	xor    %edi,%edi
    210b:	41 81 fc 44 01 00 00 	cmp    $0x144,%r12d
    2112:	40 0f 94 c7          	sete   %dil
    2116:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
    211b:	44 89 ef             	mov    %r13d,%edi
    211e:	48 83 7c 24 10 00    	cmpq   $0x0,0x10(%rsp)
    2124:	0f 45 f8             	cmovne %eax,%edi
    2127:	31 c0                	xor    %eax,%eax
    2129:	41 81 fc 84 01 00 00 	cmp    $0x184,%r12d
    2130:	44 8b 64 24 40       	mov    0x40(%rsp),%r12d
    2135:	0f 94 c0             	sete   %al
    2138:	48 83 f8 00          	cmp    $0x0,%rax
    213c:	0f 45 ca             	cmovne %edx,%ecx
    213f:	31 d2                	xor    %edx,%edx
    2141:	80 bc 24 a0 00 00 00 	cmpb   $0x4,0xa0(%rsp)
    2148:	04 
    2149:	44 89 e8             	mov    %r13d,%eax
    214c:	0f 95 c2             	setne  %dl
    214f:	48 83 fa 00          	cmp    $0x0,%rdx
    2153:	41 0f 45 c6          	cmovne %r14d,%eax
    2157:	c1 e0 08             	shl    $0x8,%eax
    215a:	31 d2                	xor    %edx,%edx
    215c:	44 09 f8             	or     %r15d,%eax
    215f:	44 8b bc 24 90 00 00 	mov    0x90(%rsp),%r15d
    2166:	00 
    2167:	44 09 e0             	or     %r12d,%eax
    216a:	3d 01 01 01 00       	cmp    $0x10101,%eax
    216f:	0f 94 c2             	sete   %dl
    2172:	48 83 fa 00          	cmp    $0x0,%rdx
    2176:	41 0f 45 f8          	cmovne %r8d,%edi
    217a:	3d 02 01 01 00       	cmp    $0x10102,%eax
    217f:	48 0f be d7          	movsbq %dil,%rdx
    2183:	41 b8 04 00 00 00    	mov    $0x4,%r8d
    2189:	44 89 cf             	mov    %r9d,%edi
    218c:	0f 94 c0             	sete   %al
    218f:	44 09 fe             	or     %r15d,%esi
    2192:	0f b6 c0             	movzbl %al,%eax
    2195:	49 83 fa 00          	cmp    $0x0,%r10
    2199:	41 0f 45 f0          	cmovne %r8d,%esi
    219d:	48 83 f8 00          	cmp    $0x0,%rax
    21a1:	0f 45 4c 24 60       	cmovne 0x60(%rsp),%ecx
    21a6:	31 c0                	xor    %eax,%eax
    21a8:	48 85 d2             	test   %rdx,%rdx
    21ab:	89 c9                	mov    %ecx,%ecx
    21ad:	0f 94 c0             	sete   %al
    21b0:	48 83 f8 00          	cmp    $0x0,%rax
    21b4:	48 0f 45 d1          	cmovne %rcx,%rdx
    21b8:	31 c9                	xor    %ecx,%ecx
    21ba:	80 bc 24 e0 00 00 00 	cmpb   $0x4,0xe0(%rsp)
    21c1:	04 
    21c2:	40 0f b6 c6          	movzbl %sil,%eax
    21c6:	0f 94 c1             	sete   %cl
    21c9:	48 83 f9 00          	cmp    $0x0,%rcx
    21cd:	41 0f 45 c3          	cmovne %r11d,%eax
    21d1:	44 89 c9             	mov    %r9d,%ecx
    21d4:	41 89 c1             	mov    %eax,%r9d
    21d7:	83 e1 07             	and    $0x7,%ecx
    21da:	09 d9                	or     %ebx,%ecx
    21dc:	83 f9 05             	cmp    $0x5,%ecx
    21df:	0f 94 c1             	sete   %cl
    21e2:	0f b6 c9             	movzbl %cl,%ecx
    21e5:	48 83 f9 00          	cmp    $0x0,%rcx
    21e9:	41 0f 45 fb          	cmovne %r11d,%edi
    21ed:	31 c9                	xor    %ecx,%ecx
    21ef:	40 80 fe 04          	cmp    $0x4,%sil
    21f3:	0f 94 c1             	sete   %cl
    21f6:	44 09 fb             	or     %r15d,%ebx
    21f9:	31 c0                	xor    %eax,%eax
    21fb:	48 83 f9 00          	cmp    $0x0,%rcx
    21ff:	44 0f 45 cf          	cmovne %edi,%r9d
    2203:	83 fb 05             	cmp    $0x5,%ebx
    2206:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    220d:	00 
    220e:	b9 10 00 00 00       	mov    $0x10,%ecx
    2213:	0f 94 c0             	sete   %al
    2216:	45 31 e4             	xor    %r12d,%r12d
    2219:	48 83 f8 00          	cmp    $0x0,%rax
    221d:	44 0f 45 c9          	cmovne %ecx,%r9d
    2221:	44 89 ce             	mov    %r9d,%esi
    2224:	e8 57 f1 ff ff       	call   1380 <register_value_select>
    2229:	8b 74 24 2c          	mov    0x2c(%rsp),%esi
    222d:	44 8b 54 24 28       	mov    0x28(%rsp),%r10d
    2232:	44 89 c9             	mov    %r9d,%ecx
    2235:	48 8b 9c 24 88 00 00 	mov    0x88(%rsp),%rbx
    223c:	00 
    223d:	49 89 c0             	mov    %rax,%r8
    2240:	48 83 f9 10          	cmp    $0x10,%rcx
    2244:	4c 0f 44 c3          	cmove  %rbx,%r8
    2248:	48 81 f9 ff 00 00 00 	cmp    $0xff,%rcx
    224f:	4d 0f 44 c4          	cmove  %r12,%r8
    2253:	44 89 c1             	mov    %r8d,%ecx
    2256:	49 83 fa 01          	cmp    $0x1,%r10
    225a:	4c 0f 44 c1          	cmove  %rcx,%r8
    225e:	83 fe 04             	cmp    $0x4,%esi
    2261:	0f 94 c0             	sete   %al
    2264:	0f b6 c0             	movzbl %al,%eax
    2267:	48 83 f8 00          	cmp    $0x0,%rax
    226b:	41 0f 45 f3          	cmovne %r11d,%esi
    226f:	e8 0c f1 ff ff       	call   1380 <register_value_select>
    2274:	89 f6                	mov    %esi,%esi
    2276:	41 bb 02 00 00 00    	mov    $0x2,%r11d
    227c:	48 83 fe 10          	cmp    $0x10,%rsi
    2280:	48 0f 44 c3          	cmove  %rbx,%rax
    2284:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
    228b:	49 0f 44 c4          	cmove  %r12,%rax
    228f:	89 c1                	mov    %eax,%ecx
    2291:	45 89 f4             	mov    %r14d,%r12d
    2294:	49 83 fa 01          	cmp    $0x1,%r10
    2298:	48 0f 44 c1          	cmove  %rcx,%rax
    229c:	0f b6 4c 24 18       	movzbl 0x18(%rsp),%ecx
    22a1:	41 d3 e4             	shl    %cl,%r12d
    22a4:	49 63 cc             	movslq %r12d,%rcx
    22a7:	48 0f af c1          	imul   %rcx,%rax
    22ab:	4c 01 c0             	add    %r8,%rax
    22ae:	48 01 c2             	add    %rax,%rdx
    22b1:	8b 84 24 c0 00 00 00 	mov    0xc0(%rsp),%eax
    22b8:	83 e0 0f             	and    $0xf,%eax
    22bb:	8d 70 06             	lea    0x6(%rax),%esi
    22be:	e8 bd f0 ff ff       	call   1380 <register_value_select>
    22c3:	8b 74 24 1c          	mov    0x1c(%rsp),%esi
    22c7:	8b 5c 24 20          	mov    0x20(%rsp),%ebx
    22cb:	48 89 c1             	mov    %rax,%rcx
    22ce:	8b 44 24 34          	mov    0x34(%rsp),%eax
    22d2:	44 8b 44 24 30       	mov    0x30(%rsp),%r8d
    22d7:	48 83 f8 01          	cmp    $0x1,%rax
    22db:	48 0f 44 d1          	cmove  %rcx,%rdx
    22df:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
    22e3:	41 09 d8             	or     %ebx,%r8d
    22e6:	83 e1 03             	and    $0x3,%ecx
    22e9:	83 c1 01             	add    $0x1,%ecx
    22ec:	48 83 f8 00          	cmp    $0x0,%rax
    22f0:	0f 45 f1             	cmovne %ecx,%esi
    22f3:	41 89 f2             	mov    %esi,%r10d
    22f6:	be 04 00 00 00       	mov    $0x4,%esi
    22fb:	e8 80 f0 ff ff       	call   1380 <register_value_select>
    2300:	8b 74 24 24          	mov    0x24(%rsp),%esi
    2304:	48 8b 9c 24 80 00 00 	mov    0x80(%rsp),%rbx
    230b:	00 
    230c:	31 c9                	xor    %ecx,%ecx
    230e:	49 83 f8 00          	cmp    $0x0,%r8
    2312:	45 0f 45 d3          	cmovne %r11d,%r10d
    2316:	49 83 f8 01          	cmp    $0x1,%r8
    231a:	48 0f 44 d0          	cmove  %rax,%rdx
    231e:	42 8d 04 16          	lea    (%rsi,%r10,1),%eax
    2322:	48 89 13             	mov    %rdx,(%rbx)
    2325:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    232a:	83 f8 02             	cmp    $0x2,%eax
    232d:	44 89 d0             	mov    %r10d,%eax
    2330:	0f 97 c1             	seta   %cl
    2333:	48 83 f9 00          	cmp    $0x0,%rcx
    2337:	41 0f 45 c6          	cmovne %r14d,%eax
    233b:	31 c9                	xor    %ecx,%ecx
    233d:	41 83 f9 10          	cmp    $0x10,%r9d
    2341:	0f 94 c1             	sete   %cl
    2344:	48 83 f9 00          	cmp    $0x0,%rcx
    2348:	41 0f 45 c5          	cmovne %r13d,%eax
    234c:	f6 05 b0 ea 00 00 08 	testb  $0x8,0xeab0(%rip)        # 10e03 <g_cpu_feature_indicator+0x3>
    2353:	0f 84 17 01 00 00    	je     2470 <ct_decode+0x1050>
    2359:	62 f1 7c 48 28 03    	vmovaps (%rbx),%zmm0
    235f:	62 f1 7c 48 28 4b 01 	vmovaps 0x40(%rbx),%zmm1
    2366:	62 f1 7c 48 28 53 02 	vmovaps 0x80(%rbx),%zmm2
    236d:	62 f1 7c 48 28 5b 03 	vmovaps 0xc0(%rbx),%zmm3
    2374:	62 f1 7c 48 28 63 04 	vmovaps 0x100(%rbx),%zmm4
    237b:	62 f1 7c 48 28 6b 05 	vmovaps 0x140(%rbx),%zmm5
    2382:	62 f1 7c 48 28 73 06 	vmovaps 0x180(%rbx),%zmm6
    2389:	62 f1 7c 48 28 7b 07 	vmovaps 0x1c0(%rbx),%zmm7
    2390:	62 71 7c 48 28 43 08 	vmovaps 0x200(%rbx),%zmm8
    2397:	62 71 7c 48 28 4b 09 	vmovaps 0x240(%rbx),%zmm9
    239e:	62 71 7c 48 28 53 0a 	vmovaps 0x280(%rbx),%zmm10
    23a5:	62 71 7c 48 28 5b 0b 	vmovaps 0x2c0(%rbx),%zmm11
    23ac:	62 71 7c 48 28 63 0c 	vmovaps 0x300(%rbx),%zmm12
    23b3:	62 71 7c 48 28 6b 0d 	vmovaps 0x340(%rbx),%zmm13
    23ba:	62 71 7c 48 28 73 0e 	vmovaps 0x380(%rbx),%zmm14
    23c1:	62 71 7c 48 28 7b 0f 	vmovaps 0x3c0(%rbx),%zmm15
    23c8:	48 8b 94 24 38 05 00 	mov    0x538(%rsp),%rdx
    23cf:	00 
    23d0:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    23d7:	00 00 
    23d9:	0f 85 09 01 00 00    	jne    24e8 <ct_decode+0x10c8>
    23df:	c5 f8 77             	vzeroupper
    23e2:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    23e6:	5b                   	pop    %rbx
    23e7:	41 5c                	pop    %r12
    23e9:	41 5d                	pop    %r13
    23eb:	41 5e                	pop    %r14
    23ed:	41 5f                	pop    %r15
    23ef:	5d                   	pop    %rbp
    23f0:	c3                   	ret
    23f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    23f8:	c5 fc 29 00          	vmovaps %ymm0,(%rax)
    23fc:	c5 fc 29 48 20       	vmovaps %ymm1,0x20(%rax)
    2401:	c5 fc 29 50 40       	vmovaps %ymm2,0x40(%rax)
    2406:	c5 fc 29 58 60       	vmovaps %ymm3,0x60(%rax)
    240b:	c5 fc 29 a0 80 00 00 	vmovaps %ymm4,0x80(%rax)
    2412:	00 
    2413:	c5 fc 29 a8 a0 00 00 	vmovaps %ymm5,0xa0(%rax)
    241a:	00 
    241b:	c5 fc 29 b0 c0 00 00 	vmovaps %ymm6,0xc0(%rax)
    2422:	00 
    2423:	c5 fc 29 b8 e0 00 00 	vmovaps %ymm7,0xe0(%rax)
    242a:	00 
    242b:	c5 7c 29 80 00 01 00 	vmovaps %ymm8,0x100(%rax)
    2432:	00 
    2433:	c5 7c 29 88 20 01 00 	vmovaps %ymm9,0x120(%rax)
    243a:	00 
    243b:	c5 7c 29 90 40 01 00 	vmovaps %ymm10,0x140(%rax)
    2442:	00 
    2443:	c5 7c 29 98 60 01 00 	vmovaps %ymm11,0x160(%rax)
    244a:	00 
    244b:	c5 7c 29 a0 80 01 00 	vmovaps %ymm12,0x180(%rax)
    2452:	00 
    2453:	c5 7c 29 a8 a0 01 00 	vmovaps %ymm13,0x1a0(%rax)
    245a:	00 
    245b:	c5 7c 29 b0 c0 01 00 	vmovaps %ymm14,0x1c0(%rax)
    2462:	00 
    2463:	c5 7c 29 b8 e0 01 00 	vmovaps %ymm15,0x1e0(%rax)
    246a:	00 
    246b:	e9 78 f0 ff ff       	jmp    14e8 <ct_decode+0xc8>
    2470:	c5 fc 28 03          	vmovaps (%rbx),%ymm0
    2474:	c5 fc 28 4b 20       	vmovaps 0x20(%rbx),%ymm1
    2479:	c5 fc 28 53 40       	vmovaps 0x40(%rbx),%ymm2
    247e:	c5 fc 28 5b 60       	vmovaps 0x60(%rbx),%ymm3
    2483:	c5 fc 28 a3 80 00 00 	vmovaps 0x80(%rbx),%ymm4
    248a:	00 
    248b:	c5 fc 28 ab a0 00 00 	vmovaps 0xa0(%rbx),%ymm5
    2492:	00 
    2493:	c5 fc 28 b3 c0 00 00 	vmovaps 0xc0(%rbx),%ymm6
    249a:	00 
    249b:	c5 fc 28 bb e0 00 00 	vmovaps 0xe0(%rbx),%ymm7
    24a2:	00 
    24a3:	c5 7c 28 83 00 01 00 	vmovaps 0x100(%rbx),%ymm8
    24aa:	00 
    24ab:	c5 7c 28 8b 20 01 00 	vmovaps 0x120(%rbx),%ymm9
    24b2:	00 
    24b3:	c5 7c 28 93 40 01 00 	vmovaps 0x140(%rbx),%ymm10
    24ba:	00 
    24bb:	c5 7c 28 9b 60 01 00 	vmovaps 0x160(%rbx),%ymm11
    24c2:	00 
    24c3:	c5 7c 28 a3 80 01 00 	vmovaps 0x180(%rbx),%ymm12
    24ca:	00 
    24cb:	c5 7c 28 ab a0 01 00 	vmovaps 0x1a0(%rbx),%ymm13
    24d2:	00 
    24d3:	c5 7c 28 b3 c0 01 00 	vmovaps 0x1c0(%rbx),%ymm14
    24da:	00 
    24db:	c5 7c 28 bb e0 01 00 	vmovaps 0x1e0(%rbx),%ymm15
    24e2:	00 
    24e3:	e9 e0 fe ff ff       	jmp    23c8 <ct_decode+0xfa8>
    24e8:	c5 f8 77             	vzeroupper
    24eb:	e8 30 90 00 00       	call   b520 <__stack_chk_fail>

00000000000024f0 <_ZL22init_rts_contexts_emasP9_layout_tS0_m>:
    24f0:	48 39 f7             	cmp    %rsi,%rdi
    24f3:	0f 83 f7 01 00 00    	jae    26f0 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x200>
    24f9:	41 57                	push   %r15
    24fb:	41 56                	push   %r14
    24fd:	49 89 d6             	mov    %rdx,%r14
    2500:	41 55                	push   %r13
    2502:	49 89 f5             	mov    %rsi,%r13
    2505:	41 54                	push   %r12
    2507:	55                   	push   %rbp
    2508:	53                   	push   %rbx
    2509:	48 89 fb             	mov    %rdi,%rbx
    250c:	48 83 ec 08          	sub    $0x8,%rsp
    2510:	66 f7 03 00 10       	testw  $0x1000,(%rbx)
    2515:	0f 85 d5 00 00 00    	jne    25f0 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x100>
    251b:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
    251f:	e8 dd a5 00 00       	call   cb01 <get_enclave_base>
    2524:	44 8b 63 04          	mov    0x4(%rbx),%r12d
    2528:	48 8b 4b 18          	mov    0x18(%rbx),%rcx
    252c:	4c 01 f5             	add    %r14,%rbp
    252f:	48 01 c5             	add    %rax,%rbp
    2532:	49 c1 e4 0c          	shl    $0xc,%r12
    2536:	48 85 c9             	test   %rcx,%rcx
    2539:	0f 84 81 00 00 00    	je     25c0 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0xd0>
    253f:	0f b7 43 02          	movzwl 0x2(%rbx),%eax
    2543:	a8 04                	test   $0x4,%al
    2545:	75 79                	jne    25c0 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0xd0>
    2547:	89 c2                	mov    %eax,%edx
    2549:	41 89 c7             	mov    %eax,%r15d
    254c:	83 e2 10             	and    $0x10,%edx
    254f:	41 83 e7 08          	and    $0x8,%r15d
    2553:	a8 01                	test   $0x1,%al
    2555:	0f 84 e5 00 00 00    	je     2640 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x150>
    255b:	66 85 d2             	test   %dx,%dx
    255e:	0f 85 3c 01 00 00    	jne    26a0 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x1b0>
    2564:	0f b7 03             	movzwl (%rbx),%eax
    2567:	66 45 85 ff          	test   %r15w,%r15w
    256b:	0f 85 e1 00 00 00    	jne    2652 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x162>
    2571:	66 83 f8 04          	cmp    $0x4,%ax
    2575:	0f 84 65 01 00 00    	je     26e0 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x1f0>
    257b:	83 e1 07             	and    $0x7,%ecx
    257e:	ba 80 02 00 00       	mov    $0x280,%edx
    2583:	45 31 c9             	xor    %r9d,%r9d
    2586:	45 31 c0             	xor    %r8d,%r8d
    2589:	4c 89 e6             	mov    %r12,%rsi
    258c:	48 89 ef             	mov    %rbp,%rdi
    258f:	e8 dc 55 00 00       	call   7b70 <mm_init_ema>
    2594:	85 c0                	test   %eax,%eax
    2596:	75 44                	jne    25dc <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0xec>
    2598:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    259f:	00 
    25a0:	48 83 c3 20          	add    $0x20,%rbx
    25a4:	4c 39 eb             	cmp    %r13,%rbx
    25a7:	0f 82 63 ff ff ff    	jb     2510 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x20>
    25ad:	48 83 c4 08          	add    $0x8,%rsp
    25b1:	31 c0                	xor    %eax,%eax
    25b3:	5b                   	pop    %rbx
    25b4:	5d                   	pop    %rbp
    25b5:	41 5c                	pop    %r12
    25b7:	41 5d                	pop    %r13
    25b9:	41 5e                	pop    %r14
    25bb:	41 5f                	pop    %r15
    25bd:	c3                   	ret
    25be:	66 90                	xchg   %ax,%ax
    25c0:	45 31 c9             	xor    %r9d,%r9d
    25c3:	45 31 c0             	xor    %r8d,%r8d
    25c6:	31 c9                	xor    %ecx,%ecx
    25c8:	ba 81 00 00 00       	mov    $0x81,%edx
    25cd:	4c 89 e6             	mov    %r12,%rsi
    25d0:	48 89 ef             	mov    %rbp,%rdi
    25d3:	e8 98 55 00 00       	call   7b70 <mm_init_ema>
    25d8:	85 c0                	test   %eax,%eax
    25da:	74 c4                	je     25a0 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0xb0>
    25dc:	b8 01 00 00 00       	mov    $0x1,%eax
    25e1:	48 83 c4 08          	add    $0x8,%rsp
    25e5:	5b                   	pop    %rbx
    25e6:	5d                   	pop    %rbp
    25e7:	41 5c                	pop    %r12
    25e9:	41 5d                	pop    %r13
    25eb:	41 5e                	pop    %r14
    25ed:	41 5f                	pop    %r15
    25ef:	c3                   	ret
    25f0:	8b 43 04             	mov    0x4(%rbx),%eax
    25f3:	31 ed                	xor    %ebp,%ebp
    25f5:	45 31 e4             	xor    %r12d,%r12d
    25f8:	85 c0                	test   %eax,%eax
    25fa:	74 a4                	je     25a0 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0xb0>
    25fc:	0f b7 7b 02          	movzwl 0x2(%rbx),%edi
    2600:	4c 03 63 08          	add    0x8(%rbx),%r12
    2604:	48 89 de             	mov    %rbx,%rsi
    2607:	4c 89 e2             	mov    %r12,%rdx
    260a:	f7 df                	neg    %edi
    260c:	48 63 ff             	movslq %edi,%rdi
    260f:	48 c1 e7 05          	shl    $0x5,%rdi
    2613:	48 01 df             	add    %rbx,%rdi
    2616:	e8 d5 fe ff ff       	call   24f0 <_ZL22init_rts_contexts_emasP9_layout_tS0_m>
    261b:	85 c0                	test   %eax,%eax
    261d:	75 c2                	jne    25e1 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0xf1>
    261f:	83 c5 01             	add    $0x1,%ebp
    2622:	3b 6b 04             	cmp    0x4(%rbx),%ebp
    2625:	72 d5                	jb     25fc <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x10c>
    2627:	48 83 c3 20          	add    $0x20,%rbx
    262b:	4c 39 eb             	cmp    %r13,%rbx
    262e:	0f 82 dc fe ff ff    	jb     2510 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x20>
    2634:	e9 74 ff ff ff       	jmp    25ad <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0xbd>
    2639:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2640:	66 85 d2             	test   %dx,%dx
    2643:	75 5b                	jne    26a0 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x1b0>
    2645:	66 45 85 ff          	test   %r15w,%r15w
    2649:	0f 84 51 ff ff ff    	je     25a0 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0xb0>
    264f:	0f b7 03             	movzwl (%rbx),%eax
    2652:	8d 50 ef             	lea    -0x11(%rax),%edx
    2655:	66 83 fa 01          	cmp    $0x1,%dx
    2659:	76 0b                	jbe    2666 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x176>
    265b:	ba e4 02 00 00       	mov    $0x2e4,%edx
    2660:	66 83 f8 07          	cmp    $0x7,%ax
    2664:	75 05                	jne    266b <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x17b>
    2666:	ba d4 02 00 00       	mov    $0x2d4,%edx
    266b:	45 31 c9             	xor    %r9d,%r9d
    266e:	45 31 c0             	xor    %r8d,%r8d
    2671:	31 c9                	xor    %ecx,%ecx
    2673:	4c 89 e6             	mov    %r12,%rsi
    2676:	48 89 ef             	mov    %rbp,%rdi
    2679:	e8 f2 55 00 00       	call   7c70 <mm_alloc>
    267e:	85 c0                	test   %eax,%eax
    2680:	0f 85 56 ff ff ff    	jne    25dc <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0xec>
    2686:	48 83 c3 20          	add    $0x20,%rbx
    268a:	4c 39 eb             	cmp    %r13,%rbx
    268d:	0f 82 7d fe ff ff    	jb     2510 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x20>
    2693:	e9 15 ff ff ff       	jmp    25ad <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0xbd>
    2698:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    269f:	00 
    26a0:	45 31 c9             	xor    %r9d,%r9d
    26a3:	45 31 c0             	xor    %r8d,%r8d
    26a6:	b9 03 00 00 00       	mov    $0x3,%ecx
    26ab:	ba 80 00 00 00       	mov    $0x80,%edx
    26b0:	4c 89 e6             	mov    %r12,%rsi
    26b3:	48 89 ef             	mov    %rbp,%rdi
    26b6:	e8 b5 54 00 00       	call   7b70 <mm_init_ema>
    26bb:	85 c0                	test   %eax,%eax
    26bd:	0f 85 19 ff ff ff    	jne    25dc <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0xec>
    26c3:	4c 89 e6             	mov    %r12,%rsi
    26c6:	48 89 ef             	mov    %rbp,%rdi
    26c9:	e8 e2 55 00 00       	call   7cb0 <mm_dealloc>
    26ce:	85 c0                	test   %eax,%eax
    26d0:	0f 84 6f ff ff ff    	je     2645 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x155>
    26d6:	e9 01 ff ff ff       	jmp    25dc <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0xec>
    26db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    26e0:	ba 80 01 00 00       	mov    $0x180,%edx
    26e5:	31 c9                	xor    %ecx,%ecx
    26e7:	e9 97 fe ff ff       	jmp    2583 <_ZL22init_rts_contexts_emasP9_layout_tS0_m+0x93>
    26ec:	0f 1f 40 00          	nopl   0x0(%rax)
    26f0:	31 c0                	xor    %eax,%eax
    26f2:	c3                   	ret
    26f3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    26fa:	00 00 00 
    26fd:	0f 1f 00             	nopl   (%rax)

0000000000002700 <init_rts_emas>:
    2700:	f3 0f 1e fa          	endbr64
    2704:	55                   	push   %rbp
    2705:	48 89 d5             	mov    %rdx,%rbp
    2708:	53                   	push   %rbx
    2709:	48 89 f3             	mov    %rsi,%rbx
    270c:	48 83 ec 08          	sub    $0x8,%rsp
    2710:	e8 9b 2d 00 00       	call   54b0 <init_segment_emas>
    2715:	85 c0                	test   %eax,%eax
    2717:	74 07                	je     2720 <init_rts_emas+0x20>
    2719:	48 83 c4 08          	add    $0x8,%rsp
    271d:	5b                   	pop    %rbx
    271e:	5d                   	pop    %rbp
    271f:	c3                   	ret
    2720:	48 83 c4 08          	add    $0x8,%rsp
    2724:	48 89 ee             	mov    %rbp,%rsi
    2727:	48 89 df             	mov    %rbx,%rdi
    272a:	31 d2                	xor    %edx,%edx
    272c:	5b                   	pop    %rbx
    272d:	5d                   	pop    %rbp
    272e:	e9 bd fd ff ff       	jmp    24f0 <_ZL22init_rts_contexts_emasP9_layout_tS0_m>
    2733:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    273a:	00 00 00 
    273d:	0f 1f 00             	nopl   (%rax)

0000000000002740 <sgx_mm_alloc_ocall>:
    2740:	f3 0f 1e fa          	endbr64
    2744:	41 56                	push   %r14
    2746:	41 89 ce             	mov    %ecx,%r14d
    2749:	41 55                	push   %r13
    274b:	49 89 fd             	mov    %rdi,%r13
    274e:	bf 20 00 00 00       	mov    $0x20,%edi
    2753:	41 54                	push   %r12
    2755:	49 89 f4             	mov    %rsi,%r12
    2758:	55                   	push   %rbp
    2759:	89 d5                	mov    %edx,%ebp
    275b:	53                   	push   %rbx
    275c:	e8 9f 03 00 00       	call   2b00 <sgx_ocalloc>
    2761:	48 85 c0             	test   %rax,%rax
    2764:	74 4a                	je     27b0 <sgx_mm_alloc_ocall+0x70>
    2766:	89 68 18             	mov    %ebp,0x18(%rax)
    2769:	48 89 c6             	mov    %rax,%rsi
    276c:	bf fa ff ff ff       	mov    $0xfffffffa,%edi
    2771:	48 89 c3             	mov    %rax,%rbx
    2774:	4c 89 68 08          	mov    %r13,0x8(%rax)
    2778:	bd 0e 00 00 00       	mov    $0xe,%ebp
    277d:	4c 89 60 10          	mov    %r12,0x10(%rax)
    2781:	44 89 70 1c          	mov    %r14d,0x1c(%rax)
    2785:	e8 e6 16 00 00       	call   3e70 <sgx_ocall>
    278a:	85 c0                	test   %eax,%eax
    278c:	74 12                	je     27a0 <sgx_mm_alloc_ocall+0x60>
    278e:	e8 4d 04 00 00       	call   2be0 <sgx_ocfree>
    2793:	5b                   	pop    %rbx
    2794:	89 e8                	mov    %ebp,%eax
    2796:	5d                   	pop    %rbp
    2797:	41 5c                	pop    %r12
    2799:	41 5d                	pop    %r13
    279b:	41 5e                	pop    %r14
    279d:	c3                   	ret
    279e:	66 90                	xchg   %ax,%ax
    27a0:	8b 03                	mov    (%rbx),%eax
    27a2:	f7 d8                	neg    %eax
    27a4:	19 ed                	sbb    %ebp,%ebp
    27a6:	83 e5 0e             	and    $0xe,%ebp
    27a9:	eb e3                	jmp    278e <sgx_mm_alloc_ocall+0x4e>
    27ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    27b0:	e8 2b 04 00 00       	call   2be0 <sgx_ocfree>
    27b5:	bd 01 00 00 00       	mov    $0x1,%ebp
    27ba:	5b                   	pop    %rbx
    27bb:	89 e8                	mov    %ebp,%eax
    27bd:	5d                   	pop    %rbp
    27be:	41 5c                	pop    %r12
    27c0:	41 5d                	pop    %r13
    27c2:	41 5e                	pop    %r14
    27c4:	c3                   	ret
    27c5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    27cc:	00 00 00 
    27cf:	90                   	nop

00000000000027d0 <sgx_mm_modify_ocall>:
    27d0:	f3 0f 1e fa          	endbr64
    27d4:	41 56                	push   %r14
    27d6:	41 89 ce             	mov    %ecx,%r14d
    27d9:	41 55                	push   %r13
    27db:	49 89 fd             	mov    %rdi,%r13
    27de:	bf 20 00 00 00       	mov    $0x20,%edi
    27e3:	41 54                	push   %r12
    27e5:	49 89 f4             	mov    %rsi,%r12
    27e8:	55                   	push   %rbp
    27e9:	89 d5                	mov    %edx,%ebp
    27eb:	53                   	push   %rbx
    27ec:	e8 0f 03 00 00       	call   2b00 <sgx_ocalloc>
    27f1:	48 85 c0             	test   %rax,%rax
    27f4:	74 4a                	je     2840 <sgx_mm_modify_ocall+0x70>
    27f6:	89 68 18             	mov    %ebp,0x18(%rax)
    27f9:	48 89 c6             	mov    %rax,%rsi
    27fc:	bf f9 ff ff ff       	mov    $0xfffffff9,%edi
    2801:	48 89 c3             	mov    %rax,%rbx
    2804:	4c 89 68 08          	mov    %r13,0x8(%rax)
    2808:	bd 0e 00 00 00       	mov    $0xe,%ebp
    280d:	4c 89 60 10          	mov    %r12,0x10(%rax)
    2811:	44 89 70 1c          	mov    %r14d,0x1c(%rax)
    2815:	e8 56 16 00 00       	call   3e70 <sgx_ocall>
    281a:	85 c0                	test   %eax,%eax
    281c:	74 12                	je     2830 <sgx_mm_modify_ocall+0x60>
    281e:	e8 bd 03 00 00       	call   2be0 <sgx_ocfree>
    2823:	5b                   	pop    %rbx
    2824:	89 e8                	mov    %ebp,%eax
    2826:	5d                   	pop    %rbp
    2827:	41 5c                	pop    %r12
    2829:	41 5d                	pop    %r13
    282b:	41 5e                	pop    %r14
    282d:	c3                   	ret
    282e:	66 90                	xchg   %ax,%ax
    2830:	8b 03                	mov    (%rbx),%eax
    2832:	f7 d8                	neg    %eax
    2834:	19 ed                	sbb    %ebp,%ebp
    2836:	83 e5 0e             	and    $0xe,%ebp
    2839:	eb e3                	jmp    281e <sgx_mm_modify_ocall+0x4e>
    283b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2840:	e8 9b 03 00 00       	call   2be0 <sgx_ocfree>
    2845:	bd 01 00 00 00       	mov    $0x1,%ebp
    284a:	5b                   	pop    %rbx
    284b:	89 e8                	mov    %ebp,%eax
    284d:	5d                   	pop    %rbp
    284e:	41 5c                	pop    %r12
    2850:	41 5d                	pop    %r13
    2852:	41 5e                	pop    %r14
    2854:	c3                   	ret
    2855:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    285c:	00 00 00 
    285f:	90                   	nop

0000000000002860 <sgx_mm_register_pfhandler>:
    2860:	f3 0f 1e fa          	endbr64
    2864:	31 c0                	xor    %eax,%eax
    2866:	48 83 3d 0a 10 01 00 	cmpq   $0x0,0x1100a(%rip)        # 13878 <g_mm_pfhandler>
    286d:	00 
    286e:	74 08                	je     2878 <sgx_mm_register_pfhandler+0x18>
    2870:	c3                   	ret
    2871:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2878:	48 89 3d f9 0f 01 00 	mov    %rdi,0x10ff9(%rip)        # 13878 <g_mm_pfhandler>
    287f:	b8 01 00 00 00       	mov    $0x1,%eax
    2884:	c3                   	ret
    2885:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    288c:	00 00 00 
    288f:	90                   	nop

0000000000002890 <sgx_mm_mutex_create>:
    2890:	f3 0f 1e fa          	endbr64
    2894:	48 83 ec 08          	sub    $0x8,%rsp
    2898:	bf 18 00 00 00       	mov    $0x18,%edi
    289d:	e8 ee 60 00 00       	call   8990 <dlmalloc>
    28a2:	48 85 c0             	test   %rax,%rax
    28a5:	74 16                	je     28bd <sgx_mm_mutex_create+0x2d>
    28a7:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    28ae:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
    28b5:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
    28bc:	00 
    28bd:	48 83 c4 08          	add    $0x8,%rsp
    28c1:	c3                   	ret
    28c2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    28c9:	00 00 00 
    28cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000028d0 <sgx_mm_mutex_lock>:
    28d0:	f3 0f 1e fa          	endbr64
    28d4:	53                   	push   %rbx
    28d5:	48 89 fb             	mov    %rdi,%rbx
    28d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    28df:	00 
    28e0:	48 89 df             	mov    %rbx,%rdi
    28e3:	e8 48 8c 00 00       	call   b530 <sgx_thread_spin_trylock>
    28e8:	85 c0                	test   %eax,%eax
    28ea:	75 f4                	jne    28e0 <sgx_mm_mutex_lock+0x10>
    28ec:	5b                   	pop    %rbx
    28ed:	c3                   	ret
    28ee:	66 90                	xchg   %ax,%ax

00000000000028f0 <sgx_mm_mutex_unlock>:
    28f0:	f3 0f 1e fa          	endbr64
    28f4:	e9 c7 8c 00 00       	jmp    b5c0 <sgx_thread_spin_unlock>
    28f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002900 <sgx_mm_is_within_enclave>:
    2900:	f3 0f 1e fa          	endbr64
    2904:	48 83 ec 08          	sub    $0x8,%rsp
    2908:	e8 33 01 00 00       	call   2a40 <sgx_is_within_enclave>
    290d:	85 c0                	test   %eax,%eax
    290f:	0f 95 c0             	setne  %al
    2912:	48 83 c4 08          	add    $0x8,%rsp
    2916:	c3                   	ret
    2917:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    291e:	00 00 

0000000000002920 <init_optimized_libs>:
    2920:	f3 0f 1e fa          	endbr64
    2924:	41 54                	push   %r12
    2926:	49 89 d4             	mov    %rdx,%r12
    2929:	55                   	push   %rbp
    292a:	48 89 f5             	mov    %rsi,%rbp
    292d:	53                   	push   %rbx
    292e:	48 89 fb             	mov    %rdi,%rbx
    2931:	e8 d7 a1 00 00       	call   cb0d <get_enclave_state>
    2936:	83 f8 01             	cmp    $0x1,%eax
    2939:	0f 85 d6 00 00 00    	jne    2a15 <init_optimized_libs+0xf5>
    293f:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffffff,%rax
    2946:	ff ff 00 
    2949:	48 89 da             	mov    %rbx,%rdx
    294c:	48 21 c2             	and    %rax,%rdx
    294f:	48 39 d8             	cmp    %rbx,%rax
    2952:	48 0f 42 da          	cmovb  %rdx,%rbx
    2956:	48 81 fb ff 01 00 00 	cmp    $0x1ff,%rbx
    295d:	0f 86 b2 00 00 00    	jbe    2a15 <init_optimized_libs+0xf5>
    2963:	f6 c3 20             	test   $0x20,%bl
    2966:	74 0e                	je     2976 <init_optimized_libs+0x56>
    2968:	48 89 d8             	mov    %rbx,%rax
    296b:	48 f7 d0             	not    %rax
    296e:	a8 1f                	test   $0x1f,%al
    2970:	0f 85 9f 00 00 00    	jne    2a15 <init_optimized_libs+0xf5>
    2976:	f6 c3 40             	test   $0x40,%bl
    2979:	74 0e                	je     2989 <init_optimized_libs+0x69>
    297b:	48 89 d8             	mov    %rbx,%rax
    297e:	48 f7 d0             	not    %rax
    2981:	a8 3f                	test   $0x3f,%al
    2983:	0f 85 8c 00 00 00    	jne    2a15 <init_optimized_libs+0xf5>
    2989:	f6 c3 80             	test   $0x80,%bl
    298c:	74 0a                	je     2998 <init_optimized_libs+0x78>
    298e:	48 89 d8             	mov    %rbx,%rax
    2991:	48 f7 d0             	not    %rax
    2994:	a8 7f                	test   $0x7f,%al
    2996:	75 7d                	jne    2a15 <init_optimized_libs+0xf5>
    2998:	f6 c7 01             	test   $0x1,%bh
    299b:	74 0b                	je     29a8 <init_optimized_libs+0x88>
    299d:	0f b6 c3             	movzbl %bl,%eax
    29a0:	48 3d ff 00 00 00    	cmp    $0xff,%rax
    29a6:	75 6d                	jne    2a15 <init_optimized_libs+0xf5>
    29a8:	f6 c7 02             	test   $0x2,%bh
    29ab:	74 0d                	je     29ba <init_optimized_libs+0x9a>
    29ad:	48 89 d8             	mov    %rbx,%rax
    29b0:	48 f7 d0             	not    %rax
    29b3:	a9 ff 01 00 00       	test   $0x1ff,%eax
    29b8:	75 5b                	jne    2a15 <init_optimized_libs+0xf5>
    29ba:	f6 c7 04             	test   $0x4,%bh
    29bd:	75 49                	jne    2a08 <init_optimized_libs+0xe8>
    29bf:	4c 89 e0             	mov    %r12,%rax
    29c2:	48 f7 d0             	not    %rax
    29c5:	a8 06                	test   $0x6,%al
    29c7:	74 57                	je     2a20 <init_optimized_libs+0x100>
    29c9:	48 b8 ff 7f 12 86 08 	movabs $0xfffe200886127fff,%rax
    29d0:	20 fe ff 
    29d3:	48 21 c3             	and    %rax,%rbx
    29d6:	4c 8d 25 23 e4 00 00 	lea    0xe423(%rip),%r12        # 10e00 <g_cpu_feature_indicator>
    29dd:	48 89 df             	mov    %rbx,%rdi
    29e0:	49 89 1c 24          	mov    %rbx,(%r12)
    29e4:	e8 17 8b 00 00       	call   b500 <sgx_init_string_lib>
    29e9:	85 c0                	test   %eax,%eax
    29eb:	75 28                	jne    2a15 <init_optimized_libs+0xf5>
    29ed:	49 8b 3c 24          	mov    (%r12),%rdi
    29f1:	48 89 ee             	mov    %rbp,%rsi
    29f4:	e8 07 90 00 00       	call   ba00 <sgx_init_crypto_lib>
    29f9:	5b                   	pop    %rbx
    29fa:	5d                   	pop    %rbp
    29fb:	f7 d8                	neg    %eax
    29fd:	41 5c                	pop    %r12
    29ff:	19 c0                	sbb    %eax,%eax
    2a01:	c3                   	ret
    2a02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2a08:	48 89 d8             	mov    %rbx,%rax
    2a0b:	48 f7 d0             	not    %rax
    2a0e:	a9 ff 03 00 00       	test   $0x3ff,%eax
    2a13:	74 aa                	je     29bf <init_optimized_libs+0x9f>
    2a15:	5b                   	pop    %rbx
    2a16:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a1b:	5d                   	pop    %rbp
    2a1c:	41 5c                	pop    %r12
    2a1e:	c3                   	ret
    2a1f:	90                   	nop
    2a20:	4c 89 e0             	mov    %r12,%rax
    2a23:	48 f7 d0             	not    %rax
    2a26:	a8 e0                	test   $0xe0,%al
    2a28:	74 ac                	je     29d6 <init_optimized_libs+0xb6>
    2a2a:	48 b8 ff ff ff b6 18 	movabs $0xfffee018b6ffffff,%rax
    2a31:	e0 fe ff 
    2a34:	48 21 c3             	and    %rax,%rbx
    2a37:	eb 9d                	jmp    29d6 <init_optimized_libs+0xb6>
    2a39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002a40 <sgx_is_within_enclave>:
    2a40:	f3 0f 1e fa          	endbr64
    2a44:	48 8d 05 a5 e3 00 00 	lea    0xe3a5(%rip),%rax        # 10df0 <g_enclave_base>
    2a4b:	48 8b 10             	mov    (%rax),%rdx
    2a4e:	48 8d 05 93 e3 00 00 	lea    0xe393(%rip),%rax        # 10de8 <g_enclave_size>
    2a55:	48 8b 08             	mov    (%rax),%rcx
    2a58:	48 01 d1             	add    %rdx,%rcx
    2a5b:	48 89 c8             	mov    %rcx,%rax
    2a5e:	48 83 e8 01          	sub    $0x1,%rax
    2a62:	48 85 f6             	test   %rsi,%rsi
    2a65:	74 21                	je     2a88 <sgx_is_within_enclave+0x48>
    2a67:	48 83 ee 01          	sub    $0x1,%rsi
    2a6b:	48 01 fe             	add    %rdi,%rsi
    2a6e:	0f 93 c1             	setae  %cl
    2a71:	48 39 d7             	cmp    %rdx,%rdi
    2a74:	0f 93 c2             	setae  %dl
    2a77:	21 ca                	and    %ecx,%edx
    2a79:	48 39 f0             	cmp    %rsi,%rax
    2a7c:	0f 93 c0             	setae  %al
    2a7f:	0f b6 c0             	movzbl %al,%eax
    2a82:	21 d0                	and    %edx,%eax
    2a84:	c3                   	ret
    2a85:	0f 1f 00             	nopl   (%rax)
    2a88:	48 89 fe             	mov    %rdi,%rsi
    2a8b:	b9 01 00 00 00       	mov    $0x1,%ecx
    2a90:	eb df                	jmp    2a71 <sgx_is_within_enclave+0x31>
    2a92:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2a99:	00 00 00 
    2a9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002aa0 <sgx_is_outside_enclave>:
    2aa0:	f3 0f 1e fa          	endbr64
    2aa4:	48 85 f6             	test   %rsi,%rsi
    2aa7:	74 17                	je     2ac0 <sgx_is_outside_enclave+0x20>
    2aa9:	48 83 ee 01          	sub    $0x1,%rsi
    2aad:	b8 00 00 00 00       	mov    $0x0,%eax
    2ab2:	48 01 fe             	add    %rdi,%rsi
    2ab5:	73 0c                	jae    2ac3 <sgx_is_outside_enclave+0x23>
    2ab7:	c3                   	ret
    2ab8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    2abf:	00 
    2ac0:	48 89 fe             	mov    %rdi,%rsi
    2ac3:	48 8d 05 26 e3 00 00 	lea    0xe326(%rip),%rax        # 10df0 <g_enclave_base>
    2aca:	48 8b 10             	mov    (%rax),%rdx
    2acd:	48 8d 05 14 e3 00 00 	lea    0xe314(%rip),%rax        # 10de8 <g_enclave_size>
    2ad4:	48 8b 08             	mov    (%rax),%rcx
    2ad7:	48 01 d1             	add    %rdx,%rcx
    2ada:	48 89 c8             	mov    %rcx,%rax
    2add:	48 83 e8 01          	sub    $0x1,%rax
    2ae1:	48 39 f8             	cmp    %rdi,%rax
    2ae4:	0f 92 c0             	setb   %al
    2ae7:	48 39 d6             	cmp    %rdx,%rsi
    2aea:	0f 92 c2             	setb   %dl
    2aed:	09 d0                	or     %edx,%eax
    2aef:	0f b6 c0             	movzbl %al,%eax
    2af2:	c3                   	ret
    2af3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2afa:	00 00 00 
    2afd:	0f 1f 00             	nopl   (%rax)

0000000000002b00 <sgx_ocalloc>:
    2b00:	f3 0f 1e fa          	endbr64
    2b04:	53                   	push   %rbx
    2b05:	48 89 fb             	mov    %rdi,%rbx
    2b08:	48 83 ec 10          	sub    $0x10,%rsp
    2b0c:	e8 3b a0 00 00       	call   cb4c <get_thread_data>
    2b11:	48 8d 15 d8 e2 00 00 	lea    0xe2d8(%rip),%rdx        # 10df0 <g_enclave_base>
    2b18:	48 8b 70 20          	mov    0x20(%rax),%rsi
    2b1c:	48 8b 3a             	mov    (%rdx),%rdi
    2b1f:	48 8d 15 c2 e2 00 00 	lea    0xe2c2(%rip),%rdx        # 10de8 <g_enclave_size>
    2b26:	48 8b 86 90 00 00 00 	mov    0x90(%rsi),%rax
    2b2d:	48 8b 0a             	mov    (%rdx),%rcx
    2b30:	48 89 c2             	mov    %rax,%rdx
    2b33:	48 83 c2 07          	add    $0x7,%rdx
    2b37:	72 33                	jb     2b6c <sgx_ocalloc+0x6c>
    2b39:	4c 8d 44 0f ff       	lea    -0x1(%rdi,%rcx,1),%r8
    2b3e:	48 39 fa             	cmp    %rdi,%rdx
    2b41:	72 05                	jb     2b48 <sgx_ocalloc+0x48>
    2b43:	49 39 c0             	cmp    %rax,%r8
    2b46:	73 24                	jae    2b6c <sgx_ocalloc+0x6c>
    2b48:	48 39 d8             	cmp    %rbx,%rax
    2b4b:	72 1f                	jb     2b6c <sgx_ocalloc+0x6c>
    2b4d:	48 89 c2             	mov    %rax,%rdx
    2b50:	48 29 da             	sub    %rbx,%rdx
    2b53:	48 89 d1             	mov    %rdx,%rcx
    2b56:	48 83 e1 f0          	and    $0xfffffffffffffff0,%rcx
    2b5a:	48 85 db             	test   %rbx,%rbx
    2b5d:	75 19                	jne    2b78 <sgx_ocalloc+0x78>
    2b5f:	48 89 cb             	mov    %rcx,%rbx
    2b62:	48 39 fb             	cmp    %rdi,%rbx
    2b65:	72 21                	jb     2b88 <sgx_ocalloc+0x88>
    2b67:	49 39 c8             	cmp    %rcx,%r8
    2b6a:	72 1c                	jb     2b88 <sgx_ocalloc+0x88>
    2b6c:	e8 cf a3 00 00       	call   cf40 <abort>
    2b71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2b78:	48 83 eb 01          	sub    $0x1,%rbx
    2b7c:	48 01 cb             	add    %rcx,%rbx
    2b7f:	72 eb                	jb     2b6c <sgx_ocalloc+0x6c>
    2b81:	eb df                	jmp    2b62 <sgx_ocalloc+0x62>
    2b83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2b88:	48 83 e8 01          	sub    $0x1,%rax
    2b8c:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
    2b92:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    2b99:	75 1d                	jne    2bb8 <sgx_ocalloc+0xb8>
    2b9b:	eb cf                	jmp    2b6c <sgx_ocalloc+0x6c>
    2b9d:	0f 1f 00             	nopl   (%rax)
    2ba0:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2ba5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2baa:	c6 00 00             	movb   $0x0,(%rax)
    2bad:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2bb2:	48 2d 00 10 00 00    	sub    $0x1000,%rax
    2bb8:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2bbd:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2bc2:	48 39 d0             	cmp    %rdx,%rax
    2bc5:	73 d9                	jae    2ba0 <sgx_ocalloc+0xa0>
    2bc7:	48 89 8e 90 00 00 00 	mov    %rcx,0x90(%rsi)
    2bce:	48 83 c4 10          	add    $0x10,%rsp
    2bd2:	48 89 c8             	mov    %rcx,%rax
    2bd5:	5b                   	pop    %rbx
    2bd6:	c3                   	ret
    2bd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2bde:	00 00 

0000000000002be0 <sgx_ocfree>:
    2be0:	f3 0f 1e fa          	endbr64
    2be4:	48 83 ec 08          	sub    $0x8,%rsp
    2be8:	e8 5f 9f 00 00       	call   cb4c <get_thread_data>
    2bed:	48 8d 15 fc e1 00 00 	lea    0xe1fc(%rip),%rdx        # 10df0 <g_enclave_base>
    2bf4:	48 8d 0d ed e1 00 00 	lea    0xe1ed(%rip),%rcx        # 10de8 <g_enclave_size>
    2bfb:	48 8b 70 20          	mov    0x20(%rax),%rsi
    2bff:	48 8b 40 08          	mov    0x8(%rax),%rax
    2c03:	48 8b 12             	mov    (%rdx),%rdx
    2c06:	48 8b 09             	mov    (%rcx),%rcx
    2c09:	48 8b 40 e8          	mov    -0x18(%rax),%rax
    2c0d:	48 89 c7             	mov    %rax,%rdi
    2c10:	48 83 c7 07          	add    $0x7,%rdi
    2c14:	72 0f                	jb     2c25 <sgx_ocfree+0x45>
    2c16:	48 8d 4c 0a ff       	lea    -0x1(%rdx,%rcx,1),%rcx
    2c1b:	48 39 c1             	cmp    %rax,%rcx
    2c1e:	72 10                	jb     2c30 <sgx_ocfree+0x50>
    2c20:	48 39 d7             	cmp    %rdx,%rdi
    2c23:	72 0b                	jb     2c30 <sgx_ocfree+0x50>
    2c25:	e8 16 a3 00 00       	call   cf40 <abort>
    2c2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2c30:	48 89 86 90 00 00 00 	mov    %rax,0x90(%rsi)
    2c37:	48 83 c4 08          	add    $0x8,%rsp
    2c3b:	c3                   	ret
    2c3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002c40 <sgx_read_rand>:
    2c40:	f3 0f 1e fa          	endbr64
    2c44:	41 55                	push   %r13
    2c46:	41 54                	push   %r12
    2c48:	55                   	push   %rbp
    2c49:	53                   	push   %rbx
    2c4a:	48 83 ec 18          	sub    $0x18,%rsp
    2c4e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2c55:	00 00 
    2c57:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    2c5c:	31 c0                	xor    %eax,%eax
    2c5e:	48 85 ff             	test   %rdi,%rdi
    2c61:	0f 84 f9 00 00 00    	je     2d60 <sgx_read_rand+0x120>
    2c67:	48 89 f3             	mov    %rsi,%rbx
    2c6a:	48 85 f6             	test   %rsi,%rsi
    2c6d:	0f 84 ed 00 00 00    	je     2d60 <sgx_read_rand+0x120>
    2c73:	48 8d 05 76 e1 00 00 	lea    0xe176(%rip),%rax        # 10df0 <g_enclave_base>
    2c7a:	48 89 fd             	mov    %rdi,%rbp
    2c7d:	31 ff                	xor    %edi,%edi
    2c7f:	48 8b 08             	mov    (%rax),%rcx
    2c82:	48 8d 05 5f e1 00 00 	lea    0xe15f(%rip),%rax        # 10de8 <g_enclave_size>
    2c89:	48 8b 10             	mov    (%rax),%rdx
    2c8c:	48 8d 46 ff          	lea    -0x1(%rsi),%rax
    2c90:	48 01 ca             	add    %rcx,%rdx
    2c93:	48 83 ea 01          	sub    $0x1,%rdx
    2c97:	48 01 e8             	add    %rbp,%rax
    2c9a:	40 0f 92 c7          	setb   %dil
    2c9e:	48 39 c2             	cmp    %rax,%rdx
    2ca1:	41 0f 93 c0          	setae  %r8b
    2ca5:	48 85 ff             	test   %rdi,%rdi
    2ca8:	40 0f 94 c6          	sete   %sil
    2cac:	41 84 f0             	test   %sil,%r8b
    2caf:	74 05                	je     2cb6 <sgx_read_rand+0x76>
    2cb1:	48 39 cd             	cmp    %rcx,%rbp
    2cb4:	73 42                	jae    2cf8 <sgx_read_rand+0xb8>
    2cb6:	be 02 00 00 00       	mov    $0x2,%esi
    2cbb:	48 85 ff             	test   %rdi,%rdi
    2cbe:	74 28                	je     2ce8 <sgx_read_rand+0xa8>
    2cc0:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    2cc5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    2ccc:	00 00 
    2cce:	0f 85 96 00 00 00    	jne    2d6a <sgx_read_rand+0x12a>
    2cd4:	48 83 c4 18          	add    $0x18,%rsp
    2cd8:	89 f0                	mov    %esi,%eax
    2cda:	5b                   	pop    %rbx
    2cdb:	5d                   	pop    %rbp
    2cdc:	41 5c                	pop    %r12
    2cde:	41 5d                	pop    %r13
    2ce0:	c3                   	ret
    2ce1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2ce8:	48 39 c8             	cmp    %rcx,%rax
    2ceb:	72 0b                	jb     2cf8 <sgx_read_rand+0xb8>
    2ced:	48 39 d5             	cmp    %rdx,%rbp
    2cf0:	76 ce                	jbe    2cc0 <sgx_read_rand+0x80>
    2cf2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2cf8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
    2cff:	00 
    2d00:	4c 8d 6c 24 04       	lea    0x4(%rsp),%r13
    2d05:	4c 89 ef             	mov    %r13,%rdi
    2d08:	e8 10 a2 00 00       	call   cf1d <do_rdrand>
    2d0d:	85 c0                	test   %eax,%eax
    2d0f:	74 3f                	je     2d50 <sgx_read_rand+0x110>
    2d11:	41 bc 04 00 00 00    	mov    $0x4,%r12d
    2d17:	48 89 ef             	mov    %rbp,%rdi
    2d1a:	4c 89 ee             	mov    %r13,%rsi
    2d1d:	4c 39 e3             	cmp    %r12,%rbx
    2d20:	4c 0f 46 e3          	cmovbe %rbx,%r12
    2d24:	4c 89 e2             	mov    %r12,%rdx
    2d27:	4c 01 e5             	add    %r12,%rbp
    2d2a:	e8 31 85 00 00       	call   b260 <memcpy>
    2d2f:	4c 29 e3             	sub    %r12,%rbx
    2d32:	75 d1                	jne    2d05 <sgx_read_rand+0xc5>
    2d34:	be 04 00 00 00       	mov    $0x4,%esi
    2d39:	b9 04 00 00 00       	mov    $0x4,%ecx
    2d3e:	31 d2                	xor    %edx,%edx
    2d40:	4c 89 ef             	mov    %r13,%rdi
    2d43:	e8 68 87 00 00       	call   b4b0 <memset_s>
    2d48:	31 f6                	xor    %esi,%esi
    2d4a:	e9 71 ff ff ff       	jmp    2cc0 <sgx_read_rand+0x80>
    2d4f:	90                   	nop
    2d50:	be 01 00 00 00       	mov    $0x1,%esi
    2d55:	e9 66 ff ff ff       	jmp    2cc0 <sgx_read_rand+0x80>
    2d5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2d60:	be 02 00 00 00       	mov    $0x2,%esi
    2d65:	e9 56 ff ff ff       	jmp    2cc0 <sgx_read_rand+0x80>
    2d6a:	e8 b1 87 00 00       	call   b520 <__stack_chk_fail>
    2d6f:	90                   	nop

0000000000002d70 <check_static_stack_canary>:
    2d70:	f3 0f 1e fa          	endbr64
    2d74:	48 8d 05 5d e0 00 00 	lea    0xe05d(%rip),%rax        # 10dd8 <__intel_security_cookie>
    2d7b:	48 8b 00             	mov    (%rax),%rax
    2d7e:	48 39 87 08 fc fe ff 	cmp    %rax,-0x103f8(%rdi)
    2d85:	0f 95 c0             	setne  %al
    2d88:	0f b6 c0             	movzbl %al,%eax
    2d8b:	f7 d8                	neg    %eax
    2d8d:	c3                   	ret
    2d8e:	66 90                	xchg   %ax,%ax

0000000000002d90 <sgx_wrpkru>:
    2d90:	f3 0f 1e fa          	endbr64
    2d94:	53                   	push   %rbx
    2d95:	89 fb                	mov    %edi,%ebx
    2d97:	e8 f4 14 00 00       	call   4290 <is_pkru_enabled>
    2d9c:	31 d2                	xor    %edx,%edx
    2d9e:	84 c0                	test   %al,%al
    2da0:	74 0c                	je     2dae <sgx_wrpkru+0x1e>
    2da2:	89 d8                	mov    %ebx,%eax
    2da4:	89 d1                	mov    %edx,%ecx
    2da6:	0f 01 ef             	wrpkru
    2da9:	ba 01 00 00 00       	mov    $0x1,%edx
    2dae:	89 d0                	mov    %edx,%eax
    2db0:	5b                   	pop    %rbx
    2db1:	c3                   	ret
    2db2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    2db9:	00 00 00 
    2dbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002dc0 <_ZL25check_dynamic_entry_rangePvmtmP24dynamic_flags_attributes.constprop.0>:
    2dc0:	41 55                	push   %r13
    2dc2:	49 89 cd             	mov    %rcx,%r13
    2dc5:	41 54                	push   %r12
    2dc7:	55                   	push   %rbp
    2dc8:	53                   	push   %rbx
    2dc9:	48 83 ec 08          	sub    $0x8,%rsp
    2dcd:	48 8d 0d 8c 03 01 00 	lea    0x1038c(%rip),%rcx        # 13160 <g_global_data>
    2dd4:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    2dda:	85 c0                	test   %eax,%eax
    2ddc:	0f 84 8e 00 00 00    	je     2e70 <_ZL25check_dynamic_entry_rangePvmtmP24dynamic_flags_attributes.constprop.0+0xb0>
    2de2:	48 89 d3             	mov    %rdx,%rbx
    2de5:	49 89 fc             	mov    %rdi,%r12
    2de8:	31 d2                	xor    %edx,%edx
    2dea:	eb 11                	jmp    2dfd <_ZL25check_dynamic_entry_rangePvmtmP24dynamic_flags_attributes.constprop.0+0x3d>
    2dec:	0f 1f 40 00          	nopl   0x0(%rax)
    2df0:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    2df6:	83 c2 01             	add    $0x1,%edx
    2df9:	39 c2                	cmp    %eax,%edx
    2dfb:	73 73                	jae    2e70 <_ZL25check_dynamic_entry_rangePvmtmP24dynamic_flags_attributes.constprop.0+0xb0>
    2dfd:	89 d0                	mov    %edx,%eax
    2dff:	48 83 c0 0b          	add    $0xb,%rax
    2e03:	48 c1 e0 05          	shl    $0x5,%rax
    2e07:	48 01 c8             	add    %rcx,%rax
    2e0a:	0f b7 00             	movzwl (%rax),%eax
    2e0d:	66 39 c6             	cmp    %ax,%si
    2e10:	75 de                	jne    2df0 <_ZL25check_dynamic_entry_rangePvmtmP24dynamic_flags_attributes.constprop.0+0x30>
    2e12:	8d 42 0b             	lea    0xb(%rdx),%eax
    2e15:	48 c1 e0 05          	shl    $0x5,%rax
    2e19:	48 01 c1             	add    %rax,%rcx
    2e1c:	48 89 cd             	mov    %rcx,%rbp
    2e1f:	74 4f                	je     2e70 <_ZL25check_dynamic_entry_rangePvmtmP24dynamic_flags_attributes.constprop.0+0xb0>
    2e21:	e8 db 9c 00 00       	call   cb01 <get_enclave_base>
    2e26:	48 8b 55 08          	mov    0x8(%rbp),%rdx
    2e2a:	48 01 da             	add    %rbx,%rdx
    2e2d:	48 01 d0             	add    %rdx,%rax
    2e30:	8b 55 04             	mov    0x4(%rbp),%edx
    2e33:	49 39 c4             	cmp    %rax,%r12
    2e36:	72 38                	jb     2e70 <_ZL25check_dynamic_entry_rangePvmtmP24dynamic_flags_attributes.constprop.0+0xb0>
    2e38:	48 c1 e2 0c          	shl    $0xc,%rdx
    2e3c:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
    2e43:	48 01 c2             	add    %rax,%rdx
    2e46:	4c 39 e2             	cmp    %r12,%rdx
    2e49:	72 25                	jb     2e70 <_ZL25check_dynamic_entry_rangePvmtmP24dynamic_flags_attributes.constprop.0+0xb0>
    2e4b:	4d 85 ed             	test   %r13,%r13
    2e4e:	74 11                	je     2e61 <_ZL25check_dynamic_entry_rangePvmtmP24dynamic_flags_attributes.constprop.0+0xa1>
    2e50:	48 8b 45 18          	mov    0x18(%rbp),%rax
    2e54:	49 89 45 00          	mov    %rax,0x0(%r13)
    2e58:	0f b7 45 02          	movzwl 0x2(%rbp),%eax
    2e5c:	66 41 89 45 08       	mov    %ax,0x8(%r13)
    2e61:	31 c0                	xor    %eax,%eax
    2e63:	48 83 c4 08          	add    $0x8,%rsp
    2e67:	5b                   	pop    %rbx
    2e68:	5d                   	pop    %rbp
    2e69:	41 5c                	pop    %r12
    2e6b:	41 5d                	pop    %r13
    2e6d:	c3                   	ret
    2e6e:	66 90                	xchg   %ax,%ax
    2e70:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e75:	eb ec                	jmp    2e63 <_ZL25check_dynamic_entry_rangePvmtmP24dynamic_flags_attributes.constprop.0+0xa3>
    2e77:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    2e7e:	00 00 

0000000000002e80 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0>:
    2e80:	48 81 ff ff ef ff ff 	cmp    $0xffffffffffffefff,%rdi
    2e87:	0f 87 c3 01 00 00    	ja     3050 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x1d0>
    2e8d:	41 57                	push   %r15
    2e8f:	41 56                	push   %r14
    2e91:	41 55                	push   %r13
    2e93:	41 54                	push   %r12
    2e95:	49 89 f4             	mov    %rsi,%r12
    2e98:	55                   	push   %rbp
    2e99:	48 89 d5             	mov    %rdx,%rbp
    2e9c:	53                   	push   %rbx
    2e9d:	48 89 fb             	mov    %rdi,%rbx
    2ea0:	48 83 ec 08          	sub    $0x8,%rsp
    2ea4:	e8 f7 10 00 00       	call   3fa0 <get_heap_base>
    2ea9:	49 89 c5             	mov    %rax,%r13
    2eac:	e8 7f 11 00 00       	call   4030 <get_heap_min_size>
    2eb1:	49 01 c5             	add    %rax,%r13
    2eb4:	e8 07 11 00 00       	call   3fc0 <get_heap_size>
    2eb9:	49 89 c6             	mov    %rax,%r14
    2ebc:	e8 6f 11 00 00       	call   4030 <get_heap_min_size>
    2ec1:	49 29 c6             	sub    %rax,%r14
    2ec4:	4c 39 eb             	cmp    %r13,%rbx
    2ec7:	72 37                	jb     2f00 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x80>
    2ec9:	48 8d 83 00 10 00 00 	lea    0x1000(%rbx),%rax
    2ed0:	4d 01 f5             	add    %r14,%r13
    2ed3:	49 39 c5             	cmp    %rax,%r13
    2ed6:	72 28                	jb     2f00 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x80>
    2ed8:	48 85 ed             	test   %rbp,%rbp
    2edb:	74 11                	je     2eee <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x6e>
    2edd:	b8 08 00 00 00       	mov    $0x8,%eax
    2ee2:	48 c7 45 00 03 02 00 	movq   $0x203,0x0(%rbp)
    2ee9:	00 
    2eea:	66 89 45 08          	mov    %ax,0x8(%rbp)
    2eee:	31 c0                	xor    %eax,%eax
    2ef0:	48 83 c4 08          	add    $0x8,%rsp
    2ef4:	5b                   	pop    %rbx
    2ef5:	5d                   	pop    %rbp
    2ef6:	41 5c                	pop    %r12
    2ef8:	41 5d                	pop    %r13
    2efa:	41 5e                	pop    %r14
    2efc:	41 5f                	pop    %r15
    2efe:	c3                   	ret
    2eff:	90                   	nop
    2f00:	31 d2                	xor    %edx,%edx
    2f02:	48 89 e9             	mov    %rbp,%rcx
    2f05:	be 07 00 00 00       	mov    $0x7,%esi
    2f0a:	48 89 df             	mov    %rbx,%rdi
    2f0d:	e8 ae fe ff ff       	call   2dc0 <_ZL25check_dynamic_entry_rangePvmtmP24dynamic_flags_attributes.constprop.0>
    2f12:	85 c0                	test   %eax,%eax
    2f14:	74 d8                	je     2eee <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x6e>
    2f16:	48 8d 15 1b df 00 00 	lea    0xdf1b(%rip),%rdx        # 10e38 <rsrv_mem_size>
    2f1d:	48 8d 05 1c df 00 00 	lea    0xdf1c(%rip),%rax        # 10e40 <rsrv_mem_base>
    2f24:	48 8b 0a             	mov    (%rdx),%rcx
    2f27:	48 8d 15 02 df 00 00 	lea    0xdf02(%rip),%rdx        # 10e30 <rsrv_mem_min_size>
    2f2e:	48 8b 00             	mov    (%rax),%rax
    2f31:	48 8b 32             	mov    (%rdx),%rsi
    2f34:	48 01 c6             	add    %rax,%rsi
    2f37:	48 39 f3             	cmp    %rsi,%rbx
    2f3a:	72 0f                	jb     2f4b <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0xcb>
    2f3c:	48 8d 93 00 10 00 00 	lea    0x1000(%rbx),%rdx
    2f43:	48 01 c8             	add    %rcx,%rax
    2f46:	48 39 d0             	cmp    %rdx,%rax
    2f49:	73 8d                	jae    2ed8 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x58>
    2f4b:	48 8d 0d 0e 02 01 00 	lea    0x1020e(%rip),%rcx        # 13160 <g_global_data>
    2f52:	31 d2                	xor    %edx,%edx
    2f54:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    2f5a:	85 c0                	test   %eax,%eax
    2f5c:	74 25                	je     2f83 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x103>
    2f5e:	66 90                	xchg   %ax,%ax
    2f60:	89 d0                	mov    %edx,%eax
    2f62:	48 83 c0 0b          	add    $0xb,%rax
    2f66:	48 c1 e0 05          	shl    $0x5,%rax
    2f6a:	48 01 c8             	add    %rcx,%rax
    2f6d:	0f b7 00             	movzwl (%rax),%eax
    2f70:	66 3d 13 10          	cmp    $0x1013,%ax
    2f74:	74 42                	je     2fb8 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x138>
    2f76:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    2f7c:	83 c2 01             	add    $0x1,%edx
    2f7f:	39 c2                	cmp    %eax,%edx
    2f81:	72 dd                	jb     2f60 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0xe0>
    2f83:	41 bd 0e 00 00 00    	mov    $0xe,%r13d
    2f89:	31 d2                	xor    %edx,%edx
    2f8b:	48 89 e9             	mov    %rbp,%rcx
    2f8e:	44 89 ee             	mov    %r13d,%esi
    2f91:	48 89 df             	mov    %rbx,%rdi
    2f94:	e8 27 fe ff ff       	call   2dc0 <_ZL25check_dynamic_entry_rangePvmtmP24dynamic_flags_attributes.constprop.0>
    2f99:	85 c0                	test   %eax,%eax
    2f9b:	0f 84 96 00 00 00    	je     3037 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x1b7>
    2fa1:	41 83 c5 01          	add    $0x1,%r13d
    2fa5:	41 83 fd 13          	cmp    $0x13,%r13d
    2fa9:	75 de                	jne    2f89 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x109>
    2fab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2fb0:	e9 3b ff ff ff       	jmp    2ef0 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x70>
    2fb5:	0f 1f 00             	nopl   (%rax)
    2fb8:	8d 42 0b             	lea    0xb(%rdx),%eax
    2fbb:	41 bd 0e 00 00 00    	mov    $0xe,%r13d
    2fc1:	48 c1 e0 05          	shl    $0x5,%rax
    2fc5:	48 01 c1             	add    %rax,%rcx
    2fc8:	49 89 ce             	mov    %rcx,%r14
    2fcb:	74 bc                	je     2f89 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x109>
    2fcd:	41 8b 46 04          	mov    0x4(%r14),%eax
    2fd1:	45 31 ff             	xor    %r15d,%r15d
    2fd4:	83 f8 ff             	cmp    $0xffffffff,%eax
    2fd7:	75 17                	jne    2ff0 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x170>
    2fd9:	eb 4d                	jmp    3028 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x1a8>
    2fdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2fe0:	41 8b 46 04          	mov    0x4(%r14),%eax
    2fe4:	49 83 c7 01          	add    $0x1,%r15
    2fe8:	83 c0 01             	add    $0x1,%eax
    2feb:	41 39 c7             	cmp    %eax,%r15d
    2fee:	73 38                	jae    3028 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x1a8>
    2ff0:	49 8b 56 08          	mov    0x8(%r14),%rdx
    2ff4:	48 89 e9             	mov    %rbp,%rcx
    2ff7:	44 89 ee             	mov    %r13d,%esi
    2ffa:	48 89 df             	mov    %rbx,%rdi
    2ffd:	49 0f af d7          	imul   %r15,%rdx
    3001:	e8 ba fd ff ff       	call   2dc0 <_ZL25check_dynamic_entry_rangePvmtmP24dynamic_flags_attributes.constprop.0>
    3006:	85 c0                	test   %eax,%eax
    3008:	75 d6                	jne    2fe0 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x160>
    300a:	4d 85 e4             	test   %r12,%r12
    300d:	0f 84 db fe ff ff    	je     2eee <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x6e>
    3013:	49 8b 46 08          	mov    0x8(%r14),%rax
    3017:	49 0f af c7          	imul   %r15,%rax
    301b:	49 89 04 24          	mov    %rax,(%r12)
    301f:	e9 ca fe ff ff       	jmp    2eee <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x6e>
    3024:	0f 1f 40 00          	nopl   0x0(%rax)
    3028:	41 83 c5 01          	add    $0x1,%r13d
    302c:	41 83 fd 13          	cmp    $0x13,%r13d
    3030:	75 9b                	jne    2fcd <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x14d>
    3032:	e9 74 ff ff ff       	jmp    2fab <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x12b>
    3037:	4d 85 e4             	test   %r12,%r12
    303a:	0f 84 ae fe ff ff    	je     2eee <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x6e>
    3040:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
    3047:	00 
    3048:	e9 a1 fe ff ff       	jmp    2eee <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0+0x6e>
    304d:	0f 1f 00             	nopl   (%rax)
    3050:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3055:	c3                   	ret
    3056:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    305d:	00 00 00 

0000000000003060 <is_dynamic_thread>:
    3060:	f3 0f 1e fa          	endbr64
    3064:	48 83 ec 28          	sub    $0x28,%rsp
    3068:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    306f:	00 00 
    3071:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    3076:	31 c0                	xor    %eax,%eax
    3078:	48 85 ff             	test   %rdi,%rdi
    307b:	74 0e                	je     308b <is_dynamic_thread+0x2b>
    307d:	31 f6                	xor    %esi,%esi
    307f:	48 89 e2             	mov    %rsp,%rdx
    3082:	e8 f9 fd ff ff       	call   2e80 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0>
    3087:	85 c0                	test   %eax,%eax
    3089:	74 1d                	je     30a8 <is_dynamic_thread+0x48>
    308b:	31 c0                	xor    %eax,%eax
    308d:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    3092:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3099:	00 00 
    309b:	75 1a                	jne    30b7 <is_dynamic_thread+0x57>
    309d:	48 83 c4 28          	add    $0x28,%rsp
    30a1:	c3                   	ret
    30a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    30a8:	31 c0                	xor    %eax,%eax
    30aa:	48 81 3c 24 00 01 00 	cmpq   $0x100,(%rsp)
    30b1:	00 
    30b2:	0f 94 c0             	sete   %al
    30b5:	eb d6                	jmp    308d <is_dynamic_thread+0x2d>
    30b7:	e8 64 84 00 00       	call   b520 <__stack_chk_fail>
    30bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000030c0 <is_dynamic_thread_exist>:
    30c0:	f3 0f 1e fa          	endbr64
    30c4:	48 8d 05 31 dd 00 00 	lea    0xdd31(%rip),%rax        # 10dfc <EDMM_supported>
    30cb:	8b 00                	mov    (%rax),%eax
    30cd:	85 c0                	test   %eax,%eax
    30cf:	74 59                	je     312a <is_dynamic_thread_exist+0x6a>
    30d1:	48 8d 0d 88 00 01 00 	lea    0x10088(%rip),%rcx        # 13160 <g_global_data>
    30d8:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    30de:	85 c0                	test   %eax,%eax
    30e0:	74 46                	je     3128 <is_dynamic_thread_exist+0x68>
    30e2:	31 d2                	xor    %edx,%edx
    30e4:	eb 17                	jmp    30fd <is_dynamic_thread_exist+0x3d>
    30e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    30ed:	00 00 00 
    30f0:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    30f6:	83 c2 01             	add    $0x1,%edx
    30f9:	39 c2                	cmp    %eax,%edx
    30fb:	73 2b                	jae    3128 <is_dynamic_thread_exist+0x68>
    30fd:	89 d0                	mov    %edx,%eax
    30ff:	48 83 c0 0b          	add    $0xb,%rax
    3103:	48 c1 e0 05          	shl    $0x5,%rax
    3107:	48 01 c8             	add    %rcx,%rax
    310a:	0f b7 00             	movzwl (%rax),%eax
    310d:	66 83 f8 12          	cmp    $0x12,%ax
    3111:	75 dd                	jne    30f0 <is_dynamic_thread_exist+0x30>
    3113:	8d 42 0b             	lea    0xb(%rdx),%eax
    3116:	48 c1 e0 05          	shl    $0x5,%rax
    311a:	48 01 c1             	add    %rax,%rcx
    311d:	0f 95 c0             	setne  %al
    3120:	0f b6 c0             	movzbl %al,%eax
    3123:	c3                   	ret
    3124:	0f 1f 40 00          	nopl   0x0(%rax)
    3128:	31 c0                	xor    %eax,%eax
    312a:	c3                   	ret
    312b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003130 <get_dynamic_stack_max_page>:
    3130:	f3 0f 1e fa          	endbr64
    3134:	48 8d 0d 25 00 01 00 	lea    0x10025(%rip),%rcx        # 13160 <g_global_data>
    313b:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    3141:	85 c0                	test   %eax,%eax
    3143:	74 45                	je     318a <get_dynamic_stack_max_page+0x5a>
    3145:	31 d2                	xor    %edx,%edx
    3147:	eb 14                	jmp    315d <get_dynamic_stack_max_page+0x2d>
    3149:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3150:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    3156:	83 c2 01             	add    $0x1,%edx
    3159:	39 c2                	cmp    %eax,%edx
    315b:	73 2b                	jae    3188 <get_dynamic_stack_max_page+0x58>
    315d:	89 d0                	mov    %edx,%eax
    315f:	48 83 c0 0b          	add    $0xb,%rax
    3163:	48 c1 e0 05          	shl    $0x5,%rax
    3167:	48 01 c8             	add    %rcx,%rax
    316a:	0f b7 00             	movzwl (%rax),%eax
    316d:	66 83 f8 07          	cmp    $0x7,%ax
    3171:	75 dd                	jne    3150 <get_dynamic_stack_max_page+0x20>
    3173:	8d 42 0b             	lea    0xb(%rdx),%eax
    3176:	48 c1 e0 05          	shl    $0x5,%rax
    317a:	48 01 c1             	add    %rax,%rcx
    317d:	74 09                	je     3188 <get_dynamic_stack_max_page+0x58>
    317f:	8b 41 04             	mov    0x4(%rcx),%eax
    3182:	c3                   	ret
    3183:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3188:	31 c0                	xor    %eax,%eax
    318a:	c3                   	ret
    318b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003190 <do_add_thread>:
    3190:	f3 0f 1e fa          	endbr64
    3194:	41 56                	push   %r14
    3196:	41 55                	push   %r13
    3198:	41 54                	push   %r12
    319a:	55                   	push   %rbp
    319b:	53                   	push   %rbx
    319c:	48 89 fb             	mov    %rdi,%rbx
    319f:	48 83 ec 10          	sub    $0x10,%rsp
    31a3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    31aa:	00 00 
    31ac:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    31b1:	31 c0                	xor    %eax,%eax
    31b3:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    31ba:	00 
    31bb:	e8 41 99 00 00       	call   cb01 <get_enclave_base>
    31c0:	31 d2                	xor    %edx,%edx
    31c2:	48 89 e6             	mov    %rsp,%rsi
    31c5:	48 89 df             	mov    %rbx,%rdi
    31c8:	48 89 c5             	mov    %rax,%rbp
    31cb:	e8 b0 fc ff ff       	call   2e80 <_ZL19check_dynamic_rangePvmPmP24dynamic_flags_attributes.constprop.0>
    31d0:	85 c0                	test   %eax,%eax
    31d2:	75 62                	jne    3236 <do_add_thread+0xa6>
    31d4:	4c 8d 25 85 ff 00 00 	lea    0xff85(%rip),%r12        # 13160 <g_global_data>
    31db:	41 8b 84 24 58 01 00 	mov    0x158(%r12),%eax
    31e2:	00 
    31e3:	85 c0                	test   %eax,%eax
    31e5:	74 4f                	je     3236 <do_add_thread+0xa6>
    31e7:	31 d2                	xor    %edx,%edx
    31e9:	eb 14                	jmp    31ff <do_add_thread+0x6f>
    31eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    31f0:	41 8b 84 24 58 01 00 	mov    0x158(%r12),%eax
    31f7:	00 
    31f8:	83 c2 01             	add    $0x1,%edx
    31fb:	39 c2                	cmp    %eax,%edx
    31fd:	73 37                	jae    3236 <do_add_thread+0xa6>
    31ff:	89 d0                	mov    %edx,%eax
    3201:	48 83 c0 0b          	add    $0xb,%rax
    3205:	48 c1 e0 05          	shl    $0x5,%rax
    3209:	4c 01 e0             	add    %r12,%rax
    320c:	44 0f b7 28          	movzwl (%rax),%r13d
    3210:	66 41 83 fd 0e       	cmp    $0xe,%r13w
    3215:	75 d9                	jne    31f0 <do_add_thread+0x60>
    3217:	8d 42 0b             	lea    0xb(%rdx),%eax
    321a:	48 c1 e0 05          	shl    $0x5,%rax
    321e:	4c 01 e0             	add    %r12,%rax
    3221:	74 13                	je     3236 <do_add_thread+0xa6>
    3223:	4c 8b 34 24          	mov    (%rsp),%r14
    3227:	48 8b 40 08          	mov    0x8(%rax),%rax
    322b:	49 01 ee             	add    %rbp,%r14
    322e:	4c 01 f0             	add    %r14,%rax
    3231:	48 39 d8             	cmp    %rbx,%rax
    3234:	74 4e                	je     3284 <do_add_thread+0xf4>
    3236:	b8 01 00 00 00       	mov    $0x1,%eax
    323b:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    3240:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3247:	00 00 
    3249:	0f 85 f9 00 00 00    	jne    3348 <do_add_thread+0x1b8>
    324f:	48 83 c4 10          	add    $0x10,%rsp
    3253:	5b                   	pop    %rbx
    3254:	5d                   	pop    %rbp
    3255:	41 5c                	pop    %r12
    3257:	41 5d                	pop    %r13
    3259:	41 5e                	pop    %r14
    325b:	c3                   	ret
    325c:	0f 1f 40 00          	nopl   0x0(%rax)
    3260:	8d 42 0b             	lea    0xb(%rdx),%eax
    3263:	48 c1 e0 05          	shl    $0x5,%rax
    3267:	4c 01 e0             	add    %r12,%rax
    326a:	74 0d                	je     3279 <do_add_thread+0xe9>
    326c:	0f b7 50 02          	movzwl 0x2(%rax),%edx
    3270:	83 e2 20             	and    $0x20,%edx
    3273:	0f 85 af 00 00 00    	jne    3328 <do_add_thread+0x198>
    3279:	41 83 c5 01          	add    $0x1,%r13d
    327d:	66 41 83 fd 13       	cmp    $0x13,%r13w
    3282:	74 3c                	je     32c0 <do_add_thread+0x130>
    3284:	41 8b 84 24 58 01 00 	mov    0x158(%r12),%eax
    328b:	00 
    328c:	31 d2                	xor    %edx,%edx
    328e:	85 c0                	test   %eax,%eax
    3290:	75 15                	jne    32a7 <do_add_thread+0x117>
    3292:	eb e5                	jmp    3279 <do_add_thread+0xe9>
    3294:	0f 1f 40 00          	nopl   0x0(%rax)
    3298:	41 8b 84 24 58 01 00 	mov    0x158(%r12),%eax
    329f:	00 
    32a0:	83 c2 01             	add    $0x1,%edx
    32a3:	39 c2                	cmp    %eax,%edx
    32a5:	73 d2                	jae    3279 <do_add_thread+0xe9>
    32a7:	89 d0                	mov    %edx,%eax
    32a9:	48 83 c0 0b          	add    $0xb,%rax
    32ad:	48 c1 e0 05          	shl    $0x5,%rax
    32b1:	4c 01 e0             	add    %r12,%rax
    32b4:	0f b7 00             	movzwl (%rax),%eax
    32b7:	66 44 39 e8          	cmp    %r13w,%ax
    32bb:	75 db                	jne    3298 <do_add_thread+0x108>
    32bd:	eb a1                	jmp    3260 <do_add_thread+0xd0>
    32bf:	90                   	nop
    32c0:	ba 48 00 00 00       	mov    $0x48,%edx
    32c5:	49 8d b4 24 10 01 00 	lea    0x110(%r12),%rsi
    32cc:	00 
    32cd:	48 89 df             	mov    %rbx,%rdi
    32d0:	e8 8b 7f 00 00       	call   b260 <memcpy>
    32d5:	f3 0f 6f 4b 30       	movdqu 0x30(%rbx),%xmm1
    32da:	48 89 d8             	mov    %rbx,%rax
    32dd:	48 89 df             	mov    %rbx,%rdi
    32e0:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    32e5:	48 29 e8             	sub    %rbp,%rax
    32e8:	48 01 43 10          	add    %rax,0x10(%rbx)
    32ec:	ba 00 01 00 00       	mov    $0x100,%edx
    32f1:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
    32f5:	be 00 10 00 00       	mov    $0x1000,%esi
    32fa:	66 0f d4 c8          	paddq  %xmm0,%xmm1
    32fe:	66 48 0f 6e c5       	movq   %rbp,%xmm0
    3303:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
    3307:	66 0f fb c8          	psubq  %xmm0,%xmm1
    330b:	0f 11 4b 30          	movups %xmm1,0x30(%rbx)
    330f:	e8 ac 49 00 00       	call   7cc0 <mm_modify_type>
    3314:	85 c0                	test   %eax,%eax
    3316:	0f 95 c0             	setne  %al
    3319:	0f b6 c0             	movzbl %al,%eax
    331c:	e9 1a ff ff ff       	jmp    323b <do_add_thread+0xab>
    3321:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3328:	8b 70 04             	mov    0x4(%rax),%esi
    332b:	48 8b 78 08          	mov    0x8(%rax),%rdi
    332f:	48 c1 e6 0c          	shl    $0xc,%rsi
    3333:	4c 01 f7             	add    %r14,%rdi
    3336:	e8 55 49 00 00       	call   7c90 <mm_commit>
    333b:	85 c0                	test   %eax,%eax
    333d:	0f 84 36 ff ff ff    	je     3279 <do_add_thread+0xe9>
    3343:	e9 ee fe ff ff       	jmp    3236 <do_add_thread+0xa6>
    3348:	e8 d3 81 00 00       	call   b520 <__stack_chk_fail>
    334d:	0f 1f 00             	nopl   (%rax)

0000000000003350 <sgx_set_ssa_aexnotify>:
    3350:	f3 0f 1e fa          	endbr64
    3354:	55                   	push   %rbp
    3355:	89 fd                	mov    %edi,%ebp
    3357:	53                   	push   %rbx
    3358:	48 83 ec 08          	sub    $0x8,%rsp
    335c:	e8 eb 97 00 00       	call   cb4c <get_thread_data>
    3361:	48 85 c0             	test   %rax,%rax
    3364:	74 3a                	je     33a0 <sgx_set_ssa_aexnotify+0x50>
    3366:	48 89 c3             	mov    %rax,%rbx
    3369:	e8 82 8a 00 00       	call   bdf0 <sgx_self_report>
    336e:	f6 40 31 04          	testb  $0x4,0x31(%rax)
    3372:	74 2c                	je     33a0 <sgx_set_ssa_aexnotify+0x50>
    3374:	48 8b 53 20          	mov    0x20(%rbx),%rdx
    3378:	0f b6 82 a7 00 00 00 	movzbl 0xa7(%rdx),%eax
    337f:	89 c1                	mov    %eax,%ecx
    3381:	83 c8 01             	or     $0x1,%eax
    3384:	83 e1 fe             	and    $0xfffffffe,%ecx
    3387:	85 ed                	test   %ebp,%ebp
    3389:	0f 44 c1             	cmove  %ecx,%eax
    338c:	88 82 a7 00 00 00    	mov    %al,0xa7(%rdx)
    3392:	48 83 c4 08          	add    $0x8,%rsp
    3396:	31 c0                	xor    %eax,%eax
    3398:	5b                   	pop    %rbx
    3399:	5d                   	pop    %rbp
    339a:	c3                   	ret
    339b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    33a0:	48 83 c4 08          	add    $0x8,%rsp
    33a4:	b8 01 00 00 00       	mov    $0x1,%eax
    33a9:	5b                   	pop    %rbx
    33aa:	5d                   	pop    %rbp
    33ab:	c3                   	ret
    33ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000033b0 <sgx_apply_mitigations>:
    33b0:	f3 0f 1e fa          	endbr64
    33b4:	55                   	push   %rbp
    33b5:	48 89 fd             	mov    %rdi,%rbp
    33b8:	53                   	push   %rbx
    33b9:	48 83 ec 08          	sub    $0x8,%rsp
    33bd:	e8 8a 97 00 00       	call   cb4c <get_thread_data>
    33c2:	48 8b 58 48          	mov    0x48(%rax),%rbx
    33c6:	48 85 db             	test   %rbx,%rbx
    33c9:	74 17                	je     33e2 <sgx_apply_mitigations+0x32>
    33cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    33d0:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    33d4:	48 89 ef             	mov    %rbp,%rdi
    33d7:	ff 13                	call   *(%rbx)
    33d9:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
    33dd:	48 85 db             	test   %rbx,%rbx
    33e0:	75 ee                	jne    33d0 <sgx_apply_mitigations+0x20>
    33e2:	48 83 c4 08          	add    $0x8,%rsp
    33e6:	31 c0                	xor    %eax,%eax
    33e8:	5b                   	pop    %rbx
    33e9:	5d                   	pop    %rbp
    33ea:	c3                   	ret
    33eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000033f0 <_pthread_thread_run>:
    33f0:	f3 0f 1e fa          	endbr64
    33f4:	31 c0                	xor    %eax,%eax
    33f6:	c3                   	ret
    33f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    33fe:	00 00 

0000000000003400 <_ZL11do_save_tcsPv>:
    3400:	55                   	push   %rbp
    3401:	53                   	push   %rbx
    3402:	48 89 fb             	mov    %rdi,%rbx
    3405:	48 83 ec 18          	sub    $0x18,%rsp
    3409:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3410:	00 00 
    3412:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    3417:	31 c0                	xor    %eax,%eax
    3419:	48 83 3d 47 04 01 00 	cmpq   $0x0,0x10447(%rip)        # 13868 <_ZL12g_tcs_cookie>
    3420:	00 
    3421:	74 4d                	je     3470 <_ZL11do_save_tcsPv+0x70>
    3423:	bf 10 00 00 00       	mov    $0x10,%edi
    3428:	e8 63 55 00 00       	call   8990 <dlmalloc>
    342d:	48 85 c0             	test   %rax,%rax
    3430:	74 68                	je     349a <_ZL11do_save_tcsPv+0x9a>
    3432:	48 8b 15 37 04 01 00 	mov    0x10437(%rip),%rdx        # 13870 <_ZL10g_tcs_node>
    3439:	48 33 1d 28 04 01 00 	xor    0x10428(%rip),%rbx        # 13868 <_ZL12g_tcs_cookie>
    3440:	48 89 05 29 04 01 00 	mov    %rax,0x10429(%rip)        # 13870 <_ZL10g_tcs_node>
    3447:	48 89 18             	mov    %rbx,(%rax)
    344a:	48 89 50 08          	mov    %rdx,0x8(%rax)
    344e:	31 c0                	xor    %eax,%eax
    3450:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    3455:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    345c:	00 00 
    345e:	75 62                	jne    34c2 <_ZL11do_save_tcsPv+0xc2>
    3460:	48 83 c4 18          	add    $0x18,%rsp
    3464:	5b                   	pop    %rbx
    3465:	5d                   	pop    %rbp
    3466:	c3                   	ret
    3467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    346e:	00 00 
    3470:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    3477:	00 
    3478:	48 89 e5             	mov    %rsp,%rbp
    347b:	eb 0c                	jmp    3489 <_ZL11do_save_tcsPv+0x89>
    347d:	0f 1f 00             	nopl   (%rax)
    3480:	48 8b 04 24          	mov    (%rsp),%rax
    3484:	48 85 c0             	test   %rax,%rax
    3487:	75 1f                	jne    34a8 <_ZL11do_save_tcsPv+0xa8>
    3489:	be 08 00 00 00       	mov    $0x8,%esi
    348e:	48 89 ef             	mov    %rbp,%rdi
    3491:	e8 aa f7 ff ff       	call   2c40 <sgx_read_rand>
    3496:	85 c0                	test   %eax,%eax
    3498:	74 e6                	je     3480 <_ZL11do_save_tcsPv+0x80>
    349a:	b8 01 00 00 00       	mov    $0x1,%eax
    349f:	eb af                	jmp    3450 <_ZL11do_save_tcsPv+0x50>
    34a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    34a8:	48 83 3d b8 03 01 00 	cmpq   $0x0,0x103b8(%rip)        # 13868 <_ZL12g_tcs_cookie>
    34af:	00 
    34b0:	0f 85 6d ff ff ff    	jne    3423 <_ZL11do_save_tcsPv+0x23>
    34b6:	48 89 05 ab 03 01 00 	mov    %rax,0x103ab(%rip)        # 13868 <_ZL12g_tcs_cookie>
    34bd:	e9 61 ff ff ff       	jmp    3423 <_ZL11do_save_tcsPv+0x23>
    34c2:	e8 59 80 00 00       	call   b520 <__stack_chk_fail>
    34c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    34ce:	00 00 

00000000000034d0 <_ZL18add_static_threadsPVK9_layout_tS1_m>:
    34d0:	48 39 f7             	cmp    %rsi,%rdi
    34d3:	0f 83 cf 00 00 00    	jae    35a8 <_ZL18add_static_threadsPVK9_layout_tS1_m+0xd8>
    34d9:	41 56                	push   %r14
    34db:	41 55                	push   %r13
    34dd:	49 89 f5             	mov    %rsi,%r13
    34e0:	41 54                	push   %r12
    34e2:	49 89 d4             	mov    %rdx,%r12
    34e5:	55                   	push   %rbp
    34e6:	53                   	push   %rbx
    34e7:	48 89 fb             	mov    %rdi,%rbx
    34ea:	eb 0d                	jmp    34f9 <_ZL18add_static_threadsPVK9_layout_tS1_m+0x29>
    34ec:	0f 1f 40 00          	nopl   0x0(%rax)
    34f0:	48 83 c3 20          	add    $0x20,%rbx
    34f4:	4c 39 eb             	cmp    %r13,%rbx
    34f7:	73 77                	jae    3570 <_ZL18add_static_threadsPVK9_layout_tS1_m+0xa0>
    34f9:	0f b7 03             	movzwl (%rbx),%eax
    34fc:	f6 c4 10             	test   $0x10,%ah
    34ff:	75 13                	jne    3514 <_ZL18add_static_threadsPVK9_layout_tS1_m+0x44>
    3501:	48 8b 43 18          	mov    0x18(%rbx),%rax
    3505:	f6 c4 01             	test   $0x1,%ah
    3508:	74 0a                	je     3514 <_ZL18add_static_threadsPVK9_layout_tS1_m+0x44>
    350a:	0f b7 43 02          	movzwl 0x2(%rbx),%eax
    350e:	66 83 f8 03          	cmp    $0x3,%ax
    3512:	74 6c                	je     3580 <_ZL18add_static_threadsPVK9_layout_tS1_m+0xb0>
    3514:	0f b7 03             	movzwl (%rbx),%eax
    3517:	f6 c4 10             	test   $0x10,%ah
    351a:	74 d4                	je     34f0 <_ZL18add_static_threadsPVK9_layout_tS1_m+0x20>
    351c:	8b 43 04             	mov    0x4(%rbx),%eax
    351f:	85 c0                	test   %eax,%eax
    3521:	74 cd                	je     34f0 <_ZL18add_static_threadsPVK9_layout_tS1_m+0x20>
    3523:	31 ed                	xor    %ebp,%ebp
    3525:	45 31 f6             	xor    %r14d,%r14d
    3528:	eb 10                	jmp    353a <_ZL18add_static_threadsPVK9_layout_tS1_m+0x6a>
    352a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3530:	8b 43 04             	mov    0x4(%rbx),%eax
    3533:	83 c5 01             	add    $0x1,%ebp
    3536:	39 c5                	cmp    %eax,%ebp
    3538:	73 b6                	jae    34f0 <_ZL18add_static_threadsPVK9_layout_tS1_m+0x20>
    353a:	48 8b 43 08          	mov    0x8(%rbx),%rax
    353e:	0f b7 7b 02          	movzwl 0x2(%rbx),%edi
    3542:	48 89 de             	mov    %rbx,%rsi
    3545:	f7 df                	neg    %edi
    3547:	49 01 c6             	add    %rax,%r14
    354a:	48 63 ff             	movslq %edi,%rdi
    354d:	4c 89 f2             	mov    %r14,%rdx
    3550:	48 c1 e7 05          	shl    $0x5,%rdi
    3554:	48 01 df             	add    %rbx,%rdi
    3557:	e8 74 ff ff ff       	call   34d0 <_ZL18add_static_threadsPVK9_layout_tS1_m>
    355c:	85 c0                	test   %eax,%eax
    355e:	74 d0                	je     3530 <_ZL18add_static_threadsPVK9_layout_tS1_m+0x60>
    3560:	5b                   	pop    %rbx
    3561:	5d                   	pop    %rbp
    3562:	41 5c                	pop    %r12
    3564:	41 5d                	pop    %r13
    3566:	41 5e                	pop    %r14
    3568:	c3                   	ret
    3569:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3570:	5b                   	pop    %rbx
    3571:	31 c0                	xor    %eax,%eax
    3573:	5d                   	pop    %rbp
    3574:	41 5c                	pop    %r12
    3576:	41 5d                	pop    %r13
    3578:	41 5e                	pop    %r14
    357a:	c3                   	ret
    357b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3580:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
    3584:	e8 78 95 00 00       	call   cb01 <get_enclave_base>
    3589:	4c 01 e5             	add    %r12,%rbp
    358c:	48 8d 3c 28          	lea    (%rax,%rbp,1),%rdi
    3590:	e8 6b fe ff ff       	call   3400 <_ZL11do_save_tcsPv>
    3595:	85 c0                	test   %eax,%eax
    3597:	0f 84 53 ff ff ff    	je     34f0 <_ZL18add_static_threadsPVK9_layout_tS1_m+0x20>
    359d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    35a2:	eb bc                	jmp    3560 <_ZL18add_static_threadsPVK9_layout_tS1_m+0x90>
    35a4:	0f 1f 40 00          	nopl   0x0(%rax)
    35a8:	31 c0                	xor    %eax,%eax
    35aa:	c3                   	ret
    35ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000035b0 <_ZL10trts_ecalljPv>:
    35b0:	f3 0f 1e fa          	endbr64
    35b4:	41 55                	push   %r13
    35b6:	41 54                	push   %r12
    35b8:	55                   	push   %rbp
    35b9:	48 89 f5             	mov    %rsi,%rbp
    35bc:	53                   	push   %rbx
    35bd:	89 fb                	mov    %edi,%ebx
    35bf:	48 83 ec 08          	sub    $0x8,%rsp
    35c3:	0f b6 05 56 dc 00 00 	movzbl 0xdc56(%rip),%eax        # 11220 <_ZL16g_is_first_ecall>
    35ca:	84 c0                	test   %al,%al
    35cc:	0f 85 b6 00 00 00    	jne    3688 <_ZL10trts_ecalljPv+0xd8>
    35d2:	83 fb fa             	cmp    $0xfffffffa,%ebx
    35d5:	0f 84 8d 00 00 00    	je     3668 <_ZL10trts_ecalljPv+0xb8>
    35db:	4c 8d 25 de d7 00 00 	lea    0xd7de(%rip),%r12        # 10dc0 <g_ecall_table>
    35e2:	49 3b 1c 24          	cmp    (%r12),%rbx
    35e6:	73 68                	jae    3650 <_ZL10trts_ecalljPv+0xa0>
    35e8:	e8 5f 95 00 00       	call   cb4c <get_thread_data>
    35ed:	0f ae e8             	lfence
    35f0:	48 8b 50 08          	mov    0x8(%rax),%rdx
    35f4:	48 3b 50 10          	cmp    0x10(%rax),%rdx
    35f8:	0f 84 b2 00 00 00    	je     36b0 <_ZL10trts_ecalljPv+0x100>
    35fe:	48 81 7a 20 44 49 43 	cmpq   $0x4f434944,0x20(%rdx)
    3605:	4f 
    3606:	0f 85 5b 01 00 00    	jne    3767 <_ZL10trts_ecalljPv+0x1b7>
    360c:	48 8d 05 ed 99 00 00 	lea    0x99ed(%rip),%rax        # d000 <g_dyn_entry_table>
    3613:	48 8b 52 28          	mov    0x28(%rdx),%rdx
    3617:	48 3b 10             	cmp    (%rax),%rdx
    361a:	73 34                	jae    3650 <_ZL10trts_ecalljPv+0xa0>
    361c:	49 0f af 14 24       	imul   (%r12),%rdx
    3621:	48 01 d8             	add    %rbx,%rax
    3624:	80 7c 02 08 00       	cmpb   $0x0,0x8(%rdx,%rax,1)
    3629:	74 6c                	je     3697 <_ZL10trts_ecalljPv+0xe7>
    362b:	48 c1 e3 04          	shl    $0x4,%rbx
    362f:	31 f6                	xor    %esi,%esi
    3631:	49 8b 5c 1c 08       	mov    0x8(%r12,%rbx,1),%rbx
    3636:	48 89 df             	mov    %rbx,%rdi
    3639:	e8 02 f4 ff ff       	call   2a40 <sgx_is_within_enclave>
    363e:	85 c0                	test   %eax,%eax
    3640:	0f 84 8a 00 00 00    	je     36d0 <_ZL10trts_ecalljPv+0x120>
    3646:	48 89 d8             	mov    %rbx,%rax
    3649:	eb 24                	jmp    366f <_ZL10trts_ecalljPv+0xbf>
    364b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3650:	41 bc 01 10 00 00    	mov    $0x1001,%r12d
    3656:	48 83 c4 08          	add    $0x8,%rsp
    365a:	44 89 e0             	mov    %r12d,%eax
    365d:	5b                   	pop    %rbx
    365e:	5d                   	pop    %rbp
    365f:	41 5c                	pop    %r12
    3661:	41 5d                	pop    %r13
    3663:	c3                   	ret
    3664:	0f 1f 40 00          	nopl   0x0(%rax)
    3668:	48 8d 05 81 fd ff ff 	lea    -0x27f(%rip),%rax        # 33f0 <_pthread_thread_run>
    366f:	0f ae e8             	lfence
    3672:	48 83 c4 08          	add    $0x8,%rsp
    3676:	48 89 ef             	mov    %rbp,%rdi
    3679:	5b                   	pop    %rbx
    367a:	5d                   	pop    %rbp
    367b:	41 5c                	pop    %r12
    367d:	41 5d                	pop    %r13
    367f:	ff e0                	jmp    *%rax
    3681:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3688:	e8 bf 94 00 00       	call   cb4c <get_thread_data>
    368d:	48 8b 48 10          	mov    0x10(%rax),%rcx
    3691:	48 39 48 08          	cmp    %rcx,0x8(%rax)
    3695:	74 49                	je     36e0 <_ZL10trts_ecalljPv+0x130>
    3697:	48 83 c4 08          	add    $0x8,%rsp
    369b:	41 bc 07 10 00 00    	mov    $0x1007,%r12d
    36a1:	5b                   	pop    %rbx
    36a2:	44 89 e0             	mov    %r12d,%eax
    36a5:	5d                   	pop    %rbp
    36a6:	41 5c                	pop    %r12
    36a8:	41 5d                	pop    %r13
    36aa:	c3                   	ret
    36ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    36b0:	48 89 d8             	mov    %rbx,%rax
    36b3:	48 c1 e0 04          	shl    $0x4,%rax
    36b7:	41 80 7c 04 10 00    	cmpb   $0x0,0x10(%r12,%rax,1)
    36bd:	0f 84 68 ff ff ff    	je     362b <_ZL10trts_ecalljPv+0x7b>
    36c3:	eb d2                	jmp    3697 <_ZL10trts_ecalljPv+0xe7>
    36c5:	4c 89 ef             	mov    %r13,%rdi
    36c8:	e8 c3 51 00 00       	call   8890 <sgx_spin_unlock>
    36cd:	0f 1f 00             	nopl   (%rax)
    36d0:	41 bc 01 00 00 00    	mov    $0x1,%r12d
    36d6:	e9 7b ff ff ff       	jmp    3656 <_ZL10trts_ecalljPv+0xa6>
    36db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    36e0:	4c 8d 2d 7d 01 01 00 	lea    0x1017d(%rip),%r13        # 13864 <_ZL10g_ife_lock>
    36e7:	4c 89 ef             	mov    %r13,%rdi
    36ea:	e8 11 51 00 00       	call   8800 <sgx_spin_lock>
    36ef:	0f b6 05 2a db 00 00 	movzbl 0xdb2a(%rip),%eax        # 11220 <_ZL16g_is_first_ecall>
    36f6:	84 c0                	test   %al,%al
    36f8:	74 53                	je     374d <_ZL10trts_ecalljPv+0x19d>
    36fa:	48 8d 05 fb d6 00 00 	lea    0xd6fb(%rip),%rax        # 10dfc <EDMM_supported>
    3701:	8b 00                	mov    (%rax),%eax
    3703:	85 c0                	test   %eax,%eax
    3705:	74 3a                	je     3741 <_ZL10trts_ecalljPv+0x191>
    3707:	48 8d 05 52 fa 00 00 	lea    0xfa52(%rip),%rax        # 13160 <g_global_data>
    370e:	31 d2                	xor    %edx,%edx
    3710:	8b b0 58 01 00 00    	mov    0x158(%rax),%esi
    3716:	48 8d b8 60 01 00 00 	lea    0x160(%rax),%rdi
    371d:	48 c1 e6 05          	shl    $0x5,%rsi
    3721:	48 01 fe             	add    %rdi,%rsi
    3724:	e8 a7 fd ff ff       	call   34d0 <_ZL18add_static_threadsPVK9_layout_tS1_m>
    3729:	85 c0                	test   %eax,%eax
    372b:	75 98                	jne    36c5 <_ZL10trts_ecalljPv+0x115>
    372d:	e8 cf 93 00 00       	call   cb01 <get_enclave_base>
    3732:	48 89 c7             	mov    %rax,%rdi
    3735:	e8 96 1b 00 00       	call   52d0 <change_protection>
    373a:	41 89 c4             	mov    %eax,%r12d
    373d:	85 c0                	test   %eax,%eax
    373f:	75 19                	jne    375a <_ZL10trts_ecalljPv+0x1aa>
    3741:	e8 ca 1f 00 00       	call   5710 <init_global_object>
    3746:	c6 05 d3 da 00 00 00 	movb   $0x0,0xdad3(%rip)        # 11220 <_ZL16g_is_first_ecall>
    374d:	4c 89 ef             	mov    %r13,%rdi
    3750:	e8 3b 51 00 00       	call   8890 <sgx_spin_unlock>
    3755:	e9 78 fe ff ff       	jmp    35d2 <_ZL10trts_ecalljPv+0x22>
    375a:	4c 89 ef             	mov    %r13,%rdi
    375d:	e8 2e 51 00 00       	call   8890 <sgx_spin_unlock>
    3762:	e9 ef fe ff ff       	jmp    3656 <_ZL10trts_ecalljPv+0xa6>
    3767:	e8 d4 97 00 00       	call   cf40 <abort>
    376c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000003770 <_Z30_random_stack_noinline_wrapperI9_status_tJjPvEJRiRS1_EET_PFS4_DpT0_EDpOT1_.constprop.0.isra.0>:
    3770:	e9 3b fe ff ff       	jmp    35b0 <_ZL10trts_ecalljPv>
    3775:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    377c:	00 00 00 
    377f:	90                   	nop

0000000000003780 <_Z16_pthread_enabledv>:
    3780:	f3 0f 1e fa          	endbr64
    3784:	31 c0                	xor    %eax,%eax
    3786:	c3                   	ret
    3787:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    378e:	00 00 

0000000000003790 <_Z24_pthread_tls_store_state9_status_t>:
    3790:	f3 0f 1e fa          	endbr64
    3794:	c3                   	ret
    3795:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    379c:	00 00 00 
    379f:	90                   	nop

00000000000037a0 <_Z22_pthread_tls_get_statev>:
    37a0:	f3 0f 1e fa          	endbr64
    37a4:	31 c0                	xor    %eax,%eax
    37a6:	c3                   	ret
    37a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    37ae:	00 00 

00000000000037b0 <_Z26_pthread_tls_store_contextPv>:
    37b0:	f3 0f 1e fa          	endbr64
    37b4:	c3                   	ret
    37b5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    37bc:	00 00 00 
    37bf:	90                   	nop

00000000000037c0 <_Z20_pthread_wakeup_joinPv>:
    37c0:	f3 0f 1e fa          	endbr64
    37c4:	c3                   	ret
    37c5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    37cc:	00 00 00 
    37cf:	90                   	nop

00000000000037d0 <_Z24_pthread_tls_destructorsv>:
    37d0:	f3 0f 1e fa          	endbr64
    37d4:	c3                   	ret
    37d5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    37dc:	00 00 00 
    37df:	90                   	nop

00000000000037e0 <tc_set_idle>:
    37e0:	f3 0f 1e fa          	endbr64
    37e4:	c3                   	ret
    37e5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    37ec:	00 00 00 
    37ef:	90                   	nop

00000000000037f0 <do_init_thread>:
    37f0:	f3 0f 1e fa          	endbr64
    37f4:	41 57                	push   %r15
    37f6:	66 48 0f 6e d7       	movq   %rdi,%xmm2
    37fb:	ba c0 00 00 00       	mov    $0xc0,%edx
    3800:	41 56                	push   %r14
    3802:	66 0f 6c d2          	punpcklqdq %xmm2,%xmm2
    3806:	41 55                	push   %r13
    3808:	41 54                	push   %r12
    380a:	41 89 f4             	mov    %esi,%r12d
    380d:	55                   	push   %rbp
    380e:	48 89 fd             	mov    %rdi,%rbp
    3811:	53                   	push   %rbx
    3812:	48 83 ec 38          	sub    $0x38,%rsp
    3816:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    381d:	00 00 
    381f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    3824:	48 8d 05 35 f9 00 00 	lea    0xf935(%rip),%rax        # 13160 <g_global_data>
    382b:	0f 29 14 24          	movaps %xmm2,(%rsp)
    382f:	48 8b 58 50          	mov    0x50(%rax),%rbx
    3833:	48 8d 70 50          	lea    0x50(%rax),%rsi
    3837:	48 01 fb             	add    %rdi,%rbx
    383a:	48 89 df             	mov    %rbx,%rdi
    383d:	4c 8b 7b 28          	mov    0x28(%rbx),%r15
    3841:	4c 8b 73 30          	mov    0x30(%rbx),%r14
    3845:	4c 8b ab b0 00 00 00 	mov    0xb0(%rbx),%r13
    384c:	e8 0f 7a 00 00       	call   b260 <memcpy>
    3851:	48 8d 85 00 fc ff ff 	lea    -0x400(%rbp),%rax
    3858:	f3 0f 6f 1b          	movdqu (%rbx),%xmm3
    385c:	f3 0f 6f 6b 10       	movdqu 0x10(%rbx),%xmm5
    3861:	66 48 0f 6e c0       	movq   %rax,%xmm0
    3866:	48 8b 43 18          	mov    0x18(%rbx),%rax
    386a:	f3 0f 6f 73 68       	movdqu 0x68(%rbx),%xmm6
    386f:	66 48 0f 6e cd       	movq   %rbp,%xmm1
    3874:	66 0f 6f 14 24       	movdqa (%rsp),%xmm2
    3879:	66 48 0f 6e e5       	movq   %rbp,%xmm4
    387e:	66 0f 6c c8          	punpcklqdq %xmm0,%xmm1
    3882:	48 01 6b 20          	add    %rbp,0x20(%rbx)
    3886:	48 01 e8             	add    %rbp,%rax
    3889:	66 0f 6c c4          	punpcklqdq %xmm4,%xmm0
    388d:	66 0f d4 cb          	paddq  %xmm3,%xmm1
    3891:	48 01 6b 58          	add    %rbp,0x58(%rbx)
    3895:	48 89 83 b0 00 00 00 	mov    %rax,0xb0(%rbx)
    389c:	48 8d 05 35 d5 00 00 	lea    0xd535(%rip),%rax        # 10dd8 <__intel_security_cookie>
    38a3:	66 0f d4 c5          	paddq  %xmm5,%xmm0
    38a7:	66 0f d4 d6          	paddq  %xmm6,%xmm2
    38ab:	4c 89 7b 28          	mov    %r15,0x28(%rbx)
    38af:	48 8b 00             	mov    (%rax),%rax
    38b2:	4c 89 73 30          	mov    %r14,0x30(%rbx)
    38b6:	0f 11 53 68          	movups %xmm2,0x68(%rbx)
    38ba:	0f 11 0b             	movups %xmm1,(%rbx)
    38bd:	0f 11 43 10          	movups %xmm0,0x10(%rbx)
    38c1:	48 89 85 08 fc fe ff 	mov    %rax,-0x103f8(%rbp)
    38c8:	48 8d 05 2d d5 00 00 	lea    0xd52d(%rip),%rax        # 10dfc <EDMM_supported>
    38cf:	8b 00                	mov    (%rax),%eax
    38d1:	85 c0                	test   %eax,%eax
    38d3:	48 8d 05 0a d5 00 00 	lea    0xd50a(%rip),%rax        # 10de4 <g_aexnotify_supported>
    38da:	0f 85 f0 00 00 00    	jne    39d0 <do_init_thread+0x1e0>
    38e0:	83 38 01             	cmpl   $0x1,(%rax)
    38e3:	0f 84 17 01 00 00    	je     3a00 <do_init_thread+0x210>
    38e9:	4d 85 ed             	test   %r13,%r13
    38ec:	0f 85 c8 00 00 00    	jne    39ba <do_init_thread+0x1ca>
    38f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    38f8:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
    38ff:	00 00 
    3901:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
    3908:	00 00 
    390a:	e8 f2 91 00 00       	call   cb01 <get_enclave_base>
    390f:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
    3914:	48 8d 74 24 18       	lea    0x18(%rsp),%rsi
    3919:	48 89 c7             	mov    %rax,%rdi
    391c:	e8 ef 16 00 00       	call   5010 <elf_tls_info>
    3921:	89 c2                	mov    %eax,%edx
    3923:	b8 01 00 00 00       	mov    $0x1,%eax
    3928:	85 d2                	test   %edx,%edx
    392a:	75 0a                	jne    3936 <do_init_thread+0x146>
    392c:	48 83 7c 24 18 00    	cmpq   $0x0,0x18(%rsp)
    3932:	75 2c                	jne    3960 <do_init_thread+0x170>
    3934:	31 c0                	xor    %eax,%eax
    3936:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
    393b:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3942:	00 00 
    3944:	0f 85 00 01 00 00    	jne    3a4a <do_init_thread+0x25a>
    394a:	48 83 c4 38          	add    $0x38,%rsp
    394e:	5b                   	pop    %rbx
    394f:	5d                   	pop    %rbp
    3950:	41 5c                	pop    %r12
    3952:	41 5d                	pop    %r13
    3954:	41 5e                	pop    %r14
    3956:	41 5f                	pop    %r15
    3958:	c3                   	ret
    3959:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3960:	48 8b 03             	mov    (%rbx),%rax
    3963:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
    3967:	31 f6                	xor    %esi,%esi
    3969:	48 8d 90 ff 0f 00 00 	lea    0xfff(%rax),%rdx
    3970:	48 29 fa             	sub    %rdi,%rdx
    3973:	48 81 e7 00 f0 ff ff 	and    $0xfffffffffffff000,%rdi
    397a:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    3981:	e8 1a 7b 00 00       	call   b4a0 <memset>
    3986:	48 8b 7b 68          	mov    0x68(%rbx),%rdi
    398a:	48 8b 03             	mov    (%rbx),%rax
    398d:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
    3992:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
    3997:	48 29 f8             	sub    %rdi,%rax
    399a:	48 39 d0             	cmp    %rdx,%rax
    399d:	72 95                	jb     3934 <do_init_thread+0x144>
    399f:	e8 bc 78 00 00       	call   b260 <memcpy>
    39a4:	eb 8e                	jmp    3934 <do_init_thread+0x144>
    39a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    39ad:	00 00 00 
    39b0:	83 f8 01             	cmp    $0x1,%eax
    39b3:	74 7b                	je     3a30 <do_init_thread+0x240>
    39b5:	4d 85 ed             	test   %r13,%r13
    39b8:	74 5e                	je     3a18 <do_init_thread+0x228>
    39ba:	4c 89 ab b0 00 00 00 	mov    %r13,0xb0(%rbx)
    39c1:	e9 32 ff ff ff       	jmp    38f8 <do_init_thread+0x108>
    39c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    39cd:	00 00 00 
    39d0:	8b 00                	mov    (%rax),%eax
    39d2:	45 84 e4             	test   %r12b,%r12b
    39d5:	74 d9                	je     39b0 <do_init_thread+0x1c0>
    39d7:	48 c7 43 30 01 00 00 	movq   $0x1,0x30(%rbx)
    39de:	00 
    39df:	83 f8 01             	cmp    $0x1,%eax
    39e2:	74 5c                	je     3a40 <do_init_thread+0x250>
    39e4:	4d 85 ed             	test   %r13,%r13
    39e7:	75 d1                	jne    39ba <do_init_thread+0x1ca>
    39e9:	e8 42 f7 ff ff       	call   3130 <get_dynamic_stack_max_page>
    39ee:	89 c0                	mov    %eax,%eax
    39f0:	48 c1 e0 0c          	shl    $0xc,%rax
    39f4:	48 01 83 b0 00 00 00 	add    %rax,0xb0(%rbx)
    39fb:	e9 f8 fe ff ff       	jmp    38f8 <do_init_thread+0x108>
    3a00:	48 c7 43 50 01 00 00 	movq   $0x1,0x50(%rbx)
    3a07:	00 
    3a08:	4d 85 ed             	test   %r13,%r13
    3a0b:	75 ad                	jne    39ba <do_init_thread+0x1ca>
    3a0d:	e9 e6 fe ff ff       	jmp    38f8 <do_init_thread+0x108>
    3a12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3a18:	48 89 ef             	mov    %rbp,%rdi
    3a1b:	e8 40 f6 ff ff       	call   3060 <is_dynamic_thread>
    3a20:	85 c0                	test   %eax,%eax
    3a22:	75 c5                	jne    39e9 <do_init_thread+0x1f9>
    3a24:	e9 cf fe ff ff       	jmp    38f8 <do_init_thread+0x108>
    3a29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3a30:	48 c7 43 50 01 00 00 	movq   $0x1,0x50(%rbx)
    3a37:	00 
    3a38:	e9 78 ff ff ff       	jmp    39b5 <do_init_thread+0x1c5>
    3a3d:	0f 1f 00             	nopl   (%rax)
    3a40:	48 c7 43 50 01 00 00 	movq   $0x1,0x50(%rbx)
    3a47:	00 
    3a48:	eb 9a                	jmp    39e4 <do_init_thread+0x1f4>
    3a4a:	e8 d1 7a 00 00       	call   b520 <__stack_chk_fail>
    3a4f:	90                   	nop

0000000000003a50 <do_ecall>:
    3a50:	f3 0f 1e fa          	endbr64
    3a54:	53                   	push   %rbx
    3a55:	48 89 d3             	mov    %rdx,%rbx
    3a58:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    3a5c:	89 7c 24 20          	mov    %edi,0x20(%rsp)
    3a60:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
    3a65:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3a6c:	00 00 
    3a6e:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    3a73:	31 c0                	xor    %eax,%eax
    3a75:	e8 93 90 00 00       	call   cb0d <get_enclave_state>
    3a7a:	89 c2                	mov    %eax,%edx
    3a7c:	b8 01 00 00 00       	mov    $0x1,%eax
    3a81:	83 fa 02             	cmp    $0x2,%edx
    3a84:	74 1a                	je     3aa0 <do_ecall+0x50>
    3a86:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
    3a8b:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    3a92:	00 00 
    3a94:	0f 85 0c 02 00 00    	jne    3ca6 <do_ecall+0x256>
    3a9a:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
    3a9e:	5b                   	pop    %rbx
    3a9f:	c3                   	ret
    3aa0:	e8 a7 90 00 00       	call   cb4c <get_thread_data>
    3aa5:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    3aaa:	48 85 c0             	test   %rax,%rax
    3aad:	0f 84 31 01 00 00    	je     3be4 <do_ecall+0x194>
    3ab3:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    3ab8:	48 8b 48 08          	mov    0x8(%rax),%rcx
    3abc:	48 39 48 10          	cmp    %rcx,0x10(%rax)
    3ac0:	0f 84 0a 01 00 00    	je     3bd0 <do_ecall+0x180>
    3ac6:	e8 81 90 00 00       	call   cb4c <get_thread_data>
    3acb:	48 83 78 50 01       	cmpq   $0x1,0x50(%rax)
    3ad0:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    3ad5:	0f 84 25 01 00 00    	je     3c00 <do_ecall+0x1b0>
    3adb:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    3ae0:	48 8b 48 08          	mov    0x8(%rax),%rcx
    3ae4:	48 39 48 10          	cmp    %rcx,0x10(%rax)
    3ae8:	74 56                	je     3b40 <do_ecall+0xf0>
    3aea:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    3aef:	8b 7c 24 20          	mov    0x20(%rsp),%edi
    3af3:	e8 b8 fa ff ff       	call   35b0 <_ZL10trts_ecalljPv>
    3af8:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    3afd:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
    3b02:	48 8d 15 57 f6 00 00 	lea    0xf657(%rip),%rdx        # 13160 <g_global_data>
    3b09:	48 8b 52 38          	mov    0x38(%rdx),%rdx
    3b0d:	48 85 d2             	test   %rdx,%rdx
    3b10:	0f 84 70 ff ff ff    	je     3a86 <do_ecall+0x36>
    3b16:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    3b1b:	48 8b 59 08          	mov    0x8(%rcx),%rbx
    3b1f:	48 39 59 10          	cmp    %rbx,0x10(%rcx)
    3b23:	0f 85 5d ff ff ff    	jne    3a86 <do_ecall+0x36>
    3b29:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
    3b2d:	e8 ae fc ff ff       	call   37e0 <tc_set_idle>
    3b32:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
    3b36:	e9 4b ff ff ff       	jmp    3a86 <do_ecall+0x36>
    3b3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3b40:	31 ff                	xor    %edi,%edi
    3b42:	e8 49 f2 ff ff       	call   2d90 <sgx_wrpkru>
    3b47:	e8 34 fc ff ff       	call   3780 <_Z16_pthread_enabledv>
    3b4c:	84 c0                	test   %al,%al
    3b4e:	0f 84 0c 01 00 00    	je     3c60 <do_ecall+0x210>
    3b54:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    3b59:	66 0f ef c0          	pxor   %xmm0,%xmm0
    3b5d:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    3b62:	0f 29 44 24 30       	movaps %xmm0,0x30(%rsp)
    3b67:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    3b6c:	0f 29 44 24 40       	movaps %xmm0,0x40(%rsp)
    3b71:	0f 29 44 24 50       	movaps %xmm0,0x50(%rsp)
    3b76:	0f 29 44 24 60       	movaps %xmm0,0x60(%rsp)
    3b7b:	e8 d2 7b 00 00       	call   b752 <_setjmp>
    3b80:	f3 0f 1e fa          	endbr64
    3b84:	85 c0                	test   %eax,%eax
    3b86:	0f 84 94 00 00 00    	je     3c20 <do_ecall+0x1d0>
    3b8c:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    3b91:	48 8b 41 10          	mov    0x10(%rcx),%rax
    3b95:	48 89 41 08          	mov    %rax,0x8(%rcx)
    3b99:	b8 09 00 00 00       	mov    $0x9,%eax
    3b9e:	bf 09 00 00 00       	mov    $0x9,%edi
    3ba3:	89 44 24 28          	mov    %eax,0x28(%rsp)
    3ba7:	e8 e4 fb ff ff       	call   3790 <_Z24_pthread_tls_store_state9_status_t>
    3bac:	8b 44 24 28          	mov    0x28(%rsp),%eax
    3bb0:	89 44 24 24          	mov    %eax,0x24(%rsp)
    3bb4:	e8 17 fc ff ff       	call   37d0 <_Z24_pthread_tls_destructorsv>
    3bb9:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    3bbe:	e8 fd fb ff ff       	call   37c0 <_Z20_pthread_wakeup_joinPv>
    3bc3:	8b 44 24 24          	mov    0x24(%rsp),%eax
    3bc7:	e9 36 ff ff ff       	jmp    3b02 <do_ecall+0xb2>
    3bcc:	0f 1f 40 00          	nopl   0x0(%rax)
    3bd0:	48 8d 05 89 f5 00 00 	lea    0xf589(%rip),%rax        # 13160 <g_global_data>
    3bd7:	48 8b 40 38          	mov    0x38(%rax),%rax
    3bdb:	48 85 c0             	test   %rax,%rax
    3bde:	0f 84 a4 00 00 00    	je     3c88 <do_ecall+0x238>
    3be4:	31 f6                	xor    %esi,%esi
    3be6:	48 89 df             	mov    %rbx,%rdi
    3be9:	e8 02 fc ff ff       	call   37f0 <do_init_thread>
    3bee:	85 c0                	test   %eax,%eax
    3bf0:	0f 84 d0 fe ff ff    	je     3ac6 <do_ecall+0x76>
    3bf6:	e9 8b fe ff ff       	jmp    3a86 <do_ecall+0x36>
    3bfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3c00:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    3c05:	bf 01 00 00 00       	mov    $0x1,%edi
    3c0a:	48 c7 40 50 00 00 00 	movq   $0x0,0x50(%rax)
    3c11:	00 
    3c12:	e8 39 f7 ff ff       	call   3350 <sgx_set_ssa_aexnotify>
    3c17:	e9 bf fe ff ff       	jmp    3adb <do_ecall+0x8b>
    3c1c:	0f 1f 40 00          	nopl   0x0(%rax)
    3c20:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    3c25:	e8 86 fb ff ff       	call   37b0 <_Z26_pthread_tls_store_contextPv>
    3c2a:	0f c7 f0             	rdrand %eax
    3c2d:	73 fb                	jae    3c2a <do_ecall+0x1da>
    3c2f:	8b 5c 24 20          	mov    0x20(%rsp),%ebx
    3c33:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    3c38:	89 df                	mov    %ebx,%edi
    3c3a:	e8 31 fb ff ff       	call   3770 <_Z30_random_stack_noinline_wrapperI9_status_tJjPvEJRiRS1_EET_PFS4_DpT0_EDpOT1_.constprop.0.isra.0>
    3c3f:	83 fb fa             	cmp    $0xfffffffa,%ebx
    3c42:	0f 84 56 ff ff ff    	je     3b9e <do_ecall+0x14e>
    3c48:	83 f8 09             	cmp    $0x9,%eax
    3c4b:	0f 85 5f ff ff ff    	jne    3bb0 <do_ecall+0x160>
    3c51:	e9 43 ff ff ff       	jmp    3b99 <do_ecall+0x149>
    3c56:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    3c5d:	00 00 00 
    3c60:	0f c7 f0             	rdrand %eax
    3c63:	73 fb                	jae    3c60 <do_ecall+0x210>
    3c65:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    3c6a:	8b 7c 24 20          	mov    0x20(%rsp),%edi
    3c6e:	e8 fd fa ff ff       	call   3770 <_Z30_random_stack_noinline_wrapperI9_status_tJjPvEJRiRS1_EET_PFS4_DpT0_EDpOT1_.constprop.0.isra.0>
    3c73:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    3c78:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    3c7d:	e9 80 fe ff ff       	jmp    3b02 <do_ecall+0xb2>
    3c82:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    3c88:	e8 13 fb ff ff       	call   37a0 <_Z22_pthread_tls_get_statev>
    3c8d:	83 7c 24 20 fa       	cmpl   $0xfffffffa,0x20(%rsp)
    3c92:	0f 84 4c ff ff ff    	je     3be4 <do_ecall+0x194>
    3c98:	83 f8 09             	cmp    $0x9,%eax
    3c9b:	0f 85 25 fe ff ff    	jne    3ac6 <do_ecall+0x76>
    3ca1:	e9 3e ff ff ff       	jmp    3be4 <do_ecall+0x194>
    3ca6:	e8 75 78 00 00       	call   b520 <__stack_chk_fail>
    3cab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003cb0 <do_ecall_add_thread>:
    3cb0:	f3 0f 1e fa          	endbr64
    3cb4:	55                   	push   %rbp
    3cb5:	53                   	push   %rbx
    3cb6:	48 89 fb             	mov    %rdi,%rbx
    3cb9:	48 83 ec 08          	sub    $0x8,%rsp
    3cbd:	e8 9e 05 00 00       	call   4260 <is_utility_thread>
    3cc2:	48 85 db             	test   %rbx,%rbx
    3cc5:	0f 84 a5 00 00 00    	je     3d70 <do_ecall_add_thread+0xc0>
    3ccb:	3c 01                	cmp    $0x1,%al
    3ccd:	0f 85 9d 00 00 00    	jne    3d70 <do_ecall_add_thread+0xc0>
    3cd3:	be 08 00 00 00       	mov    $0x8,%esi
    3cd8:	48 89 df             	mov    %rbx,%rdi
    3cdb:	e8 c0 ed ff ff       	call   2aa0 <sgx_is_outside_enclave>
    3ce0:	85 c0                	test   %eax,%eax
    3ce2:	0f 84 88 00 00 00    	je     3d70 <do_ecall_add_thread+0xc0>
    3ce8:	0f ae e8             	lfence
    3ceb:	48 8b 2b             	mov    (%rbx),%rbp
    3cee:	48 85 ed             	test   %rbp,%rbp
    3cf1:	74 7d                	je     3d70 <do_ecall_add_thread+0xc0>
    3cf3:	0f ae e8             	lfence
    3cf6:	48 89 ef             	mov    %rbp,%rdi
    3cf9:	e8 02 f7 ff ff       	call   3400 <_ZL11do_save_tcsPv>
    3cfe:	89 c3                	mov    %eax,%ebx
    3d00:	85 c0                	test   %eax,%eax
    3d02:	75 71                	jne    3d75 <do_ecall_add_thread+0xc5>
    3d04:	48 89 ef             	mov    %rbp,%rdi
    3d07:	e8 84 f4 ff ff       	call   3190 <do_add_thread>
    3d0c:	89 c3                	mov    %eax,%ebx
    3d0e:	85 c0                	test   %eax,%eax
    3d10:	74 63                	je     3d75 <do_ecall_add_thread+0xc5>
    3d12:	e8 49 05 00 00       	call   4260 <is_utility_thread>
    3d17:	84 c0                	test   %al,%al
    3d19:	74 5a                	je     3d75 <do_ecall_add_thread+0xc5>
    3d1b:	48 8b 0d 4e fb 00 00 	mov    0xfb4e(%rip),%rcx        # 13870 <_ZL10g_tcs_node>
    3d22:	48 85 c9             	test   %rcx,%rcx
    3d25:	74 4e                	je     3d75 <do_ecall_add_thread+0xc5>
    3d27:	48 8b 35 3a fb 00 00 	mov    0xfb3a(%rip),%rsi        # 13868 <_ZL12g_tcs_cookie>
    3d2e:	48 8b 01             	mov    (%rcx),%rax
    3d31:	48 8b 79 08          	mov    0x8(%rcx),%rdi
    3d35:	48 31 f0             	xor    %rsi,%rax
    3d38:	48 39 c5             	cmp    %rax,%rbp
    3d3b:	74 41                	je     3d7e <do_ecall_add_thread+0xce>
    3d3d:	48 85 ff             	test   %rdi,%rdi
    3d40:	75 11                	jne    3d53 <do_ecall_add_thread+0xa3>
    3d42:	eb 31                	jmp    3d75 <do_ecall_add_thread+0xc5>
    3d44:	0f 1f 40 00          	nopl   0x0(%rax)
    3d48:	48 89 f9             	mov    %rdi,%rcx
    3d4b:	48 85 c0             	test   %rax,%rax
    3d4e:	74 25                	je     3d75 <do_ecall_add_thread+0xc5>
    3d50:	48 89 c7             	mov    %rax,%rdi
    3d53:	48 8b 17             	mov    (%rdi),%rdx
    3d56:	48 8b 47 08          	mov    0x8(%rdi),%rax
    3d5a:	48 31 f2             	xor    %rsi,%rdx
    3d5d:	48 39 d5             	cmp    %rdx,%rbp
    3d60:	75 e6                	jne    3d48 <do_ecall_add_thread+0x98>
    3d62:	48 89 41 08          	mov    %rax,0x8(%rcx)
    3d66:	e8 75 67 00 00       	call   a4e0 <dlfree>
    3d6b:	eb 08                	jmp    3d75 <do_ecall_add_thread+0xc5>
    3d6d:	0f 1f 00             	nopl   (%rax)
    3d70:	bb 01 00 00 00       	mov    $0x1,%ebx
    3d75:	48 83 c4 08          	add    $0x8,%rsp
    3d79:	89 d8                	mov    %ebx,%eax
    3d7b:	5b                   	pop    %rbx
    3d7c:	5d                   	pop    %rbp
    3d7d:	c3                   	ret
    3d7e:	48 89 3d eb fa 00 00 	mov    %rdi,0xfaeb(%rip)        # 13870 <_ZL10g_tcs_node>
    3d85:	48 89 cf             	mov    %rcx,%rdi
    3d88:	e8 53 67 00 00       	call   a4e0 <dlfree>
    3d8d:	eb e6                	jmp    3d75 <do_ecall_add_thread+0xc5>
    3d8f:	90                   	nop

0000000000003d90 <do_uninit_enclave>:
    3d90:	f3 0f 1e fa          	endbr64
    3d94:	48 8d 05 61 d0 00 00 	lea    0xd061(%rip),%rax        # 10dfc <EDMM_supported>
    3d9b:	41 54                	push   %r12
    3d9d:	55                   	push   %rbp
    3d9e:	53                   	push   %rbx
    3d9f:	8b 00                	mov    (%rax),%eax
    3da1:	85 c0                	test   %eax,%eax
    3da3:	0f 84 a4 00 00 00    	je     3e4d <do_uninit_enclave+0xbd>
    3da9:	49 89 fc             	mov    %rdi,%r12
    3dac:	e8 af 04 00 00       	call   4260 <is_utility_thread>
    3db1:	84 c0                	test   %al,%al
    3db3:	0f 84 87 00 00 00    	je     3e40 <do_uninit_enclave+0xb0>
    3db9:	f0 83 0d 9f fa 00 00 	lock orl $0x1,0xfa9f(%rip)        # 13860 <g_uninit_flag>
    3dc0:	01 
    3dc1:	48 8b 1d a8 fa 00 00 	mov    0xfaa8(%rip),%rbx        # 13870 <_ZL10g_tcs_node>
    3dc8:	48 c7 05 9d fa 00 00 	movq   $0x0,0xfa9d(%rip)        # 13870 <_ZL10g_tcs_node>
    3dcf:	00 00 00 00 
    3dd3:	eb 2f                	jmp    3e04 <do_uninit_enclave+0x74>
    3dd5:	0f 1f 00             	nopl   (%rax)
    3dd8:	48 8b 3b             	mov    (%rbx),%rdi
    3ddb:	48 33 3d 86 fa 00 00 	xor    0xfa86(%rip),%rdi        # 13868 <_ZL12g_tcs_cookie>
    3de2:	4c 39 e7             	cmp    %r12,%rdi
    3de5:	74 0e                	je     3df5 <do_uninit_enclave+0x65>
    3de7:	be 00 10 00 00       	mov    $0x1000,%esi
    3dec:	e8 bf 3e 00 00       	call   7cb0 <mm_dealloc>
    3df1:	85 c0                	test   %eax,%eax
    3df3:	75 58                	jne    3e4d <do_uninit_enclave+0xbd>
    3df5:	48 8b 6b 08          	mov    0x8(%rbx),%rbp
    3df9:	48 89 df             	mov    %rbx,%rdi
    3dfc:	e8 df 66 00 00       	call   a4e0 <dlfree>
    3e01:	48 89 eb             	mov    %rbp,%rbx
    3e04:	48 85 db             	test   %rbx,%rbx
    3e07:	75 cf                	jne    3dd8 <do_uninit_enclave+0x48>
    3e09:	48 8d 1d 54 fa 00 00 	lea    0xfa54(%rip),%rbx        # 13864 <_ZL10g_ife_lock>
    3e10:	48 89 df             	mov    %rbx,%rdi
    3e13:	e8 e8 49 00 00       	call   8800 <sgx_spin_lock>
    3e18:	0f b6 05 01 d4 00 00 	movzbl 0xd401(%rip),%eax        # 11220 <_ZL16g_is_first_ecall>
    3e1f:	84 c0                	test   %al,%al
    3e21:	74 45                	je     3e68 <do_uninit_enclave+0xd8>
    3e23:	48 89 df             	mov    %rbx,%rdi
    3e26:	e8 65 4a 00 00       	call   8890 <sgx_spin_unlock>
    3e2b:	bf 03 00 00 00       	mov    $0x3,%edi
    3e30:	e8 e9 8c 00 00       	call   cb1e <set_enclave_state>
    3e35:	5b                   	pop    %rbx
    3e36:	31 c0                	xor    %eax,%eax
    3e38:	5d                   	pop    %rbp
    3e39:	41 5c                	pop    %r12
    3e3b:	c3                   	ret
    3e3c:	0f 1f 40 00          	nopl   0x0(%rax)
    3e40:	e8 7b f2 ff ff       	call   30c0 <is_dynamic_thread_exist>
    3e45:	85 c0                	test   %eax,%eax
    3e47:	0f 84 6c ff ff ff    	je     3db9 <do_uninit_enclave+0x29>
    3e4d:	bf 03 00 00 00       	mov    $0x3,%edi
    3e52:	e8 c7 8c 00 00       	call   cb1e <set_enclave_state>
    3e57:	5b                   	pop    %rbx
    3e58:	b8 01 00 00 00       	mov    $0x1,%eax
    3e5d:	5d                   	pop    %rbp
    3e5e:	41 5c                	pop    %r12
    3e60:	c3                   	ret
    3e61:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3e68:	e8 e3 18 00 00       	call   5750 <uninit_global_object>
    3e6d:	eb b4                	jmp    3e23 <do_uninit_enclave+0x93>
    3e6f:	90                   	nop

0000000000003e70 <sgx_ocall>:
    3e70:	f3 0f 1e fa          	endbr64
    3e74:	8d 47 07             	lea    0x7(%rdi),%eax
    3e77:	83 f8 05             	cmp    $0x5,%eax
    3e7a:	76 12                	jbe    3e8e <sgx_ocall+0x1e>
    3e7c:	85 ff                	test   %edi,%edi
    3e7e:	74 0e                	je     3e8e <sgx_ocall+0x1e>
    3e80:	48 8d 15 79 91 00 00 	lea    0x9179(%rip),%rdx        # d000 <g_dyn_entry_table>
    3e87:	89 f8                	mov    %edi,%eax
    3e89:	48 3b 02             	cmp    (%rdx),%rax
    3e8c:	73 0a                	jae    3e98 <sgx_ocall+0x28>
    3e8e:	e9 55 8f 00 00       	jmp    cde8 <__morestack>
    3e93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    3e98:	b8 01 10 00 00       	mov    $0x1001,%eax
    3e9d:	c3                   	ret
    3e9e:	66 90                	xchg   %ax,%ax

0000000000003ea0 <update_ocall_lastsp>:
    3ea0:	f3 0f 1e fa          	endbr64
    3ea4:	53                   	push   %rbx
    3ea5:	48 89 fb             	mov    %rdi,%rbx
    3ea8:	e8 9f 8c 00 00       	call   cb4c <get_thread_data>
    3ead:	b9 01 00 00 00       	mov    $0x1,%ecx
    3eb2:	48 8b 50 08          	mov    0x8(%rax),%rdx
    3eb6:	48 89 53 30          	mov    %rdx,0x30(%rbx)
    3eba:	48 39 50 10          	cmp    %rdx,0x10(%rax)
    3ebe:	74 0b                	je     3ecb <update_ocall_lastsp+0x2b>
    3ec0:	48 8b b2 90 00 00 00 	mov    0x90(%rdx),%rsi
    3ec7:	48 8d 4e 01          	lea    0x1(%rsi),%rcx
    3ecb:	48 89 8b 90 00 00 00 	mov    %rcx,0x90(%rbx)
    3ed2:	48 89 58 08          	mov    %rbx,0x8(%rax)
    3ed6:	48 89 d0             	mov    %rdx,%rax
    3ed9:	5b                   	pop    %rbx
    3eda:	c3                   	ret
    3edb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003ee0 <do_oret>:
    3ee0:	f3 0f 1e fa          	endbr64
    3ee4:	55                   	push   %rbp
    3ee5:	48 89 fd             	mov    %rdi,%rbp
    3ee8:	53                   	push   %rbx
    3ee9:	48 83 ec 18          	sub    $0x18,%rsp
    3eed:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3ef4:	00 00 
    3ef6:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    3efb:	31 c0                	xor    %eax,%eax
    3efd:	e8 4a 8c 00 00       	call   cb4c <get_thread_data>
    3f02:	48 83 78 50 01       	cmpq   $0x1,0x50(%rax)
    3f07:	48 89 c3             	mov    %rax,%rbx
    3f0a:	74 74                	je     3f80 <do_oret+0xa0>
    3f0c:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
    3f10:	48 89 e0             	mov    %rsp,%rax
    3f13:	48 89 3c 24          	mov    %rdi,(%rsp)
    3f17:	48 39 f8             	cmp    %rdi,%rax
    3f1a:	72 24                	jb     3f40 <do_oret+0x60>
    3f1c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    3f21:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    3f28:	00 00 
    3f2a:	75 6b                	jne    3f97 <do_oret+0xb7>
    3f2c:	48 83 c4 18          	add    $0x18,%rsp
    3f30:	b8 01 00 00 00       	mov    $0x1,%eax
    3f35:	5b                   	pop    %rbx
    3f36:	5d                   	pop    %rbp
    3f37:	c3                   	ret
    3f38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    3f3f:	00 
    3f40:	48 8b 43 10          	mov    0x10(%rbx),%rax
    3f44:	48 8d 90 10 ff ff ff 	lea    -0xf0(%rax),%rdx
    3f4b:	48 39 fa             	cmp    %rdi,%rdx
    3f4e:	72 cc                	jb     3f1c <do_oret+0x3c>
    3f50:	48 81 7f 20 44 49 43 	cmpq   $0x4f434944,0x20(%rdi)
    3f57:	4f 
    3f58:	75 c2                	jne    3f1c <do_oret+0x3c>
    3f5a:	48 8b 57 30          	mov    0x30(%rdi),%rdx
    3f5e:	48 39 d7             	cmp    %rdx,%rdi
    3f61:	73 b9                	jae    3f1c <do_oret+0x3c>
    3f63:	48 39 d0             	cmp    %rdx,%rax
    3f66:	72 b4                	jb     3f1c <do_oret+0x3c>
    3f68:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    3f6c:	48 89 ee             	mov    %rbp,%rsi
    3f6f:	e8 87 8e 00 00       	call   cdfb <asm_oret>
    3f74:	eb a6                	jmp    3f1c <do_oret+0x3c>
    3f76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    3f7d:	00 00 00 
    3f80:	48 c7 40 50 00 00 00 	movq   $0x0,0x50(%rax)
    3f87:	00 
    3f88:	bf 01 00 00 00       	mov    $0x1,%edi
    3f8d:	e8 be f3 ff ff       	call   3350 <sgx_set_ssa_aexnotify>
    3f92:	e9 75 ff ff ff       	jmp    3f0c <do_oret+0x2c>
    3f97:	e8 84 75 00 00       	call   b520 <__stack_chk_fail>
    3f9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000003fa0 <get_heap_base>:
    3fa0:	f3 0f 1e fa          	endbr64
    3fa4:	48 83 ec 08          	sub    $0x8,%rsp
    3fa8:	e8 54 8b 00 00       	call   cb01 <get_enclave_base>
    3fad:	48 8d 15 ac f1 00 00 	lea    0xf1ac(%rip),%rdx        # 13160 <g_global_data>
    3fb4:	48 8b 52 10          	mov    0x10(%rdx),%rdx
    3fb8:	48 83 c4 08          	add    $0x8,%rsp
    3fbc:	48 01 d0             	add    %rdx,%rax
    3fbf:	c3                   	ret

0000000000003fc0 <get_heap_size>:
    3fc0:	f3 0f 1e fa          	endbr64
    3fc4:	48 8d 05 31 ce 00 00 	lea    0xce31(%rip),%rax        # 10dfc <EDMM_supported>
    3fcb:	48 8d 0d 8e f1 00 00 	lea    0xf18e(%rip),%rcx        # 13160 <g_global_data>
    3fd2:	8b 00                	mov    (%rax),%eax
    3fd4:	48 8b 79 18          	mov    0x18(%rcx),%rdi
    3fd8:	85 c0                	test   %eax,%eax
    3fda:	74 41                	je     401d <get_heap_size+0x5d>
    3fdc:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    3fe2:	85 c0                	test   %eax,%eax
    3fe4:	74 37                	je     401d <get_heap_size+0x5d>
    3fe6:	31 d2                	xor    %edx,%edx
    3fe8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    3fef:	00 
    3ff0:	89 d0                	mov    %edx,%eax
    3ff2:	48 83 c0 0b          	add    $0xb,%rax
    3ff6:	48 c1 e0 05          	shl    $0x5,%rax
    3ffa:	48 01 c8             	add    %rcx,%rax
    3ffd:	0f b7 30             	movzwl (%rax),%esi
    4000:	66 83 fe 03          	cmp    $0x3,%si
    4004:	75 0a                	jne    4010 <get_heap_size+0x50>
    4006:	8b 40 04             	mov    0x4(%rax),%eax
    4009:	48 c1 e0 0c          	shl    $0xc,%rax
    400d:	48 01 c7             	add    %rax,%rdi
    4010:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    4016:	83 c2 01             	add    $0x1,%edx
    4019:	39 c2                	cmp    %eax,%edx
    401b:	72 d3                	jb     3ff0 <get_heap_size+0x30>
    401d:	48 89 f8             	mov    %rdi,%rax
    4020:	c3                   	ret
    4021:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4028:	00 00 00 
    402b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000004030 <get_heap_min_size>:
    4030:	f3 0f 1e fa          	endbr64
    4034:	48 8d 0d 25 f1 00 00 	lea    0xf125(%rip),%rcx        # 13160 <g_global_data>
    403b:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    4041:	85 c0                	test   %eax,%eax
    4043:	74 3b                	je     4080 <get_heap_min_size+0x50>
    4045:	31 d2                	xor    %edx,%edx
    4047:	eb 14                	jmp    405d <get_heap_min_size+0x2d>
    4049:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4050:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    4056:	83 c2 01             	add    $0x1,%edx
    4059:	39 c2                	cmp    %eax,%edx
    405b:	73 23                	jae    4080 <get_heap_min_size+0x50>
    405d:	89 d0                	mov    %edx,%eax
    405f:	48 83 c0 0b          	add    $0xb,%rax
    4063:	48 c1 e0 05          	shl    $0x5,%rax
    4067:	48 01 c8             	add    %rcx,%rax
    406a:	0f b7 30             	movzwl (%rax),%esi
    406d:	66 83 fe 01          	cmp    $0x1,%si
    4071:	75 dd                	jne    4050 <get_heap_min_size+0x20>
    4073:	8b 40 04             	mov    0x4(%rax),%eax
    4076:	48 c1 e0 0c          	shl    $0xc,%rax
    407a:	c3                   	ret
    407b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4080:	31 c0                	xor    %eax,%eax
    4082:	c3                   	ret
    4083:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    408a:	00 00 00 
    408d:	0f 1f 00             	nopl   (%rax)

0000000000004090 <get_rsrv_base>:
    4090:	f3 0f 1e fa          	endbr64
    4094:	48 83 ec 08          	sub    $0x8,%rsp
    4098:	e8 64 8a 00 00       	call   cb01 <get_enclave_base>
    409d:	48 8d 15 bc f0 00 00 	lea    0xf0bc(%rip),%rdx        # 13160 <g_global_data>
    40a4:	48 8b 52 20          	mov    0x20(%rdx),%rdx
    40a8:	48 83 c4 08          	add    $0x8,%rsp
    40ac:	48 01 d0             	add    %rdx,%rax
    40af:	c3                   	ret

00000000000040b0 <get_rsrv_size>:
    40b0:	f3 0f 1e fa          	endbr64
    40b4:	48 8d 05 41 cd 00 00 	lea    0xcd41(%rip),%rax        # 10dfc <EDMM_supported>
    40bb:	48 8d 0d 9e f0 00 00 	lea    0xf09e(%rip),%rcx        # 13160 <g_global_data>
    40c2:	8b 00                	mov    (%rax),%eax
    40c4:	48 8b 79 28          	mov    0x28(%rcx),%rdi
    40c8:	85 c0                	test   %eax,%eax
    40ca:	74 41                	je     410d <get_rsrv_size+0x5d>
    40cc:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    40d2:	85 c0                	test   %eax,%eax
    40d4:	74 37                	je     410d <get_rsrv_size+0x5d>
    40d6:	31 d2                	xor    %edx,%edx
    40d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    40df:	00 
    40e0:	89 d0                	mov    %edx,%eax
    40e2:	48 83 c0 0b          	add    $0xb,%rax
    40e6:	48 c1 e0 05          	shl    $0x5,%rax
    40ea:	48 01 c8             	add    %rcx,%rax
    40ed:	0f b7 30             	movzwl (%rax),%esi
    40f0:	66 83 fe 16          	cmp    $0x16,%si
    40f4:	75 0a                	jne    4100 <get_rsrv_size+0x50>
    40f6:	8b 40 04             	mov    0x4(%rax),%eax
    40f9:	48 c1 e0 0c          	shl    $0xc,%rax
    40fd:	48 01 c7             	add    %rax,%rdi
    4100:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    4106:	83 c2 01             	add    $0x1,%edx
    4109:	39 c2                	cmp    %eax,%edx
    410b:	72 d3                	jb     40e0 <get_rsrv_size+0x30>
    410d:	48 89 f8             	mov    %rdi,%rax
    4110:	c3                   	ret
    4111:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4118:	00 00 00 
    411b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000004120 <get_rsrv_min_size>:
    4120:	f3 0f 1e fa          	endbr64
    4124:	48 8d 0d 35 f0 00 00 	lea    0xf035(%rip),%rcx        # 13160 <g_global_data>
    412b:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    4131:	85 c0                	test   %eax,%eax
    4133:	74 3b                	je     4170 <get_rsrv_min_size+0x50>
    4135:	31 d2                	xor    %edx,%edx
    4137:	eb 14                	jmp    414d <get_rsrv_min_size+0x2d>
    4139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4140:	8b 81 58 01 00 00    	mov    0x158(%rcx),%eax
    4146:	83 c2 01             	add    $0x1,%edx
    4149:	39 c2                	cmp    %eax,%edx
    414b:	73 23                	jae    4170 <get_rsrv_min_size+0x50>
    414d:	89 d0                	mov    %edx,%eax
    414f:	48 83 c0 0b          	add    $0xb,%rax
    4153:	48 c1 e0 05          	shl    $0x5,%rax
    4157:	48 01 c8             	add    %rcx,%rax
    415a:	0f b7 30             	movzwl (%rax),%esi
    415d:	66 83 fe 14          	cmp    $0x14,%si
    4161:	75 dd                	jne    4140 <get_rsrv_min_size+0x20>
    4163:	8b 40 04             	mov    0x4(%rax),%eax
    4166:	48 c1 e0 0c          	shl    $0xc,%rax
    416a:	c3                   	ret
    416b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4170:	31 c0                	xor    %eax,%eax
    4172:	c3                   	ret
    4173:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    417a:	00 00 00 
    417d:	0f 1f 00             	nopl   (%rax)

0000000000004180 <get_errno_addr>:
    4180:	f3 0f 1e fa          	endbr64
    4184:	48 83 ec 08          	sub    $0x8,%rsp
    4188:	e8 bf 89 00 00       	call   cb4c <get_thread_data>
    418d:	48 83 c4 08          	add    $0x8,%rsp
    4191:	48 83 c0 40          	add    $0x40,%rax
    4195:	c3                   	ret
    4196:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    419d:	00 00 00 

00000000000041a0 <feature_supported>:
    41a0:	f3 0f 1e fa          	endbr64
    41a4:	48 85 ff             	test   %rdi,%rdi
    41a7:	74 37                	je     41e0 <feature_supported+0x40>
    41a9:	31 d2                	xor    %edx,%edx
    41ab:	eb 08                	jmp    41b5 <feature_supported+0x15>
    41ad:	0f 1f 00             	nopl   (%rax)
    41b0:	48 85 c0             	test   %rax,%rax
    41b3:	78 2b                	js     41e0 <feature_supported+0x40>
    41b5:	89 d0                	mov    %edx,%eax
    41b7:	83 c2 01             	add    $0x1,%edx
    41ba:	41 89 d1             	mov    %edx,%r9d
    41bd:	49 89 c0             	mov    %rax,%r8
    41c0:	48 8b 04 c7          	mov    (%rdi,%rax,8),%rax
    41c4:	41 c1 e1 06          	shl    $0x6,%r9d
    41c8:	44 39 ce             	cmp    %r9d,%esi
    41cb:	73 e3                	jae    41b0 <feature_supported+0x10>
    41cd:	41 c1 e0 06          	shl    $0x6,%r8d
    41d1:	44 29 c6             	sub    %r8d,%esi
    41d4:	89 f1                	mov    %esi,%ecx
    41d6:	48 d3 e8             	shr    %cl,%rax
    41d9:	83 e0 01             	and    $0x1,%eax
    41dc:	c3                   	ret
    41dd:	0f 1f 00             	nopl   (%rax)
    41e0:	31 c0                	xor    %eax,%eax
    41e2:	c3                   	ret
    41e3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    41ea:	00 00 00 
    41ed:	0f 1f 00             	nopl   (%rax)

00000000000041f0 <is_stack_addr>:
    41f0:	f3 0f 1e fa          	endbr64
    41f4:	55                   	push   %rbp
    41f5:	48 89 f5             	mov    %rsi,%rbp
    41f8:	53                   	push   %rbx
    41f9:	48 89 fb             	mov    %rdi,%rbx
    41fc:	48 83 ec 08          	sub    $0x8,%rsp
    4200:	e8 47 89 00 00       	call   cb4c <get_thread_data>
    4205:	31 c9                	xor    %ecx,%ecx
    4207:	48 01 dd             	add    %rbx,%rbp
    420a:	48 89 c2             	mov    %rax,%rdx
    420d:	0f 92 c1             	setb   %cl
    4210:	48 39 68 10          	cmp    %rbp,0x10(%rax)
    4214:	0f 93 c0             	setae  %al
    4217:	48 3b 5a 18          	cmp    0x18(%rdx),%rbx
    421b:	0f 93 c2             	setae  %dl
    421e:	21 d0                	and    %edx,%eax
    4220:	48 85 c9             	test   %rcx,%rcx
    4223:	0f 94 c2             	sete   %dl
    4226:	48 83 c4 08          	add    $0x8,%rsp
    422a:	21 d0                	and    %edx,%eax
    422c:	5b                   	pop    %rbx
    422d:	5d                   	pop    %rbp
    422e:	c3                   	ret
    422f:	90                   	nop

0000000000004230 <is_valid_sp>:
    4230:	f3 0f 1e fa          	endbr64
    4234:	40 f6 c7 07          	test   $0x7,%dil
    4238:	74 06                	je     4240 <is_valid_sp+0x10>
    423a:	31 c0                	xor    %eax,%eax
    423c:	c3                   	ret
    423d:	0f 1f 00             	nopl   (%rax)
    4240:	53                   	push   %rbx
    4241:	48 89 fb             	mov    %rdi,%rbx
    4244:	e8 03 89 00 00       	call   cb4c <get_thread_data>
    4249:	48 89 c2             	mov    %rax,%rdx
    424c:	48 3b 58 18          	cmp    0x18(%rax),%rbx
    4250:	0f 93 c0             	setae  %al
    4253:	48 39 5a 10          	cmp    %rbx,0x10(%rdx)
    4257:	5b                   	pop    %rbx
    4258:	0f 93 c2             	setae  %dl
    425b:	21 d0                	and    %edx,%eax
    425d:	c3                   	ret
    425e:	66 90                	xchg   %ax,%ax

0000000000004260 <is_utility_thread>:
    4260:	f3 0f 1e fa          	endbr64
    4264:	48 83 ec 08          	sub    $0x8,%rsp
    4268:	e8 df 88 00 00       	call   cb4c <get_thread_data>
    426d:	31 d2                	xor    %edx,%edx
    426f:	48 85 c0             	test   %rax,%rax
    4272:	74 07                	je     427b <is_utility_thread+0x1b>
    4274:	48 8b 50 30          	mov    0x30(%rax),%rdx
    4278:	83 e2 01             	and    $0x1,%edx
    427b:	89 d0                	mov    %edx,%eax
    427d:	48 83 c4 08          	add    $0x8,%rsp
    4281:	c3                   	ret
    4282:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4289:	00 00 00 
    428c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000004290 <is_pkru_enabled>:
    4290:	f3 0f 1e fa          	endbr64
    4294:	48 83 ec 08          	sub    $0x8,%rsp
    4298:	e8 13 08 00 00       	call   4ab0 <get_xfeature_state>
    429d:	48 83 c4 08          	add    $0x8,%rsp
    42a1:	48 c1 e8 09          	shr    $0x9,%rax
    42a5:	83 e0 01             	and    $0x1,%eax
    42a8:	c3                   	ret
    42a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000042b0 <get_xsave_size>:
    42b0:	f3 0f 1e fa          	endbr64
    42b4:	48 8d 05 a5 ee 00 00 	lea    0xeea5(%rip),%rax        # 13160 <g_global_data>
    42bb:	48 8b 80 88 00 00 00 	mov    0x88(%rax),%rax
    42c2:	c3                   	ret
    42c3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    42ca:	00 00 00 
    42cd:	0f 1f 00             	nopl   (%rax)

00000000000042d0 <get_ssa_aexnotify>:
    42d0:	f3 0f 1e fa          	endbr64
    42d4:	48 83 ec 08          	sub    $0x8,%rsp
    42d8:	e8 6f 88 00 00       	call   cb4c <get_thread_data>
    42dd:	48 85 c0             	test   %rax,%rax
    42e0:	74 16                	je     42f8 <get_ssa_aexnotify+0x28>
    42e2:	48 8b 40 20          	mov    0x20(%rax),%rax
    42e6:	0f b6 80 a7 00 00 00 	movzbl 0xa7(%rax),%eax
    42ed:	48 83 c4 08          	add    $0x8,%rsp
    42f1:	83 e0 01             	and    $0x1,%eax
    42f4:	c3                   	ret
    42f5:	0f 1f 00             	nopl   (%rax)
    42f8:	31 c0                	xor    %eax,%eax
    42fa:	48 83 c4 08          	add    $0x8,%rsp
    42fe:	c3                   	ret
    42ff:	90                   	nop

0000000000004300 <internal_handle_exception>:
    4300:	f3 0f 1e fa          	endbr64
    4304:	55                   	push   %rbp
    4305:	48 89 e5             	mov    %rsp,%rbp
    4308:	41 57                	push   %r15
    430a:	41 56                	push   %r14
    430c:	41 55                	push   %r13
    430e:	41 54                	push   %r12
    4310:	53                   	push   %rbx
    4311:	48 89 fb             	mov    %rdi,%rbx
    4314:	48 83 ec 38          	sub    $0x38,%rsp
    4318:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    431f:	00 00 
    4321:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    4325:	31 c0                	xor    %eax,%eax
    4327:	e8 20 88 00 00       	call   cb4c <get_thread_data>
    432c:	4c 8b 60 20          	mov    0x20(%rax),%r12
    4330:	49 89 c5             	mov    %rax,%r13
    4333:	e8 78 ff ff ff       	call   42b0 <get_xsave_size>
    4338:	48 85 db             	test   %rbx,%rbx
    433b:	0f 84 4f 01 00 00    	je     4490 <internal_handle_exception+0x190>
    4341:	49 8d b4 24 ff 0f 00 	lea    0xfff(%r12),%rsi
    4348:	00 
    4349:	48 05 b7 10 00 00    	add    $0x10b7,%rax
    434f:	48 8b 93 b0 00 00 00 	mov    0xb0(%rbx),%rdx
    4356:	4c 8d b3 c0 00 00 00 	lea    0xc0(%rbx),%r14
    435d:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
    4363:	48 81 e6 00 f0 ff ff 	and    $0xfffffffffffff000,%rsi
    436a:	4c 89 f7             	mov    %r14,%rdi
    436d:	48 29 c6             	sub    %rax,%rsi
    4370:	e8 eb 6e 00 00       	call   b260 <memcpy>
    4375:	8b 83 a8 00 00 00    	mov    0xa8(%rbx),%eax
    437b:	85 c0                	test   %eax,%eax
    437d:	0f 84 2e 01 00 00    	je     44b1 <internal_handle_exception+0x1b1>
    4383:	49 8b 45 78          	mov    0x78(%r13),%rax
    4387:	48 85 c0             	test   %rax,%rax
    438a:	0f 88 00 01 00 00    	js     4490 <internal_handle_exception+0x190>
    4390:	48 8d 50 01          	lea    0x1(%rax),%rdx
    4394:	83 bb 90 00 00 00 0e 	cmpl   $0xe,0x90(%rbx)
    439b:	49 89 55 78          	mov    %rdx,0x78(%r13)
    439f:	75 27                	jne    43c8 <internal_handle_exception+0xc8>
    43a1:	48 8b 15 d0 f4 00 00 	mov    0xf4d0(%rip),%rdx        # 13878 <g_mm_pfhandler>
    43a8:	48 85 d2             	test   %rdx,%rdx
    43ab:	74 1b                	je     43c8 <internal_handle_exception+0xc8>
    43ad:	49 89 45 78          	mov    %rax,0x78(%r13)
    43b1:	48 8d bb 98 00 00 00 	lea    0x98(%rbx),%rdi
    43b8:	ff d2                	call   *%rdx
    43ba:	83 c0 01             	add    $0x1,%eax
    43bd:	0f 84 ee 00 00 00    	je     44b1 <internal_handle_exception+0x1b1>
    43c3:	49 83 45 78 01       	addq   $0x1,0x78(%r13)
    43c8:	48 8d 3d b9 f4 00 00 	lea    0xf4b9(%rip),%rdi        # 13888 <_ZL14g_handler_lock>
    43cf:	e8 2c 44 00 00       	call   8800 <sgx_spin_lock>
    43d4:	48 8b 05 b5 f4 00 00 	mov    0xf4b5(%rip),%rax        # 13890 <_ZL12g_first_node>
    43db:	48 85 c0             	test   %rax,%rax
    43de:	0f 84 b9 00 00 00    	je     449d <internal_handle_exception+0x19d>
    43e4:	45 31 ff             	xor    %r15d,%r15d
    43e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    43ee:	00 00 
    43f0:	48 8b 40 08          	mov    0x8(%rax),%rax
    43f4:	49 83 c7 08          	add    $0x8,%r15
    43f8:	48 85 c0             	test   %rax,%rax
    43fb:	75 f3                	jne    43f0 <internal_handle_exception+0xf0>
    43fd:	4d 85 ff             	test   %r15,%r15
    4400:	0f 84 97 00 00 00    	je     449d <internal_handle_exception+0x19d>
    4406:	4c 89 ff             	mov    %r15,%rdi
    4409:	e8 42 42 00 00       	call   8650 <alloca>
    440e:	49 89 c4             	mov    %rax,%r12
    4411:	48 85 c0             	test   %rax,%rax
    4414:	0f 84 b3 02 00 00    	je     46cd <internal_handle_exception+0x3cd>
    441a:	48 8b 05 6f f4 00 00 	mov    0xf46f(%rip),%rax        # 13890 <_ZL12g_first_node>
    4421:	4c 89 e1             	mov    %r12,%rcx
    4424:	48 85 c0             	test   %rax,%rax
    4427:	74 1b                	je     4444 <internal_handle_exception+0x144>
    4429:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4430:	48 8b 30             	mov    (%rax),%rsi
    4433:	48 8b 40 08          	mov    0x8(%rax),%rax
    4437:	48 83 c1 08          	add    $0x8,%rcx
    443b:	48 89 71 f8          	mov    %rsi,-0x8(%rcx)
    443f:	48 85 c0             	test   %rax,%rax
    4442:	75 ec                	jne    4430 <internal_handle_exception+0x130>
    4444:	48 8d 3d 3d f4 00 00 	lea    0xf43d(%rip),%rdi        # 13888 <_ZL14g_handler_lock>
    444b:	4d 01 e7             	add    %r12,%r15
    444e:	e8 3d 44 00 00       	call   8890 <sgx_spin_unlock>
    4453:	49 83 6d 78 01       	subq   $0x1,0x78(%r13)
    4458:	eb 13                	jmp    446d <internal_handle_exception+0x16d>
    445a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4460:	49 83 c4 08          	add    $0x8,%r12
    4464:	4d 39 fc             	cmp    %r15,%r12
    4467:	0f 84 f2 01 00 00    	je     465f <internal_handle_exception+0x35f>
    446d:	49 8b 04 24          	mov    (%r12),%rax
    4471:	48 89 df             	mov    %rbx,%rdi
    4474:	48 33 05 05 f4 00 00 	xor    0xf405(%rip),%rax        # 13880 <_ZL12g_veh_cookie>
    447b:	ff d0                	call   *%rax
    447d:	83 f8 ff             	cmp    $0xffffffff,%eax
    4480:	75 de                	jne    4460 <internal_handle_exception+0x160>
    4482:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
    4486:	e8 a5 fd ff ff       	call   4230 <is_valid_sp>
    448b:	84 c0                	test   %al,%al
    448d:	75 22                	jne    44b1 <internal_handle_exception+0x1b1>
    448f:	90                   	nop
    4490:	49 c7 45 78 ff ff ff 	movq   $0xffffffffffffffff,0x78(%r13)
    4497:	ff 
    4498:	e8 a3 8a 00 00       	call   cf40 <abort>
    449d:	48 8d 3d e4 f3 00 00 	lea    0xf3e4(%rip),%rdi        # 13888 <_ZL14g_handler_lock>
    44a4:	e8 e7 43 00 00       	call   8890 <sgx_spin_unlock>
    44a9:	49 c7 45 78 ff ff ff 	movq   $0xffffffffffffffff,0x78(%r13)
    44b0:	ff 
    44b1:	83 bb ac 00 00 00 01 	cmpl   $0x1,0xac(%rbx)
    44b8:	74 12                	je     44cc <internal_handle_exception+0x1cc>
    44ba:	4c 89 f7             	mov    %r14,%rdi
    44bd:	e8 2f 82 00 00       	call   c6f1 <restore_xregs>
    44c2:	48 89 df             	mov    %rbx,%rdi
    44c5:	e8 89 8a 00 00       	call   cf53 <continue_execution>
    44ca:	eb c4                	jmp    4490 <internal_handle_exception+0x190>
    44cc:	48 89 df             	mov    %rbx,%rdi
    44cf:	e8 dc ee ff ff       	call   33b0 <sgx_apply_mitigations>
    44d4:	4c 89 f7             	mov    %r14,%rdi
    44d7:	e8 15 82 00 00       	call   c6f1 <restore_xregs>
    44dc:	e8 6b 86 00 00       	call   cb4c <get_thread_data>
    44e1:	49 89 c7             	mov    %rax,%r15
    44e4:	48 8b 40 10          	mov    0x10(%rax),%rax
    44e8:	49 89 c6             	mov    %rax,%r14
    44eb:	49 81 e6 00 f0 ff ff 	and    $0xfffffffffffff000,%r14
    44f2:	48 3d ff 0f 00 00    	cmp    $0xfff,%rax
    44f8:	77 07                	ja     4501 <internal_handle_exception+0x201>
    44fa:	4c 8d b0 00 f0 ff ff 	lea    -0x1000(%rax),%r14
    4501:	48 89 df             	mov    %rbx,%rdi
    4504:	4d 8b 67 18          	mov    0x18(%r15),%r12
    4508:	e8 f3 82 00 00       	call   c800 <cselect_mitigation_rip>
    450d:	48 89 c6             	mov    %rax,%rsi
    4510:	48 89 d8             	mov    %rbx,%rax
    4513:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
    4519:	4c 39 f0             	cmp    %r14,%rax
    451c:	0f 84 8b 01 00 00    	je     46ad <internal_handle_exception+0x3ad>
    4522:	48 83 c8 01          	or     $0x1,%rax
    4526:	49 89 c6             	mov    %rax,%r14
    4529:	48 89 f2             	mov    %rsi,%rdx
    452c:	48 89 f1             	mov    %rsi,%rcx
    452f:	48 c1 ea 0b          	shr    $0xb,%rdx
    4533:	48 81 e1 00 f0 ff ff 	and    $0xfffffffffffff000,%rcx
    453a:	81 e2 fe 0f 00 00    	and    $0xffe,%edx
    4540:	48 03 15 a1 ca 00 00 	add    0xcaa1(%rip),%rdx        # 10fe8 <_GLOBAL_OFFSET_TABLE_+0x30>
    4547:	44 0f b7 0a          	movzwl (%rdx),%r9d
    454b:	4d 8d 24 09          	lea    (%r9,%rcx,1),%r12
    454f:	41 80 3c 24 c3       	cmpb   $0xc3,(%r12)
    4554:	74 3b                	je     4591 <internal_handle_exception+0x291>
    4556:	49 89 c9             	mov    %rcx,%r9
    4559:	48 8d 81 00 10 00 00 	lea    0x1000(%rcx),%rax
    4560:	eb 13                	jmp    4575 <internal_handle_exception+0x275>
    4562:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4568:	49 83 c1 01          	add    $0x1,%r9
    456c:	4c 39 c8             	cmp    %r9,%rax
    456f:	0f 84 69 01 00 00    	je     46de <internal_handle_exception+0x3de>
    4575:	41 80 39 c3          	cmpb   $0xc3,(%r9)
    4579:	75 ed                	jne    4568 <internal_handle_exception+0x268>
    457b:	4c 39 c8             	cmp    %r9,%rax
    457e:	0f 84 5a 01 00 00    	je     46de <internal_handle_exception+0x3de>
    4584:	44 89 c8             	mov    %r9d,%eax
    4587:	4d 89 cc             	mov    %r9,%r12
    458a:	66 25 ff 0f          	and    $0xfff,%ax
    458e:	66 89 02             	mov    %ax,(%rdx)
    4591:	4c 89 e2             	mov    %r12,%rdx
    4594:	48 89 df             	mov    %rbx,%rdi
    4597:	48 89 4d a0          	mov    %rcx,-0x60(%rbp)
    459b:	e8 9b 82 00 00       	call   c83b <cselect_mitigation_regs>
    45a0:	48 8d 75 c0          	lea    -0x40(%rbp),%rsi
    45a4:	48 89 df             	mov    %rbx,%rdi
    45a7:	e8 74 ce ff ff       	call   1420 <ct_decode>
    45ac:	4d 89 f0             	mov    %r14,%r8
    45af:	be 01 00 00 00       	mov    $0x1,%esi
    45b4:	49 83 e0 fe          	and    $0xfffffffffffffffe,%r8
    45b8:	4c 63 c8             	movslq %eax,%r9
    45bb:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    45bf:	4c 89 c2             	mov    %r8,%rdx
    45c2:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
    45c6:	49 83 f9 01          	cmp    $0x1,%r9
    45ca:	48 0f 44 d0          	cmove  %rax,%rdx
    45ce:	49 83 f9 02          	cmp    $0x2,%r9
    45d2:	48 0f 44 d0          	cmove  %rax,%rdx
    45d6:	48 89 d7             	mov    %rdx,%rdi
    45d9:	4c 89 4d b0          	mov    %r9,-0x50(%rbp)
    45dd:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    45e1:	e8 5a e4 ff ff       	call   2a40 <sgx_is_within_enclave>
    45e6:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    45ea:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
    45ee:	4c 8b 45 a8          	mov    -0x58(%rbp),%r8
    45f2:	85 c0                	test   %eax,%eax
    45f4:	4c 8b 4d b0          	mov    -0x50(%rbp),%r9
    45f8:	48 98                	cltq
    45fa:	4c 0f 45 c2          	cmovne %rdx,%r8
    45fe:	48 89 ca             	mov    %rcx,%rdx
    4601:	48 83 ca 01          	or     $0x1,%rdx
    4605:	49 83 f9 02          	cmp    $0x2,%r9
    4609:	48 0f 44 ca          	cmove  %rdx,%rcx
    460d:	48 89 ca             	mov    %rcx,%rdx
    4610:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
    4614:	48 83 f8 01          	cmp    $0x1,%rax
    4618:	48 0f 44 d1          	cmove  %rcx,%rdx
    461c:	41 83 af bc 00 00 00 	subl   $0x1,0xbc(%r15)
    4623:	01 
    4624:	78 57                	js     467d <internal_handle_exception+0x37d>
    4626:	41 8b 8f b8 00 00 00 	mov    0xb8(%r15),%ecx
    462d:	49 8b 77 20          	mov    0x20(%r15),%rsi
    4631:	4d 89 e1             	mov    %r12,%r9
    4634:	48 89 df             	mov    %rbx,%rdi
    4637:	89 c8                	mov    %ecx,%eax
    4639:	c1 e1 04             	shl    $0x4,%ecx
    463c:	48 81 c6 a7 00 00 00 	add    $0xa7,%rsi
    4643:	d1 e8                	shr    $1,%eax
    4645:	83 e1 10             	and    $0x10,%ecx
    4648:	41 89 87 b8 00 00 00 	mov    %eax,0xb8(%r15)
    464f:	48 09 d1             	or     %rdx,%rcx
    4652:	4c 89 f2             	mov    %r14,%rdx
    4655:	e8 0d 83 00 00       	call   c967 <constant_time_apply_sgxstep_mitigation_and_continue_execution>
    465a:	e9 31 fe ff ff       	jmp    4490 <internal_handle_exception+0x190>
    465f:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
    4663:	e8 c8 fb ff ff       	call   4230 <is_valid_sp>
    4668:	84 c0                	test   %al,%al
    466a:	0f 84 20 fe ff ff    	je     4490 <internal_handle_exception+0x190>
    4670:	49 c7 45 78 ff ff ff 	movq   $0xffffffffffffffff,0x78(%r13)
    4677:	ff 
    4678:	e9 34 fe ff ff       	jmp    44b1 <internal_handle_exception+0x1b1>
    467d:	49 8d bf b8 00 00 00 	lea    0xb8(%r15),%rdi
    4684:	48 89 55 b0          	mov    %rdx,-0x50(%rbp)
    4688:	4c 89 45 b8          	mov    %r8,-0x48(%rbp)
    468c:	e8 8c 88 00 00       	call   cf1d <do_rdrand>
    4691:	4c 8b 45 b8          	mov    -0x48(%rbp),%r8
    4695:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    4699:	85 c0                	test   %eax,%eax
    469b:	74 4d                	je     46ea <internal_handle_exception+0x3ea>
    469d:	41 c7 87 bc 00 00 00 	movl   $0x1f,0xbc(%r15)
    46a4:	1f 00 00 00 
    46a8:	e9 79 ff ff ff       	jmp    4626 <internal_handle_exception+0x326>
    46ad:	49 81 e4 00 f0 ff ff 	and    $0xfffffffffffff000,%r12
    46b4:	4d 39 f4             	cmp    %r14,%r12
    46b7:	0f 84 6c fe ff ff    	je     4529 <internal_handle_exception+0x229>
    46bd:	49 81 ee 00 10 00 00 	sub    $0x1000,%r14
    46c4:	49 83 ce 01          	or     $0x1,%r14
    46c8:	e9 5c fe ff ff       	jmp    4529 <internal_handle_exception+0x229>
    46cd:	48 8d 3d b4 f1 00 00 	lea    0xf1b4(%rip),%rdi        # 13888 <_ZL14g_handler_lock>
    46d4:	e8 b7 41 00 00       	call   8890 <sgx_spin_unlock>
    46d9:	e9 b2 fd ff ff       	jmp    4490 <internal_handle_exception+0x190>
    46de:	4c 8d 25 1b 84 00 00 	lea    0x841b(%rip),%r12        # cb00 <__ct_mitigation_ret>
    46e5:	e9 a7 fe ff ff       	jmp    4591 <internal_handle_exception+0x291>
    46ea:	49 c7 47 78 ff ff ff 	movq   $0xffffffffffffffff,0x78(%r15)
    46f1:	ff 
    46f2:	e8 49 88 00 00       	call   cf40 <abort>
    46f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    46fe:	00 00 

0000000000004700 <trts_handle_exception>:
    4700:	f3 0f 1e fa          	endbr64
    4704:	41 57                	push   %r15
    4706:	41 56                	push   %r14
    4708:	41 55                	push   %r13
    470a:	41 54                	push   %r12
    470c:	55                   	push   %rbp
    470d:	53                   	push   %rbx
    470e:	48 89 fb             	mov    %rdi,%rbx
    4711:	48 83 ec 08          	sub    $0x8,%rsp
    4715:	e8 32 84 00 00       	call   cb4c <get_thread_data>
    471a:	48 85 c0             	test   %rax,%rax
    471d:	48 89 c5             	mov    %rax,%rbp
    4720:	0f 94 c2             	sete   %dl
    4723:	48 85 db             	test   %rbx,%rbx
    4726:	0f 94 c0             	sete   %al
    4729:	08 c2                	or     %al,%dl
    472b:	75 33                	jne    4760 <trts_handle_exception+0x60>
    472d:	48 89 df             	mov    %rbx,%rdi
    4730:	41 89 d4             	mov    %edx,%r12d
    4733:	e8 38 e6 ff ff       	call   2d70 <check_static_stack_canary>
    4738:	85 c0                	test   %eax,%eax
    473a:	75 24                	jne    4760 <trts_handle_exception+0x60>
    473c:	e8 cc 83 00 00       	call   cb0d <get_enclave_state>
    4741:	83 f8 02             	cmp    $0x2,%eax
    4744:	75 1a                	jne    4760 <trts_handle_exception+0x60>
    4746:	48 83 7d 78 ff       	cmpq   $0xffffffffffffffff,0x78(%rbp)
    474b:	74 13                	je     4760 <trts_handle_exception+0x60>
    474d:	48 8b 45 10          	mov    0x10(%rbp),%rax
    4751:	48 05 00 04 01 00    	add    $0x10400,%rax
    4757:	48 39 c3             	cmp    %rax,%rbx
    475a:	74 24                	je     4780 <trts_handle_exception+0x80>
    475c:	0f 1f 40 00          	nopl   0x0(%rax)
    4760:	bf 03 00 00 00       	mov    $0x3,%edi
    4765:	e8 b4 83 00 00       	call   cb1e <set_enclave_state>
    476a:	b8 06 10 00 00       	mov    $0x1006,%eax
    476f:	48 83 c4 08          	add    $0x8,%rsp
    4773:	5b                   	pop    %rbx
    4774:	5d                   	pop    %rbp
    4775:	41 5c                	pop    %r12
    4777:	41 5d                	pop    %r13
    4779:	41 5e                	pop    %r14
    477b:	41 5f                	pop    %r15
    477d:	c3                   	ret
    477e:	66 90                	xchg   %ax,%ax
    4780:	4c 8b 6d 20          	mov    0x20(%rbp),%r13
    4784:	e8 27 fb ff ff       	call   42b0 <get_xsave_size>
    4789:	48 05 b7 10 00 00    	add    $0x10b7,%rax
    478f:	49 81 e5 00 f0 ff ff 	and    $0xfffffffffffff000,%r13
    4796:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
    479c:	49 29 c5             	sub    %rax,%r13
    479f:	4c 39 eb             	cmp    %r13,%rbx
    47a2:	75 bc                	jne    4760 <trts_handle_exception+0x60>
    47a4:	4c 8b 6d 20          	mov    0x20(%rbp),%r13
    47a8:	be 08 00 00 00       	mov    $0x8,%esi
    47ad:	4d 8b b5 90 00 00 00 	mov    0x90(%r13),%r14
    47b4:	4c 89 f7             	mov    %r14,%rdi
    47b7:	e8 e4 e2 ff ff       	call   2aa0 <sgx_is_outside_enclave>
    47bc:	85 c0                	test   %eax,%eax
    47be:	0f 84 ec 01 00 00    	je     49b0 <trts_handle_exception+0x2b0>
    47c4:	49 8b 5d 20          	mov    0x20(%r13),%rbx
    47c8:	49 39 de             	cmp    %rbx,%r14
    47cb:	0f 84 df 01 00 00    	je     49b0 <trts_handle_exception+0x2b0>
    47d1:	31 f6                	xor    %esi,%esi
    47d3:	48 89 df             	mov    %rbx,%rdi
    47d6:	e8 15 fa ff ff       	call   41f0 <is_stack_addr>
    47db:	84 c0                	test   %al,%al
    47dd:	0f 84 cd 01 00 00    	je     49b0 <trts_handle_exception+0x2b0>
    47e3:	48 8b 45 38          	mov    0x38(%rbp),%rax
    47e7:	48 8d b0 88 01 00 00 	lea    0x188(%rax),%rsi
    47ee:	48 29 f3             	sub    %rsi,%rbx
    47f1:	48 83 e3 c0          	and    $0xffffffffffffffc0,%rbx
    47f5:	48 89 df             	mov    %rbx,%rdi
    47f8:	e8 f3 f9 ff ff       	call   41f0 <is_stack_addr>
    47fd:	84 c0                	test   %al,%al
    47ff:	0f 84 ab 01 00 00    	je     49b0 <trts_handle_exception+0x2b0>
    4805:	4c 8d 7b f8          	lea    -0x8(%rbx),%r15
    4809:	be 08 00 00 00       	mov    $0x8,%esi
    480e:	4c 89 ff             	mov    %r15,%rdi
    4811:	e8 da f9 ff ff       	call   41f0 <is_stack_addr>
    4816:	41 89 c6             	mov    %eax,%r14d
    4819:	84 c0                	test   %al,%al
    481b:	0f 84 8f 01 00 00    	je     49b0 <trts_handle_exception+0x2b0>
    4821:	48 8b bd b0 00 00 00 	mov    0xb0(%rbp),%rdi
    4828:	49 39 ff             	cmp    %rdi,%r15
    482b:	0f 83 93 01 00 00    	jae    49c4 <trts_handle_exception+0x2c4>
    4831:	4c 8d a7 ff 0f 00 00 	lea    0xfff(%rdi),%r12
    4838:	4d 29 fc             	sub    %r15,%r12
    483b:	49 81 e4 00 f0 ff ff 	and    $0xfffffffffffff000,%r12
    4842:	49 39 fc             	cmp    %rdi,%r12
    4845:	0f 83 65 01 00 00    	jae    49b0 <trts_handle_exception+0x2b0>
    484b:	4c 29 e7             	sub    %r12,%rdi
    484e:	48 3b 7d 18          	cmp    0x18(%rbp),%rdi
    4852:	0f 82 58 01 00 00    	jb     49b0 <trts_handle_exception+0x2b0>
    4858:	4d 85 e4             	test   %r12,%r12
    485b:	0f 84 4f 01 00 00    	je     49b0 <trts_handle_exception+0x2b0>
    4861:	4c 89 e6             	mov    %r12,%rsi
    4864:	e8 27 34 00 00       	call   7c90 <mm_commit>
    4869:	85 c0                	test   %eax,%eax
    486b:	0f 85 3f 01 00 00    	jne    49b0 <trts_handle_exception+0x2b0>
    4871:	48 8d 05 6c c5 00 00 	lea    0xc56c(%rip),%rax        # 10de4 <g_aexnotify_supported>
    4878:	4c 29 a5 b0 00 00 00 	sub    %r12,0xb0(%rbp)
    487f:	45 89 f4             	mov    %r14d,%r12d
    4882:	8b 08                	mov    (%rax),%ecx
    4884:	31 c0                	xor    %eax,%eax
    4886:	89 83 a8 00 00 00    	mov    %eax,0xa8(%rbx)
    488c:	41 0f b6 85 a0 00 00 	movzbl 0xa0(%r13),%eax
    4893:	00 
    4894:	89 83 90 00 00 00    	mov    %eax,0x90(%rbx)
    489a:	41 0f b6 95 a1 00 00 	movzbl 0xa1(%r13),%edx
    48a1:	00 
    48a2:	83 e8 0d             	sub    $0xd,%eax
    48a5:	83 e2 07             	and    $0x7,%edx
    48a8:	89 93 94 00 00 00    	mov    %edx,0x94(%rbx)
    48ae:	48 8b 55 38          	mov    0x38(%rbp),%rdx
    48b2:	48 89 93 b0 00 00 00 	mov    %rdx,0xb0(%rbx)
    48b9:	49 8b 55 00          	mov    0x0(%r13),%rdx
    48bd:	48 89 13             	mov    %rdx,(%rbx)
    48c0:	49 8b 55 08          	mov    0x8(%r13),%rdx
    48c4:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    48c8:	49 8b 55 10          	mov    0x10(%r13),%rdx
    48cc:	48 89 53 10          	mov    %rdx,0x10(%rbx)
    48d0:	49 8b 55 18          	mov    0x18(%r13),%rdx
    48d4:	48 89 53 18          	mov    %rdx,0x18(%rbx)
    48d8:	49 8b 55 20          	mov    0x20(%r13),%rdx
    48dc:	48 89 53 20          	mov    %rdx,0x20(%rbx)
    48e0:	49 8b 55 28          	mov    0x28(%r13),%rdx
    48e4:	48 89 53 28          	mov    %rdx,0x28(%rbx)
    48e8:	49 8b 55 30          	mov    0x30(%r13),%rdx
    48ec:	48 89 53 30          	mov    %rdx,0x30(%rbx)
    48f0:	49 8b 55 38          	mov    0x38(%r13),%rdx
    48f4:	48 89 53 38          	mov    %rdx,0x38(%rbx)
    48f8:	49 8b 95 80 00 00 00 	mov    0x80(%r13),%rdx
    48ff:	48 89 93 80 00 00 00 	mov    %rdx,0x80(%rbx)
    4906:	49 8b 95 88 00 00 00 	mov    0x88(%r13),%rdx
    490d:	48 89 93 88 00 00 00 	mov    %rdx,0x88(%rbx)
    4914:	49 8b 75 40          	mov    0x40(%r13),%rsi
    4918:	48 89 73 40          	mov    %rsi,0x40(%rbx)
    491c:	49 8b 75 48          	mov    0x48(%r13),%rsi
    4920:	48 89 73 48          	mov    %rsi,0x48(%rbx)
    4924:	49 8b 75 50          	mov    0x50(%r13),%rsi
    4928:	48 89 73 50          	mov    %rsi,0x50(%rbx)
    492c:	49 8b 75 58          	mov    0x58(%r13),%rsi
    4930:	48 89 73 58          	mov    %rsi,0x58(%rbx)
    4934:	49 8b 75 60          	mov    0x60(%r13),%rsi
    4938:	48 89 73 60          	mov    %rsi,0x60(%rbx)
    493c:	49 8b 75 68          	mov    0x68(%r13),%rsi
    4940:	48 89 73 68          	mov    %rsi,0x68(%rbx)
    4944:	49 8b 75 70          	mov    0x70(%r13),%rsi
    4948:	48 89 73 70          	mov    %rsi,0x70(%rbx)
    494c:	49 8b 75 78          	mov    0x78(%r13),%rsi
    4950:	48 89 73 78          	mov    %rsi,0x78(%rbx)
    4954:	83 f8 01             	cmp    $0x1,%eax
    4957:	77 15                	ja     496e <trts_handle_exception+0x26e>
    4959:	49 8b 45 f0          	mov    -0x10(%r13),%rax
    495d:	48 89 83 98 00 00 00 	mov    %rax,0x98(%rbx)
    4964:	41 8b 45 f8          	mov    -0x8(%r13),%eax
    4968:	89 83 a0 00 00 00    	mov    %eax,0xa0(%rbx)
    496e:	85 c9                	test   %ecx,%ecx
    4970:	0f 85 99 00 00 00    	jne    4a0f <trts_handle_exception+0x30f>
    4976:	45 84 e4             	test   %r12b,%r12b
    4979:	0f 85 ec 00 00 00    	jne    4a6b <trts_handle_exception+0x36b>
    497f:	48 8d 05 7a f9 ff ff 	lea    -0x686(%rip),%rax        # 4300 <internal_handle_exception>
    4986:	4d 89 7d 20          	mov    %r15,0x20(%r13)
    498a:	49 89 85 88 00 00 00 	mov    %rax,0x88(%r13)
    4991:	49 89 5d 00          	mov    %rbx,0x0(%r13)
    4995:	49 89 5d 38          	mov    %rbx,0x38(%r13)
    4999:	48 8b 83 88 00 00 00 	mov    0x88(%rbx),%rax
    49a0:	48 89 43 f8          	mov    %rax,-0x8(%rbx)
    49a4:	31 c0                	xor    %eax,%eax
    49a6:	e9 c4 fd ff ff       	jmp    476f <trts_handle_exception+0x6f>
    49ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    49b0:	bf 03 00 00 00       	mov    $0x3,%edi
    49b5:	e8 64 81 00 00       	call   cb1e <set_enclave_state>
    49ba:	b8 09 10 00 00       	mov    $0x1009,%eax
    49bf:	e9 ab fd ff ff       	jmp    476f <trts_handle_exception+0x6f>
    49c4:	48 8d 15 19 c4 00 00 	lea    0xc419(%rip),%rdx        # 10de4 <g_aexnotify_supported>
    49cb:	49 8b 85 88 00 00 00 	mov    0x88(%r13),%rax
    49d2:	48 3b 05 07 c6 00 00 	cmp    0xc607(%rip),%rax        # 10fe0 <_GLOBAL_OFFSET_TABLE_+0x28>
    49d9:	8b 0a                	mov    (%rdx),%ecx
    49db:	74 6a                	je     4a47 <trts_handle_exception+0x347>
    49dd:	48 3b 05 f4 c5 00 00 	cmp    0xc5f4(%rip),%rax        # 10fd8 <_GLOBAL_OFFSET_TABLE_+0x20>
    49e4:	0f 84 8c 00 00 00    	je     4a76 <trts_handle_exception+0x376>
    49ea:	85 c9                	test   %ecx,%ecx
    49ec:	75 0e                	jne    49fc <trts_handle_exception+0x2fc>
    49ee:	41 80 bd a3 00 00 00 	cmpb   $0x0,0xa3(%r13)
    49f5:	00 
    49f6:	0f 89 64 fd ff ff    	jns    4760 <trts_handle_exception+0x60>
    49fc:	41 0f b6 85 a3 00 00 	movzbl 0xa3(%r13),%eax
    4a03:	00 
    4a04:	c0 e8 07             	shr    $0x7,%al
    4a07:	0f b6 c0             	movzbl %al,%eax
    4a0a:	e9 77 fe ff ff       	jmp    4886 <trts_handle_exception+0x186>
    4a0f:	48 89 53 f8          	mov    %rdx,-0x8(%rbx)
    4a13:	e8 b8 f8 ff ff       	call   42d0 <get_ssa_aexnotify>
    4a18:	48 8b 7d 58          	mov    0x58(%rbp),%rdi
    4a1c:	89 83 ac 00 00 00    	mov    %eax,0xac(%rbx)
    4a22:	e8 ca 7c 00 00       	call   c6f1 <restore_xregs>
    4a27:	83 bb ac 00 00 00 01 	cmpl   $0x1,0xac(%rbx)
    4a2e:	74 76                	je     4aa6 <trts_handle_exception+0x3a6>
    4a30:	48 8d 15 c9 f8 ff ff 	lea    -0x737(%rip),%rdx        # 4300 <internal_handle_exception>
    4a37:	4c 89 fe             	mov    %r15,%rsi
    4a3a:	48 89 df             	mov    %rbx,%rdi
    4a3d:	e8 77 85 00 00       	call   cfb9 <second_phase>
    4a42:	e9 19 fd ff ff       	jmp    4760 <trts_handle_exception+0x60>
    4a47:	49 83 7d 00 00       	cmpq   $0x0,0x0(%r13)
    4a4c:	75 8f                	jne    49dd <trts_handle_exception+0x2dd>
    4a4e:	48 83 c0 03          	add    $0x3,%rax
    4a52:	49 83 8d 80 00 00 00 	orq    $0x1,0x80(%r13)
    4a59:	01 
    4a5a:	45 89 f4             	mov    %r14d,%r12d
    4a5d:	49 89 85 88 00 00 00 	mov    %rax,0x88(%r13)
    4a64:	31 c0                	xor    %eax,%eax
    4a66:	e9 1b fe ff ff       	jmp    4886 <trts_handle_exception+0x186>
    4a6b:	48 89 53 f8          	mov    %rdx,-0x8(%rbx)
    4a6f:	31 c0                	xor    %eax,%eax
    4a71:	e9 f9 fc ff ff       	jmp    476f <trts_handle_exception+0x6f>
    4a76:	49 83 7d 00 08       	cmpq   $0x8,0x0(%r13)
    4a7b:	0f 85 69 ff ff ff    	jne    49ea <trts_handle_exception+0x2ea>
    4a81:	48 83 c0 03          	add    $0x3,%rax
    4a85:	49 83 8d 80 00 00 00 	orq    $0x40,0x80(%r13)
    4a8c:	40 
    4a8d:	45 89 f4             	mov    %r14d,%r12d
    4a90:	49 89 85 88 00 00 00 	mov    %rax,0x88(%r13)
    4a97:	31 c0                	xor    %eax,%eax
    4a99:	49 c7 45 00 01 00 00 	movq   $0x1,0x0(%r13)
    4aa0:	00 
    4aa1:	e9 e0 fd ff ff       	jmp    4886 <trts_handle_exception+0x186>
    4aa6:	31 ff                	xor    %edi,%edi
    4aa8:	e8 a3 e8 ff ff       	call   3350 <sgx_set_ssa_aexnotify>
    4aad:	eb 81                	jmp    4a30 <trts_handle_exception+0x330>
    4aaf:	90                   	nop

0000000000004ab0 <get_xfeature_state>:
    4ab0:	f3 0f 1e fa          	endbr64
    4ab4:	48 83 ec 08          	sub    $0x8,%rsp
    4ab8:	e8 33 73 00 00       	call   bdf0 <sgx_self_report>
    4abd:	31 d2                	xor    %edx,%edx
    4abf:	48 8b 40 38          	mov    0x38(%rax),%rax
    4ac3:	48 83 f8 03          	cmp    $0x3,%rax
    4ac7:	0f 95 c2             	setne  %dl
    4aca:	89 15 78 ed 00 00    	mov    %edx,0xed78(%rip)        # 13848 <g_xsave_enabled>
    4ad0:	48 83 c4 08          	add    $0x8,%rsp
    4ad4:	c3                   	ret
    4ad5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4adc:	00 00 00 
    4adf:	90                   	nop

0000000000004ae0 <has_text_relo>:
    4ae0:	85 d2                	test   %edx,%edx
    4ae2:	74 5b                	je     4b3f <has_text_relo+0x5f>
    4ae4:	89 d2                	mov    %edx,%edx
    4ae6:	48 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%rax
    4aed:	00 
    4aee:	48 29 d0             	sub    %rdx,%rax
    4af1:	48 8d 04 c6          	lea    (%rsi,%rax,8),%rax
    4af5:	eb 12                	jmp    4b09 <has_text_relo+0x29>
    4af7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    4afe:	00 00 
    4b00:	48 83 c6 38          	add    $0x38,%rsi
    4b04:	48 39 c6             	cmp    %rax,%rsi
    4b07:	74 36                	je     4b3f <has_text_relo+0x5f>
    4b09:	83 3e 02             	cmpl   $0x2,(%rsi)
    4b0c:	75 f2                	jne    4b00 <has_text_relo+0x20>
    4b0e:	48 8b 56 20          	mov    0x20(%rsi),%rdx
    4b12:	48 03 7e 18          	add    0x18(%rsi),%rdi
    4b16:	48 c1 ea 04          	shr    $0x4,%rdx
    4b1a:	74 23                	je     4b3f <has_text_relo+0x5f>
    4b1c:	48 c1 e2 04          	shl    $0x4,%rdx
    4b20:	48 01 fa             	add    %rdi,%rdx
    4b23:	eb 12                	jmp    4b37 <has_text_relo+0x57>
    4b25:	0f 1f 00             	nopl   (%rax)
    4b28:	48 83 f8 16          	cmp    $0x16,%rax
    4b2c:	74 1a                	je     4b48 <has_text_relo+0x68>
    4b2e:	48 83 c7 10          	add    $0x10,%rdi
    4b32:	48 39 fa             	cmp    %rdi,%rdx
    4b35:	74 08                	je     4b3f <has_text_relo+0x5f>
    4b37:	48 8b 07             	mov    (%rdi),%rax
    4b3a:	48 85 c0             	test   %rax,%rax
    4b3d:	75 e9                	jne    4b28 <has_text_relo+0x48>
    4b3f:	31 c0                	xor    %eax,%eax
    4b41:	c3                   	ret
    4b42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4b48:	b8 01 00 00 00       	mov    $0x1,%eax
    4b4d:	c3                   	ret
    4b4e:	66 90                	xchg   %ax,%ax

0000000000004b50 <do_relocs>:
    4b50:	49 89 d3             	mov    %rdx,%r11
    4b53:	48 8d 14 37          	lea    (%rdi,%rsi,1),%rdx
    4b57:	49 01 fb             	add    %rdi,%r11
    4b5a:	48 85 c9             	test   %rcx,%rcx
    4b5d:	0f 84 c2 01 00 00    	je     4d25 <do_relocs+0x1d5>
    4b63:	55                   	push   %rbp
    4b64:	49 89 c9             	mov    %rcx,%r9
    4b67:	31 f6                	xor    %esi,%esi
    4b69:	4c 8d 05 30 85 00 00 	lea    0x8530(%rip),%r8        # d0a0 <g_dyn_entry_table+0xa0>
    4b70:	53                   	push   %rbx
    4b71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4b78:	4c 8b 12             	mov    (%rdx),%r10
    4b7b:	48 8b 42 08          	mov    0x8(%rdx),%rax
    4b7f:	49 01 fa             	add    %rdi,%r10
    4b82:	89 c1                	mov    %eax,%ecx
    4b84:	83 f8 12             	cmp    $0x12,%eax
    4b87:	0f 87 85 00 00 00    	ja     4c12 <do_relocs+0xc2>
    4b8d:	49 63 0c 88          	movslq (%r8,%rcx,4),%rcx
    4b91:	4c 01 c1             	add    %r8,%rcx
    4b94:	3e ff e1             	notrack jmp *%rcx
    4b97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    4b9e:	00 00 
    4ba0:	48 c1 e8 20          	shr    $0x20,%rax
    4ba4:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
    4ba8:	49 8d 1c c3          	lea    (%r11,%rax,8),%rbx
    4bac:	0f b6 43 04          	movzbl 0x4(%rbx),%eax
    4bb0:	c0 e8 04             	shr    $0x4,%al
    4bb3:	3c 02                	cmp    $0x2,%al
    4bb5:	0f 84 05 01 00 00    	je     4cc0 <do_relocs+0x170>
    4bbb:	48 85 db             	test   %rbx,%rbx
    4bbe:	0f 84 8c 00 00 00    	je     4c50 <do_relocs+0x100>
    4bc4:	48 85 ff             	test   %rdi,%rdi
    4bc7:	74 49                	je     4c12 <do_relocs+0xc2>
    4bc9:	81 3f 7f 45 4c 46    	cmpl   $0x464c457f,(%rdi)
    4bcf:	75 41                	jne    4c12 <do_relocs+0xc2>
    4bd1:	66 83 7f 10 03       	cmpw   $0x3,0x10(%rdi)
    4bd6:	75 3a                	jne    4c12 <do_relocs+0xc2>
    4bd8:	48 89 f8             	mov    %rdi,%rax
    4bdb:	48 03 47 20          	add    0x20(%rdi),%rax
    4bdf:	74 31                	je     4c12 <do_relocs+0xc2>
    4be1:	0f b7 6f 38          	movzwl 0x38(%rdi),%ebp
    4be5:	66 85 ed             	test   %bp,%bp
    4be8:	74 28                	je     4c12 <do_relocs+0xc2>
    4bea:	83 ed 01             	sub    $0x1,%ebp
    4bed:	48 8d 0c ed 00 00 00 	lea    0x0(,%rbp,8),%rcx
    4bf4:	00 
    4bf5:	48 29 e9             	sub    %rbp,%rcx
    4bf8:	48 8d 4c c8 38       	lea    0x38(%rax,%rcx,8),%rcx
    4bfd:	0f 1f 00             	nopl   (%rax)
    4c00:	83 38 07             	cmpl   $0x7,(%rax)
    4c03:	0f 84 e7 00 00 00    	je     4cf0 <do_relocs+0x1a0>
    4c09:	48 83 c0 38          	add    $0x38,%rax
    4c0d:	48 39 c8             	cmp    %rcx,%rax
    4c10:	75 ee                	jne    4c00 <do_relocs+0xb0>
    4c12:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4c17:	5b                   	pop    %rbx
    4c18:	5d                   	pop    %rbp
    4c19:	c3                   	ret
    4c1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4c20:	48 c1 e8 20          	shr    $0x20,%rax
    4c24:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
    4c28:	49 8d 0c c3          	lea    (%r11,%rax,8),%rcx
    4c2c:	0f b6 41 04          	movzbl 0x4(%rcx),%eax
    4c30:	c0 e8 04             	shr    $0x4,%al
    4c33:	3c 02                	cmp    $0x2,%al
    4c35:	0f 84 95 00 00 00    	je     4cd0 <do_relocs+0x180>
    4c3b:	48 85 c9             	test   %rcx,%rcx
    4c3e:	74 10                	je     4c50 <do_relocs+0x100>
    4c40:	48 8b 42 10          	mov    0x10(%rdx),%rax
    4c44:	48 01 f8             	add    %rdi,%rax
    4c47:	48 03 41 08          	add    0x8(%rcx),%rax
    4c4b:	49 89 02             	mov    %rax,(%r10)
    4c4e:	66 90                	xchg   %ax,%ax
    4c50:	48 83 c6 01          	add    $0x1,%rsi
    4c54:	48 83 c2 18          	add    $0x18,%rdx
    4c58:	49 39 f1             	cmp    %rsi,%r9
    4c5b:	0f 85 17 ff ff ff    	jne    4b78 <do_relocs+0x28>
    4c61:	31 c0                	xor    %eax,%eax
    4c63:	5b                   	pop    %rbx
    4c64:	5d                   	pop    %rbp
    4c65:	c3                   	ret
    4c66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4c6d:	00 00 00 
    4c70:	48 c1 e8 20          	shr    $0x20,%rax
    4c74:	48 8d 04 40          	lea    (%rax,%rax,2),%rax
    4c78:	49 8d 0c c3          	lea    (%r11,%rax,8),%rcx
    4c7c:	0f b6 41 04          	movzbl 0x4(%rcx),%eax
    4c80:	c0 e8 04             	shr    $0x4,%al
    4c83:	3c 02                	cmp    $0x2,%al
    4c85:	74 59                	je     4ce0 <do_relocs+0x190>
    4c87:	48 85 c9             	test   %rcx,%rcx
    4c8a:	74 c4                	je     4c50 <do_relocs+0x100>
    4c8c:	48 8b 42 10          	mov    0x10(%rdx),%rax
    4c90:	48 03 41 08          	add    0x8(%rcx),%rax
    4c94:	49 89 02             	mov    %rax,(%r10)
    4c97:	eb b7                	jmp    4c50 <do_relocs+0x100>
    4c99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4ca0:	49 c7 02 01 00 00 00 	movq   $0x1,(%r10)
    4ca7:	eb a7                	jmp    4c50 <do_relocs+0x100>
    4ca9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4cb0:	48 8b 42 10          	mov    0x10(%rdx),%rax
    4cb4:	48 01 f8             	add    %rdi,%rax
    4cb7:	49 89 02             	mov    %rax,(%r10)
    4cba:	eb 94                	jmp    4c50 <do_relocs+0x100>
    4cbc:	0f 1f 40 00          	nopl   0x0(%rax)
    4cc0:	48 83 7b 08 00       	cmpq   $0x0,0x8(%rbx)
    4cc5:	0f 85 f0 fe ff ff    	jne    4bbb <do_relocs+0x6b>
    4ccb:	eb 83                	jmp    4c50 <do_relocs+0x100>
    4ccd:	0f 1f 00             	nopl   (%rax)
    4cd0:	48 83 79 08 00       	cmpq   $0x0,0x8(%rcx)
    4cd5:	0f 85 60 ff ff ff    	jne    4c3b <do_relocs+0xeb>
    4cdb:	e9 70 ff ff ff       	jmp    4c50 <do_relocs+0x100>
    4ce0:	48 83 79 08 00       	cmpq   $0x0,0x8(%rcx)
    4ce5:	75 a0                	jne    4c87 <do_relocs+0x137>
    4ce7:	e9 64 ff ff ff       	jmp    4c50 <do_relocs+0x100>
    4cec:	0f 1f 40 00          	nopl   0x0(%rax)
    4cf0:	48 8b 48 28          	mov    0x28(%rax),%rcx
    4cf4:	48 8b 40 30          	mov    0x30(%rax),%rax
    4cf8:	48 83 f8 01          	cmp    $0x1,%rax
    4cfc:	76 0b                	jbe    4d09 <do_relocs+0x1b9>
    4cfe:	48 8d 4c 01 ff       	lea    -0x1(%rcx,%rax,1),%rcx
    4d03:	48 f7 d8             	neg    %rax
    4d06:	48 21 c1             	and    %rax,%rcx
    4d09:	48 85 c9             	test   %rcx,%rcx
    4d0c:	0f 84 00 ff ff ff    	je     4c12 <do_relocs+0xc2>
    4d12:	48 8b 42 10          	mov    0x10(%rdx),%rax
    4d16:	48 03 43 08          	add    0x8(%rbx),%rax
    4d1a:	48 29 c8             	sub    %rcx,%rax
    4d1d:	49 89 02             	mov    %rax,(%r10)
    4d20:	e9 2b ff ff ff       	jmp    4c50 <do_relocs+0x100>
    4d25:	31 c0                	xor    %eax,%eax
    4d27:	c3                   	ret
    4d28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    4d2f:	00 

0000000000004d30 <relocate_enclave>:
    4d30:	f3 0f 1e fa          	endbr64
    4d34:	48 85 ff             	test   %rdi,%rdi
    4d37:	0f 84 d3 01 00 00    	je     4f10 <relocate_enclave+0x1e0>
    4d3d:	81 3f 7f 45 4c 46    	cmpl   $0x464c457f,(%rdi)
    4d43:	0f 85 c7 01 00 00    	jne    4f10 <relocate_enclave+0x1e0>
    4d49:	66 83 7f 10 03       	cmpw   $0x3,0x10(%rdi)
    4d4e:	0f 85 bc 01 00 00    	jne    4f10 <relocate_enclave+0x1e0>
    4d54:	41 57                	push   %r15
    4d56:	41 56                	push   %r14
    4d58:	41 55                	push   %r13
    4d5a:	41 54                	push   %r12
    4d5c:	55                   	push   %rbp
    4d5d:	53                   	push   %rbx
    4d5e:	48 89 fb             	mov    %rdi,%rbx
    4d61:	48 83 ec 08          	sub    $0x8,%rsp
    4d65:	48 03 5f 20          	add    0x20(%rdi),%rbx
    4d69:	0f 84 fd 00 00 00    	je     4e6c <relocate_enclave+0x13c>
    4d6f:	0f b7 57 38          	movzwl 0x38(%rdi),%edx
    4d73:	66 85 d2             	test   %dx,%dx
    4d76:	0f 84 c4 01 00 00    	je     4f40 <relocate_enclave+0x210>
    4d7c:	83 ea 01             	sub    $0x1,%edx
    4d7f:	48 8d 2d 66 83 00 00 	lea    0x8366(%rip),%rbp        # d0ec <g_dyn_entry_table+0xec>
    4d86:	48 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%rax
    4d8d:	00 
    4d8e:	48 29 d0             	sub    %rdx,%rax
    4d91:	4c 8d 64 c3 38       	lea    0x38(%rbx,%rax,8),%r12
    4d96:	eb 15                	jmp    4dad <relocate_enclave+0x7d>
    4d98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    4d9f:	00 
    4da0:	48 83 c3 38          	add    $0x38,%rbx
    4da4:	49 39 dc             	cmp    %rbx,%r12
    4da7:	0f 84 93 01 00 00    	je     4f40 <relocate_enclave+0x210>
    4dad:	83 3b 02             	cmpl   $0x2,(%rbx)
    4db0:	75 ee                	jne    4da0 <relocate_enclave+0x70>
    4db2:	48 8b 53 18          	mov    0x18(%rbx),%rdx
    4db6:	4c 8b 53 20          	mov    0x20(%rbx),%r10
    4dba:	48 01 fa             	add    %rdi,%rdx
    4dbd:	49 c1 ea 04          	shr    $0x4,%r10
    4dc1:	74 dd                	je     4da0 <relocate_enclave+0x70>
    4dc3:	49 c1 e2 04          	shl    $0x4,%r10
    4dc7:	45 31 f6             	xor    %r14d,%r14d
    4dca:	45 31 ed             	xor    %r13d,%r13d
    4dcd:	31 c0                	xor    %eax,%eax
    4dcf:	49 01 d2             	add    %rdx,%r10
    4dd2:	45 31 ff             	xor    %r15d,%r15d
    4dd5:	45 31 c9             	xor    %r9d,%r9d
    4dd8:	45 31 c0             	xor    %r8d,%r8d
    4ddb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4de0:	48 8b 32             	mov    (%rdx),%rsi
    4de3:	48 85 f6             	test   %rsi,%rsi
    4de6:	74 30                	je     4e18 <relocate_enclave+0xe8>
    4de8:	48 83 fe 17          	cmp    $0x17,%rsi
    4dec:	77 1a                	ja     4e08 <relocate_enclave+0xd8>
    4dee:	48 63 74 b5 00       	movslq 0x0(%rbp,%rsi,4),%rsi
    4df3:	48 01 ee             	add    %rbp,%rsi
    4df6:	3e ff e6             	notrack jmp *%rsi
    4df9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4e00:	4c 8b 42 08          	mov    0x8(%rdx),%r8
    4e04:	0f 1f 40 00          	nopl   0x0(%rax)
    4e08:	48 83 c2 10          	add    $0x10,%rdx
    4e0c:	49 39 d2             	cmp    %rdx,%r10
    4e0f:	75 cf                	jne    4de0 <relocate_enclave+0xb0>
    4e11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4e18:	4d 85 c9             	test   %r9,%r9
    4e1b:	0f 84 ff 00 00 00    	je     4f20 <relocate_enclave+0x1f0>
    4e21:	4d 85 ed             	test   %r13,%r13
    4e24:	74 46                	je     4e6c <relocate_enclave+0x13c>
    4e26:	31 d2                	xor    %edx,%edx
    4e28:	4c 89 ce             	mov    %r9,%rsi
    4e2b:	4c 89 04 24          	mov    %r8,(%rsp)
    4e2f:	49 f7 f5             	div    %r13
    4e32:	4c 89 c2             	mov    %r8,%rdx
    4e35:	48 89 c1             	mov    %rax,%rcx
    4e38:	e8 13 fd ff ff       	call   4b50 <do_relocs>
    4e3d:	85 c0                	test   %eax,%eax
    4e3f:	75 2b                	jne    4e6c <relocate_enclave+0x13c>
    4e41:	4d 85 ff             	test   %r15,%r15
    4e44:	4c 8b 04 24          	mov    (%rsp),%r8
    4e48:	0f 84 52 ff ff ff    	je     4da0 <relocate_enclave+0x70>
    4e4e:	31 d2                	xor    %edx,%edx
    4e50:	4c 89 f0             	mov    %r14,%rax
    4e53:	4c 89 fe             	mov    %r15,%rsi
    4e56:	49 f7 f5             	div    %r13
    4e59:	4c 89 c2             	mov    %r8,%rdx
    4e5c:	48 89 c1             	mov    %rax,%rcx
    4e5f:	e8 ec fc ff ff       	call   4b50 <do_relocs>
    4e64:	85 c0                	test   %eax,%eax
    4e66:	0f 84 34 ff ff ff    	je     4da0 <relocate_enclave+0x70>
    4e6c:	48 83 c4 08          	add    $0x8,%rsp
    4e70:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4e75:	5b                   	pop    %rbx
    4e76:	5d                   	pop    %rbp
    4e77:	41 5c                	pop    %r12
    4e79:	41 5d                	pop    %r13
    4e7b:	41 5e                	pop    %r14
    4e7d:	41 5f                	pop    %r15
    4e7f:	c3                   	ret
    4e80:	4c 8b 7a 08          	mov    0x8(%rdx),%r15
    4e84:	48 83 c2 10          	add    $0x10,%rdx
    4e88:	49 39 d2             	cmp    %rdx,%r10
    4e8b:	0f 85 4f ff ff ff    	jne    4de0 <relocate_enclave+0xb0>
    4e91:	eb 85                	jmp    4e18 <relocate_enclave+0xe8>
    4e93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    4e98:	48 8b 42 08          	mov    0x8(%rdx),%rax
    4e9c:	48 83 c2 10          	add    $0x10,%rdx
    4ea0:	49 39 d2             	cmp    %rdx,%r10
    4ea3:	0f 85 37 ff ff ff    	jne    4de0 <relocate_enclave+0xb0>
    4ea9:	e9 6a ff ff ff       	jmp    4e18 <relocate_enclave+0xe8>
    4eae:	66 90                	xchg   %ax,%ax
    4eb0:	4c 8b 4a 08          	mov    0x8(%rdx),%r9
    4eb4:	48 83 c2 10          	add    $0x10,%rdx
    4eb8:	49 39 d2             	cmp    %rdx,%r10
    4ebb:	0f 85 1f ff ff ff    	jne    4de0 <relocate_enclave+0xb0>
    4ec1:	e9 52 ff ff ff       	jmp    4e18 <relocate_enclave+0xe8>
    4ec6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4ecd:	00 00 00 
    4ed0:	4c 8b 72 08          	mov    0x8(%rdx),%r14
    4ed4:	48 83 c2 10          	add    $0x10,%rdx
    4ed8:	49 39 d2             	cmp    %rdx,%r10
    4edb:	0f 85 ff fe ff ff    	jne    4de0 <relocate_enclave+0xb0>
    4ee1:	e9 32 ff ff ff       	jmp    4e18 <relocate_enclave+0xe8>
    4ee6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4eed:	00 00 00 
    4ef0:	4c 8b 6a 08          	mov    0x8(%rdx),%r13
    4ef4:	48 83 c2 10          	add    $0x10,%rdx
    4ef8:	49 39 d2             	cmp    %rdx,%r10
    4efb:	0f 85 df fe ff ff    	jne    4de0 <relocate_enclave+0xb0>
    4f01:	e9 12 ff ff ff       	jmp    4e18 <relocate_enclave+0xe8>
    4f06:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4f0d:	00 00 00 
    4f10:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4f15:	c3                   	ret
    4f16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4f1d:	00 00 00 
    4f20:	4d 85 ff             	test   %r15,%r15
    4f23:	0f 84 77 fe ff ff    	je     4da0 <relocate_enclave+0x70>
    4f29:	4d 85 ed             	test   %r13,%r13
    4f2c:	0f 84 3a ff ff ff    	je     4e6c <relocate_enclave+0x13c>
    4f32:	e9 17 ff ff ff       	jmp    4e4e <relocate_enclave+0x11e>
    4f37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    4f3e:	00 00 
    4f40:	48 83 c4 08          	add    $0x8,%rsp
    4f44:	31 c0                	xor    %eax,%eax
    4f46:	5b                   	pop    %rbx
    4f47:	5d                   	pop    %rbp
    4f48:	41 5c                	pop    %r12
    4f4a:	41 5d                	pop    %r13
    4f4c:	41 5e                	pop    %r14
    4f4e:	41 5f                	pop    %r15
    4f50:	c3                   	ret
    4f51:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4f58:	00 00 00 
    4f5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000004f60 <get_aligned_enclave_segments_size>:
    4f60:	f3 0f 1e fa          	endbr64
    4f64:	31 c0                	xor    %eax,%eax
    4f66:	48 85 ff             	test   %rdi,%rdi
    4f69:	0f 84 91 00 00 00    	je     5000 <get_aligned_enclave_segments_size+0xa0>
    4f6f:	81 3f 7f 45 4c 46    	cmpl   $0x464c457f,(%rdi)
    4f75:	0f 85 85 00 00 00    	jne    5000 <get_aligned_enclave_segments_size+0xa0>
    4f7b:	66 83 7f 10 03       	cmpw   $0x3,0x10(%rdi)
    4f80:	75 7e                	jne    5000 <get_aligned_enclave_segments_size+0xa0>
    4f82:	48 89 f8             	mov    %rdi,%rax
    4f85:	48 03 47 20          	add    0x20(%rdi),%rax
    4f89:	48 89 c2             	mov    %rax,%rdx
    4f8c:	74 72                	je     5000 <get_aligned_enclave_segments_size+0xa0>
    4f8e:	0f b7 4f 38          	movzwl 0x38(%rdi),%ecx
    4f92:	66 85 c9             	test   %cx,%cx
    4f95:	74 6a                	je     5001 <get_aligned_enclave_segments_size+0xa1>
    4f97:	83 e9 01             	sub    $0x1,%ecx
    4f9a:	31 f6                	xor    %esi,%esi
    4f9c:	31 ff                	xor    %edi,%edi
    4f9e:	48 8d 04 cd 00 00 00 	lea    0x0(,%rcx,8),%rax
    4fa5:	00 
    4fa6:	48 29 c8             	sub    %rcx,%rax
    4fa9:	48 8d 44 c2 38       	lea    0x38(%rdx,%rax,8),%rax
    4fae:	eb 09                	jmp    4fb9 <get_aligned_enclave_segments_size+0x59>
    4fb0:	48 83 c2 38          	add    $0x38,%rdx
    4fb4:	48 39 d0             	cmp    %rdx,%rax
    4fb7:	74 27                	je     4fe0 <get_aligned_enclave_segments_size+0x80>
    4fb9:	83 3a 01             	cmpl   $0x1,(%rdx)
    4fbc:	75 f2                	jne    4fb0 <get_aligned_enclave_segments_size+0x50>
    4fbe:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
    4fc2:	48 39 ce             	cmp    %rcx,%rsi
    4fc5:	73 e9                	jae    4fb0 <get_aligned_enclave_segments_size+0x50>
    4fc7:	48 89 d7             	mov    %rdx,%rdi
    4fca:	48 83 c2 38          	add    $0x38,%rdx
    4fce:	48 89 ce             	mov    %rcx,%rsi
    4fd1:	48 39 d0             	cmp    %rdx,%rax
    4fd4:	75 e3                	jne    4fb9 <get_aligned_enclave_segments_size+0x59>
    4fd6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    4fdd:	00 00 00 
    4fe0:	31 c0                	xor    %eax,%eax
    4fe2:	48 85 ff             	test   %rdi,%rdi
    4fe5:	74 19                	je     5000 <get_aligned_enclave_segments_size+0xa0>
    4fe7:	48 8b 47 28          	mov    0x28(%rdi),%rax
    4feb:	48 03 47 10          	add    0x10(%rdi),%rax
    4fef:	48 05 ff 0f 00 00    	add    $0xfff,%rax
    4ff5:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
    4ffb:	c3                   	ret
    4ffc:	0f 1f 40 00          	nopl   0x0(%rax)
    5000:	c3                   	ret
    5001:	31 c0                	xor    %eax,%eax
    5003:	c3                   	ret
    5004:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    500b:	00 00 00 
    500e:	66 90                	xchg   %ax,%ax

0000000000005010 <elf_tls_info>:
    5010:	f3 0f 1e fa          	endbr64
    5014:	49 89 f0             	mov    %rsi,%r8
    5017:	48 89 f9             	mov    %rdi,%rcx
    501a:	48 89 d6             	mov    %rdx,%rsi
    501d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    5022:	48 85 ff             	test   %rdi,%rdi
    5025:	74 7e                	je     50a5 <elf_tls_info+0x95>
    5027:	81 3f 7f 45 4c 46    	cmpl   $0x464c457f,(%rdi)
    502d:	75 75                	jne    50a4 <elf_tls_info+0x94>
    502f:	66 83 7f 10 03       	cmpw   $0x3,0x10(%rdi)
    5034:	75 6e                	jne    50a4 <elf_tls_info+0x94>
    5036:	48 8b 47 20          	mov    0x20(%rdi),%rax
    503a:	48 01 f8             	add    %rdi,%rax
    503d:	4d 85 c0             	test   %r8,%r8
    5040:	0f 94 c2             	sete   %dl
    5043:	48 85 f6             	test   %rsi,%rsi
    5046:	40 0f 94 c7          	sete   %dil
    504a:	40 08 fa             	or     %dil,%dl
    504d:	75 50                	jne    509f <elf_tls_info+0x8f>
    504f:	48 85 c0             	test   %rax,%rax
    5052:	74 4b                	je     509f <elf_tls_info+0x8f>
    5054:	0f b7 79 38          	movzwl 0x38(%rcx),%edi
    5058:	49 c7 00 00 00 00 00 	movq   $0x0,(%r8)
    505f:	48 c7 06 00 00 00 00 	movq   $0x0,(%rsi)
    5066:	66 85 ff             	test   %di,%di
    5069:	74 31                	je     509c <elf_tls_info+0x8c>
    506b:	83 ef 01             	sub    $0x1,%edi
    506e:	48 8d 14 fd 00 00 00 	lea    0x0(,%rdi,8),%rdx
    5075:	00 
    5076:	48 29 fa             	sub    %rdi,%rdx
    5079:	48 8d 54 d0 38       	lea    0x38(%rax,%rdx,8),%rdx
    507e:	eb 09                	jmp    5089 <elf_tls_info+0x79>
    5080:	48 83 c0 38          	add    $0x38,%rax
    5084:	48 39 d0             	cmp    %rdx,%rax
    5087:	74 13                	je     509c <elf_tls_info+0x8c>
    5089:	83 38 07             	cmpl   $0x7,(%rax)
    508c:	75 f2                	jne    5080 <elf_tls_info+0x70>
    508e:	48 03 48 10          	add    0x10(%rax),%rcx
    5092:	49 89 08             	mov    %rcx,(%r8)
    5095:	48 8b 40 20          	mov    0x20(%rax),%rax
    5099:	48 89 06             	mov    %rax,(%rsi)
    509c:	31 c0                	xor    %eax,%eax
    509e:	c3                   	ret
    509f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    50a4:	c3                   	ret
    50a5:	c3                   	ret
    50a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    50ad:	00 00 00 

00000000000050b0 <elf_get_init_array>:
    50b0:	f3 0f 1e fa          	endbr64
    50b4:	49 89 f8             	mov    %rdi,%r8
    50b7:	49 89 f1             	mov    %rsi,%r9
    50ba:	49 89 d2             	mov    %rdx,%r10
    50bd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    50c2:	48 85 ff             	test   %rdi,%rdi
    50c5:	0f 84 c8 00 00 00    	je     5193 <elf_get_init_array+0xe3>
    50cb:	81 3f 7f 45 4c 46    	cmpl   $0x464c457f,(%rdi)
    50d1:	0f 85 b6 00 00 00    	jne    518d <elf_get_init_array+0xdd>
    50d7:	66 83 7f 10 03       	cmpw   $0x3,0x10(%rdi)
    50dc:	0f 85 ab 00 00 00    	jne    518d <elf_get_init_array+0xdd>
    50e2:	48 8b 57 20          	mov    0x20(%rdi),%rdx
    50e6:	48 01 fa             	add    %rdi,%rdx
    50e9:	48 85 f6             	test   %rsi,%rsi
    50ec:	0f 94 c0             	sete   %al
    50ef:	4d 85 d2             	test   %r10,%r10
    50f2:	0f 94 c1             	sete   %cl
    50f5:	08 c8                	or     %cl,%al
    50f7:	0f 85 8b 00 00 00    	jne    5188 <elf_get_init_array+0xd8>
    50fd:	48 85 d2             	test   %rdx,%rdx
    5100:	0f 84 82 00 00 00    	je     5188 <elf_get_init_array+0xd8>
    5106:	0f b7 4f 38          	movzwl 0x38(%rdi),%ecx
    510a:	48 c7 06 00 00 00 00 	movq   $0x0,(%rsi)
    5111:	49 c7 02 00 00 00 00 	movq   $0x0,(%r10)
    5118:	66 85 c9             	test   %cx,%cx
    511b:	74 73                	je     5190 <elf_get_init_array+0xe0>
    511d:	83 e9 01             	sub    $0x1,%ecx
    5120:	48 8d 04 cd 00 00 00 	lea    0x0(,%rcx,8),%rax
    5127:	00 
    5128:	48 29 c8             	sub    %rcx,%rax
    512b:	48 8d 7c c2 38       	lea    0x38(%rdx,%rax,8),%rdi
    5130:	eb 0f                	jmp    5141 <elf_get_init_array+0x91>
    5132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5138:	48 83 c2 38          	add    $0x38,%rdx
    513c:	48 39 fa             	cmp    %rdi,%rdx
    513f:	74 4f                	je     5190 <elf_get_init_array+0xe0>
    5141:	83 3a 02             	cmpl   $0x2,(%rdx)
    5144:	75 f2                	jne    5138 <elf_get_init_array+0x88>
    5146:	48 8b 42 18          	mov    0x18(%rdx),%rax
    514a:	48 8b 72 20          	mov    0x20(%rdx),%rsi
    514e:	4c 01 c0             	add    %r8,%rax
    5151:	48 c1 ee 04          	shr    $0x4,%rsi
    5155:	74 e1                	je     5138 <elf_get_init_array+0x88>
    5157:	48 c1 e6 04          	shl    $0x4,%rsi
    515b:	48 01 c6             	add    %rax,%rsi
    515e:	eb 16                	jmp    5176 <elf_get_init_array+0xc6>
    5160:	48 83 f9 1b          	cmp    $0x1b,%rcx
    5164:	75 07                	jne    516d <elf_get_init_array+0xbd>
    5166:	48 8b 48 08          	mov    0x8(%rax),%rcx
    516a:	49 89 0a             	mov    %rcx,(%r10)
    516d:	48 83 c0 10          	add    $0x10,%rax
    5171:	48 39 c6             	cmp    %rax,%rsi
    5174:	74 c2                	je     5138 <elf_get_init_array+0x88>
    5176:	48 8b 08             	mov    (%rax),%rcx
    5179:	48 83 f9 19          	cmp    $0x19,%rcx
    517d:	75 e1                	jne    5160 <elf_get_init_array+0xb0>
    517f:	48 8b 48 08          	mov    0x8(%rax),%rcx
    5183:	49 89 09             	mov    %rcx,(%r9)
    5186:	eb e5                	jmp    516d <elf_get_init_array+0xbd>
    5188:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    518d:	c3                   	ret
    518e:	66 90                	xchg   %ax,%ax
    5190:	31 c0                	xor    %eax,%eax
    5192:	c3                   	ret
    5193:	c3                   	ret
    5194:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    519b:	00 00 00 
    519e:	66 90                	xchg   %ax,%ax

00000000000051a0 <elf_get_uninit_array>:
    51a0:	f3 0f 1e fa          	endbr64
    51a4:	49 89 f8             	mov    %rdi,%r8
    51a7:	49 89 f1             	mov    %rsi,%r9
    51aa:	49 89 d2             	mov    %rdx,%r10
    51ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    51b2:	48 85 ff             	test   %rdi,%rdi
    51b5:	0f 84 c8 00 00 00    	je     5283 <elf_get_uninit_array+0xe3>
    51bb:	81 3f 7f 45 4c 46    	cmpl   $0x464c457f,(%rdi)
    51c1:	0f 85 b6 00 00 00    	jne    527d <elf_get_uninit_array+0xdd>
    51c7:	66 83 7f 10 03       	cmpw   $0x3,0x10(%rdi)
    51cc:	0f 85 ab 00 00 00    	jne    527d <elf_get_uninit_array+0xdd>
    51d2:	48 8b 57 20          	mov    0x20(%rdi),%rdx
    51d6:	48 01 fa             	add    %rdi,%rdx
    51d9:	48 85 f6             	test   %rsi,%rsi
    51dc:	0f 94 c0             	sete   %al
    51df:	4d 85 d2             	test   %r10,%r10
    51e2:	0f 94 c1             	sete   %cl
    51e5:	08 c8                	or     %cl,%al
    51e7:	0f 85 8b 00 00 00    	jne    5278 <elf_get_uninit_array+0xd8>
    51ed:	48 85 d2             	test   %rdx,%rdx
    51f0:	0f 84 82 00 00 00    	je     5278 <elf_get_uninit_array+0xd8>
    51f6:	0f b7 4f 38          	movzwl 0x38(%rdi),%ecx
    51fa:	48 c7 06 00 00 00 00 	movq   $0x0,(%rsi)
    5201:	49 c7 02 00 00 00 00 	movq   $0x0,(%r10)
    5208:	66 85 c9             	test   %cx,%cx
    520b:	74 73                	je     5280 <elf_get_uninit_array+0xe0>
    520d:	83 e9 01             	sub    $0x1,%ecx
    5210:	48 8d 04 cd 00 00 00 	lea    0x0(,%rcx,8),%rax
    5217:	00 
    5218:	48 29 c8             	sub    %rcx,%rax
    521b:	48 8d 7c c2 38       	lea    0x38(%rdx,%rax,8),%rdi
    5220:	eb 0f                	jmp    5231 <elf_get_uninit_array+0x91>
    5222:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5228:	48 83 c2 38          	add    $0x38,%rdx
    522c:	48 39 fa             	cmp    %rdi,%rdx
    522f:	74 4f                	je     5280 <elf_get_uninit_array+0xe0>
    5231:	83 3a 02             	cmpl   $0x2,(%rdx)
    5234:	75 f2                	jne    5228 <elf_get_uninit_array+0x88>
    5236:	48 8b 42 18          	mov    0x18(%rdx),%rax
    523a:	48 8b 72 20          	mov    0x20(%rdx),%rsi
    523e:	4c 01 c0             	add    %r8,%rax
    5241:	48 c1 ee 04          	shr    $0x4,%rsi
    5245:	74 e1                	je     5228 <elf_get_uninit_array+0x88>
    5247:	48 c1 e6 04          	shl    $0x4,%rsi
    524b:	48 01 c6             	add    %rax,%rsi
    524e:	eb 16                	jmp    5266 <elf_get_uninit_array+0xc6>
    5250:	48 83 f9 1c          	cmp    $0x1c,%rcx
    5254:	75 07                	jne    525d <elf_get_uninit_array+0xbd>
    5256:	48 8b 48 08          	mov    0x8(%rax),%rcx
    525a:	49 89 0a             	mov    %rcx,(%r10)
    525d:	48 83 c0 10          	add    $0x10,%rax
    5261:	48 39 c6             	cmp    %rax,%rsi
    5264:	74 c2                	je     5228 <elf_get_uninit_array+0x88>
    5266:	48 8b 08             	mov    (%rax),%rcx
    5269:	48 83 f9 1a          	cmp    $0x1a,%rcx
    526d:	75 e1                	jne    5250 <elf_get_uninit_array+0xb0>
    526f:	48 8b 48 08          	mov    0x8(%rax),%rcx
    5273:	49 89 09             	mov    %rcx,(%r9)
    5276:	eb e5                	jmp    525d <elf_get_uninit_array+0xbd>
    5278:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    527d:	c3                   	ret
    527e:	66 90                	xchg   %ax,%ax
    5280:	31 c0                	xor    %eax,%eax
    5282:	c3                   	ret
    5283:	c3                   	ret
    5284:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    528b:	00 00 00 
    528e:	66 90                	xchg   %ax,%ax

0000000000005290 <is_shared_object>:
    5290:	f3 0f 1e fa          	endbr64
    5294:	31 c0                	xor    %eax,%eax
    5296:	48 85 ff             	test   %rdi,%rdi
    5299:	74 1d                	je     52b8 <is_shared_object+0x28>
    529b:	81 3f 7f 45 4c 46    	cmpl   $0x464c457f,(%rdi)
    52a1:	75 15                	jne    52b8 <is_shared_object+0x28>
    52a3:	66 83 7f 10 03       	cmpw   $0x3,0x10(%rdi)
    52a8:	75 0e                	jne    52b8 <is_shared_object+0x28>
    52aa:	31 c0                	xor    %eax,%eax
    52ac:	48 03 7f 20          	add    0x20(%rdi),%rdi
    52b0:	0f 95 c0             	setne  %al
    52b3:	c3                   	ret
    52b4:	0f 1f 40 00          	nopl   0x0(%rax)
    52b8:	c3                   	ret
    52b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000052c0 <__relocate_fips_module>:
    52c0:	f3 0f 1e fa          	endbr64
    52c4:	31 c0                	xor    %eax,%eax
    52c6:	c3                   	ret
    52c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    52ce:	00 00 

00000000000052d0 <change_protection>:
    52d0:	f3 0f 1e fa          	endbr64
    52d4:	48 85 ff             	test   %rdi,%rdi
    52d7:	0f 84 be 01 00 00    	je     549b <change_protection+0x1cb>
    52dd:	41 56                	push   %r14
    52df:	41 55                	push   %r13
    52e1:	49 89 fd             	mov    %rdi,%r13
    52e4:	41 54                	push   %r12
    52e6:	55                   	push   %rbp
    52e7:	53                   	push   %rbx
    52e8:	81 3f 7f 45 4c 46    	cmpl   $0x464c457f,(%rdi)
    52ee:	0f 85 bc 00 00 00    	jne    53b0 <change_protection+0xe0>
    52f4:	66 83 7f 10 03       	cmpw   $0x3,0x10(%rdi)
    52f9:	0f 85 b1 00 00 00    	jne    53b0 <change_protection+0xe0>
    52ff:	48 89 fb             	mov    %rdi,%rbx
    5302:	48 03 5f 20          	add    0x20(%rdi),%rbx
    5306:	0f 84 a4 00 00 00    	je     53b0 <change_protection+0xe0>
    530c:	0f b7 57 38          	movzwl 0x38(%rdi),%edx
    5310:	48 89 de             	mov    %rbx,%rsi
    5313:	89 d1                	mov    %edx,%ecx
    5315:	e8 c6 f7 ff ff       	call   4ae0 <has_text_relo>
    531a:	41 89 c6             	mov    %eax,%r14d
    531d:	66 85 c9             	test   %cx,%cx
    5320:	0f 84 ea 00 00 00    	je     5410 <change_protection+0x140>
    5326:	49 bc ff ff ff ff 02 	movabs $0x2ffffffff,%r12
    532d:	00 00 00 
    5330:	31 ed                	xor    %ebp,%ebp
    5332:	eb 18                	jmp    534c <change_protection+0x7c>
    5334:	0f 1f 40 00          	nopl   0x0(%rax)
    5338:	41 0f b7 45 38       	movzwl 0x38(%r13),%eax
    533d:	83 c5 01             	add    $0x1,%ebp
    5340:	48 83 c3 38          	add    $0x38,%rbx
    5344:	39 c5                	cmp    %eax,%ebp
    5346:	0f 83 c4 00 00 00    	jae    5410 <change_protection+0x140>
    534c:	45 85 f6             	test   %r14d,%r14d
    534f:	74 0c                	je     535d <change_protection+0x8d>
    5351:	48 8b 03             	mov    (%rbx),%rax
    5354:	4c 21 e0             	and    %r12,%rax
    5357:	48 83 f8 01          	cmp    $0x1,%rax
    535b:	74 63                	je     53c0 <change_protection+0xf0>
    535d:	81 3b 52 e5 74 64    	cmpl   $0x6474e552,(%rbx)
    5363:	75 d3                	jne    5338 <change_protection+0x68>
    5365:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    5369:	48 8b 73 28          	mov    0x28(%rbx),%rsi
    536d:	48 01 fe             	add    %rdi,%rsi
    5370:	48 89 f8             	mov    %rdi,%rax
    5373:	48 81 c6 ff 0f 00 00 	add    $0xfff,%rsi
    537a:	48 31 f0             	xor    %rsi,%rax
    537d:	48 3d ff 0f 00 00    	cmp    $0xfff,%rax
    5383:	76 b3                	jbe    5338 <change_protection+0x68>
    5385:	48 81 e7 00 f0 ff ff 	and    $0xfffffffffffff000,%rdi
    538c:	48 81 e6 00 f0 ff ff 	and    $0xfffffffffffff000,%rsi
    5393:	ba 01 00 00 00       	mov    $0x1,%edx
    5398:	48 29 fe             	sub    %rdi,%rsi
    539b:	4c 01 ef             	add    %r13,%rdi
    539e:	e8 2d 29 00 00       	call   7cd0 <mm_modify_permissions>
    53a3:	85 c0                	test   %eax,%eax
    53a5:	74 91                	je     5338 <change_protection+0x68>
    53a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    53ae:	00 00 
    53b0:	b8 01 00 00 00       	mov    $0x1,%eax
    53b5:	5b                   	pop    %rbx
    53b6:	5d                   	pop    %rbp
    53b7:	41 5c                	pop    %r12
    53b9:	41 5d                	pop    %r13
    53bb:	41 5e                	pop    %r14
    53bd:	c3                   	ret
    53be:	66 90                	xchg   %ax,%ax
    53c0:	48 8b 43 10          	mov    0x10(%rbx),%rax
    53c4:	8b 4b 04             	mov    0x4(%rbx),%ecx
    53c7:	48 89 c7             	mov    %rax,%rdi
    53ca:	89 ca                	mov    %ecx,%edx
    53cc:	48 03 43 28          	add    0x28(%rbx),%rax
    53d0:	c1 e9 02             	shr    $0x2,%ecx
    53d3:	83 e2 01             	and    $0x1,%edx
    53d6:	48 8d b0 ff 0f 00 00 	lea    0xfff(%rax),%rsi
    53dd:	48 81 e7 00 f0 ff ff 	and    $0xfffffffffffff000,%rdi
    53e4:	83 e1 01             	and    $0x1,%ecx
    53e7:	48 c1 e2 02          	shl    $0x2,%rdx
    53eb:	48 81 e6 00 f0 ff ff 	and    $0xfffffffffffff000,%rsi
    53f2:	48 29 fe             	sub    %rdi,%rsi
    53f5:	09 ca                	or     %ecx,%edx
    53f7:	4c 01 ef             	add    %r13,%rdi
    53fa:	e8 d1 28 00 00       	call   7cd0 <mm_modify_permissions>
    53ff:	85 c0                	test   %eax,%eax
    5401:	0f 84 56 ff ff ff    	je     535d <change_protection+0x8d>
    5407:	eb a7                	jmp    53b0 <change_protection+0xe0>
    5409:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5410:	8b 05 a2 de 00 00    	mov    0xdea2(%rip),%eax        # 132b8 <g_global_data+0x158>
    5416:	85 c0                	test   %eax,%eax
    5418:	74 9b                	je     53b5 <change_protection+0xe5>
    541a:	31 d2                	xor    %edx,%edx
    541c:	48 8d 3d 3d dd 00 00 	lea    0xdd3d(%rip),%rdi        # 13160 <g_global_data>
    5423:	eb 10                	jmp    5435 <change_protection+0x165>
    5425:	0f 1f 00             	nopl   (%rax)
    5428:	8b 05 8a de 00 00    	mov    0xde8a(%rip),%eax        # 132b8 <g_global_data+0x158>
    542e:	83 c2 01             	add    $0x1,%edx
    5431:	39 c2                	cmp    %eax,%edx
    5433:	73 5b                	jae    5490 <change_protection+0x1c0>
    5435:	89 d1                	mov    %edx,%ecx
    5437:	48 8d 41 0b          	lea    0xb(%rcx),%rax
    543b:	48 c1 e0 05          	shl    $0x5,%rax
    543f:	48 01 f8             	add    %rdi,%rax
    5442:	0f b7 30             	movzwl (%rax),%esi
    5445:	66 83 fe 14          	cmp    $0x14,%si
    5449:	75 dd                	jne    5428 <change_protection+0x158>
    544b:	48 c1 e1 05          	shl    $0x5,%rcx
    544f:	48 01 f9             	add    %rdi,%rcx
    5452:	48 8b 89 78 01 00 00 	mov    0x178(%rcx),%rcx
    5459:	48 81 f9 07 02 00 00 	cmp    $0x207,%rcx
    5460:	75 c6                	jne    5428 <change_protection+0x158>
    5462:	8b 48 04             	mov    0x4(%rax),%ecx
    5465:	85 c9                	test   %ecx,%ecx
    5467:	74 bf                	je     5428 <change_protection+0x158>
    5469:	8b 70 04             	mov    0x4(%rax),%esi
    546c:	48 8b 40 08          	mov    0x8(%rax),%rax
    5470:	ba 03 00 00 00       	mov    $0x3,%edx
    5475:	48 c1 e6 0c          	shl    $0xc,%rsi
    5479:	49 8d 7c 05 00       	lea    0x0(%r13,%rax,1),%rdi
    547e:	e8 4d 28 00 00       	call   7cd0 <mm_modify_permissions>
    5483:	85 c0                	test   %eax,%eax
    5485:	0f 95 c0             	setne  %al
    5488:	0f b6 c0             	movzbl %al,%eax
    548b:	e9 25 ff ff ff       	jmp    53b5 <change_protection+0xe5>
    5490:	5b                   	pop    %rbx
    5491:	31 c0                	xor    %eax,%eax
    5493:	5d                   	pop    %rbp
    5494:	41 5c                	pop    %r12
    5496:	41 5d                	pop    %r13
    5498:	41 5e                	pop    %r14
    549a:	c3                   	ret
    549b:	b8 01 00 00 00       	mov    $0x1,%eax
    54a0:	c3                   	ret
    54a1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    54a8:	00 00 00 
    54ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000054b0 <init_segment_emas>:
    54b0:	f3 0f 1e fa          	endbr64
    54b4:	48 85 ff             	test   %rdi,%rdi
    54b7:	0f 84 e8 00 00 00    	je     55a5 <init_segment_emas+0xf5>
    54bd:	41 55                	push   %r13
    54bf:	49 89 fd             	mov    %rdi,%r13
    54c2:	41 54                	push   %r12
    54c4:	55                   	push   %rbp
    54c5:	53                   	push   %rbx
    54c6:	48 83 ec 08          	sub    $0x8,%rsp
    54ca:	81 3f 7f 45 4c 46    	cmpl   $0x464c457f,(%rdi)
    54d0:	0f 85 ae 00 00 00    	jne    5584 <init_segment_emas+0xd4>
    54d6:	66 83 7f 10 03       	cmpw   $0x3,0x10(%rdi)
    54db:	0f 85 a3 00 00 00    	jne    5584 <init_segment_emas+0xd4>
    54e1:	48 89 fb             	mov    %rdi,%rbx
    54e4:	48 03 5f 20          	add    0x20(%rdi),%rbx
    54e8:	0f 84 96 00 00 00    	je     5584 <init_segment_emas+0xd4>
    54ee:	0f b7 57 38          	movzwl 0x38(%rdi),%edx
    54f2:	48 89 de             	mov    %rbx,%rsi
    54f5:	45 31 e4             	xor    %r12d,%r12d
    54f8:	89 d1                	mov    %edx,%ecx
    54fa:	e8 e1 f5 ff ff       	call   4ae0 <has_text_relo>
    54ff:	89 c5                	mov    %eax,%ebp
    5501:	66 85 c9             	test   %cx,%cx
    5504:	75 1c                	jne    5522 <init_segment_emas+0x72>
    5506:	e9 8d 00 00 00       	jmp    5598 <init_segment_emas+0xe8>
    550b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5510:	41 0f b7 45 38       	movzwl 0x38(%r13),%eax
    5515:	41 83 c4 01          	add    $0x1,%r12d
    5519:	48 83 c3 38          	add    $0x38,%rbx
    551d:	41 39 c4             	cmp    %eax,%r12d
    5520:	73 76                	jae    5598 <init_segment_emas+0xe8>
    5522:	83 3b 01             	cmpl   $0x1,(%rbx)
    5525:	75 e9                	jne    5510 <init_segment_emas+0x60>
    5527:	8b 4b 04             	mov    0x4(%rbx),%ecx
    552a:	48 8b 73 10          	mov    0x10(%rbx),%rsi
    552e:	89 c8                	mov    %ecx,%eax
    5530:	48 89 f2             	mov    %rsi,%rdx
    5533:	48 03 73 28          	add    0x28(%rbx),%rsi
    5537:	83 e0 02             	and    $0x2,%eax
    553a:	48 81 c6 ff 0f 00 00 	add    $0xfff,%rsi
    5541:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
    5548:	09 e8                	or     %ebp,%eax
    554a:	48 81 e6 00 f0 ff ff 	and    $0xfffffffffffff000,%rsi
    5551:	49 8d 7c 15 00       	lea    0x0(%r13,%rdx,1),%rdi
    5556:	83 f8 01             	cmp    $0x1,%eax
    5559:	48 19 c0             	sbb    %rax,%rax
    555c:	83 e1 01             	and    $0x1,%ecx
    555f:	48 29 d6             	sub    %rdx,%rsi
    5562:	45 31 c9             	xor    %r9d,%r9d
    5565:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    5569:	48 c1 e1 02          	shl    $0x2,%rcx
    556d:	45 31 c0             	xor    %r8d,%r8d
    5570:	ba 80 02 00 00       	mov    $0x280,%edx
    5575:	48 83 c0 03          	add    $0x3,%rax
    5579:	09 c1                	or     %eax,%ecx
    557b:	e8 f0 25 00 00       	call   7b70 <mm_init_ema>
    5580:	85 c0                	test   %eax,%eax
    5582:	74 8c                	je     5510 <init_segment_emas+0x60>
    5584:	48 83 c4 08          	add    $0x8,%rsp
    5588:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    558d:	5b                   	pop    %rbx
    558e:	5d                   	pop    %rbp
    558f:	41 5c                	pop    %r12
    5591:	41 5d                	pop    %r13
    5593:	c3                   	ret
    5594:	0f 1f 40 00          	nopl   0x0(%rax)
    5598:	48 83 c4 08          	add    $0x8,%rsp
    559c:	31 c0                	xor    %eax,%eax
    559e:	5b                   	pop    %rbx
    559f:	5d                   	pop    %rbp
    55a0:	41 5c                	pop    %r12
    55a2:	41 5d                	pop    %r13
    55a4:	c3                   	ret
    55a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    55aa:	c3                   	ret
    55ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000055b0 <do_ctors_aux>:
    55b0:	55                   	push   %rbp
    55b1:	53                   	push   %rbx
    55b2:	48 89 fb             	mov    %rdi,%rbx
    55b5:	48 83 ec 28          	sub    $0x28,%rsp
    55b9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    55c0:	00 00 
    55c2:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    55c7:	31 c0                	xor    %eax,%eax
    55c9:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    55ce:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    55d3:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    55da:	00 00 
    55dc:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    55e3:	00 00 
    55e5:	e8 c6 fa ff ff       	call   50b0 <elf_get_init_array>
    55ea:	85 c0                	test   %eax,%eax
    55ec:	75 35                	jne    5623 <do_ctors_aux+0x73>
    55ee:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    55f3:	48 85 c0             	test   %rax,%rax
    55f6:	74 2b                	je     5623 <do_ctors_aux+0x73>
    55f8:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
    55fd:	48 85 ed             	test   %rbp,%rbp
    5600:	74 21                	je     5623 <do_ctors_aux+0x73>
    5602:	48 01 c3             	add    %rax,%rbx
    5605:	48 83 e5 f8          	and    $0xfffffffffffffff8,%rbp
    5609:	48 01 dd             	add    %rbx,%rbp
    560c:	48 39 eb             	cmp    %rbp,%rbx
    560f:	73 12                	jae    5623 <do_ctors_aux+0x73>
    5611:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5618:	ff 13                	call   *(%rbx)
    561a:	48 83 c3 08          	add    $0x8,%rbx
    561e:	48 39 eb             	cmp    %rbp,%rbx
    5621:	72 f5                	jb     5618 <do_ctors_aux+0x68>
    5623:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    5628:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    562f:	00 00 
    5631:	75 07                	jne    563a <do_ctors_aux+0x8a>
    5633:	48 83 c4 28          	add    $0x28,%rsp
    5637:	5b                   	pop    %rbx
    5638:	5d                   	pop    %rbp
    5639:	c3                   	ret
    563a:	e8 e1 5e 00 00       	call   b520 <__stack_chk_fail>
    563f:	90                   	nop

0000000000005640 <do_dtors_aux>:
    5640:	55                   	push   %rbp
    5641:	48 89 fd             	mov    %rdi,%rbp
    5644:	53                   	push   %rbx
    5645:	48 83 ec 28          	sub    $0x28,%rsp
    5649:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5650:	00 00 
    5652:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    5657:	31 c0                	xor    %eax,%eax
    5659:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    565e:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
    5663:	e8 38 fb ff ff       	call   51a0 <elf_get_uninit_array>
    5668:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    566d:	48 85 d2             	test   %rdx,%rdx
    5670:	74 29                	je     569b <do_dtors_aux+0x5b>
    5672:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    5677:	48 85 c0             	test   %rax,%rax
    567a:	74 1f                	je     569b <do_dtors_aux+0x5b>
    567c:	48 01 d5             	add    %rdx,%rbp
    567f:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    5683:	48 8d 5c 05 f8       	lea    -0x8(%rbp,%rax,1),%rbx
    5688:	48 39 eb             	cmp    %rbp,%rbx
    568b:	72 0e                	jb     569b <do_dtors_aux+0x5b>
    568d:	0f 1f 00             	nopl   (%rax)
    5690:	ff 13                	call   *(%rbx)
    5692:	48 83 eb 08          	sub    $0x8,%rbx
    5696:	48 39 eb             	cmp    %rbp,%rbx
    5699:	73 f5                	jae    5690 <do_dtors_aux+0x50>
    569b:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    56a0:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    56a7:	00 00 
    56a9:	75 07                	jne    56b2 <do_dtors_aux+0x72>
    56ab:	48 83 c4 28          	add    $0x28,%rsp
    56af:	5b                   	pop    %rbx
    56b0:	5d                   	pop    %rbp
    56b1:	c3                   	ret
    56b2:	e8 69 5e 00 00       	call   b520 <__stack_chk_fail>
    56b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    56be:	00 00 

00000000000056c0 <do_atexit_aux>:
    56c0:	f3 0f 1e fa          	endbr64
    56c4:	53                   	push   %rbx
    56c5:	48 8b 1d d4 e1 00 00 	mov    0xe1d4(%rip),%rbx        # 138a0 <g_exit_function>
    56cc:	48 c7 05 c9 e1 00 00 	movq   $0x0,0xe1c9(%rip)        # 138a0 <g_exit_function>
    56d3:	00 00 00 00 
    56d7:	48 85 db             	test   %rbx,%rbx
    56da:	74 28                	je     5704 <do_atexit_aux+0x44>
    56dc:	0f 1f 40 00          	nopl   0x0(%rax)
    56e0:	48 8b 05 b1 e1 00 00 	mov    0xe1b1(%rip),%rax        # 13898 <g_exit_function_cookie>
    56e7:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
    56eb:	48 31 c7             	xor    %rax,%rdi
    56ee:	48 33 03             	xor    (%rbx),%rax
    56f1:	ff d0                	call   *%rax
    56f3:	48 89 df             	mov    %rbx,%rdi
    56f6:	48 8b 5b 18          	mov    0x18(%rbx),%rbx
    56fa:	e8 e1 4d 00 00       	call   a4e0 <dlfree>
    56ff:	48 85 db             	test   %rbx,%rbx
    5702:	75 dc                	jne    56e0 <do_atexit_aux+0x20>
    5704:	5b                   	pop    %rbx
    5705:	c3                   	ret
    5706:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    570d:	00 00 00 

0000000000005710 <init_global_object>:
    5710:	f3 0f 1e fa          	endbr64
    5714:	53                   	push   %rbx
    5715:	e8 e7 73 00 00       	call   cb01 <get_enclave_base>
    571a:	48 89 c3             	mov    %rax,%rbx
    571d:	48 89 c7             	mov    %rax,%rdi
    5720:	e8 8b fe ff ff       	call   55b0 <do_ctors_aux>
    5725:	48 89 df             	mov    %rbx,%rdi
    5728:	e8 33 f8 ff ff       	call   4f60 <get_aligned_enclave_segments_size>
    572d:	48 01 c3             	add    %rax,%rbx
    5730:	48 89 df             	mov    %rbx,%rdi
    5733:	e8 58 fb ff ff       	call   5290 <is_shared_object>
    5738:	85 c0                	test   %eax,%eax
    573a:	75 04                	jne    5740 <init_global_object+0x30>
    573c:	5b                   	pop    %rbx
    573d:	c3                   	ret
    573e:	66 90                	xchg   %ax,%ax
    5740:	48 89 df             	mov    %rbx,%rdi
    5743:	5b                   	pop    %rbx
    5744:	e9 67 fe ff ff       	jmp    55b0 <do_ctors_aux>
    5749:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000005750 <uninit_global_object>:
    5750:	f3 0f 1e fa          	endbr64
    5754:	55                   	push   %rbp
    5755:	53                   	push   %rbx
    5756:	48 83 ec 08          	sub    $0x8,%rsp
    575a:	e8 a2 73 00 00       	call   cb01 <get_enclave_base>
    575f:	48 89 c3             	mov    %rax,%rbx
    5762:	e8 59 ff ff ff       	call   56c0 <do_atexit_aux>
    5767:	48 89 df             	mov    %rbx,%rdi
    576a:	e8 f1 f7 ff ff       	call   4f60 <get_aligned_enclave_segments_size>
    576f:	48 8d 2c 03          	lea    (%rbx,%rax,1),%rbp
    5773:	48 89 ef             	mov    %rbp,%rdi
    5776:	e8 15 fb ff ff       	call   5290 <is_shared_object>
    577b:	85 c0                	test   %eax,%eax
    577d:	75 11                	jne    5790 <uninit_global_object+0x40>
    577f:	48 83 c4 08          	add    $0x8,%rsp
    5783:	48 89 df             	mov    %rbx,%rdi
    5786:	5b                   	pop    %rbx
    5787:	5d                   	pop    %rbp
    5788:	e9 b3 fe ff ff       	jmp    5640 <do_dtors_aux>
    578d:	0f 1f 00             	nopl   (%rax)
    5790:	48 89 ef             	mov    %rbp,%rdi
    5793:	e8 a8 fe ff ff       	call   5640 <do_dtors_aux>
    5798:	48 83 c4 08          	add    $0x8,%rsp
    579c:	48 89 df             	mov    %rbx,%rdi
    579f:	5b                   	pop    %rbx
    57a0:	5d                   	pop    %rbp
    57a1:	e9 9a fe ff ff       	jmp    5640 <do_dtors_aux>
    57a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    57ad:	00 00 00 

00000000000057b0 <bit_array_new>:
    57b0:	f3 0f 1e fa          	endbr64
    57b4:	41 54                	push   %r12
    57b6:	55                   	push   %rbp
    57b7:	53                   	push   %rbx
    57b8:	48 85 ff             	test   %rdi,%rdi
    57bb:	74 63                	je     5820 <bit_array_new+0x70>
    57bd:	48 8d 47 07          	lea    0x7(%rdi),%rax
    57c1:	48 89 fb             	mov    %rdi,%rbx
    57c4:	48 89 c2             	mov    %rax,%rdx
    57c7:	48 83 e2 f8          	and    $0xfffffffffffffff8,%rdx
    57cb:	48 39 fa             	cmp    %rdi,%rdx
    57ce:	72 50                	jb     5820 <bit_array_new+0x70>
    57d0:	48 c1 e8 03          	shr    $0x3,%rax
    57d4:	bf 18 00 00 00       	mov    $0x18,%edi
    57d9:	49 89 c4             	mov    %rax,%r12
    57dc:	e8 0f 1f 00 00       	call   76f0 <emalloc>
    57e1:	48 89 c5             	mov    %rax,%rbp
    57e4:	48 85 c0             	test   %rax,%rax
    57e7:	74 37                	je     5820 <bit_array_new+0x70>
    57e9:	4c 89 20             	mov    %r12,(%rax)
    57ec:	4c 89 e7             	mov    %r12,%rdi
    57ef:	48 89 58 08          	mov    %rbx,0x8(%rax)
    57f3:	e8 f8 1e 00 00       	call   76f0 <emalloc>
    57f8:	48 89 45 10          	mov    %rax,0x10(%rbp)
    57fc:	48 85 c0             	test   %rax,%rax
    57ff:	74 0f                	je     5810 <bit_array_new+0x60>
    5801:	48 89 e8             	mov    %rbp,%rax
    5804:	5b                   	pop    %rbx
    5805:	5d                   	pop    %rbp
    5806:	41 5c                	pop    %r12
    5808:	c3                   	ret
    5809:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5810:	48 89 ef             	mov    %rbp,%rdi
    5813:	e8 58 21 00 00       	call   7970 <efree>
    5818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    581f:	00 
    5820:	31 ed                	xor    %ebp,%ebp
    5822:	eb dd                	jmp    5801 <bit_array_new+0x51>
    5824:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    582b:	00 00 00 
    582e:	66 90                	xchg   %ax,%ax

0000000000005830 <bit_array_new_set>:
    5830:	f3 0f 1e fa          	endbr64
    5834:	53                   	push   %rbx
    5835:	e8 76 ff ff ff       	call   57b0 <bit_array_new>
    583a:	48 89 c3             	mov    %rax,%rbx
    583d:	48 85 c0             	test   %rax,%rax
    5840:	74 11                	je     5853 <bit_array_new_set+0x23>
    5842:	48 8b 10             	mov    (%rax),%rdx
    5845:	48 8b 78 10          	mov    0x10(%rax),%rdi
    5849:	be ff 00 00 00       	mov    $0xff,%esi
    584e:	e8 4d 5c 00 00       	call   b4a0 <memset>
    5853:	48 89 d8             	mov    %rbx,%rax
    5856:	5b                   	pop    %rbx
    5857:	c3                   	ret
    5858:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    585f:	00 

0000000000005860 <bit_array_new_reset>:
    5860:	f3 0f 1e fa          	endbr64
    5864:	53                   	push   %rbx
    5865:	e8 46 ff ff ff       	call   57b0 <bit_array_new>
    586a:	48 89 c3             	mov    %rax,%rbx
    586d:	48 85 c0             	test   %rax,%rax
    5870:	74 0e                	je     5880 <bit_array_new_reset+0x20>
    5872:	48 8b 10             	mov    (%rax),%rdx
    5875:	48 8b 78 10          	mov    0x10(%rax),%rdi
    5879:	31 f6                	xor    %esi,%esi
    587b:	e8 20 5c 00 00       	call   b4a0 <memset>
    5880:	48 89 d8             	mov    %rbx,%rax
    5883:	5b                   	pop    %rbx
    5884:	c3                   	ret
    5885:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    588c:	00 00 00 
    588f:	90                   	nop

0000000000005890 <bit_array_delete>:
    5890:	f3 0f 1e fa          	endbr64
    5894:	53                   	push   %rbx
    5895:	48 89 fb             	mov    %rdi,%rbx
    5898:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    589c:	e8 cf 20 00 00       	call   7970 <efree>
    58a1:	48 89 df             	mov    %rbx,%rdi
    58a4:	5b                   	pop    %rbx
    58a5:	e9 c6 20 00 00       	jmp    7970 <efree>
    58aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000058b0 <bit_array_test>:
    58b0:	f3 0f 1e fa          	endbr64
    58b4:	48 89 f1             	mov    %rsi,%rcx
    58b7:	48 89 f2             	mov    %rsi,%rdx
    58ba:	48 8b 77 10          	mov    0x10(%rdi),%rsi
    58be:	b8 01 00 00 00       	mov    $0x1,%eax
    58c3:	83 e1 07             	and    $0x7,%ecx
    58c6:	48 c1 ea 03          	shr    $0x3,%rdx
    58ca:	d3 e0                	shl    %cl,%eax
    58cc:	84 04 16             	test   %al,(%rsi,%rdx,1)
    58cf:	0f 95 c0             	setne  %al
    58d2:	c3                   	ret
    58d3:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    58da:	00 00 00 
    58dd:	0f 1f 00             	nopl   (%rax)

00000000000058e0 <bit_array_test_range>:
    58e0:	f3 0f 1e fa          	endbr64
    58e4:	48 89 f0             	mov    %rsi,%rax
    58e7:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    58eb:	83 e6 07             	and    $0x7,%esi
    58ee:	b9 08 00 00 00       	mov    $0x8,%ecx
    58f3:	48 c1 e8 03          	shr    $0x3,%rax
    58f7:	48 29 f1             	sub    %rsi,%rcx
    58fa:	44 0f b6 0c 07       	movzbl (%rdi,%rax,1),%r9d
    58ff:	48 39 d1             	cmp    %rdx,%rcx
    5902:	72 24                	jb     5928 <bit_array_test_range+0x48>
    5904:	89 d1                	mov    %edx,%ecx
    5906:	b8 01 00 00 00       	mov    $0x1,%eax
    590b:	41 f7 d1             	not    %r9d
    590e:	d3 e0                	shl    %cl,%eax
    5910:	89 f1                	mov    %esi,%ecx
    5912:	83 e8 01             	sub    $0x1,%eax
    5915:	d3 e0                	shl    %cl,%eax
    5917:	41 84 c1             	test   %al,%r9b
    591a:	41 0f 94 c2          	sete   %r10b
    591e:	44 89 d0             	mov    %r10d,%eax
    5921:	c3                   	ret
    5922:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5928:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    592e:	41 f7 d1             	not    %r9d
    5931:	45 31 d2             	xor    %r10d,%r10d
    5934:	41 d3 e0             	shl    %cl,%r8d
    5937:	89 f1                	mov    %esi,%ecx
    5939:	41 83 e8 01          	sub    $0x1,%r8d
    593d:	41 d3 e0             	shl    %cl,%r8d
    5940:	45 84 c1             	test   %r8b,%r9b
    5943:	75 d9                	jne    591e <bit_array_test_range+0x3e>
    5945:	48 8d 4c 16 f8       	lea    -0x8(%rsi,%rdx,1),%rcx
    594a:	48 83 f9 07          	cmp    $0x7,%rcx
    594e:	77 12                	ja     5962 <bit_array_test_range+0x82>
    5950:	eb 26                	jmp    5978 <bit_array_test_range+0x98>
    5952:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5958:	48 83 e9 08          	sub    $0x8,%rcx
    595c:	48 83 f9 07          	cmp    $0x7,%rcx
    5960:	76 16                	jbe    5978 <bit_array_test_range+0x98>
    5962:	48 83 c0 01          	add    $0x1,%rax
    5966:	80 3c 07 ff          	cmpb   $0xff,(%rdi,%rax,1)
    596a:	74 ec                	je     5958 <bit_array_test_range+0x78>
    596c:	45 31 d2             	xor    %r10d,%r10d
    596f:	44 89 d0             	mov    %r10d,%eax
    5972:	c3                   	ret
    5973:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    5978:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    597e:	48 85 c9             	test   %rcx,%rcx
    5981:	74 9b                	je     591e <bit_array_test_range+0x3e>
    5983:	ba 01 00 00 00       	mov    $0x1,%edx
    5988:	0f b6 74 07 01       	movzbl 0x1(%rdi,%rax,1),%esi
    598d:	d3 e2                	shl    %cl,%edx
    598f:	83 ea 01             	sub    $0x1,%edx
    5992:	21 d6                	and    %edx,%esi
    5994:	40 38 d6             	cmp    %dl,%sil
    5997:	41 0f 94 c2          	sete   %r10b
    599b:	eb 81                	jmp    591e <bit_array_test_range+0x3e>
    599d:	0f 1f 00             	nopl   (%rax)

00000000000059a0 <bit_array_set>:
    59a0:	f3 0f 1e fa          	endbr64
    59a4:	48 89 f1             	mov    %rsi,%rcx
    59a7:	48 89 f0             	mov    %rsi,%rax
    59aa:	ba 01 00 00 00       	mov    $0x1,%edx
    59af:	48 c1 e8 03          	shr    $0x3,%rax
    59b3:	83 e1 07             	and    $0x7,%ecx
    59b6:	48 03 47 10          	add    0x10(%rdi),%rax
    59ba:	d3 e2                	shl    %cl,%edx
    59bc:	08 10                	or     %dl,(%rax)
    59be:	c3                   	ret
    59bf:	90                   	nop

00000000000059c0 <bit_array_set_all>:
    59c0:	f3 0f 1e fa          	endbr64
    59c4:	48 8b 17             	mov    (%rdi),%rdx
    59c7:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    59cb:	be ff 00 00 00       	mov    $0xff,%esi
    59d0:	e9 cb 5a 00 00       	jmp    b4a0 <memset>
    59d5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    59dc:	00 00 00 
    59df:	90                   	nop

00000000000059e0 <bit_array_reset_range>:
    59e0:	f3 0f 1e fa          	endbr64
    59e4:	48 89 f0             	mov    %rsi,%rax
    59e7:	4c 8b 4f 10          	mov    0x10(%rdi),%r9
    59eb:	83 e6 07             	and    $0x7,%esi
    59ee:	b9 08 00 00 00       	mov    $0x8,%ecx
    59f3:	48 c1 e8 03          	shr    $0x3,%rax
    59f7:	48 29 f1             	sub    %rsi,%rcx
    59fa:	49 89 d0             	mov    %rdx,%r8
    59fd:	49 01 c1             	add    %rax,%r9
    5a00:	45 0f b6 11          	movzbl (%r9),%r10d
    5a04:	48 39 d1             	cmp    %rdx,%rcx
    5a07:	73 67                	jae    5a70 <bit_array_reset_range+0x90>
    5a09:	ba 01 00 00 00       	mov    $0x1,%edx
    5a0e:	d3 e2                	shl    %cl,%edx
    5a10:	89 f1                	mov    %esi,%ecx
    5a12:	83 ea 01             	sub    $0x1,%edx
    5a15:	d3 e2                	shl    %cl,%edx
    5a17:	4a 8d 4c 06 f8       	lea    -0x8(%rsi,%r8,1),%rcx
    5a1c:	f7 d2                	not    %edx
    5a1e:	44 21 d2             	and    %r10d,%edx
    5a21:	41 88 11             	mov    %dl,(%r9)
    5a24:	48 83 f9 07          	cmp    $0x7,%rcx
    5a28:	76 66                	jbe    5a90 <bit_array_reset_range+0xb0>
    5a2a:	48 8d 51 f8          	lea    -0x8(%rcx),%rdx
    5a2e:	48 83 c0 01          	add    $0x1,%rax
    5a32:	48 c1 ea 03          	shr    $0x3,%rdx
    5a36:	48 8d 34 02          	lea    (%rdx,%rax,1),%rsi
    5a3a:	eb 08                	jmp    5a44 <bit_array_reset_range+0x64>
    5a3c:	0f 1f 40 00          	nopl   0x0(%rax)
    5a40:	48 83 c0 01          	add    $0x1,%rax
    5a44:	48 8b 57 10          	mov    0x10(%rdi),%rdx
    5a48:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    5a4c:	48 39 f0             	cmp    %rsi,%rax
    5a4f:	75 ef                	jne    5a40 <bit_array_reset_range+0x60>
    5a51:	83 e1 07             	and    $0x7,%ecx
    5a54:	48 85 c9             	test   %rcx,%rcx
    5a57:	74 0f                	je     5a68 <bit_array_reset_range+0x88>
    5a59:	48 8b 57 10          	mov    0x10(%rdi),%rdx
    5a5d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    5a62:	d3 e0                	shl    %cl,%eax
    5a64:	20 44 32 01          	and    %al,0x1(%rdx,%rsi,1)
    5a68:	c3                   	ret
    5a69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5a70:	89 d1                	mov    %edx,%ecx
    5a72:	b8 01 00 00 00       	mov    $0x1,%eax
    5a77:	d3 e0                	shl    %cl,%eax
    5a79:	89 f1                	mov    %esi,%ecx
    5a7b:	83 e8 01             	sub    $0x1,%eax
    5a7e:	d3 e0                	shl    %cl,%eax
    5a80:	f7 d0                	not    %eax
    5a82:	44 21 d0             	and    %r10d,%eax
    5a85:	41 88 01             	mov    %al,(%r9)
    5a88:	c3                   	ret
    5a89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5a90:	48 89 c6             	mov    %rax,%rsi
    5a93:	eb bf                	jmp    5a54 <bit_array_reset_range+0x74>
    5a95:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    5a9c:	00 00 00 
    5a9f:	90                   	nop

0000000000005aa0 <bit_array_reset_all>:
    5aa0:	f3 0f 1e fa          	endbr64
    5aa4:	48 8b 17             	mov    (%rdi),%rdx
    5aa7:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    5aab:	31 f6                	xor    %esi,%esi
    5aad:	e9 ee 59 00 00       	jmp    b4a0 <memset>
    5ab2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    5ab9:	00 00 00 
    5abc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000005ac0 <bit_array_split>:
    5ac0:	f3 0f 1e fa          	endbr64
    5ac4:	41 57                	push   %r15
    5ac6:	41 56                	push   %r14
    5ac8:	41 55                	push   %r13
    5aca:	41 54                	push   %r12
    5acc:	55                   	push   %rbp
    5acd:	53                   	push   %rbx
    5ace:	48 89 fb             	mov    %rdi,%rbx
    5ad1:	48 83 ec 38          	sub    $0x38,%rsp
    5ad5:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    5ada:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    5adf:	48 85 f6             	test   %rsi,%rsi
    5ae2:	0f 84 88 01 00 00    	je     5c70 <bit_array_split+0x1b0>
    5ae8:	4c 8b 77 08          	mov    0x8(%rdi),%r14
    5aec:	45 31 e4             	xor    %r12d,%r12d
    5aef:	4c 39 f6             	cmp    %r14,%rsi
    5af2:	72 24                	jb     5b18 <bit_array_split+0x58>
    5af4:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    5af9:	48 89 18             	mov    %rbx,(%rax)
    5afc:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
    5b01:	4c 89 20             	mov    %r12,(%rax)
    5b04:	31 c0                	xor    %eax,%eax
    5b06:	48 83 c4 38          	add    $0x38,%rsp
    5b0a:	5b                   	pop    %rbx
    5b0b:	5d                   	pop    %rbp
    5b0c:	41 5c                	pop    %r12
    5b0e:	41 5d                	pop    %r13
    5b10:	41 5e                	pop    %r14
    5b12:	41 5f                	pop    %r15
    5b14:	c3                   	ret
    5b15:	0f 1f 00             	nopl   (%rax)
    5b18:	48 8d 46 07          	lea    0x7(%rsi),%rax
    5b1c:	48 89 f5             	mov    %rsi,%rbp
    5b1f:	41 89 f7             	mov    %esi,%r15d
    5b22:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    5b27:	48 c1 e8 03          	shr    $0x3,%rax
    5b2b:	49 29 f6             	sub    %rsi,%r14
    5b2e:	48 c1 ed 03          	shr    $0x3,%rbp
    5b32:	41 83 e7 07          	and    $0x7,%r15d
    5b36:	48 89 c7             	mov    %rax,%rdi
    5b39:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    5b3e:	e8 ad 1b 00 00       	call   76f0 <emalloc>
    5b43:	49 89 c5             	mov    %rax,%r13
    5b46:	48 85 c0             	test   %rax,%rax
    5b49:	0f 84 98 01 00 00    	je     5ce7 <bit_array_split+0x227>
    5b4f:	48 85 ed             	test   %rbp,%rbp
    5b52:	0f 84 80 01 00 00    	je     5cd8 <bit_array_split+0x218>
    5b58:	31 c0                	xor    %eax,%eax
    5b5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5b60:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    5b64:	0f b6 14 02          	movzbl (%rdx,%rax,1),%edx
    5b68:	41 88 54 05 00       	mov    %dl,0x0(%r13,%rax,1)
    5b6d:	48 83 c0 01          	add    $0x1,%rax
    5b71:	48 39 c5             	cmp    %rax,%rbp
    5b74:	75 ea                	jne    5b60 <bit_array_split+0xa0>
    5b76:	48 89 ea             	mov    %rbp,%rdx
    5b79:	45 84 ff             	test   %r15b,%r15b
    5b7c:	0f 85 fe 00 00 00    	jne    5c80 <bit_array_split+0x1c0>
    5b82:	4c 89 f7             	mov    %r14,%rdi
    5b85:	e8 26 fc ff ff       	call   57b0 <bit_array_new>
    5b8a:	49 89 c4             	mov    %rax,%r12
    5b8d:	48 85 c0             	test   %rax,%rax
    5b90:	0f 84 49 01 00 00    	je     5cdf <bit_array_split+0x21f>
    5b96:	49 89 ea             	mov    %rbp,%r10
    5b99:	31 d2                	xor    %edx,%edx
    5b9b:	49 83 fe 07          	cmp    $0x7,%r14
    5b9f:	76 78                	jbe    5c19 <bit_array_split+0x159>
    5ba1:	49 8d 46 f8          	lea    -0x8(%r14),%rax
    5ba5:	45 0f b6 df          	movzbl %r15b,%r11d
    5ba9:	41 b9 08 00 00 00    	mov    $0x8,%r9d
    5baf:	31 ff                	xor    %edi,%edi
    5bb1:	48 c1 e8 03          	shr    $0x3,%rax
    5bb5:	48 8d 55 01          	lea    0x1(%rbp),%rdx
    5bb9:	44 88 7c 24 2f       	mov    %r15b,0x2f(%rsp)
    5bbe:	45 29 d9             	sub    %r11d,%r9d
    5bc1:	48 89 c6             	mov    %rax,%rsi
    5bc4:	4c 8d 14 02          	lea    (%rdx,%rax,1),%r10
    5bc8:	eb 0a                	jmp    5bd4 <bit_array_split+0x114>
    5bca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5bd0:	48 83 c2 01          	add    $0x1,%rdx
    5bd4:	4c 8b 43 10          	mov    0x10(%rbx),%r8
    5bd8:	48 89 e8             	mov    %rbp,%rax
    5bdb:	44 89 d9             	mov    %r11d,%ecx
    5bde:	49 89 ff             	mov    %rdi,%r15
    5be1:	48 89 d5             	mov    %rdx,%rbp
    5be4:	48 83 c7 01          	add    $0x1,%rdi
    5be8:	41 0f b6 04 00       	movzbl (%r8,%rax,1),%eax
    5bed:	45 0f b6 04 10       	movzbl (%r8,%rdx,1),%r8d
    5bf2:	d3 f8                	sar    %cl,%eax
    5bf4:	44 89 c9             	mov    %r9d,%ecx
    5bf7:	41 d3 e0             	shl    %cl,%r8d
    5bfa:	49 8b 4c 24 10       	mov    0x10(%r12),%rcx
    5bff:	44 09 c0             	or     %r8d,%eax
    5c02:	42 88 04 39          	mov    %al,(%rcx,%r15,1)
    5c06:	4c 39 d2             	cmp    %r10,%rdx
    5c09:	75 c5                	jne    5bd0 <bit_array_split+0x110>
    5c0b:	44 0f b6 7c 24 2f    	movzbl 0x2f(%rsp),%r15d
    5c11:	48 8d 56 01          	lea    0x1(%rsi),%rdx
    5c15:	41 83 e6 07          	and    $0x7,%r14d
    5c19:	b8 08 00 00 00       	mov    $0x8,%eax
    5c1e:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    5c22:	44 29 f8             	sub    %r15d,%eax
    5c25:	48 0f be c0          	movsbq %al,%rax
    5c29:	4c 39 f0             	cmp    %r14,%rax
    5c2c:	72 72                	jb     5ca0 <bit_array_split+0x1e0>
    5c2e:	4d 85 f6             	test   %r14,%r14
    5c31:	74 16                	je     5c49 <bit_array_split+0x189>
    5c33:	42 0f b6 04 17       	movzbl (%rdi,%r10,1),%eax
    5c38:	49 8b 74 24 10       	mov    0x10(%r12),%rsi
    5c3d:	44 89 f9             	mov    %r15d,%ecx
    5c40:	d3 f8                	sar    %cl,%eax
    5c42:	88 04 16             	mov    %al,(%rsi,%rdx,1)
    5c45:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    5c49:	48 85 ff             	test   %rdi,%rdi
    5c4c:	74 05                	je     5c53 <bit_array_split+0x193>
    5c4e:	e8 1d 1d 00 00       	call   7970 <efree>
    5c53:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    5c58:	4c 89 6b 10          	mov    %r13,0x10(%rbx)
    5c5c:	48 89 03             	mov    %rax,(%rbx)
    5c5f:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    5c64:	48 89 43 08          	mov    %rax,0x8(%rbx)
    5c68:	e9 87 fe ff ff       	jmp    5af4 <bit_array_split+0x34>
    5c6d:	0f 1f 00             	nopl   (%rax)
    5c70:	49 89 fc             	mov    %rdi,%r12
    5c73:	31 db                	xor    %ebx,%ebx
    5c75:	e9 7a fe ff ff       	jmp    5af4 <bit_array_split+0x34>
    5c7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5c80:	48 8b 73 10          	mov    0x10(%rbx),%rsi
    5c84:	b8 01 00 00 00       	mov    $0x1,%eax
    5c89:	44 89 f9             	mov    %r15d,%ecx
    5c8c:	d3 e0                	shl    %cl,%eax
    5c8e:	83 e8 01             	sub    $0x1,%eax
    5c91:	22 04 16             	and    (%rsi,%rdx,1),%al
    5c94:	41 88 44 15 00       	mov    %al,0x0(%r13,%rdx,1)
    5c99:	e9 e4 fe ff ff       	jmp    5b82 <bit_array_split+0xc2>
    5c9e:	66 90                	xchg   %ax,%ax
    5ca0:	42 0f b6 44 17 01    	movzbl 0x1(%rdi,%r10,1),%eax
    5ca6:	45 0f b6 c7          	movzbl %r15b,%r8d
    5caa:	b9 08 00 00 00       	mov    $0x8,%ecx
    5caf:	42 0f b6 3c 17       	movzbl (%rdi,%r10,1),%edi
    5cb4:	44 29 c1             	sub    %r8d,%ecx
    5cb7:	49 8b 74 24 10       	mov    0x10(%r12),%rsi
    5cbc:	d3 e0                	shl    %cl,%eax
    5cbe:	44 89 f9             	mov    %r15d,%ecx
    5cc1:	d3 ff                	sar    %cl,%edi
    5cc3:	09 f8                	or     %edi,%eax
    5cc5:	88 04 16             	mov    %al,(%rsi,%rdx,1)
    5cc8:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    5ccc:	e9 78 ff ff ff       	jmp    5c49 <bit_array_split+0x189>
    5cd1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    5cd8:	31 d2                	xor    %edx,%edx
    5cda:	e9 9a fe ff ff       	jmp    5b79 <bit_array_split+0xb9>
    5cdf:	4c 89 ef             	mov    %r13,%rdi
    5ce2:	e8 89 1c 00 00       	call   7970 <efree>
    5ce7:	b8 0c 00 00 00       	mov    $0xc,%eax
    5cec:	e9 15 fe ff ff       	jmp    5b06 <bit_array_split+0x46>
    5cf1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    5cf8:	00 00 00 
    5cfb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000005d00 <ema_do_uncommit_real>:
    5d00:	55                   	push   %rbp
    5d01:	48 89 e5             	mov    %rsp,%rbp
    5d04:	41 57                	push   %r15
    5d06:	41 56                	push   %r14
    5d08:	41 55                	push   %r13
    5d0a:	41 54                	push   %r12
    5d0c:	53                   	push   %rbx
    5d0d:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    5d11:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
    5d18:	89 4c 24 28          	mov    %ecx,0x28(%rsp)
    5d1c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5d23:	00 00 
    5d25:	48 89 84 24 b8 00 00 	mov    %rax,0xb8(%rsp)
    5d2c:	00 
    5d2d:	48 8b 47 18          	mov    0x18(%rdi),%rax
    5d31:	f6 47 10 01          	testb  $0x1,0x10(%rdi)
    5d35:	0f 85 68 01 00 00    	jne    5ea3 <ema_do_uncommit_real+0x1a3>
    5d3b:	25 00 ff 00 00       	and    $0xff00,%eax
    5d40:	66 0f ef c0          	pxor   %xmm0,%xmm0
    5d44:	48 89 fb             	mov    %rdi,%rbx
    5d47:	49 89 f7             	mov    %rsi,%r15
    5d4a:	89 44 24 24          	mov    %eax,0x24(%rsp)
    5d4e:	8b 44 24 28          	mov    0x28(%rsp),%eax
    5d52:	49 89 d4             	mov    %rdx,%r12
    5d55:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    5d5c:	00 00 
    5d5e:	80 cc 04             	or     $0x4,%ah
    5d61:	0f 11 44 24 48       	movups %xmm0,0x48(%rsp)
    5d66:	48 c7 44 24 40 10 04 	movq   $0x410,0x40(%rsp)
    5d6d:	00 00 
    5d6f:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
    5d73:	0f 11 44 24 58       	movups %xmm0,0x58(%rsp)
    5d78:	0f 11 44 24 68       	movups %xmm0,0x68(%rsp)
    5d7d:	0f 1f 00             	nopl   (%rax)
    5d80:	4d 39 e7             	cmp    %r12,%r15
    5d83:	72 17                	jb     5d9c <ema_do_uncommit_real+0x9c>
    5d85:	e9 19 01 00 00       	jmp    5ea3 <ema_do_uncommit_real+0x1a3>
    5d8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5d90:	49 81 c7 00 10 00 00 	add    $0x1000,%r15
    5d97:	4d 39 e7             	cmp    %r12,%r15
    5d9a:	73 17                	jae    5db3 <ema_do_uncommit_real+0xb3>
    5d9c:	4c 89 fe             	mov    %r15,%rsi
    5d9f:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
    5da3:	48 2b 33             	sub    (%rbx),%rsi
    5da6:	48 c1 ee 0c          	shr    $0xc,%rsi
    5daa:	e8 01 fb ff ff       	call   58b0 <bit_array_test>
    5daf:	84 c0                	test   %al,%al
    5db1:	74 dd                	je     5d90 <ema_do_uncommit_real+0x90>
    5db3:	4c 89 7c 24 38       	mov    %r15,0x38(%rsp)
    5db8:	4d 39 fc             	cmp    %r15,%r12
    5dbb:	0f 84 e2 00 00 00    	je     5ea3 <ema_do_uncommit_real+0x1a3>
    5dc1:	49 81 c7 00 10 00 00 	add    $0x1000,%r15
    5dc8:	4d 39 e7             	cmp    %r12,%r15
    5dcb:	72 17                	jb     5de4 <ema_do_uncommit_real+0xe4>
    5dcd:	e9 f5 00 00 00       	jmp    5ec7 <ema_do_uncommit_real+0x1c7>
    5dd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5dd8:	49 81 c7 00 10 00 00 	add    $0x1000,%r15
    5ddf:	4d 39 e7             	cmp    %r12,%r15
    5de2:	73 17                	jae    5dfb <ema_do_uncommit_real+0xfb>
    5de4:	4c 89 fe             	mov    %r15,%rsi
    5de7:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
    5deb:	48 2b 33             	sub    (%rbx),%rsi
    5dee:	48 c1 ee 0c          	shr    $0xc,%rsi
    5df2:	e8 b9 fa ff ff       	call   58b0 <bit_array_test>
    5df7:	84 c0                	test   %al,%al
    5df9:	75 dd                	jne    5dd8 <ema_do_uncommit_real+0xd8>
    5dfb:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
    5e00:	4c 89 f8             	mov    %r15,%rax
    5e03:	48 29 c8             	sub    %rcx,%rax
    5e06:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    5e0b:	8b 54 24 24          	mov    0x24(%rsp),%edx
    5e0f:	8b 44 24 28          	mov    0x28(%rsp),%eax
    5e13:	8b 4c 24 2c          	mov    0x2c(%rsp),%ecx
    5e17:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
    5e1c:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
    5e21:	09 c2                	or     %eax,%edx
    5e23:	e8 a8 c9 ff ff       	call   27d0 <sgx_mm_modify_ocall>
    5e28:	85 c0                	test   %eax,%eax
    5e2a:	75 70                	jne    5e9c <ema_do_uncommit_real+0x19c>
    5e2c:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    5e31:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    5e36:	49 89 c6             	mov    %rax,%r14
    5e39:	4c 39 f8             	cmp    %r15,%rax
    5e3c:	73 21                	jae    5e5f <ema_do_uncommit_real+0x15f>
    5e3e:	66 90                	xchg   %ax,%ax
    5e40:	4c 89 f6             	mov    %r14,%rsi
    5e43:	4c 89 ef             	mov    %r13,%rdi
    5e46:	e8 7d 70 00 00       	call   cec8 <do_eaccept>
    5e4b:	85 c0                	test   %eax,%eax
    5e4d:	0f 85 82 00 00 00    	jne    5ed5 <ema_do_uncommit_real+0x1d5>
    5e53:	49 81 c6 00 10 00 00 	add    $0x1000,%r14
    5e5a:	4d 39 fe             	cmp    %r15,%r14
    5e5d:	72 e1                	jb     5e40 <ema_do_uncommit_real+0x140>
    5e5f:	4c 8b 74 24 30       	mov    0x30(%rsp),%r14
    5e64:	4c 8b 6c 24 38       	mov    0x38(%rsp),%r13
    5e69:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
    5e6d:	4c 89 f2             	mov    %r14,%rdx
    5e70:	4c 89 ee             	mov    %r13,%rsi
    5e73:	48 2b 33             	sub    (%rbx),%rsi
    5e76:	48 c1 ea 0c          	shr    $0xc,%rdx
    5e7a:	48 c1 ee 0c          	shr    $0xc,%rsi
    5e7e:	e8 5d fb ff ff       	call   59e0 <bit_array_reset_range>
    5e83:	8b 4c 24 2c          	mov    0x2c(%rsp),%ecx
    5e87:	4c 89 f6             	mov    %r14,%rsi
    5e8a:	4c 89 ef             	mov    %r13,%rdi
    5e8d:	89 ca                	mov    %ecx,%edx
    5e8f:	e8 3c c9 ff ff       	call   27d0 <sgx_mm_modify_ocall>
    5e94:	85 c0                	test   %eax,%eax
    5e96:	0f 84 e4 fe ff ff    	je     5d80 <ema_do_uncommit_real+0x80>
    5e9c:	b8 0e 00 00 00       	mov    $0xe,%eax
    5ea1:	eb 02                	jmp    5ea5 <ema_do_uncommit_real+0x1a5>
    5ea3:	31 c0                	xor    %eax,%eax
    5ea5:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
    5eac:	00 
    5ead:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    5eb4:	00 00 
    5eb6:	75 22                	jne    5eda <ema_do_uncommit_real+0x1da>
    5eb8:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    5ebc:	5b                   	pop    %rbx
    5ebd:	41 5c                	pop    %r12
    5ebf:	41 5d                	pop    %r13
    5ec1:	41 5e                	pop    %r14
    5ec3:	41 5f                	pop    %r15
    5ec5:	5d                   	pop    %rbp
    5ec6:	c3                   	ret
    5ec7:	48 c7 44 24 30 00 10 	movq   $0x1000,0x30(%rsp)
    5ece:	00 00 
    5ed0:	e9 36 ff ff ff       	jmp    5e0b <ema_do_uncommit_real+0x10b>
    5ed5:	e8 66 70 00 00       	call   cf40 <abort>
    5eda:	e8 41 56 00 00       	call   b520 <__stack_chk_fail>
    5edf:	90                   	nop

0000000000005ee0 <get_ema_alloc_flags>:
    5ee0:	f3 0f 1e fa          	endbr64
    5ee4:	8b 47 10             	mov    0x10(%rdi),%eax
    5ee7:	c3                   	ret
    5ee8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    5eef:	00 

0000000000005ef0 <get_ema_si_flags>:
    5ef0:	f3 0f 1e fa          	endbr64
    5ef4:	48 8b 47 18          	mov    0x18(%rdi),%rax
    5ef8:	c3                   	ret
    5ef9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000005f00 <ema_fault_handler>:
    5f00:	f3 0f 1e fa          	endbr64
    5f04:	48 85 f6             	test   %rsi,%rsi
    5f07:	74 07                	je     5f10 <ema_fault_handler+0x10>
    5f09:	48 8b 47 30          	mov    0x30(%rdi),%rax
    5f0d:	48 89 06             	mov    %rax,(%rsi)
    5f10:	48 8b 47 28          	mov    0x28(%rdi),%rax
    5f14:	c3                   	ret
    5f15:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    5f1c:	00 00 00 
    5f1f:	90                   	nop

0000000000005f20 <ema_set_eaccept_full>:
    5f20:	f3 0f 1e fa          	endbr64
    5f24:	53                   	push   %rbx
    5f25:	48 89 fb             	mov    %rdi,%rbx
    5f28:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
    5f2c:	48 85 ff             	test   %rdi,%rdi
    5f2f:	74 0f                	je     5f40 <ema_set_eaccept_full+0x20>
    5f31:	e8 8a fa ff ff       	call   59c0 <bit_array_set_all>
    5f36:	31 c0                	xor    %eax,%eax
    5f38:	5b                   	pop    %rbx
    5f39:	c3                   	ret
    5f3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    5f40:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
    5f44:	48 c1 ef 0c          	shr    $0xc,%rdi
    5f48:	e8 e3 f8 ff ff       	call   5830 <bit_array_new_set>
    5f4d:	48 89 43 20          	mov    %rax,0x20(%rbx)
    5f51:	48 85 c0             	test   %rax,%rax
    5f54:	75 e0                	jne    5f36 <ema_set_eaccept_full+0x16>
    5f56:	b8 0c 00 00 00       	mov    $0xc,%eax
    5f5b:	5b                   	pop    %rbx
    5f5c:	c3                   	ret
    5f5d:	0f 1f 00             	nopl   (%rax)

0000000000005f60 <ema_page_committed>:
    5f60:	f3 0f 1e fa          	endbr64
    5f64:	48 8b 47 20          	mov    0x20(%rdi),%rax
    5f68:	48 85 c0             	test   %rax,%rax
    5f6b:	74 13                	je     5f80 <ema_page_committed+0x20>
    5f6d:	48 2b 37             	sub    (%rdi),%rsi
    5f70:	48 89 c7             	mov    %rax,%rdi
    5f73:	48 c1 ee 0c          	shr    $0xc,%rsi
    5f77:	e9 34 f9 ff ff       	jmp    58b0 <bit_array_test>
    5f7c:	0f 1f 40 00          	nopl   0x0(%rax)
    5f80:	31 c0                	xor    %eax,%eax
    5f82:	c3                   	ret
    5f83:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    5f8a:	00 00 00 
    5f8d:	0f 1f 00             	nopl   (%rax)

0000000000005f90 <search_ema>:
    5f90:	f3 0f 1e fa          	endbr64
    5f94:	48 8b 0f             	mov    (%rdi),%rcx
    5f97:	48 8b 41 38          	mov    0x38(%rcx),%rax
    5f9b:	48 39 c1             	cmp    %rax,%rcx
    5f9e:	74 1a                	je     5fba <search_ema+0x2a>
    5fa0:	48 8b 10             	mov    (%rax),%rdx
    5fa3:	48 39 d6             	cmp    %rdx,%rsi
    5fa6:	72 09                	jb     5fb1 <search_ema+0x21>
    5fa8:	48 03 50 08          	add    0x8(%rax),%rdx
    5fac:	48 39 d6             	cmp    %rdx,%rsi
    5faf:	72 0b                	jb     5fbc <search_ema+0x2c>
    5fb1:	48 8b 40 38          	mov    0x38(%rax),%rax
    5fb5:	48 39 c1             	cmp    %rax,%rcx
    5fb8:	75 e6                	jne    5fa0 <search_ema+0x10>
    5fba:	31 c0                	xor    %eax,%eax
    5fbc:	c3                   	ret
    5fbd:	0f 1f 00             	nopl   (%rax)

0000000000005fc0 <search_ema_range>:
    5fc0:	f3 0f 1e fa          	endbr64
    5fc4:	4c 8b 0f             	mov    (%rdi),%r9
    5fc7:	49 89 fa             	mov    %rdi,%r10
    5fca:	49 8b 41 38          	mov    0x38(%r9),%rax
    5fce:	49 39 c1             	cmp    %rax,%r9
    5fd1:	75 0e                	jne    5fe1 <search_ema_range+0x21>
    5fd3:	eb 4b                	jmp    6020 <search_ema_range+0x60>
    5fd5:	0f 1f 00             	nopl   (%rax)
    5fd8:	48 8b 40 38          	mov    0x38(%rax),%rax
    5fdc:	49 39 c1             	cmp    %rax,%r9
    5fdf:	74 3f                	je     6020 <search_ema_range+0x60>
    5fe1:	48 8b 38             	mov    (%rax),%rdi
    5fe4:	48 03 78 08          	add    0x8(%rax),%rdi
    5fe8:	48 39 fe             	cmp    %rdi,%rsi
    5feb:	73 eb                	jae    5fd8 <search_ema_range+0x18>
    5fed:	49 39 c1             	cmp    %rax,%r9
    5ff0:	74 2e                	je     6020 <search_ema_range+0x60>
    5ff2:	48 39 10             	cmp    %rdx,(%rax)
    5ff5:	73 29                	jae    6020 <search_ema_range+0x60>
    5ff7:	48 89 01             	mov    %rax,(%rcx)
    5ffa:	49 8b 0a             	mov    (%r10),%rcx
    5ffd:	48 39 c1             	cmp    %rax,%rcx
    6000:	74 14                	je     6016 <search_ema_range+0x56>
    6002:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6008:	48 8b 40 38          	mov    0x38(%rax),%rax
    600c:	48 39 c1             	cmp    %rax,%rcx
    600f:	74 05                	je     6016 <search_ema_range+0x56>
    6011:	48 39 10             	cmp    %rdx,(%rax)
    6014:	72 f2                	jb     6008 <search_ema_range+0x48>
    6016:	31 d2                	xor    %edx,%edx
    6018:	49 89 00             	mov    %rax,(%r8)
    601b:	89 d0                	mov    %edx,%eax
    601d:	c3                   	ret
    601e:	66 90                	xchg   %ax,%ax
    6020:	48 c7 01 00 00 00 00 	movq   $0x0,(%rcx)
    6027:	31 c0                	xor    %eax,%eax
    6029:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    602e:	eb e8                	jmp    6018 <search_ema_range+0x58>

0000000000006030 <ema_split>:
    6030:	f3 0f 1e fa          	endbr64
    6034:	41 56                	push   %r14
    6036:	41 89 d6             	mov    %edx,%r14d
    6039:	41 55                	push   %r13
    603b:	49 89 cd             	mov    %rcx,%r13
    603e:	41 54                	push   %r12
    6040:	49 89 f4             	mov    %rsi,%r12
    6043:	55                   	push   %rbp
    6044:	53                   	push   %rbx
    6045:	48 89 fb             	mov    %rdi,%rbx
    6048:	bf 48 00 00 00       	mov    $0x48,%edi
    604d:	48 83 ec 30          	sub    $0x30,%rsp
    6051:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6058:	00 00 
    605a:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    605f:	31 c0                	xor    %eax,%eax
    6061:	e8 8a 16 00 00       	call   76f0 <emalloc>
    6066:	48 85 c0             	test   %rax,%rax
    6069:	0f 84 39 01 00 00    	je     61a8 <ema_split+0x178>
    606f:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
    6076:	00 00 
    6078:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
    607c:	48 89 c5             	mov    %rax,%rbp
    607f:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
    6086:	00 00 
    6088:	48 85 ff             	test   %rdi,%rdi
    608b:	74 21                	je     60ae <ema_split+0x7e>
    608d:	4c 89 e6             	mov    %r12,%rsi
    6090:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
    6095:	48 8d 54 24 18       	lea    0x18(%rsp),%rdx
    609a:	48 2b 33             	sub    (%rbx),%rsi
    609d:	48 c1 ee 0c          	shr    $0xc,%rsi
    60a1:	e8 1a fa ff ff       	call   5ac0 <bit_array_split>
    60a6:	85 c0                	test   %eax,%eax
    60a8:	0f 85 e2 00 00 00    	jne    6190 <ema_split+0x160>
    60ae:	ba 48 00 00 00       	mov    $0x48,%edx
    60b3:	48 89 de             	mov    %rbx,%rsi
    60b6:	48 89 ef             	mov    %rbp,%rdi
    60b9:	e8 a2 51 00 00       	call   b260 <memcpy>
    60be:	45 84 f6             	test   %r14b,%r14b
    60c1:	0f 85 99 00 00 00    	jne    6160 <ema_split+0x130>
    60c7:	48 8b 43 38          	mov    0x38(%rbx),%rax
    60cb:	48 89 d9             	mov    %rbx,%rcx
    60ce:	48 8b 50 40          	mov    0x40(%rax),%rdx
    60d2:	66 48 0f 6e c0       	movq   %rax,%xmm0
    60d7:	66 48 0f 6e da       	movq   %rdx,%xmm3
    60dc:	66 0f 6c c3          	punpcklqdq %xmm3,%xmm0
    60e0:	0f 11 45 38          	movups %xmm0,0x38(%rbp)
    60e4:	48 89 6a 38          	mov    %rbp,0x38(%rdx)
    60e8:	48 89 ea             	mov    %rbp,%rdx
    60eb:	48 89 68 40          	mov    %rbp,0x40(%rax)
    60ef:	48 8b 03             	mov    (%rbx),%rax
    60f2:	48 8b 73 08          	mov    0x8(%rbx),%rsi
    60f6:	4c 89 e7             	mov    %r12,%rdi
    60f9:	48 29 c7             	sub    %rax,%rdi
    60fc:	66 48 0f 6e c0       	movq   %rax,%xmm0
    6101:	48 01 f0             	add    %rsi,%rax
    6104:	66 48 0f 6e cf       	movq   %rdi,%xmm1
    6109:	4c 29 e0             	sub    %r12,%rax
    610c:	48 83 7b 20 00       	cmpq   $0x0,0x20(%rbx)
    6111:	66 0f 6c c1          	punpcklqdq %xmm1,%xmm0
    6115:	0f 11 01             	movups %xmm0,(%rcx)
    6118:	4c 89 22             	mov    %r12,(%rdx)
    611b:	48 89 42 08          	mov    %rax,0x8(%rdx)
    611f:	74 12                	je     6133 <ema_split+0x103>
    6121:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    6126:	48 89 41 20          	mov    %rax,0x20(%rcx)
    612a:	48 8b 44 24 20       	mov    0x20(%rsp),%rax
    612f:	48 89 42 20          	mov    %rax,0x20(%rdx)
    6133:	49 89 6d 00          	mov    %rbp,0x0(%r13)
    6137:	31 c0                	xor    %eax,%eax
    6139:	48 8b 54 24 28       	mov    0x28(%rsp),%rdx
    613e:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    6145:	00 00 
    6147:	75 66                	jne    61af <ema_split+0x17f>
    6149:	48 83 c4 30          	add    $0x30,%rsp
    614d:	5b                   	pop    %rbx
    614e:	5d                   	pop    %rbp
    614f:	41 5c                	pop    %r12
    6151:	41 5d                	pop    %r13
    6153:	41 5e                	pop    %r14
    6155:	c3                   	ret
    6156:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    615d:	00 00 00 
    6160:	48 8b 43 40          	mov    0x40(%rbx),%rax
    6164:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    6169:	48 89 da             	mov    %rbx,%rdx
    616c:	48 89 e9             	mov    %rbp,%rcx
    616f:	66 48 0f 6e d0       	movq   %rax,%xmm2
    6174:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    6178:	0f 11 45 38          	movups %xmm0,0x38(%rbp)
    617c:	48 89 68 38          	mov    %rbp,0x38(%rax)
    6180:	48 89 6b 40          	mov    %rbp,0x40(%rbx)
    6184:	e9 66 ff ff ff       	jmp    60ef <ema_split+0xbf>
    6189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    6190:	48 89 ef             	mov    %rbp,%rdi
    6193:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    6197:	e8 d4 17 00 00       	call   7970 <efree>
    619c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    61a0:	eb 97                	jmp    6139 <ema_split+0x109>
    61a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    61a8:	b8 0c 00 00 00       	mov    $0xc,%eax
    61ad:	eb 8a                	jmp    6139 <ema_split+0x109>
    61af:	e8 6c 53 00 00       	call   b520 <__stack_chk_fail>
    61b4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    61bb:	00 00 00 
    61be:	66 90                	xchg   %ax,%ax

00000000000061c0 <ema_split_ex>:
    61c0:	f3 0f 1e fa          	endbr64
    61c4:	41 54                	push   %r12
    61c6:	49 89 cc             	mov    %rcx,%r12
    61c9:	55                   	push   %rbp
    61ca:	48 89 d5             	mov    %rdx,%rbp
    61cd:	53                   	push   %rbx
    61ce:	48 89 fb             	mov    %rdi,%rbx
    61d1:	48 83 ec 10          	sub    $0x10,%rsp
    61d5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    61dc:	00 00 
    61de:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    61e3:	48 8b 07             	mov    (%rdi),%rax
    61e6:	48 39 f0             	cmp    %rsi,%rax
    61e9:	72 35                	jb     6220 <ema_split_ex+0x60>
    61eb:	48 03 43 08          	add    0x8(%rbx),%rax
    61ef:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    61f6:	00 
    61f7:	48 39 c5             	cmp    %rax,%rbp
    61fa:	72 44                	jb     6240 <ema_split_ex+0x80>
    61fc:	48 89 d8             	mov    %rbx,%rax
    61ff:	49 89 04 24          	mov    %rax,(%r12)
    6203:	31 c0                	xor    %eax,%eax
    6205:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    620a:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    6211:	00 00 
    6213:	75 5b                	jne    6270 <ema_split_ex+0xb0>
    6215:	48 83 c4 10          	add    $0x10,%rsp
    6219:	5b                   	pop    %rbx
    621a:	5d                   	pop    %rbp
    621b:	41 5c                	pop    %r12
    621d:	c3                   	ret
    621e:	66 90                	xchg   %ax,%ax
    6220:	31 d2                	xor    %edx,%edx
    6222:	48 89 e1             	mov    %rsp,%rcx
    6225:	e8 06 fe ff ff       	call   6030 <ema_split>
    622a:	85 c0                	test   %eax,%eax
    622c:	75 d7                	jne    6205 <ema_split_ex+0x45>
    622e:	48 8b 14 24          	mov    (%rsp),%rdx
    6232:	48 85 d2             	test   %rdx,%rdx
    6235:	74 31                	je     6268 <ema_split_ex+0xa8>
    6237:	48 8b 02             	mov    (%rdx),%rax
    623a:	48 89 d3             	mov    %rdx,%rbx
    623d:	eb ac                	jmp    61eb <ema_split_ex+0x2b>
    623f:	90                   	nop
    6240:	48 89 e1             	mov    %rsp,%rcx
    6243:	ba 01 00 00 00       	mov    $0x1,%edx
    6248:	48 89 ee             	mov    %rbp,%rsi
    624b:	48 89 df             	mov    %rbx,%rdi
    624e:	e8 dd fd ff ff       	call   6030 <ema_split>
    6253:	85 c0                	test   %eax,%eax
    6255:	75 ae                	jne    6205 <ema_split_ex+0x45>
    6257:	48 8b 04 24          	mov    (%rsp),%rax
    625b:	48 85 c0             	test   %rax,%rax
    625e:	75 9f                	jne    61ff <ema_split_ex+0x3f>
    6260:	eb 9a                	jmp    61fc <ema_split_ex+0x3c>
    6262:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6268:	48 8b 03             	mov    (%rbx),%rax
    626b:	e9 7b ff ff ff       	jmp    61eb <ema_split_ex+0x2b>
    6270:	e8 ab 52 00 00       	call   b520 <__stack_chk_fail>
    6275:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    627c:	00 00 00 
    627f:	90                   	nop

0000000000006280 <find_free_region>:
    6280:	f3 0f 1e fa          	endbr64
    6284:	41 57                	push   %r15
    6286:	49 89 cf             	mov    %rcx,%r15
    6289:	41 56                	push   %r14
    628b:	49 89 fe             	mov    %rdi,%r14
    628e:	41 55                	push   %r13
    6290:	49 89 d5             	mov    %rdx,%r13
    6293:	41 54                	push   %r12
    6295:	49 f7 dd             	neg    %r13
    6298:	55                   	push   %rbp
    6299:	48 89 f5             	mov    %rsi,%rbp
    629c:	53                   	push   %rbx
    629d:	48 89 d3             	mov    %rdx,%rbx
    62a0:	48 83 ec 18          	sub    $0x18,%rsp
    62a4:	4c 8b 27             	mov    (%rdi),%r12
    62a7:	49 8b 4c 24 38       	mov    0x38(%r12),%rcx
    62ac:	49 c7 00 00 00 00 00 	movq   $0x0,(%r8)
    62b3:	49 c7 07 00 00 00 00 	movq   $0x0,(%r15)
    62ba:	49 39 cc             	cmp    %rcx,%r12
    62bd:	0f 84 a5 00 00 00    	je     6368 <find_free_region+0xe8>
    62c3:	48 8b 51 38          	mov    0x38(%rcx),%rdx
    62c7:	4c 8b 11             	mov    (%rcx),%r10
    62ca:	48 8d 73 ff          	lea    -0x1(%rbx),%rsi
    62ce:	49 39 d4             	cmp    %rdx,%r12
    62d1:	0f 84 02 01 00 00    	je     63d9 <find_free_region+0x159>
    62d7:	4c 8b 0d 02 de 01 00 	mov    0x1de02(%rip),%r9        # 240e0 <mm_user_end>
    62de:	48 89 c8             	mov    %rcx,%rax
    62e1:	48 8d 3d 80 cd 00 00 	lea    0xcd80(%rip),%rdi        # 13068 <g_rts_ema_root>
    62e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    62ef:	00 
    62f0:	48 8b 58 08          	mov    0x8(%rax),%rbx
    62f4:	48 01 f3             	add    %rsi,%rbx
    62f7:	48 89 d8             	mov    %rbx,%rax
    62fa:	4c 01 d0             	add    %r10,%rax
    62fd:	4c 8b 12             	mov    (%rdx),%r10
    6300:	4c 21 e8             	and    %r13,%rax
    6303:	49 39 c2             	cmp    %rax,%r10
    6306:	72 48                	jb     6350 <find_free_region+0xd0>
    6308:	4d 89 d3             	mov    %r10,%r11
    630b:	49 29 c3             	sub    %rax,%r11
    630e:	49 39 eb             	cmp    %rbp,%r11
    6311:	72 3d                	jb     6350 <find_free_region+0xd0>
    6313:	49 39 fe             	cmp    %rdi,%r14
    6316:	75 16                	jne    632e <find_free_region+0xae>
    6318:	49 89 eb             	mov    %rbp,%r11
    631b:	49 01 c3             	add    %rax,%r11
    631e:	72 30                	jb     6350 <find_free_region+0xd0>
    6320:	4c 39 c8             	cmp    %r9,%rax
    6323:	73 09                	jae    632e <find_free_region+0xae>
    6325:	4c 39 1d bc dd 01 00 	cmp    %r11,0x1ddbc(%rip)        # 240e8 <mm_user_base>
    632c:	72 22                	jb     6350 <find_free_region+0xd0>
    632e:	49 89 10             	mov    %rdx,(%r8)
    6331:	49 89 07             	mov    %rax,(%r15)
    6334:	48 83 c4 18          	add    $0x18,%rsp
    6338:	b8 01 00 00 00       	mov    $0x1,%eax
    633d:	5b                   	pop    %rbx
    633e:	5d                   	pop    %rbp
    633f:	41 5c                	pop    %r12
    6341:	41 5d                	pop    %r13
    6343:	41 5e                	pop    %r14
    6345:	41 5f                	pop    %r15
    6347:	c3                   	ret
    6348:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    634f:	00 
    6350:	48 8b 5a 38          	mov    0x38(%rdx),%rbx
    6354:	48 89 d0             	mov    %rdx,%rax
    6357:	49 39 dc             	cmp    %rbx,%r12
    635a:	0f 84 80 00 00 00    	je     63e0 <find_free_region+0x160>
    6360:	48 89 da             	mov    %rbx,%rdx
    6363:	eb 8b                	jmp    62f0 <find_free_region+0x70>
    6365:	0f 1f 00             	nopl   (%rax)
    6368:	48 8d 05 f9 cc 00 00 	lea    0xccf9(%rip),%rax        # 13068 <g_rts_ema_root>
    636f:	48 8b 15 72 dd 01 00 	mov    0x1dd72(%rip),%rdx        # 240e8 <mm_user_base>
    6376:	48 39 c7             	cmp    %rax,%rdi
    6379:	74 25                	je     63a0 <find_free_region+0x120>
    637b:	48 8d 44 1a ff       	lea    -0x1(%rdx,%rbx,1),%rax
    6380:	4c 21 e8             	and    %r13,%rax
    6383:	48 01 c5             	add    %rax,%rbp
    6386:	72 40                	jb     63c8 <find_free_region+0x148>
    6388:	48 39 d0             	cmp    %rdx,%rax
    638b:	72 3b                	jb     63c8 <find_free_region+0x148>
    638d:	48 39 2d 4c dd 01 00 	cmp    %rbp,0x1dd4c(%rip)        # 240e0 <mm_user_end>
    6394:	72 32                	jb     63c8 <find_free_region+0x148>
    6396:	49 89 07             	mov    %rax,(%r15)
    6399:	4d 89 20             	mov    %r12,(%r8)
    639c:	eb 96                	jmp    6334 <find_free_region+0xb4>
    639e:	66 90                	xchg   %ax,%ax
    63a0:	48 39 f2             	cmp    %rsi,%rdx
    63a3:	0f 83 be 01 00 00    	jae    6567 <find_free_region+0x2e7>
    63a9:	48 8b 05 30 dd 01 00 	mov    0x1dd30(%rip),%rax        # 240e0 <mm_user_end>
    63b0:	4c 8d 74 03 ff       	lea    -0x1(%rbx,%rax,1),%r14
    63b5:	48 89 e8             	mov    %rbp,%rax
    63b8:	4d 21 ee             	and    %r13,%r14
    63bb:	4c 01 f0             	add    %r14,%rax
    63be:	0f 83 e4 00 00 00    	jae    64a8 <find_free_region+0x228>
    63c4:	0f 1f 40 00          	nopl   0x0(%rax)
    63c8:	31 c0                	xor    %eax,%eax
    63ca:	48 83 c4 18          	add    $0x18,%rsp
    63ce:	5b                   	pop    %rbx
    63cf:	5d                   	pop    %rbp
    63d0:	41 5c                	pop    %r12
    63d2:	41 5d                	pop    %r13
    63d4:	41 5e                	pop    %r14
    63d6:	41 5f                	pop    %r15
    63d8:	c3                   	ret
    63d9:	48 89 d3             	mov    %rdx,%rbx
    63dc:	48 89 ca             	mov    %rcx,%rdx
    63df:	90                   	nop
    63e0:	4d 8d 24 32          	lea    (%r10,%rsi,1),%r12
    63e4:	4c 03 62 08          	add    0x8(%rdx),%r12
    63e8:	48 89 ee             	mov    %rbp,%rsi
    63eb:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    63f0:	4d 21 ec             	and    %r13,%r12
    63f3:	48 89 0c 24          	mov    %rcx,(%rsp)
    63f7:	4c 89 e7             	mov    %r12,%rdi
    63fa:	e8 01 c5 ff ff       	call   2900 <sgx_mm_is_within_enclave>
    63ff:	48 8b 0c 24          	mov    (%rsp),%rcx
    6403:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    6408:	84 c0                	test   %al,%al
    640a:	74 4c                	je     6458 <find_free_region+0x1d8>
    640c:	48 89 ee             	mov    %rbp,%rsi
    640f:	31 d2                	xor    %edx,%edx
    6411:	48 8d 05 50 cc 00 00 	lea    0xcc50(%rip),%rax        # 13068 <g_rts_ema_root>
    6418:	4c 01 e6             	add    %r12,%rsi
    641b:	0f 92 c2             	setb   %dl
    641e:	49 39 c6             	cmp    %rax,%r14
    6421:	0f 84 a7 00 00 00    	je     64ce <find_free_region+0x24e>
    6427:	48 85 d2             	test   %rdx,%rdx
    642a:	0f 85 20 01 00 00    	jne    6550 <find_free_region+0x2d0>
    6430:	4c 3b 25 b1 dc 01 00 	cmp    0x1dcb1(%rip),%r12        # 240e8 <mm_user_base>
    6437:	0f 82 13 01 00 00    	jb     6550 <find_free_region+0x2d0>
    643d:	48 39 35 9c dc 01 00 	cmp    %rsi,0x1dc9c(%rip)        # 240e0 <mm_user_end>
    6444:	0f 82 06 01 00 00    	jb     6550 <find_free_region+0x2d0>
    644a:	49 89 18             	mov    %rbx,(%r8)
    644d:	4d 89 27             	mov    %r12,(%r15)
    6450:	e9 df fe ff ff       	jmp    6334 <find_free_region+0xb4>
    6455:	0f 1f 00             	nopl   (%rax)
    6458:	48 8b 19             	mov    (%rcx),%rbx
    645b:	48 39 eb             	cmp    %rbp,%rbx
    645e:	0f 82 64 ff ff ff    	jb     63c8 <find_free_region+0x148>
    6464:	48 29 eb             	sub    %rbp,%rbx
    6467:	48 8d 05 fa cb 00 00 	lea    0xcbfa(%rip),%rax        # 13068 <g_rts_ema_root>
    646e:	4c 21 eb             	and    %r13,%rbx
    6471:	49 39 c6             	cmp    %rax,%r14
    6474:	0f 84 85 00 00 00    	je     64ff <find_free_region+0x27f>
    647a:	48 01 dd             	add    %rbx,%rbp
    647d:	0f 82 45 ff ff ff    	jb     63c8 <find_free_region+0x148>
    6483:	48 3b 1d 5e dc 01 00 	cmp    0x1dc5e(%rip),%rbx        # 240e8 <mm_user_base>
    648a:	0f 82 38 ff ff ff    	jb     63c8 <find_free_region+0x148>
    6490:	48 39 2d 49 dc 01 00 	cmp    %rbp,0x1dc49(%rip)        # 240e0 <mm_user_end>
    6497:	0f 82 2b ff ff ff    	jb     63c8 <find_free_region+0x148>
    649d:	49 89 1f             	mov    %rbx,(%r15)
    64a0:	49 89 08             	mov    %rcx,(%r8)
    64a3:	e9 8c fe ff ff       	jmp    6334 <find_free_region+0xb4>
    64a8:	48 89 ee             	mov    %rbp,%rsi
    64ab:	4c 89 f7             	mov    %r14,%rdi
    64ae:	4c 89 04 24          	mov    %r8,(%rsp)
    64b2:	e8 49 c4 ff ff       	call   2900 <sgx_mm_is_within_enclave>
    64b7:	4c 8b 04 24          	mov    (%rsp),%r8
    64bb:	84 c0                	test   %al,%al
    64bd:	0f 84 05 ff ff ff    	je     63c8 <find_free_region+0x148>
    64c3:	4d 89 37             	mov    %r14,(%r15)
    64c6:	4d 89 20             	mov    %r12,(%r8)
    64c9:	e9 66 fe ff ff       	jmp    6334 <find_free_region+0xb4>
    64ce:	48 85 d2             	test   %rdx,%rdx
    64d1:	75 1a                	jne    64ed <find_free_region+0x26d>
    64d3:	4c 3b 25 06 dc 01 00 	cmp    0x1dc06(%rip),%r12        # 240e0 <mm_user_end>
    64da:	0f 83 6a ff ff ff    	jae    644a <find_free_region+0x1ca>
    64e0:	48 39 35 01 dc 01 00 	cmp    %rsi,0x1dc01(%rip)        # 240e8 <mm_user_base>
    64e7:	0f 83 5d ff ff ff    	jae    644a <find_free_region+0x1ca>
    64ed:	48 8b 19             	mov    (%rcx),%rbx
    64f0:	48 39 eb             	cmp    %rbp,%rbx
    64f3:	0f 82 cf fe ff ff    	jb     63c8 <find_free_region+0x148>
    64f9:	48 29 eb             	sub    %rbp,%rbx
    64fc:	4c 21 eb             	and    %r13,%rbx
    64ff:	48 89 ee             	mov    %rbp,%rsi
    6502:	48 89 df             	mov    %rbx,%rdi
    6505:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
    650a:	48 89 0c 24          	mov    %rcx,(%rsp)
    650e:	e8 ed c3 ff ff       	call   2900 <sgx_mm_is_within_enclave>
    6513:	84 c0                	test   %al,%al
    6515:	0f 84 ad fe ff ff    	je     63c8 <find_free_region+0x148>
    651b:	48 01 dd             	add    %rbx,%rbp
    651e:	0f 82 a4 fe ff ff    	jb     63c8 <find_free_region+0x148>
    6524:	48 3b 1d b5 db 01 00 	cmp    0x1dbb5(%rip),%rbx        # 240e0 <mm_user_end>
    652b:	48 8b 0c 24          	mov    (%rsp),%rcx
    652f:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
    6534:	0f 83 63 ff ff ff    	jae    649d <find_free_region+0x21d>
    653a:	48 39 2d a7 db 01 00 	cmp    %rbp,0x1dba7(%rip)        # 240e8 <mm_user_base>
    6541:	0f 83 56 ff ff ff    	jae    649d <find_free_region+0x21d>
    6547:	31 c0                	xor    %eax,%eax
    6549:	e9 7c fe ff ff       	jmp    63ca <find_free_region+0x14a>
    654e:	66 90                	xchg   %ax,%ax
    6550:	48 8b 19             	mov    (%rcx),%rbx
    6553:	48 39 eb             	cmp    %rbp,%rbx
    6556:	0f 82 6c fe ff ff    	jb     63c8 <find_free_region+0x148>
    655c:	48 29 eb             	sub    %rbp,%rbx
    655f:	4c 21 eb             	and    %r13,%rbx
    6562:	e9 13 ff ff ff       	jmp    647a <find_free_region+0x1fa>
    6567:	48 29 f2             	sub    %rsi,%rdx
    656a:	4c 89 04 24          	mov    %r8,(%rsp)
    656e:	4c 21 ea             	and    %r13,%rdx
    6571:	48 89 d7             	mov    %rdx,%rdi
    6574:	49 89 d6             	mov    %rdx,%r14
    6577:	e8 84 c3 ff ff       	call   2900 <sgx_mm_is_within_enclave>
    657c:	4c 8b 04 24          	mov    (%rsp),%r8
    6580:	84 c0                	test   %al,%al
    6582:	0f 85 3b ff ff ff    	jne    64c3 <find_free_region+0x243>
    6588:	e9 1c fe ff ff       	jmp    63a9 <find_free_region+0x129>
    658d:	0f 1f 00             	nopl   (%rax)

0000000000006590 <find_free_region_at>:
    6590:	f3 0f 1e fa          	endbr64
    6594:	41 55                	push   %r13
    6596:	49 89 cd             	mov    %rcx,%r13
    6599:	41 54                	push   %r12
    659b:	49 89 fc             	mov    %rdi,%r12
    659e:	55                   	push   %rbp
    659f:	48 89 d5             	mov    %rdx,%rbp
    65a2:	53                   	push   %rbx
    65a3:	48 89 f3             	mov    %rsi,%rbx
    65a6:	48 89 d6             	mov    %rdx,%rsi
    65a9:	48 89 df             	mov    %rbx,%rdi
    65ac:	48 83 ec 08          	sub    $0x8,%rsp
    65b0:	e8 4b c3 ff ff       	call   2900 <sgx_mm_is_within_enclave>
    65b5:	31 c9                	xor    %ecx,%ecx
    65b7:	84 c0                	test   %al,%al
    65b9:	74 5f                	je     661a <find_free_region_at+0x8a>
    65bb:	31 f6                	xor    %esi,%esi
    65bd:	48 8d 15 a4 ca 00 00 	lea    0xcaa4(%rip),%rdx        # 13068 <g_rts_ema_root>
    65c4:	48 01 dd             	add    %rbx,%rbp
    65c7:	40 0f 92 c6          	setb   %sil
    65cb:	49 39 d4             	cmp    %rdx,%r12
    65ce:	0f 84 7c 00 00 00    	je     6650 <find_free_region_at+0xc0>
    65d4:	48 85 f6             	test   %rsi,%rsi
    65d7:	75 5e                	jne    6637 <find_free_region_at+0xa7>
    65d9:	48 3b 1d 08 db 01 00 	cmp    0x1db08(%rip),%rbx        # 240e8 <mm_user_base>
    65e0:	72 55                	jb     6637 <find_free_region_at+0xa7>
    65e2:	48 39 2d f7 da 01 00 	cmp    %rbp,0x1daf7(%rip)        # 240e0 <mm_user_end>
    65e9:	72 4c                	jb     6637 <find_free_region_at+0xa7>
    65eb:	49 8b 14 24          	mov    (%r12),%rdx
    65ef:	48 8b 4a 38          	mov    0x38(%rdx),%rcx
    65f3:	48 39 ca             	cmp    %rcx,%rdx
    65f6:	75 1a                	jne    6612 <find_free_region_at+0x82>
    65f8:	eb 20                	jmp    661a <find_free_region_at+0x8a>
    65fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6600:	48 03 71 08          	add    0x8(%rcx),%rsi
    6604:	48 39 f3             	cmp    %rsi,%rbx
    6607:	72 27                	jb     6630 <find_free_region_at+0xa0>
    6609:	48 8b 49 38          	mov    0x38(%rcx),%rcx
    660d:	48 39 ca             	cmp    %rcx,%rdx
    6610:	74 08                	je     661a <find_free_region_at+0x8a>
    6612:	48 8b 31             	mov    (%rcx),%rsi
    6615:	48 39 ee             	cmp    %rbp,%rsi
    6618:	72 e6                	jb     6600 <find_free_region_at+0x70>
    661a:	49 89 4d 00          	mov    %rcx,0x0(%r13)
    661e:	48 83 c4 08          	add    $0x8,%rsp
    6622:	5b                   	pop    %rbx
    6623:	5d                   	pop    %rbp
    6624:	41 5c                	pop    %r12
    6626:	41 5d                	pop    %r13
    6628:	c3                   	ret
    6629:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    6630:	48 39 ca             	cmp    %rcx,%rdx
    6633:	74 e5                	je     661a <find_free_region_at+0x8a>
    6635:	31 c9                	xor    %ecx,%ecx
    6637:	31 c0                	xor    %eax,%eax
    6639:	49 89 4d 00          	mov    %rcx,0x0(%r13)
    663d:	48 83 c4 08          	add    $0x8,%rsp
    6641:	5b                   	pop    %rbx
    6642:	5d                   	pop    %rbp
    6643:	41 5c                	pop    %r12
    6645:	41 5d                	pop    %r13
    6647:	c3                   	ret
    6648:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    664f:	00 
    6650:	48 85 f6             	test   %rsi,%rsi
    6653:	75 e2                	jne    6637 <find_free_region_at+0xa7>
    6655:	48 3b 1d 84 da 01 00 	cmp    0x1da84(%rip),%rbx        # 240e0 <mm_user_end>
    665c:	73 8d                	jae    65eb <find_free_region_at+0x5b>
    665e:	48 39 2d 83 da 01 00 	cmp    %rbp,0x1da83(%rip)        # 240e8 <mm_user_base>
    6665:	73 84                	jae    65eb <find_free_region_at+0x5b>
    6667:	31 c0                	xor    %eax,%eax
    6669:	eb ce                	jmp    6639 <find_free_region_at+0xa9>
    666b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000006670 <ema_new>:
    6670:	f3 0f 1e fa          	endbr64
    6674:	53                   	push   %rbx
    6675:	48 83 ec 50          	sub    $0x50,%rsp
    6679:	64 4c 8b 14 25 28 00 	mov    %fs:0x28,%r10
    6680:	00 00 
    6682:	4c 89 54 24 48       	mov    %r10,0x48(%rsp)
    6687:	45 31 d2             	xor    %r10d,%r10d
    668a:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
    668f:	89 54 24 10          	mov    %edx,0x10(%rsp)
    6693:	48 89 e3             	mov    %rsp,%rbx
    6696:	48 89 3c 24          	mov    %rdi,(%rsp)
    669a:	bf 48 00 00 00       	mov    $0x48,%edi
    669f:	48 8b 50 40          	mov    0x40(%rax),%rdx
    66a3:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    66a8:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
    66ad:	48 89 54 24 40       	mov    %rdx,0x40(%rsp)
    66b2:	48 89 5a 38          	mov    %rbx,0x38(%rdx)
    66b6:	48 89 58 40          	mov    %rbx,0x40(%rax)
    66ba:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
    66bf:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
    66c6:	00 00 
    66c8:	4c 89 44 24 28       	mov    %r8,0x28(%rsp)
    66cd:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
    66d2:	e8 19 10 00 00       	call   76f0 <emalloc>
    66d7:	48 85 c0             	test   %rax,%rax
    66da:	74 6c                	je     6748 <ema_new+0xd8>
    66dc:	66 0f 6f 0c 24       	movdqa (%rsp),%xmm1
    66e1:	0f 11 08             	movups %xmm1,(%rax)
    66e4:	66 0f 6f 54 24 10    	movdqa 0x10(%rsp),%xmm2
    66ea:	0f 11 50 10          	movups %xmm2,0x10(%rax)
    66ee:	66 0f 6f 5c 24 20    	movdqa 0x20(%rsp),%xmm3
    66f4:	0f 11 58 20          	movups %xmm3,0x20(%rax)
    66f8:	66 0f 6f 64 24 30    	movdqa 0x30(%rsp),%xmm4
    66fe:	0f 11 60 30          	movups %xmm4,0x30(%rax)
    6702:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    6707:	48 89 50 40          	mov    %rdx,0x40(%rax)
    670b:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    6710:	48 89 42 38          	mov    %rax,0x38(%rdx)
    6714:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
    6719:	48 89 42 40          	mov    %rax,0x40(%rdx)
    671d:	66 48 0f 6e c2       	movq   %rdx,%xmm0
    6722:	0f 16 44 24 40       	movhps 0x40(%rsp),%xmm0
    6727:	0f 11 40 38          	movups %xmm0,0x38(%rax)
    672b:	48 8b 54 24 48       	mov    0x48(%rsp),%rdx
    6730:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    6737:	00 00 
    6739:	75 2d                	jne    6768 <ema_new+0xf8>
    673b:	48 83 c4 50          	add    $0x50,%rsp
    673f:	5b                   	pop    %rbx
    6740:	c3                   	ret
    6741:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    6748:	48 8b 4c 24 40       	mov    0x40(%rsp),%rcx
    674d:	48 39 59 38          	cmp    %rbx,0x38(%rcx)
    6751:	75 1a                	jne    676d <ema_new+0xfd>
    6753:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
    6758:	48 39 5a 40          	cmp    %rbx,0x40(%rdx)
    675c:	75 0f                	jne    676d <ema_new+0xfd>
    675e:	48 89 51 38          	mov    %rdx,0x38(%rcx)
    6762:	48 89 4a 40          	mov    %rcx,0x40(%rdx)
    6766:	eb c3                	jmp    672b <ema_new+0xbb>
    6768:	e8 b3 4d 00 00       	call   b520 <__stack_chk_fail>
    676d:	e8 ce 67 00 00       	call   cf40 <abort>
    6772:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    6779:	00 00 00 
    677c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000006780 <ema_destroy>:
    6780:	f3 0f 1e fa          	endbr64
    6784:	53                   	push   %rbx
    6785:	48 89 fb             	mov    %rdi,%rbx
    6788:	48 85 ff             	test   %rdi,%rdi
    678b:	74 1c                	je     67a9 <ema_destroy+0x29>
    678d:	48 8b 47 40          	mov    0x40(%rdi),%rax
    6791:	48 3b 78 38          	cmp    0x38(%rax),%rdi
    6795:	75 29                	jne    67c0 <ema_destroy+0x40>
    6797:	48 8b 57 38          	mov    0x38(%rdi),%rdx
    679b:	48 3b 7a 40          	cmp    0x40(%rdx),%rdi
    679f:	75 1f                	jne    67c0 <ema_destroy+0x40>
    67a1:	48 89 50 38          	mov    %rdx,0x38(%rax)
    67a5:	48 89 42 40          	mov    %rax,0x40(%rdx)
    67a9:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
    67ad:	48 85 ff             	test   %rdi,%rdi
    67b0:	74 05                	je     67b7 <ema_destroy+0x37>
    67b2:	e8 d9 f0 ff ff       	call   5890 <bit_array_delete>
    67b7:	48 89 df             	mov    %rbx,%rdi
    67ba:	5b                   	pop    %rbx
    67bb:	e9 b0 11 00 00       	jmp    7970 <efree>
    67c0:	e8 7b 67 00 00       	call   cf40 <abort>
    67c5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    67cc:	00 00 00 
    67cf:	90                   	nop

00000000000067d0 <do_commit>:
    67d0:	f3 0f 1e fa          	endbr64
    67d4:	55                   	push   %rbp
    67d5:	66 0f ef c0          	pxor   %xmm0,%xmm0
    67d9:	48 83 ca 08          	or     $0x8,%rdx
    67dd:	48 89 e5             	mov    %rsp,%rbp
    67e0:	41 55                	push   %r13
    67e2:	41 54                	push   %r12
    67e4:	49 89 fc             	mov    %rdi,%r12
    67e7:	53                   	push   %rbx
    67e8:	48 8d 1c 37          	lea    (%rdi,%rsi,1),%rbx
    67ec:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    67f0:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    67f4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    67fb:	00 00 
    67fd:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    6802:	31 c0                	xor    %eax,%eax
    6804:	48 89 14 24          	mov    %rdx,(%rsp)
    6808:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    680f:	00 00 
    6811:	0f 11 44 24 08       	movups %xmm0,0x8(%rsp)
    6816:	0f 11 44 24 18       	movups %xmm0,0x18(%rsp)
    681b:	0f 11 44 24 28       	movups %xmm0,0x28(%rsp)
    6820:	84 c9                	test   %cl,%cl
    6822:	74 4c                	je     6870 <do_commit+0xa0>
    6824:	49 89 e5             	mov    %rsp,%r13
    6827:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    682e:	00 00 
    6830:	48 81 eb 00 10 00 00 	sub    $0x1000,%rbx
    6837:	4c 89 ef             	mov    %r13,%rdi
    683a:	48 89 de             	mov    %rbx,%rsi
    683d:	e8 86 66 00 00       	call   cec8 <do_eaccept>
    6842:	85 c0                	test   %eax,%eax
    6844:	75 57                	jne    689d <do_commit+0xcd>
    6846:	49 39 dc             	cmp    %rbx,%r12
    6849:	72 e5                	jb     6830 <do_commit+0x60>
    684b:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
    6850:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6857:	00 00 
    6859:	75 47                	jne    68a2 <do_commit+0xd2>
    685b:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
    685f:	31 c0                	xor    %eax,%eax
    6861:	5b                   	pop    %rbx
    6862:	41 5c                	pop    %r12
    6864:	41 5d                	pop    %r13
    6866:	5d                   	pop    %rbp
    6867:	c3                   	ret
    6868:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    686f:	00 
    6870:	48 39 df             	cmp    %rbx,%rdi
    6873:	73 d6                	jae    684b <do_commit+0x7b>
    6875:	49 89 e5             	mov    %rsp,%r13
    6878:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    687f:	00 
    6880:	4c 89 e6             	mov    %r12,%rsi
    6883:	4c 89 ef             	mov    %r13,%rdi
    6886:	e8 3d 66 00 00       	call   cec8 <do_eaccept>
    688b:	85 c0                	test   %eax,%eax
    688d:	75 0e                	jne    689d <do_commit+0xcd>
    688f:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
    6896:	49 39 dc             	cmp    %rbx,%r12
    6899:	72 e5                	jb     6880 <do_commit+0xb0>
    689b:	eb ae                	jmp    684b <do_commit+0x7b>
    689d:	e8 9e 66 00 00       	call   cf40 <abort>
    68a2:	e8 79 4c 00 00       	call   b520 <__stack_chk_fail>
    68a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    68ae:	00 00 

00000000000068b0 <ema_do_commit>:
    68b0:	f3 0f 1e fa          	endbr64
    68b4:	55                   	push   %rbp
    68b5:	66 0f ef c0          	pxor   %xmm0,%xmm0
    68b9:	48 89 e5             	mov    %rsp,%rbp
    68bc:	41 57                	push   %r15
    68be:	41 56                	push   %r14
    68c0:	41 55                	push   %r13
    68c2:	41 54                	push   %r12
    68c4:	53                   	push   %rbx
    68c5:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    68c9:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
    68cd:	4c 8b 77 08          	mov    0x8(%rdi),%r14
    68d1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    68d8:	00 00 
    68da:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    68df:	48 8b 07             	mov    (%rdi),%rax
    68e2:	48 c7 04 24 0b 02 00 	movq   $0x20b,(%rsp)
    68e9:	00 
    68ea:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    68f1:	00 00 
    68f3:	0f 11 44 24 08       	movups %xmm0,0x8(%rsp)
    68f8:	0f 11 44 24 18       	movups %xmm0,0x18(%rsp)
    68fd:	0f 11 44 24 28       	movups %xmm0,0x28(%rsp)
    6902:	48 39 f0             	cmp    %rsi,%rax
    6905:	48 0f 43 f0          	cmovae %rax,%rsi
    6909:	49 01 c6             	add    %rax,%r14
    690c:	49 39 d6             	cmp    %rdx,%r14
    690f:	4c 0f 47 f2          	cmova  %rdx,%r14
    6913:	4c 39 f6             	cmp    %r14,%rsi
    6916:	73 61                	jae    6979 <ema_do_commit+0xc9>
    6918:	49 89 fd             	mov    %rdi,%r13
    691b:	48 89 f3             	mov    %rsi,%rbx
    691e:	49 89 e7             	mov    %rsp,%r15
    6921:	eb 15                	jmp    6938 <ema_do_commit+0x88>
    6923:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    6928:	48 81 c3 00 10 00 00 	add    $0x1000,%rbx
    692f:	4c 39 f3             	cmp    %r14,%rbx
    6932:	73 45                	jae    6979 <ema_do_commit+0xc9>
    6934:	49 8b 45 00          	mov    0x0(%r13),%rax
    6938:	49 89 dc             	mov    %rbx,%r12
    693b:	49 8b 7d 20          	mov    0x20(%r13),%rdi
    693f:	49 29 c4             	sub    %rax,%r12
    6942:	49 c1 ec 0c          	shr    $0xc,%r12
    6946:	4c 89 e6             	mov    %r12,%rsi
    6949:	e8 62 ef ff ff       	call   58b0 <bit_array_test>
    694e:	84 c0                	test   %al,%al
    6950:	75 d6                	jne    6928 <ema_do_commit+0x78>
    6952:	48 89 de             	mov    %rbx,%rsi
    6955:	4c 89 ff             	mov    %r15,%rdi
    6958:	e8 6b 65 00 00       	call   cec8 <do_eaccept>
    695d:	85 c0                	test   %eax,%eax
    695f:	75 1a                	jne    697b <ema_do_commit+0xcb>
    6961:	49 8b 7d 20          	mov    0x20(%r13),%rdi
    6965:	4c 89 e6             	mov    %r12,%rsi
    6968:	48 81 c3 00 10 00 00 	add    $0x1000,%rbx
    696f:	e8 2c f0 ff ff       	call   59a0 <bit_array_set>
    6974:	4c 39 f3             	cmp    %r14,%rbx
    6977:	72 bb                	jb     6934 <ema_do_commit+0x84>
    6979:	31 c0                	xor    %eax,%eax
    697b:	48 8b 54 24 78       	mov    0x78(%rsp),%rdx
    6980:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    6987:	00 00 
    6989:	75 0f                	jne    699a <ema_do_commit+0xea>
    698b:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    698f:	5b                   	pop    %rbx
    6990:	41 5c                	pop    %r12
    6992:	41 5d                	pop    %r13
    6994:	41 5e                	pop    %r14
    6996:	41 5f                	pop    %r15
    6998:	5d                   	pop    %rbp
    6999:	c3                   	ret
    699a:	e8 81 4b 00 00       	call   b520 <__stack_chk_fail>
    699f:	90                   	nop

00000000000069a0 <ema_do_commit_loop>:
    69a0:	f3 0f 1e fa          	endbr64
    69a4:	41 55                	push   %r13
    69a6:	41 54                	push   %r12
    69a8:	55                   	push   %rbp
    69a9:	53                   	push   %rbx
    69aa:	48 89 cb             	mov    %rcx,%rbx
    69ad:	48 83 ec 08          	sub    $0x8,%rsp
    69b1:	48 8b 0f             	mov    (%rdi),%rcx
    69b4:	48 39 f7             	cmp    %rsi,%rdi
    69b7:	0f 84 9b 00 00 00    	je     6a58 <ema_do_commit_loop+0xb8>
    69bd:	49 89 f5             	mov    %rsi,%r13
    69c0:	48 89 d5             	mov    %rdx,%rbp
    69c3:	48 89 f8             	mov    %rdi,%rax
    69c6:	eb 26                	jmp    69ee <ema_do_commit_loop+0x4e>
    69c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    69cf:	00 
    69d0:	f6 40 10 01          	testb  $0x1,0x10(%rax)
    69d4:	75 27                	jne    69fd <ema_do_commit_loop+0x5d>
    69d6:	48 03 48 08          	add    0x8(%rax),%rcx
    69da:	48 8b 40 38          	mov    0x38(%rax),%rax
    69de:	48 89 ca             	mov    %rcx,%rdx
    69e1:	49 39 c5             	cmp    %rax,%r13
    69e4:	74 3a                	je     6a20 <ema_do_commit_loop+0x80>
    69e6:	48 8b 08             	mov    (%rax),%rcx
    69e9:	48 39 d1             	cmp    %rdx,%rcx
    69ec:	75 22                	jne    6a10 <ema_do_commit_loop+0x70>
    69ee:	48 8b 50 18          	mov    0x18(%rax),%rdx
    69f2:	48 f7 d2             	not    %rdx
    69f5:	f7 c2 02 02 00 00    	test   $0x202,%edx
    69fb:	74 d3                	je     69d0 <ema_do_commit_loop+0x30>
    69fd:	b8 0d 00 00 00       	mov    $0xd,%eax
    6a02:	48 83 c4 08          	add    $0x8,%rsp
    6a06:	5b                   	pop    %rbx
    6a07:	5d                   	pop    %rbp
    6a08:	41 5c                	pop    %r12
    6a0a:	41 5d                	pop    %r13
    6a0c:	c3                   	ret
    6a0d:	0f 1f 00             	nopl   (%rax)
    6a10:	48 83 c4 08          	add    $0x8,%rsp
    6a14:	b8 16 00 00 00       	mov    $0x16,%eax
    6a19:	5b                   	pop    %rbx
    6a1a:	5d                   	pop    %rbp
    6a1b:	41 5c                	pop    %r12
    6a1d:	41 5d                	pop    %r13
    6a1f:	c3                   	ret
    6a20:	b8 16 00 00 00       	mov    $0x16,%eax
    6a25:	48 39 d9             	cmp    %rbx,%rcx
    6a28:	73 1c                	jae    6a46 <ema_do_commit_loop+0xa6>
    6a2a:	eb d6                	jmp    6a02 <ema_do_commit_loop+0x62>
    6a2c:	0f 1f 40 00          	nopl   0x0(%rax)
    6a30:	48 89 da             	mov    %rbx,%rdx
    6a33:	48 89 ee             	mov    %rbp,%rsi
    6a36:	4c 8b 67 38          	mov    0x38(%rdi),%r12
    6a3a:	e8 71 fe ff ff       	call   68b0 <ema_do_commit>
    6a3f:	85 c0                	test   %eax,%eax
    6a41:	75 bf                	jne    6a02 <ema_do_commit_loop+0x62>
    6a43:	4c 89 e7             	mov    %r12,%rdi
    6a46:	4c 39 ef             	cmp    %r13,%rdi
    6a49:	75 e5                	jne    6a30 <ema_do_commit_loop+0x90>
    6a4b:	31 c0                	xor    %eax,%eax
    6a4d:	48 83 c4 08          	add    $0x8,%rsp
    6a51:	5b                   	pop    %rbx
    6a52:	5d                   	pop    %rbp
    6a53:	41 5c                	pop    %r12
    6a55:	41 5d                	pop    %r13
    6a57:	c3                   	ret
    6a58:	b8 16 00 00 00       	mov    $0x16,%eax
    6a5d:	48 39 d9             	cmp    %rbx,%rcx
    6a60:	72 a0                	jb     6a02 <ema_do_commit_loop+0x62>
    6a62:	31 c0                	xor    %eax,%eax
    6a64:	eb e7                	jmp    6a4d <ema_do_commit_loop+0xad>
    6a66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    6a6d:	00 00 00 

0000000000006a70 <ema_change_to_tcs>:
    6a70:	f3 0f 1e fa          	endbr64
    6a74:	55                   	push   %rbp
    6a75:	48 89 e5             	mov    %rsp,%rbp
    6a78:	41 56                	push   %r14
    6a7a:	41 55                	push   %r13
    6a7c:	41 54                	push   %r12
    6a7e:	53                   	push   %rbx
    6a7f:	48 89 fb             	mov    %rdi,%rbx
    6a82:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    6a86:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
    6a8d:	4c 8b 6f 18          	mov    0x18(%rdi),%r13
    6a91:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
    6a95:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6a9c:	00 00 
    6a9e:	48 89 84 24 b8 00 00 	mov    %rax,0xb8(%rsp)
    6aa5:	00 
    6aa6:	31 c0                	xor    %eax,%eax
    6aa8:	45 89 ee             	mov    %r13d,%r14d
    6aab:	41 81 e6 00 ff 00 00 	and    $0xff00,%r14d
    6ab2:	48 85 ff             	test   %rdi,%rdi
    6ab5:	74 33                	je     6aea <ema_change_to_tcs+0x7a>
    6ab7:	49 89 f4             	mov    %rsi,%r12
    6aba:	48 2b 33             	sub    (%rbx),%rsi
    6abd:	48 c1 ee 0c          	shr    $0xc,%rsi
    6ac1:	e8 ea ed ff ff       	call   58b0 <bit_array_test>
    6ac6:	84 c0                	test   %al,%al
    6ac8:	74 20                	je     6aea <ema_change_to_tcs+0x7a>
    6aca:	41 81 fe 00 01 00 00 	cmp    $0x100,%r14d
    6ad1:	0f 84 e1 00 00 00    	je     6bb8 <ema_change_to_tcs+0x148>
    6ad7:	41 83 e5 07          	and    $0x7,%r13d
    6adb:	41 83 fd 03          	cmp    $0x3,%r13d
    6adf:	75 09                	jne    6aea <ema_change_to_tcs+0x7a>
    6ae1:	41 81 fe 00 02 00 00 	cmp    $0x200,%r14d
    6ae8:	74 2e                	je     6b18 <ema_change_to_tcs+0xa8>
    6aea:	b8 0d 00 00 00       	mov    $0xd,%eax
    6aef:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
    6af6:	00 
    6af7:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    6afe:	00 00 
    6b00:	0f 85 c4 00 00 00    	jne    6bca <ema_change_to_tcs+0x15a>
    6b06:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
    6b0a:	5b                   	pop    %rbx
    6b0b:	41 5c                	pop    %r12
    6b0d:	41 5d                	pop    %r13
    6b0f:	41 5e                	pop    %r14
    6b11:	5d                   	pop    %rbp
    6b12:	c3                   	ret
    6b13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    6b18:	b9 03 01 00 00       	mov    $0x103,%ecx
    6b1d:	ba 03 02 00 00       	mov    $0x203,%edx
    6b22:	be 00 10 00 00       	mov    $0x1000,%esi
    6b27:	4c 89 e7             	mov    %r12,%rdi
    6b2a:	e8 a1 bc ff ff       	call   27d0 <sgx_mm_modify_ocall>
    6b2f:	85 c0                	test   %eax,%eax
    6b31:	0f 85 89 00 00 00    	jne    6bc0 <ema_change_to_tcs+0x150>
    6b37:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6b3b:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    6b40:	4c 89 e6             	mov    %r12,%rsi
    6b43:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    6b4a:	00 00 
    6b4c:	48 c7 44 24 40 10 01 	movq   $0x110,0x40(%rsp)
    6b53:	00 00 
    6b55:	0f 11 44 24 48       	movups %xmm0,0x48(%rsp)
    6b5a:	0f 11 44 24 58       	movups %xmm0,0x58(%rsp)
    6b5f:	0f 11 44 24 68       	movups %xmm0,0x68(%rsp)
    6b64:	e8 5f 63 00 00       	call   cec8 <do_eaccept>
    6b69:	85 c0                	test   %eax,%eax
    6b6b:	75 62                	jne    6bcf <ema_change_to_tcs+0x15f>
    6b6d:	48 8d 4c 24 38       	lea    0x38(%rsp),%rcx
    6b72:	49 8d 94 24 00 10 00 	lea    0x1000(%r12),%rdx
    6b79:	00 
    6b7a:	4c 89 e6             	mov    %r12,%rsi
    6b7d:	48 89 df             	mov    %rbx,%rdi
    6b80:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    6b87:	00 00 
    6b89:	e8 32 f6 ff ff       	call   61c0 <ema_split_ex>
    6b8e:	85 c0                	test   %eax,%eax
    6b90:	0f 85 59 ff ff ff    	jne    6aef <ema_change_to_tcs+0x7f>
    6b96:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
    6b9b:	48 8b 51 18          	mov    0x18(%rcx),%rdx
    6b9f:	48 81 e2 f8 00 ff ff 	and    $0xffffffffffff00f8,%rdx
    6ba6:	80 ce 01             	or     $0x1,%dh
    6ba9:	48 89 51 18          	mov    %rdx,0x18(%rcx)
    6bad:	e9 3d ff ff ff       	jmp    6aef <ema_change_to_tcs+0x7f>
    6bb2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6bb8:	31 c0                	xor    %eax,%eax
    6bba:	e9 30 ff ff ff       	jmp    6aef <ema_change_to_tcs+0x7f>
    6bbf:	90                   	nop
    6bc0:	b8 0e 00 00 00       	mov    $0xe,%eax
    6bc5:	e9 25 ff ff ff       	jmp    6aef <ema_change_to_tcs+0x7f>
    6bca:	e8 51 49 00 00       	call   b520 <__stack_chk_fail>
    6bcf:	e8 6c 63 00 00       	call   cf40 <abort>
    6bd4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    6bdb:	00 00 00 
    6bde:	66 90                	xchg   %ax,%ax

0000000000006be0 <ema_modify_permissions>:
    6be0:	f3 0f 1e fa          	endbr64
    6be4:	55                   	push   %rbp
    6be5:	48 89 e5             	mov    %rsp,%rbp
    6be8:	41 57                	push   %r15
    6bea:	41 56                	push   %r14
    6bec:	41 55                	push   %r13
    6bee:	41 54                	push   %r12
    6bf0:	53                   	push   %rbx
    6bf1:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
    6bf5:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
    6bfc:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
    6c00:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6c07:	00 00 
    6c09:	48 89 84 24 b8 00 00 	mov    %rax,0xb8(%rsp)
    6c10:	00 
    6c11:	48 8b 47 18          	mov    0x18(%rdi),%rax
    6c15:	41 89 c4             	mov    %eax,%r12d
    6c18:	41 83 e4 07          	and    $0x7,%r12d
    6c1c:	41 39 cc             	cmp    %ecx,%r12d
    6c1f:	0f 84 e2 00 00 00    	je     6d07 <ema_modify_permissions+0x127>
    6c25:	49 89 fd             	mov    %rdi,%r13
    6c28:	89 c7                	mov    %eax,%edi
    6c2a:	49 89 f7             	mov    %rsi,%r15
    6c2d:	44 8b 74 24 20       	mov    0x20(%rsp),%r14d
    6c32:	49 8b 5d 00          	mov    0x0(%r13),%rbx
    6c36:	81 e7 00 ff 00 00    	and    $0xff00,%edi
    6c3c:	44 89 f1             	mov    %r14d,%ecx
    6c3f:	89 7c 24 0c          	mov    %edi,0xc(%rsp)
    6c43:	48 39 f3             	cmp    %rsi,%rbx
    6c46:	4c 0f 43 fb          	cmovae %rbx,%r15
    6c4a:	49 03 5d 08          	add    0x8(%r13),%rbx
    6c4e:	48 39 d3             	cmp    %rdx,%rbx
    6c51:	48 0f 47 da          	cmova  %rdx,%rbx
    6c55:	89 c2                	mov    %eax,%edx
    6c57:	09 f9                	or     %edi,%ecx
    6c59:	4c 89 ff             	mov    %r15,%rdi
    6c5c:	81 e2 07 ff 00 00    	and    $0xff07,%edx
    6c62:	4c 89 7c 24 18       	mov    %r15,0x18(%rsp)
    6c67:	48 89 de             	mov    %rbx,%rsi
    6c6a:	4c 29 fe             	sub    %r15,%rsi
    6c6d:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    6c72:	e8 59 bb ff ff       	call   27d0 <sgx_mm_modify_ocall>
    6c77:	85 c0                	test   %eax,%eax
    6c79:	0f 85 21 01 00 00    	jne    6da0 <ema_modify_permissions+0x1c0>
    6c7f:	44 89 f0             	mov    %r14d,%eax
    6c82:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6c86:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    6c8b:	48 c7 44 24 78 00 00 	movq   $0x0,0x78(%rsp)
    6c92:	00 00 
    6c94:	0d 20 02 00 00       	or     $0x220,%eax
    6c99:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
    6c9e:	48 98                	cltq
    6ca0:	0f 11 44 24 48       	movups %xmm0,0x48(%rsp)
    6ca5:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    6caa:	44 89 f0             	mov    %r14d,%eax
    6cad:	45 09 e6             	or     %r12d,%r14d
    6cb0:	83 e0 06             	and    $0x6,%eax
    6cb3:	0f 11 44 24 58       	movups %xmm0,0x58(%rsp)
    6cb8:	89 44 24 24          	mov    %eax,0x24(%rsp)
    6cbc:	0f 11 44 24 68       	movups %xmm0,0x68(%rsp)
    6cc1:	49 39 df             	cmp    %rbx,%r15
    6cc4:	72 76                	jb     6d3c <ema_modify_permissions+0x15c>
    6cc6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    6ccd:	00 00 00 
    6cd0:	49 8b 45 00          	mov    0x0(%r13),%rax
    6cd4:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    6cd9:	48 39 d0             	cmp    %rdx,%rax
    6cdc:	0f 82 ce 00 00 00    	jb     6db0 <ema_modify_permissions+0x1d0>
    6ce2:	49 03 45 08          	add    0x8(%r13),%rax
    6ce6:	48 39 c3             	cmp    %rax,%rbx
    6ce9:	0f 82 f9 00 00 00    	jb     6de8 <ema_modify_permissions+0x208>
    6cef:	49 8b 45 18          	mov    0x18(%r13),%rax
    6cf3:	48 63 54 24 20       	movslq 0x20(%rsp),%rdx
    6cf8:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    6cfc:	48 09 d0             	or     %rdx,%rax
    6cff:	49 89 45 18          	mov    %rax,0x18(%r13)
    6d03:	85 d2                	test   %edx,%edx
    6d05:	74 79                	je     6d80 <ema_modify_permissions+0x1a0>
    6d07:	31 c0                	xor    %eax,%eax
    6d09:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
    6d10:	00 
    6d11:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    6d18:	00 00 
    6d1a:	0f 85 f8 00 00 00    	jne    6e18 <ema_modify_permissions+0x238>
    6d20:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    6d24:	5b                   	pop    %rbx
    6d25:	41 5c                	pop    %r12
    6d27:	41 5d                	pop    %r13
    6d29:	41 5e                	pop    %r14
    6d2b:	41 5f                	pop    %r15
    6d2d:	5d                   	pop    %rbp
    6d2e:	c3                   	ret
    6d2f:	90                   	nop
    6d30:	49 81 c7 00 10 00 00 	add    $0x1000,%r15
    6d37:	49 39 df             	cmp    %rbx,%r15
    6d3a:	73 94                	jae    6cd0 <ema_modify_permissions+0xf0>
    6d3c:	45 39 f4             	cmp    %r14d,%r12d
    6d3f:	74 0d                	je     6d4e <ema_modify_permissions+0x16e>
    6d41:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6d46:	4c 89 fe             	mov    %r15,%rsi
    6d49:	e8 b6 61 00 00       	call   cf04 <do_emodpe>
    6d4e:	83 7c 24 24 06       	cmpl   $0x6,0x24(%rsp)
    6d53:	74 db                	je     6d30 <ema_modify_permissions+0x150>
    6d55:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    6d5a:	4c 89 fe             	mov    %r15,%rsi
    6d5d:	e8 66 61 00 00       	call   cec8 <do_eaccept>
    6d62:	85 c0                	test   %eax,%eax
    6d64:	75 a3                	jne    6d09 <ema_modify_permissions+0x129>
    6d66:	49 81 c7 00 10 00 00 	add    $0x1000,%r15
    6d6d:	49 39 df             	cmp    %rbx,%r15
    6d70:	0f 83 5a ff ff ff    	jae    6cd0 <ema_modify_permissions+0xf0>
    6d76:	45 39 f4             	cmp    %r14d,%r12d
    6d79:	74 da                	je     6d55 <ema_modify_permissions+0x175>
    6d7b:	eb c4                	jmp    6d41 <ema_modify_permissions+0x161>
    6d7d:	0f 1f 00             	nopl   (%rax)
    6d80:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
    6d84:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    6d89:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    6d8e:	89 ca                	mov    %ecx,%edx
    6d90:	e8 3b ba ff ff       	call   27d0 <sgx_mm_modify_ocall>
    6d95:	85 c0                	test   %eax,%eax
    6d97:	0f 84 6a ff ff ff    	je     6d07 <ema_modify_permissions+0x127>
    6d9d:	0f 1f 00             	nopl   (%rax)
    6da0:	b8 0e 00 00 00       	mov    $0xe,%eax
    6da5:	e9 5f ff ff ff       	jmp    6d09 <ema_modify_permissions+0x129>
    6daa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6db0:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
    6db5:	31 d2                	xor    %edx,%edx
    6db7:	48 8d 4c 24 38       	lea    0x38(%rsp),%rcx
    6dbc:	4c 89 ef             	mov    %r13,%rdi
    6dbf:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    6dc6:	00 00 
    6dc8:	e8 63 f2 ff ff       	call   6030 <ema_split>
    6dcd:	85 c0                	test   %eax,%eax
    6dcf:	0f 85 34 ff ff ff    	jne    6d09 <ema_modify_permissions+0x129>
    6dd5:	4c 8b 6c 24 38       	mov    0x38(%rsp),%r13
    6dda:	49 8b 45 00          	mov    0x0(%r13),%rax
    6dde:	e9 ff fe ff ff       	jmp    6ce2 <ema_modify_permissions+0x102>
    6de3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    6de8:	4c 89 ef             	mov    %r13,%rdi
    6deb:	48 8d 4c 24 38       	lea    0x38(%rsp),%rcx
    6df0:	ba 01 00 00 00       	mov    $0x1,%edx
    6df5:	48 89 de             	mov    %rbx,%rsi
    6df8:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    6dff:	00 00 
    6e01:	e8 2a f2 ff ff       	call   6030 <ema_split>
    6e06:	4c 8b 6c 24 38       	mov    0x38(%rsp),%r13
    6e0b:	85 c0                	test   %eax,%eax
    6e0d:	0f 84 dc fe ff ff    	je     6cef <ema_modify_permissions+0x10f>
    6e13:	e9 f1 fe ff ff       	jmp    6d09 <ema_modify_permissions+0x129>
    6e18:	e8 03 47 00 00       	call   b520 <__stack_chk_fail>
    6e1d:	0f 1f 00             	nopl   (%rax)

0000000000006e20 <ema_do_dealloc>:
    6e20:	f3 0f 1e fa          	endbr64
    6e24:	41 54                	push   %r12
    6e26:	49 89 f4             	mov    %rsi,%r12
    6e29:	55                   	push   %rbp
    6e2a:	53                   	push   %rbx
    6e2b:	48 89 fb             	mov    %rdi,%rbx
    6e2e:	48 83 ec 10          	sub    $0x10,%rsp
    6e32:	48 8b 6f 08          	mov    0x8(%rdi),%rbp
    6e36:	48 8b 4f 18          	mov    0x18(%rdi),%rcx
    6e3a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6e41:	00 00 
    6e43:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    6e48:	48 8b 07             	mov    (%rdi),%rax
    6e4b:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    6e52:	00 
    6e53:	48 39 f0             	cmp    %rsi,%rax
    6e56:	4c 0f 43 e0          	cmovae %rax,%r12
    6e5a:	48 01 c5             	add    %rax,%rbp
    6e5d:	48 39 d5             	cmp    %rdx,%rbp
    6e60:	48 0f 47 ea          	cmova  %rdx,%rbp
    6e64:	f6 47 10 01          	testb  $0x1,0x10(%rdi)
    6e68:	75 1c                	jne    6e86 <ema_do_dealloc+0x66>
    6e6a:	83 e1 07             	and    $0x7,%ecx
    6e6d:	74 71                	je     6ee0 <ema_do_dealloc+0xc0>
    6e6f:	31 c9                	xor    %ecx,%ecx
    6e71:	48 89 ea             	mov    %rbp,%rdx
    6e74:	4c 89 e6             	mov    %r12,%rsi
    6e77:	48 89 df             	mov    %rbx,%rdi
    6e7a:	e8 81 ee ff ff       	call   5d00 <ema_do_uncommit_real>
    6e7f:	85 c0                	test   %eax,%eax
    6e81:	75 3e                	jne    6ec1 <ema_do_dealloc+0xa1>
    6e83:	48 8b 03             	mov    (%rbx),%rax
    6e86:	4c 39 e0             	cmp    %r12,%rax
    6e89:	72 65                	jb     6ef0 <ema_do_dealloc+0xd0>
    6e8b:	48 03 43 08          	add    0x8(%rbx),%rax
    6e8f:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    6e96:	00 
    6e97:	48 39 c5             	cmp    %rax,%rbp
    6e9a:	73 1b                	jae    6eb7 <ema_do_dealloc+0x97>
    6e9c:	48 89 e1             	mov    %rsp,%rcx
    6e9f:	ba 01 00 00 00       	mov    $0x1,%edx
    6ea4:	48 89 ee             	mov    %rbp,%rsi
    6ea7:	48 89 df             	mov    %rbx,%rdi
    6eaa:	e8 81 f1 ff ff       	call   6030 <ema_split>
    6eaf:	85 c0                	test   %eax,%eax
    6eb1:	75 0e                	jne    6ec1 <ema_do_dealloc+0xa1>
    6eb3:	48 8b 1c 24          	mov    (%rsp),%rbx
    6eb7:	48 89 df             	mov    %rbx,%rdi
    6eba:	e8 c1 f8 ff ff       	call   6780 <ema_destroy>
    6ebf:	31 c0                	xor    %eax,%eax
    6ec1:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    6ec6:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    6ecd:	00 00 
    6ecf:	75 3f                	jne    6f10 <ema_do_dealloc+0xf0>
    6ed1:	48 83 c4 10          	add    $0x10,%rsp
    6ed5:	5b                   	pop    %rbx
    6ed6:	5d                   	pop    %rbp
    6ed7:	41 5c                	pop    %r12
    6ed9:	c3                   	ret
    6eda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6ee0:	b9 01 00 00 00       	mov    $0x1,%ecx
    6ee5:	e8 f6 fc ff ff       	call   6be0 <ema_modify_permissions>
    6eea:	eb 83                	jmp    6e6f <ema_do_dealloc+0x4f>
    6eec:	0f 1f 40 00          	nopl   0x0(%rax)
    6ef0:	31 d2                	xor    %edx,%edx
    6ef2:	48 89 e1             	mov    %rsp,%rcx
    6ef5:	4c 89 e6             	mov    %r12,%rsi
    6ef8:	48 89 df             	mov    %rbx,%rdi
    6efb:	e8 30 f1 ff ff       	call   6030 <ema_split>
    6f00:	85 c0                	test   %eax,%eax
    6f02:	75 bd                	jne    6ec1 <ema_do_dealloc+0xa1>
    6f04:	48 8b 1c 24          	mov    (%rsp),%rbx
    6f08:	48 8b 03             	mov    (%rbx),%rax
    6f0b:	e9 7b ff ff ff       	jmp    6e8b <ema_do_dealloc+0x6b>
    6f10:	e8 0b 46 00 00       	call   b520 <__stack_chk_fail>
    6f15:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    6f1c:	00 00 00 
    6f1f:	90                   	nop

0000000000006f20 <ema_do_dealloc_loop>:
    6f20:	f3 0f 1e fa          	endbr64
    6f24:	41 55                	push   %r13
    6f26:	49 89 d5             	mov    %rdx,%r13
    6f29:	41 54                	push   %r12
    6f2b:	49 89 cc             	mov    %rcx,%r12
    6f2e:	55                   	push   %rbp
    6f2f:	48 89 f5             	mov    %rsi,%rbp
    6f32:	53                   	push   %rbx
    6f33:	48 83 ec 08          	sub    $0x8,%rsp
    6f37:	eb 1d                	jmp    6f56 <ema_do_dealloc_loop+0x36>
    6f39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    6f40:	4c 89 e2             	mov    %r12,%rdx
    6f43:	4c 89 ee             	mov    %r13,%rsi
    6f46:	48 8b 5f 38          	mov    0x38(%rdi),%rbx
    6f4a:	e8 d1 fe ff ff       	call   6e20 <ema_do_dealloc>
    6f4f:	85 c0                	test   %eax,%eax
    6f51:	75 0a                	jne    6f5d <ema_do_dealloc_loop+0x3d>
    6f53:	48 89 df             	mov    %rbx,%rdi
    6f56:	48 39 ef             	cmp    %rbp,%rdi
    6f59:	75 e5                	jne    6f40 <ema_do_dealloc_loop+0x20>
    6f5b:	31 c0                	xor    %eax,%eax
    6f5d:	48 83 c4 08          	add    $0x8,%rsp
    6f61:	5b                   	pop    %rbx
    6f62:	5d                   	pop    %rbp
    6f63:	41 5c                	pop    %r12
    6f65:	41 5d                	pop    %r13
    6f67:	c3                   	ret
    6f68:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    6f6f:	00 

0000000000006f70 <ema_do_uncommit_loop>:
    6f70:	f3 0f 1e fa          	endbr64
    6f74:	41 57                	push   %r15
    6f76:	41 56                	push   %r14
    6f78:	41 55                	push   %r13
    6f7a:	41 54                	push   %r12
    6f7c:	49 89 d4             	mov    %rdx,%r12
    6f7f:	55                   	push   %rbp
    6f80:	48 89 cd             	mov    %rcx,%rbp
    6f83:	53                   	push   %rbx
    6f84:	48 83 ec 18          	sub    $0x18,%rsp
    6f88:	48 8b 17             	mov    (%rdi),%rdx
    6f8b:	48 39 f7             	cmp    %rsi,%rdi
    6f8e:	0f 84 d9 00 00 00    	je     706d <ema_do_uncommit_loop+0xfd>
    6f94:	49 89 ff             	mov    %rdi,%r15
    6f97:	48 89 f3             	mov    %rsi,%rbx
    6f9a:	48 89 f8             	mov    %rdi,%rax
    6f9d:	0f 1f 00             	nopl   (%rax)
    6fa0:	f6 40 10 01          	testb  $0x1,0x10(%rax)
    6fa4:	75 32                	jne    6fd8 <ema_do_uncommit_loop+0x68>
    6fa6:	48 8b 48 08          	mov    0x8(%rax),%rcx
    6faa:	48 8b 40 38          	mov    0x38(%rax),%rax
    6fae:	48 01 d1             	add    %rdx,%rcx
    6fb1:	48 39 c3             	cmp    %rax,%rbx
    6fb4:	74 3a                	je     6ff0 <ema_do_uncommit_loop+0x80>
    6fb6:	48 8b 10             	mov    (%rax),%rdx
    6fb9:	48 39 ca             	cmp    %rcx,%rdx
    6fbc:	74 e2                	je     6fa0 <ema_do_uncommit_loop+0x30>
    6fbe:	b8 16 00 00 00       	mov    $0x16,%eax
    6fc3:	48 83 c4 18          	add    $0x18,%rsp
    6fc7:	5b                   	pop    %rbx
    6fc8:	5d                   	pop    %rbp
    6fc9:	41 5c                	pop    %r12
    6fcb:	41 5d                	pop    %r13
    6fcd:	41 5e                	pop    %r14
    6fcf:	41 5f                	pop    %r15
    6fd1:	c3                   	ret
    6fd2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    6fd8:	48 83 c4 18          	add    $0x18,%rsp
    6fdc:	b8 0d 00 00 00       	mov    $0xd,%eax
    6fe1:	5b                   	pop    %rbx
    6fe2:	5d                   	pop    %rbp
    6fe3:	41 5c                	pop    %r12
    6fe5:	41 5d                	pop    %r13
    6fe7:	41 5e                	pop    %r14
    6fe9:	41 5f                	pop    %r15
    6feb:	c3                   	ret
    6fec:	0f 1f 40 00          	nopl   0x0(%rax)
    6ff0:	b8 16 00 00 00       	mov    $0x16,%eax
    6ff5:	48 39 e9             	cmp    %rbp,%rcx
    6ff8:	73 1e                	jae    7018 <ema_do_uncommit_loop+0xa8>
    6ffa:	eb c7                	jmp    6fc3 <ema_do_uncommit_loop+0x53>
    6ffc:	0f 1f 40 00          	nopl   0x0(%rax)
    7000:	44 89 c1             	mov    %r8d,%ecx
    7003:	4c 89 f2             	mov    %r14,%rdx
    7006:	4c 89 ce             	mov    %r9,%rsi
    7009:	4c 89 ff             	mov    %r15,%rdi
    700c:	e8 ef ec ff ff       	call   5d00 <ema_do_uncommit_real>
    7011:	85 c0                	test   %eax,%eax
    7013:	75 ae                	jne    6fc3 <ema_do_uncommit_loop+0x53>
    7015:	4d 89 ef             	mov    %r13,%r15
    7018:	49 39 df             	cmp    %rbx,%r15
    701b:	74 5e                	je     707b <ema_do_uncommit_loop+0x10b>
    701d:	49 8b 07             	mov    (%r15),%rax
    7020:	45 8b 47 18          	mov    0x18(%r15),%r8d
    7024:	4d 8b 6f 38          	mov    0x38(%r15),%r13
    7028:	49 39 c4             	cmp    %rax,%r12
    702b:	49 89 c1             	mov    %rax,%r9
    702e:	4d 0f 43 cc          	cmovae %r12,%r9
    7032:	49 03 47 08          	add    0x8(%r15),%rax
    7036:	48 39 e8             	cmp    %rbp,%rax
    7039:	48 0f 47 c5          	cmova  %rbp,%rax
    703d:	49 89 c6             	mov    %rax,%r14
    7040:	41 83 e0 07          	and    $0x7,%r8d
    7044:	75 ba                	jne    7000 <ema_do_uncommit_loop+0x90>
    7046:	b9 01 00 00 00       	mov    $0x1,%ecx
    704b:	48 89 ea             	mov    %rbp,%rdx
    704e:	4c 89 e6             	mov    %r12,%rsi
    7051:	4c 89 ff             	mov    %r15,%rdi
    7054:	44 89 44 24 0c       	mov    %r8d,0xc(%rsp)
    7059:	4c 89 0c 24          	mov    %r9,(%rsp)
    705d:	e8 7e fb ff ff       	call   6be0 <ema_modify_permissions>
    7062:	44 8b 44 24 0c       	mov    0xc(%rsp),%r8d
    7067:	4c 8b 0c 24          	mov    (%rsp),%r9
    706b:	eb 93                	jmp    7000 <ema_do_uncommit_loop+0x90>
    706d:	b8 16 00 00 00       	mov    $0x16,%eax
    7072:	48 39 ca             	cmp    %rcx,%rdx
    7075:	0f 82 48 ff ff ff    	jb     6fc3 <ema_do_uncommit_loop+0x53>
    707b:	48 83 c4 18          	add    $0x18,%rsp
    707f:	31 c0                	xor    %eax,%eax
    7081:	5b                   	pop    %rbx
    7082:	5d                   	pop    %rbp
    7083:	41 5c                	pop    %r12
    7085:	41 5d                	pop    %r13
    7087:	41 5e                	pop    %r14
    7089:	41 5f                	pop    %r15
    708b:	c3                   	ret
    708c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000007090 <ema_modify_permissions_loop>:
    7090:	f3 0f 1e fa          	endbr64
    7094:	41 57                	push   %r15
    7096:	41 56                	push   %r14
    7098:	41 55                	push   %r13
    709a:	41 54                	push   %r12
    709c:	55                   	push   %rbp
    709d:	48 89 d5             	mov    %rdx,%rbp
    70a0:	53                   	push   %rbx
    70a1:	48 89 cb             	mov    %rcx,%rbx
    70a4:	48 83 ec 08          	sub    $0x8,%rsp
    70a8:	48 8b 17             	mov    (%rdi),%rdx
    70ab:	48 39 f7             	cmp    %rsi,%rdi
    70ae:	0f 84 de 00 00 00    	je     7192 <ema_modify_permissions_loop+0x102>
    70b4:	49 89 fe             	mov    %rdi,%r14
    70b7:	49 89 f4             	mov    %rsi,%r12
    70ba:	45 89 c5             	mov    %r8d,%r13d
    70bd:	49 89 ff             	mov    %rdi,%r15
    70c0:	41 f6 47 19 02       	testb  $0x2,0x19(%r15)
    70c5:	74 79                	je     7140 <ema_modify_permissions_loop+0xb0>
    70c7:	41 f6 47 10 01       	testb  $0x1,0x10(%r15)
    70cc:	75 72                	jne    7140 <ema_modify_permissions_loop+0xb0>
    70ce:	48 39 d5             	cmp    %rdx,%rbp
    70d1:	48 89 d6             	mov    %rdx,%rsi
    70d4:	49 8b 47 08          	mov    0x8(%r15),%rax
    70d8:	49 8b 7f 20          	mov    0x20(%r15),%rdi
    70dc:	48 0f 43 f5          	cmovae %rbp,%rsi
    70e0:	48 01 d0             	add    %rdx,%rax
    70e3:	48 29 d6             	sub    %rdx,%rsi
    70e6:	48 c1 ee 0c          	shr    $0xc,%rsi
    70ea:	48 39 d8             	cmp    %rbx,%rax
    70ed:	48 0f 47 c3          	cmova  %rbx,%rax
    70f1:	48 29 d0             	sub    %rdx,%rax
    70f4:	48 c1 e8 0c          	shr    $0xc,%rax
    70f8:	48 85 ff             	test   %rdi,%rdi
    70fb:	74 27                	je     7124 <ema_modify_permissions_loop+0x94>
    70fd:	48 29 f0             	sub    %rsi,%rax
    7100:	48 89 c2             	mov    %rax,%rdx
    7103:	e8 d8 e7 ff ff       	call   58e0 <bit_array_test_range>
    7108:	84 c0                	test   %al,%al
    710a:	74 18                	je     7124 <ema_modify_permissions_loop+0x94>
    710c:	49 8b 47 08          	mov    0x8(%r15),%rax
    7110:	49 03 07             	add    (%r15),%rax
    7113:	4d 8b 7f 38          	mov    0x38(%r15),%r15
    7117:	4d 39 fc             	cmp    %r15,%r12
    711a:	74 3c                	je     7158 <ema_modify_permissions_loop+0xc8>
    711c:	49 8b 17             	mov    (%r15),%rdx
    711f:	48 39 d0             	cmp    %rdx,%rax
    7122:	74 9c                	je     70c0 <ema_modify_permissions_loop+0x30>
    7124:	b8 16 00 00 00       	mov    $0x16,%eax
    7129:	48 83 c4 08          	add    $0x8,%rsp
    712d:	5b                   	pop    %rbx
    712e:	5d                   	pop    %rbp
    712f:	41 5c                	pop    %r12
    7131:	41 5d                	pop    %r13
    7133:	41 5e                	pop    %r14
    7135:	41 5f                	pop    %r15
    7137:	c3                   	ret
    7138:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    713f:	00 
    7140:	48 83 c4 08          	add    $0x8,%rsp
    7144:	b8 0d 00 00 00       	mov    $0xd,%eax
    7149:	5b                   	pop    %rbx
    714a:	5d                   	pop    %rbp
    714b:	41 5c                	pop    %r12
    714d:	41 5d                	pop    %r13
    714f:	41 5e                	pop    %r14
    7151:	41 5f                	pop    %r15
    7153:	c3                   	ret
    7154:	0f 1f 40 00          	nopl   0x0(%rax)
    7158:	48 39 d8             	cmp    %rbx,%rax
    715b:	73 1f                	jae    717c <ema_modify_permissions_loop+0xec>
    715d:	eb c5                	jmp    7124 <ema_modify_permissions_loop+0x94>
    715f:	90                   	nop
    7160:	44 89 e9             	mov    %r13d,%ecx
    7163:	48 89 da             	mov    %rbx,%rdx
    7166:	48 89 ee             	mov    %rbp,%rsi
    7169:	4c 89 f7             	mov    %r14,%rdi
    716c:	4d 8b 7e 38          	mov    0x38(%r14),%r15
    7170:	e8 6b fa ff ff       	call   6be0 <ema_modify_permissions>
    7175:	85 c0                	test   %eax,%eax
    7177:	75 b0                	jne    7129 <ema_modify_permissions_loop+0x99>
    7179:	4d 89 fe             	mov    %r15,%r14
    717c:	4d 39 f4             	cmp    %r14,%r12
    717f:	75 df                	jne    7160 <ema_modify_permissions_loop+0xd0>
    7181:	31 c0                	xor    %eax,%eax
    7183:	48 83 c4 08          	add    $0x8,%rsp
    7187:	5b                   	pop    %rbx
    7188:	5d                   	pop    %rbp
    7189:	41 5c                	pop    %r12
    718b:	41 5d                	pop    %r13
    718d:	41 5e                	pop    %r14
    718f:	41 5f                	pop    %r15
    7191:	c3                   	ret
    7192:	48 39 ca             	cmp    %rcx,%rdx
    7195:	72 8d                	jb     7124 <ema_modify_permissions_loop+0x94>
    7197:	31 c0                	xor    %eax,%eax
    7199:	eb e8                	jmp    7183 <ema_modify_permissions_loop+0xf3>
    719b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000071a0 <ema_realloc_from_reserve_range>:
    71a0:	f3 0f 1e fa          	endbr64
    71a4:	41 57                	push   %r15
    71a6:	41 56                	push   %r14
    71a8:	41 55                	push   %r13
    71aa:	49 89 d5             	mov    %rdx,%r13
    71ad:	41 54                	push   %r12
    71af:	49 89 cc             	mov    %rcx,%r12
    71b2:	55                   	push   %rbp
    71b3:	48 89 fd             	mov    %rdi,%rbp
    71b6:	53                   	push   %rbx
    71b7:	48 89 f3             	mov    %rsi,%rbx
    71ba:	48 83 ec 28          	sub    $0x28,%rsp
    71be:	4c 8b 37             	mov    (%rdi),%r14
    71c1:	48 89 7c 24 18       	mov    %rdi,0x18(%rsp)
    71c6:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    71cb:	44 89 44 24 04       	mov    %r8d,0x4(%rsp)
    71d0:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
    71d5:	48 39 f7             	cmp    %rsi,%rdi
    71d8:	74 4a                	je     7224 <ema_realloc_from_reserve_range+0x84>
    71da:	49 89 ff             	mov    %rdi,%r15
    71dd:	eb 1a                	jmp    71f9 <ema_realloc_from_reserve_range+0x59>
    71df:	90                   	nop
    71e0:	4d 39 37             	cmp    %r14,(%r15)
    71e3:	75 20                	jne    7205 <ema_realloc_from_reserve_range+0x65>
    71e5:	41 f6 47 10 01       	testb  $0x1,0x10(%r15)
    71ea:	74 19                	je     7205 <ema_realloc_from_reserve_range+0x65>
    71ec:	4d 03 77 08          	add    0x8(%r15),%r14
    71f0:	4d 8b 7f 38          	mov    0x38(%r15),%r15
    71f4:	49 39 df             	cmp    %rbx,%r15
    71f7:	74 27                	je     7220 <ema_realloc_from_reserve_range+0x80>
    71f9:	4c 89 ff             	mov    %r15,%rdi
    71fc:	e8 1f 07 00 00       	call   7920 <can_erealloc>
    7201:	85 c0                	test   %eax,%eax
    7203:	75 db                	jne    71e0 <ema_realloc_from_reserve_range+0x40>
    7205:	48 83 c4 28          	add    $0x28,%rsp
    7209:	31 c0                	xor    %eax,%eax
    720b:	5b                   	pop    %rbx
    720c:	5d                   	pop    %rbp
    720d:	41 5c                	pop    %r12
    720f:	41 5d                	pop    %r13
    7211:	41 5e                	pop    %r14
    7213:	41 5f                	pop    %r15
    7215:	c3                   	ret
    7216:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    721d:	00 00 00 
    7220:	4c 8b 75 00          	mov    0x0(%rbp),%r14
    7224:	48 8b 5b 40          	mov    0x40(%rbx),%rbx
    7228:	4d 39 ee             	cmp    %r13,%r14
    722b:	72 6b                	jb     7298 <ema_realloc_from_reserve_range+0xf8>
    722d:	48 8b 43 08          	mov    0x8(%rbx),%rax
    7231:	48 03 03             	add    (%rbx),%rax
    7234:	49 39 c4             	cmp    %rax,%r12
    7237:	0f 82 88 00 00 00    	jb     72c5 <ema_realloc_from_reserve_range+0x125>
    723d:	48 8b 6b 38          	mov    0x38(%rbx),%rbp
    7241:	48 89 6c 24 10       	mov    %rbp,0x10(%rsp)
    7246:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    724b:	48 39 dd             	cmp    %rbx,%rbp
    724e:	74 11                	je     7261 <ema_realloc_from_reserve_range+0xc1>
    7250:	48 89 df             	mov    %rbx,%rdi
    7253:	48 8b 5b 38          	mov    0x38(%rbx),%rbx
    7257:	e8 24 f5 ff ff       	call   6780 <ema_destroy>
    725c:	48 39 dd             	cmp    %rbx,%rbp
    725f:	75 ef                	jne    7250 <ema_realloc_from_reserve_range+0xb0>
    7261:	48 83 ec 08          	sub    $0x8,%rsp
    7265:	4c 89 e6             	mov    %r12,%rsi
    7268:	4c 89 ef             	mov    %r13,%rdi
    726b:	55                   	push   %rbp
    726c:	4c 8b 4c 24 78       	mov    0x78(%rsp),%r9
    7271:	4c 29 ee             	sub    %r13,%rsi
    7274:	4c 8b 44 24 70       	mov    0x70(%rsp),%r8
    7279:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    727e:	8b 54 24 14          	mov    0x14(%rsp),%edx
    7282:	e8 e9 f3 ff ff       	call   6670 <ema_new>
    7287:	5a                   	pop    %rdx
    7288:	59                   	pop    %rcx
    7289:	48 83 c4 28          	add    $0x28,%rsp
    728d:	5b                   	pop    %rbx
    728e:	5d                   	pop    %rbp
    728f:	41 5c                	pop    %r12
    7291:	41 5d                	pop    %r13
    7293:	41 5e                	pop    %r14
    7295:	41 5f                	pop    %r15
    7297:	c3                   	ret
    7298:	31 d2                	xor    %edx,%edx
    729a:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
    729f:	4c 89 ee             	mov    %r13,%rsi
    72a2:	48 89 ef             	mov    %rbp,%rdi
    72a5:	e8 86 ed ff ff       	call   6030 <ema_split>
    72aa:	85 c0                	test   %eax,%eax
    72ac:	0f 85 53 ff ff ff    	jne    7205 <ema_realloc_from_reserve_range+0x65>
    72b2:	48 39 dd             	cmp    %rbx,%rbp
    72b5:	0f 85 72 ff ff ff    	jne    722d <ema_realloc_from_reserve_range+0x8d>
    72bb:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
    72c0:	e9 68 ff ff ff       	jmp    722d <ema_realloc_from_reserve_range+0x8d>
    72c5:	31 d2                	xor    %edx,%edx
    72c7:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    72cc:	4c 89 e6             	mov    %r12,%rsi
    72cf:	48 89 df             	mov    %rbx,%rdi
    72d2:	e8 59 ed ff ff       	call   6030 <ema_split>
    72d7:	85 c0                	test   %eax,%eax
    72d9:	0f 85 26 ff ff ff    	jne    7205 <ema_realloc_from_reserve_range+0x65>
    72df:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
    72e4:	e9 5d ff ff ff       	jmp    7246 <ema_realloc_from_reserve_range+0xa6>
    72e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000072f0 <ema_do_alloc>:
    72f0:	f3 0f 1e fa          	endbr64
    72f4:	41 55                	push   %r13
    72f6:	41 54                	push   %r12
    72f8:	55                   	push   %rbp
    72f9:	53                   	push   %rbx
    72fa:	48 83 ec 08          	sub    $0x8,%rsp
    72fe:	8b 6f 10             	mov    0x10(%rdi),%ebp
    7301:	40 f6 c5 01          	test   $0x1,%bpl
    7305:	74 11                	je     7318 <ema_do_alloc+0x28>
    7307:	31 c0                	xor    %eax,%eax
    7309:	48 83 c4 08          	add    $0x8,%rsp
    730d:	5b                   	pop    %rbx
    730e:	5d                   	pop    %rbp
    730f:	41 5c                	pop    %r12
    7311:	41 5d                	pop    %r13
    7313:	c3                   	ret
    7314:	0f 1f 40 00          	nopl   0x0(%rax)
    7318:	4c 8b 6f 08          	mov    0x8(%rdi),%r13
    731c:	8b 57 18             	mov    0x18(%rdi),%edx
    731f:	48 89 fb             	mov    %rdi,%rbx
    7322:	89 e9                	mov    %ebp,%ecx
    7324:	4c 8b 27             	mov    (%rdi),%r12
    7327:	81 e2 00 ff 00 00    	and    $0xff00,%edx
    732d:	4c 89 ee             	mov    %r13,%rsi
    7330:	4c 89 e7             	mov    %r12,%rdi
    7333:	e8 08 b4 ff ff       	call   2740 <sgx_mm_alloc_ocall>
    7338:	89 c2                	mov    %eax,%edx
    733a:	b8 0e 00 00 00       	mov    $0xe,%eax
    733f:	85 d2                	test   %edx,%edx
    7341:	75 c6                	jne    7309 <ema_do_alloc+0x19>
    7343:	40 f6 c5 02          	test   $0x2,%bpl
    7347:	74 37                	je     7380 <ema_do_alloc+0x90>
    7349:	89 e9                	mov    %ebp,%ecx
    734b:	48 8b 53 18          	mov    0x18(%rbx),%rdx
    734f:	4c 89 ee             	mov    %r13,%rsi
    7352:	4c 89 e7             	mov    %r12,%rdi
    7355:	c1 e9 04             	shr    $0x4,%ecx
    7358:	83 f1 01             	xor    $0x1,%ecx
    735b:	83 e1 01             	and    $0x1,%ecx
    735e:	e8 6d f4 ff ff       	call   67d0 <do_commit>
    7363:	85 c0                	test   %eax,%eax
    7365:	75 a2                	jne    7309 <ema_do_alloc+0x19>
    7367:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
    736b:	48 85 ff             	test   %rdi,%rdi
    736e:	74 50                	je     73c0 <ema_do_alloc+0xd0>
    7370:	e8 4b e6 ff ff       	call   59c0 <bit_array_set_all>
    7375:	31 c0                	xor    %eax,%eax
    7377:	eb 90                	jmp    7309 <ema_do_alloc+0x19>
    7379:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    7380:	48 8b 7b 20          	mov    0x20(%rbx),%rdi
    7384:	48 85 ff             	test   %rdi,%rdi
    7387:	74 0f                	je     7398 <ema_do_alloc+0xa8>
    7389:	e8 12 e7 ff ff       	call   5aa0 <bit_array_reset_all>
    738e:	31 c0                	xor    %eax,%eax
    7390:	e9 74 ff ff ff       	jmp    7309 <ema_do_alloc+0x19>
    7395:	0f 1f 00             	nopl   (%rax)
    7398:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
    739c:	48 c1 ef 0c          	shr    $0xc,%rdi
    73a0:	e8 bb e4 ff ff       	call   5860 <bit_array_new_reset>
    73a5:	48 89 43 20          	mov    %rax,0x20(%rbx)
    73a9:	48 85 c0             	test   %rax,%rax
    73ac:	0f 85 55 ff ff ff    	jne    7307 <ema_do_alloc+0x17>
    73b2:	b8 0c 00 00 00       	mov    $0xc,%eax
    73b7:	e9 4d ff ff ff       	jmp    7309 <ema_do_alloc+0x19>
    73bc:	0f 1f 40 00          	nopl   0x0(%rax)
    73c0:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
    73c4:	48 c1 ef 0c          	shr    $0xc,%rdi
    73c8:	e8 63 e4 ff ff       	call   5830 <bit_array_new_set>
    73cd:	48 89 43 20          	mov    %rax,0x20(%rbx)
    73d1:	48 85 c0             	test   %rax,%rax
    73d4:	74 dc                	je     73b2 <ema_do_alloc+0xc2>
    73d6:	31 c0                	xor    %eax,%eax
    73d8:	e9 2c ff ff ff       	jmp    7309 <ema_do_alloc+0x19>
    73dd:	0f 1f 00             	nopl   (%rax)

00000000000073e0 <add_reserve>:
    73e0:	41 54                	push   %r12
    73e2:	55                   	push   %rbp
    73e3:	53                   	push   %rbx
    73e4:	31 db                	xor    %ebx,%ebx
    73e6:	48 83 ec 10          	sub    $0x10,%rsp
    73ea:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    73f1:	00 00 
    73f3:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    73f8:	31 c0                	xor    %eax,%eax
    73fa:	80 3d a7 c4 00 00 00 	cmpb   $0x0,0xc4a7(%rip)        # 138a8 <adding_reserve>
    7401:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    7408:	00 
    7409:	74 25                	je     7430 <add_reserve+0x50>
    740b:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    7410:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    7417:	00 00 
    7419:	0f 85 fb 00 00 00    	jne    751a <add_reserve+0x13a>
    741f:	48 83 c4 10          	add    $0x10,%rsp
    7423:	89 d8                	mov    %ebx,%eax
    7425:	5b                   	pop    %rbx
    7426:	5d                   	pop    %rbp
    7427:	41 5c                	pop    %r12
    7429:	c3                   	ret
    742a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    7430:	48 8b 35 91 bc 00 00 	mov    0xbc91(%rip),%rsi        # 130c8 <reserve_size_increment>
    7437:	49 89 e4             	mov    %rsp,%r12
    743a:	48 89 fd             	mov    %rdi,%rbp
    743d:	ba 01 00 00 00       	mov    $0x1,%edx
    7442:	4d 89 e1             	mov    %r12,%r9
    7445:	c6 05 5c c4 00 00 01 	movb   $0x1,0xc45c(%rip)        # 138a8 <adding_reserve>
    744c:	48 39 f7             	cmp    %rsi,%rdi
    744f:	48 0f 43 f7          	cmovae %rdi,%rsi
    7453:	45 31 c0             	xor    %r8d,%r8d
    7456:	31 c9                	xor    %ecx,%ecx
    7458:	31 ff                	xor    %edi,%edi
    745a:	48 89 35 67 bc 00 00 	mov    %rsi,0xbc67(%rip)        # 130c8 <reserve_size_increment>
    7461:	48 81 c6 00 00 01 00 	add    $0x10000,%rsi
    7468:	e8 33 0d 00 00       	call   81a0 <sgx_mm_alloc>
    746d:	89 c3                	mov    %eax,%ebx
    746f:	85 c0                	test   %eax,%eax
    7471:	75 2a                	jne    749d <add_reserve+0xbd>
    7473:	48 8b 04 24          	mov    (%rsp),%rax
    7477:	48 8b 35 4a bc 00 00 	mov    0xbc4a(%rip),%rsi        # 130c8 <reserve_size_increment>
    747e:	4d 89 e1             	mov    %r12,%r9
    7481:	31 c9                	xor    %ecx,%ecx
    7483:	45 31 c0             	xor    %r8d,%r8d
    7486:	ba 44 00 00 00       	mov    $0x44,%edx
    748b:	48 8d b8 00 80 00 00 	lea    0x8000(%rax),%rdi
    7492:	e8 09 0d 00 00       	call   81a0 <sgx_mm_alloc>
    7497:	89 c3                	mov    %eax,%ebx
    7499:	85 c0                	test   %eax,%eax
    749b:	74 13                	je     74b0 <add_reserve+0xd0>
    749d:	c6 05 04 c4 00 00 00 	movb   $0x0,0xc404(%rip)        # 138a8 <adding_reserve>
    74a4:	e9 62 ff ff ff       	jmp    740b <add_reserve+0x2b>
    74a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    74b0:	48 8b 3c 24          	mov    (%rsp),%rdi
    74b4:	48 89 ee             	mov    %rbp,%rsi
    74b7:	e8 d4 0d 00 00       	call   8290 <sgx_mm_commit>
    74bc:	48 8b 04 24          	mov    (%rsp),%rax
    74c0:	48 8b 15 e9 c3 00 00 	mov    0xc3e9(%rip),%rdx        # 138b0 <reserve_list>
    74c7:	c6 05 da c3 00 00 00 	movb   $0x0,0xc3da(%rip)        # 138a8 <adding_reserve>
    74ce:	66 48 0f 6e c0       	movq   %rax,%xmm0
    74d3:	48 89 50 18          	mov    %rdx,0x18(%rax)
    74d7:	ba 00 00 00 10       	mov    $0x10000000,%edx
    74dc:	0f 16 05 e5 bb 00 00 	movhps 0xbbe5(%rip),%xmm0        # 130c8 <reserve_size_increment>
    74e3:	66 0f d4 05 85 5b 00 	paddq  0x5b85(%rip),%xmm0        # d070 <g_dyn_entry_table+0x70>
    74ea:	00 
    74eb:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
    74f2:	00 
    74f3:	48 89 05 b6 c3 00 00 	mov    %rax,0xc3b6(%rip)        # 138b0 <reserve_list>
    74fa:	0f 11 00             	movups %xmm0,(%rax)
    74fd:	48 8b 05 c4 bb 00 00 	mov    0xbbc4(%rip),%rax        # 130c8 <reserve_size_increment>
    7504:	48 01 c0             	add    %rax,%rax
    7507:	48 39 d0             	cmp    %rdx,%rax
    750a:	48 0f 47 c2          	cmova  %rdx,%rax
    750e:	48 89 05 b3 bb 00 00 	mov    %rax,0xbbb3(%rip)        # 130c8 <reserve_size_increment>
    7515:	e9 f1 fe ff ff       	jmp    740b <add_reserve+0x2b>
    751a:	e8 01 40 00 00       	call   b520 <__stack_chk_fail>
    751f:	90                   	nop

0000000000007520 <remove_from_list>:
    7520:	48 8b 07             	mov    (%rdi),%rax
    7523:	48 23 05 a6 bb 00 00 	and    0xbba6(%rip),%rax        # 130d0 <size_mask>
    752a:	48 89 c2             	mov    %rax,%rdx
    752d:	48 8b 06             	mov    (%rsi),%rax
    7530:	48 39 f8             	cmp    %rdi,%rax
    7533:	74 43                	je     7578 <remove_from_list+0x58>
    7535:	48 83 fa 10          	cmp    $0x10,%rdx
    7539:	76 25                	jbe    7560 <remove_from_list+0x40>
    753b:	48 8b 57 10          	mov    0x10(%rdi),%rdx
    753f:	48 8b 47 08          	mov    0x8(%rdi),%rax
    7543:	48 85 d2             	test   %rdx,%rdx
    7546:	74 04                	je     754c <remove_from_list+0x2c>
    7548:	48 89 42 08          	mov    %rax,0x8(%rdx)
    754c:	48 85 c0             	test   %rax,%rax
    754f:	74 23                	je     7574 <remove_from_list+0x54>
    7551:	48 89 50 10          	mov    %rdx,0x10(%rax)
    7555:	c3                   	ret
    7556:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    755d:	00 00 00 
    7560:	48 89 c2             	mov    %rax,%rdx
    7563:	48 8b 40 08          	mov    0x8(%rax),%rax
    7567:	48 39 f8             	cmp    %rdi,%rax
    756a:	75 f4                	jne    7560 <remove_from_list+0x40>
    756c:	48 8b 40 08          	mov    0x8(%rax),%rax
    7570:	48 89 42 08          	mov    %rax,0x8(%rdx)
    7574:	c3                   	ret
    7575:	0f 1f 00             	nopl   (%rax)
    7578:	48 8b 40 08          	mov    0x8(%rax),%rax
    757c:	48 89 06             	mov    %rax,(%rsi)
    757f:	48 85 c0             	test   %rax,%rax
    7582:	74 f0                	je     7574 <remove_from_list+0x54>
    7584:	48 83 fa 10          	cmp    $0x10,%rdx
    7588:	76 ea                	jbe    7574 <remove_from_list+0x54>
    758a:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
    7591:	00 
    7592:	c3                   	ret
    7593:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    759a:	00 00 00 
    759d:	0f 1f 00             	nopl   (%rax)

00000000000075a0 <put_free_block>:
    75a0:	48 8b 05 29 bb 00 00 	mov    0xbb29(%rip),%rax        # 130d0 <size_mask>
    75a7:	48 8b 17             	mov    (%rdi),%rdx
    75aa:	48 21 c2             	and    %rax,%rdx
    75ad:	48 81 fa 08 08 00 00 	cmp    $0x808,%rdx
    75b4:	76 2a                	jbe    75e0 <put_free_block+0x40>
    75b6:	48 8b 15 fb c2 00 00 	mov    0xc2fb(%rip),%rdx        # 138b8 <large_block_list>
    75bd:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    75c1:	48 85 d2             	test   %rdx,%rdx
    75c4:	74 0d                	je     75d3 <put_free_block+0x33>
    75c6:	48 23 02             	and    (%rdx),%rax
    75c9:	48 83 f8 10          	cmp    $0x10,%rax
    75cd:	76 04                	jbe    75d3 <put_free_block+0x33>
    75cf:	48 89 7a 10          	mov    %rdi,0x10(%rdx)
    75d3:	48 89 3d de c2 00 00 	mov    %rdi,0xc2de(%rip)        # 138b8 <large_block_list>
    75da:	c3                   	ret
    75db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    75e0:	48 8d 4a f0          	lea    -0x10(%rdx),%rcx
    75e4:	48 8d 35 d5 c2 00 00 	lea    0xc2d5(%rip),%rsi        # 138c0 <exact_block_list>
    75eb:	48 c1 e9 03          	shr    $0x3,%rcx
    75ef:	48 83 fa 0f          	cmp    $0xf,%rdx
    75f3:	ba 00 00 00 00       	mov    $0x0,%edx
    75f8:	48 0f 47 d1          	cmova  %rcx,%rdx
    75fc:	48 8b 0c d6          	mov    (%rsi,%rdx,8),%rcx
    7600:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    7604:	48 85 c9             	test   %rcx,%rcx
    7607:	74 0d                	je     7616 <put_free_block+0x76>
    7609:	48 23 01             	and    (%rcx),%rax
    760c:	48 83 f8 10          	cmp    $0x10,%rax
    7610:	76 04                	jbe    7616 <put_free_block+0x76>
    7612:	48 89 79 10          	mov    %rdi,0x10(%rcx)
    7616:	48 89 3c d6          	mov    %rdi,(%rsi,%rdx,8)
    761a:	c3                   	ret
    761b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000007620 <neighbor_right>:
    7620:	4c 8b 05 a9 ba 00 00 	mov    0xbaa9(%rip),%r8        # 130d0 <size_mask>
    7627:	4c 89 c2             	mov    %r8,%rdx
    762a:	48 23 17             	and    (%rdi),%rdx
    762d:	48 8d 04 17          	lea    (%rdi,%rdx,1),%rax
    7631:	74 2f                	je     7662 <neighbor_right+0x42>
    7633:	48 8b 0d 76 c2 00 00 	mov    0xc276(%rip),%rcx        # 138b0 <reserve_list>
    763a:	48 85 c9             	test   %rcx,%rcx
    763d:	74 23                	je     7662 <neighbor_right+0x42>
    763f:	48 89 ca             	mov    %rcx,%rdx
    7642:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    7648:	48 8b 32             	mov    (%rdx),%rsi
    764b:	48 39 f7             	cmp    %rsi,%rdi
    764e:	72 09                	jb     7659 <neighbor_right+0x39>
    7650:	48 03 72 10          	add    0x10(%rdx),%rsi
    7654:	48 39 c6             	cmp    %rax,%rsi
    7657:	73 0f                	jae    7668 <neighbor_right+0x48>
    7659:	48 8b 52 18          	mov    0x18(%rdx),%rdx
    765d:	48 85 d2             	test   %rdx,%rdx
    7660:	75 e6                	jne    7648 <neighbor_right+0x28>
    7662:	31 c0                	xor    %eax,%eax
    7664:	c3                   	ret
    7665:	0f 1f 00             	nopl   (%rax)
    7668:	74 f8                	je     7662 <neighbor_right+0x42>
    766a:	4c 23 00             	and    (%rax),%r8
    766d:	74 f3                	je     7662 <neighbor_right+0x42>
    766f:	4a 8d 3c 00          	lea    (%rax,%r8,1),%rdi
    7673:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    7678:	48 8b 31             	mov    (%rcx),%rsi
    767b:	48 39 f0             	cmp    %rsi,%rax
    767e:	72 09                	jb     7689 <neighbor_right+0x69>
    7680:	48 03 71 10          	add    0x10(%rcx),%rsi
    7684:	48 39 fe             	cmp    %rdi,%rsi
    7687:	73 0f                	jae    7698 <neighbor_right+0x78>
    7689:	48 8b 49 18          	mov    0x18(%rcx),%rcx
    768d:	48 85 c9             	test   %rcx,%rcx
    7690:	75 e6                	jne    7678 <neighbor_right+0x58>
    7692:	31 c0                	xor    %eax,%eax
    7694:	c3                   	ret
    7695:	0f 1f 00             	nopl   (%rax)
    7698:	48 39 d1             	cmp    %rdx,%rcx
    769b:	ba 00 00 00 00       	mov    $0x0,%edx
    76a0:	48 0f 45 c2          	cmovne %rdx,%rax
    76a4:	c3                   	ret
    76a5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    76ac:	00 00 00 
    76af:	90                   	nop

00000000000076b0 <emalloc_init_with_reserved_mem>:
    76b0:	f3 0f 1e fa          	endbr64
    76b4:	48 83 ec 08          	sub    $0x8,%rsp
    76b8:	e8 23 fd ff ff       	call   73e0 <add_reserve>
    76bd:	85 c0                	test   %eax,%eax
    76bf:	75 17                	jne    76d8 <emalloc_init_with_reserved_mem+0x28>
    76c1:	48 c7 05 fc b9 00 00 	movq   $0x10000,0xb9fc(%rip)        # 130c8 <reserve_size_increment>
    76c8:	00 00 01 00 
    76cc:	48 83 c4 08          	add    $0x8,%rsp
    76d0:	c3                   	ret
    76d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    76d8:	b8 0c 00 00 00       	mov    $0xc,%eax
    76dd:	48 83 c4 08          	add    $0x8,%rsp
    76e1:	c3                   	ret
    76e2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    76e9:	00 00 00 
    76ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000076f0 <emalloc>:
    76f0:	f3 0f 1e fa          	endbr64
    76f4:	48 8b 05 dd b9 00 00 	mov    0xb9dd(%rip),%rax        # 130d8 <header_size>
    76fb:	53                   	push   %rbx
    76fc:	bb 10 00 00 00       	mov    $0x10,%ebx
    7701:	48 8d 44 38 07       	lea    0x7(%rax,%rdi,1),%rax
    7706:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    770a:	48 39 d8             	cmp    %rbx,%rax
    770d:	48 0f 43 d8          	cmovae %rax,%rbx
    7711:	80 3d 90 c1 00 00 00 	cmpb   $0x0,0xc190(%rip)        # 138a8 <adding_reserve>
    7718:	74 36                	je     7750 <emalloc+0x60>
    771a:	48 8b 05 9f c9 00 00 	mov    0xc99f(%rip),%rax        # 140c0 <meta_used>
    7721:	48 8d 14 03          	lea    (%rbx,%rax,1),%rdx
    7725:	48 81 fa 00 00 01 00 	cmp    $0x10000,%rdx
    772c:	0f 87 1c 01 00 00    	ja     784e <emalloc+0x15e>
    7732:	48 8d 0d a7 c9 00 00 	lea    0xc9a7(%rip),%rcx        # 140e0 <meta_reserve>
    7739:	48 83 cb 01          	or     $0x1,%rbx
    773d:	48 89 15 7c c9 00 00 	mov    %rdx,0xc97c(%rip)        # 140c0 <meta_used>
    7744:	48 01 c8             	add    %rcx,%rax
    7747:	48 89 18             	mov    %rbx,(%rax)
    774a:	48 83 c0 08          	add    $0x8,%rax
    774e:	5b                   	pop    %rbx
    774f:	c3                   	ret
    7750:	48 3d 08 08 00 00    	cmp    $0x808,%rax
    7756:	0f 86 74 01 00 00    	jbe    78d0 <emalloc+0x1e0>
    775c:	48 8b 05 55 c1 00 00 	mov    0xc155(%rip),%rax        # 138b8 <large_block_list>
    7763:	48 85 c0             	test   %rax,%rax
    7766:	0f 84 ec 00 00 00    	je     7858 <emalloc+0x168>
    776c:	45 31 c0             	xor    %r8d,%r8d
    776f:	90                   	nop
    7770:	48 8b 10             	mov    (%rax),%rdx
    7773:	48 39 da             	cmp    %rbx,%rdx
    7776:	72 3e                	jb     77b6 <emalloc+0xc6>
    7778:	4d 85 c0             	test   %r8,%r8
    777b:	74 7b                	je     77f8 <emalloc+0x108>
    777d:	49 3b 10             	cmp    (%r8),%rdx
    7780:	48 8b 48 08          	mov    0x8(%rax),%rcx
    7784:	73 20                	jae    77a6 <emalloc+0xb6>
    7786:	48 85 c9             	test   %rcx,%rcx
    7789:	0f 84 89 01 00 00    	je     7918 <emalloc+0x228>
    778f:	48 8b 11             	mov    (%rcx),%rdx
    7792:	49 89 c0             	mov    %rax,%r8
    7795:	48 39 da             	cmp    %rbx,%rdx
    7798:	72 19                	jb     77b3 <emalloc+0xc3>
    779a:	48 89 c8             	mov    %rcx,%rax
    779d:	49 3b 10             	cmp    (%r8),%rdx
    77a0:	48 8b 48 08          	mov    0x8(%rax),%rcx
    77a4:	72 e0                	jb     7786 <emalloc+0x96>
    77a6:	48 85 c9             	test   %rcx,%rcx
    77a9:	74 14                	je     77bf <emalloc+0xcf>
    77ab:	48 8b 11             	mov    (%rcx),%rdx
    77ae:	48 39 da             	cmp    %rbx,%rdx
    77b1:	73 e7                	jae    779a <emalloc+0xaa>
    77b3:	48 89 c8             	mov    %rcx,%rax
    77b6:	48 8b 40 08          	mov    0x8(%rax),%rax
    77ba:	48 85 c0             	test   %rax,%rax
    77bd:	75 b1                	jne    7770 <emalloc+0x80>
    77bf:	4d 85 c0             	test   %r8,%r8
    77c2:	0f 84 90 00 00 00    	je     7858 <emalloc+0x168>
    77c8:	48 8d 35 e9 c0 00 00 	lea    0xc0e9(%rip),%rsi        # 138b8 <large_block_list>
    77cf:	4c 89 c7             	mov    %r8,%rdi
    77d2:	e8 49 fd ff ff       	call   7520 <remove_from_list>
    77d7:	49 8b 00             	mov    (%r8),%rax
    77da:	48 8d 53 10          	lea    0x10(%rbx),%rdx
    77de:	48 39 d0             	cmp    %rdx,%rax
    77e1:	0f 83 c9 00 00 00    	jae    78b0 <emalloc+0x1c0>
    77e7:	48 83 cb 01          	or     $0x1,%rbx
    77eb:	49 8d 40 08          	lea    0x8(%r8),%rax
    77ef:	49 89 18             	mov    %rbx,(%r8)
    77f2:	5b                   	pop    %rbx
    77f3:	c3                   	ret
    77f4:	0f 1f 40 00          	nopl   0x0(%rax)
    77f8:	49 89 c0             	mov    %rax,%r8
    77fb:	eb b9                	jmp    77b6 <emalloc+0xc6>
    77fd:	0f 1f 00             	nopl   (%rax)
    7800:	48 8d bb 1f 00 01 00 	lea    0x1001f(%rbx),%rdi
    7807:	66 31 ff             	xor    %di,%di
    780a:	e8 d1 fb ff ff       	call   73e0 <add_reserve>
    780f:	85 c0                	test   %eax,%eax
    7811:	75 3b                	jne    784e <emalloc+0x15e>
    7813:	48 8b 15 96 c0 00 00 	mov    0xc096(%rip),%rdx        # 138b0 <reserve_list>
    781a:	48 85 d2             	test   %rdx,%rdx
    781d:	75 12                	jne    7831 <emalloc+0x141>
    781f:	eb 2d                	jmp    784e <emalloc+0x15e>
    7821:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    7828:	48 8b 52 18          	mov    0x18(%rdx),%rdx
    782c:	48 85 d2             	test   %rdx,%rdx
    782f:	74 1d                	je     784e <emalloc+0x15e>
    7831:	48 8b 42 10          	mov    0x10(%rdx),%rax
    7835:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
    7839:	48 29 c1             	sub    %rax,%rcx
    783c:	48 39 d9             	cmp    %rbx,%rcx
    783f:	72 e7                	jb     7828 <emalloc+0x138>
    7841:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
    7845:	48 89 4a 10          	mov    %rcx,0x10(%rdx)
    7849:	48 03 02             	add    (%rdx),%rax
    784c:	75 4c                	jne    789a <emalloc+0x1aa>
    784e:	31 c0                	xor    %eax,%eax
    7850:	5b                   	pop    %rbx
    7851:	c3                   	ret
    7852:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    7858:	48 8b 15 51 c0 00 00 	mov    0xc051(%rip),%rdx        # 138b0 <reserve_list>
    785f:	48 85 d2             	test   %rdx,%rdx
    7862:	75 15                	jne    7879 <emalloc+0x189>
    7864:	eb 9a                	jmp    7800 <emalloc+0x110>
    7866:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    786d:	00 00 00 
    7870:	48 8b 52 18          	mov    0x18(%rdx),%rdx
    7874:	48 85 d2             	test   %rdx,%rdx
    7877:	74 87                	je     7800 <emalloc+0x110>
    7879:	48 8b 42 10          	mov    0x10(%rdx),%rax
    787d:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
    7881:	48 29 c1             	sub    %rax,%rcx
    7884:	48 39 d9             	cmp    %rbx,%rcx
    7887:	72 e7                	jb     7870 <emalloc+0x180>
    7889:	48 8d 0c 03          	lea    (%rbx,%rax,1),%rcx
    788d:	48 89 4a 10          	mov    %rcx,0x10(%rdx)
    7891:	48 03 02             	add    (%rdx),%rax
    7894:	0f 84 66 ff ff ff    	je     7800 <emalloc+0x110>
    789a:	48 83 cb 01          	or     $0x1,%rbx
    789e:	48 83 c0 08          	add    $0x8,%rax
    78a2:	48 89 58 f8          	mov    %rbx,-0x8(%rax)
    78a6:	5b                   	pop    %rbx
    78a7:	c3                   	ret
    78a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    78af:	00 
    78b0:	49 8d 3c 18          	lea    (%r8,%rbx,1),%rdi
    78b4:	48 29 d8             	sub    %rbx,%rax
    78b7:	49 89 18             	mov    %rbx,(%r8)
    78ba:	48 89 07             	mov    %rax,(%rdi)
    78bd:	e8 de fc ff ff       	call   75a0 <put_free_block>
    78c2:	e9 20 ff ff ff       	jmp    77e7 <emalloc+0xf7>
    78c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    78ce:	00 00 
    78d0:	48 8d 43 f0          	lea    -0x10(%rbx),%rax
    78d4:	48 8d 15 e5 bf 00 00 	lea    0xbfe5(%rip),%rdx        # 138c0 <exact_block_list>
    78db:	48 c1 e8 03          	shr    $0x3,%rax
    78df:	4c 8b 04 c2          	mov    (%rdx,%rax,8),%r8
    78e3:	4d 85 c0             	test   %r8,%r8
    78e6:	0f 84 6c ff ff ff    	je     7858 <emalloc+0x168>
    78ec:	49 8b 48 08          	mov    0x8(%r8),%rcx
    78f0:	48 89 0c c2          	mov    %rcx,(%rdx,%rax,8)
    78f4:	48 85 c9             	test   %rcx,%rcx
    78f7:	0f 84 ea fe ff ff    	je     77e7 <emalloc+0xf7>
    78fd:	48 85 c0             	test   %rax,%rax
    7900:	0f 84 e1 fe ff ff    	je     77e7 <emalloc+0xf7>
    7906:	48 c7 41 10 00 00 00 	movq   $0x0,0x10(%rcx)
    790d:	00 
    790e:	e9 d4 fe ff ff       	jmp    77e7 <emalloc+0xf7>
    7913:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    7918:	49 89 c0             	mov    %rax,%r8
    791b:	e9 9f fe ff ff       	jmp    77bf <emalloc+0xcf>

0000000000007920 <can_erealloc>:
    7920:	f3 0f 1e fa          	endbr64
    7924:	80 3d 7d bf 00 00 00 	cmpb   $0x0,0xbf7d(%rip)        # 138a8 <adding_reserve>
    792b:	b8 01 00 00 00       	mov    $0x1,%eax
    7930:	75 30                	jne    7962 <can_erealloc+0x42>
    7932:	48 2b 3d 9f b7 00 00 	sub    0xb79f(%rip),%rdi        # 130d8 <header_size>
    7939:	48 8d 15 a0 c7 01 00 	lea    0x1c7a0(%rip),%rdx        # 240e0 <mm_user_end>
    7940:	48 39 d7             	cmp    %rdx,%rdi
    7943:	73 1d                	jae    7962 <can_erealloc+0x42>
    7945:	48 8b 05 84 b7 00 00 	mov    0xb784(%rip),%rax        # 130d0 <size_mask>
    794c:	48 23 07             	and    (%rdi),%rax
    794f:	48 01 c7             	add    %rax,%rdi
    7952:	48 8d 82 00 00 ff ff 	lea    -0x10000(%rdx),%rax
    7959:	48 39 f8             	cmp    %rdi,%rax
    795c:	0f 93 c0             	setae  %al
    795f:	0f b6 c0             	movzbl %al,%eax
    7962:	c3                   	ret
    7963:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    796a:	00 00 00 
    796d:	0f 1f 00             	nopl   (%rax)

0000000000007970 <efree>:
    7970:	f3 0f 1e fa          	endbr64
    7974:	48 2b 3d 5d b7 00 00 	sub    0xb75d(%rip),%rdi        # 130d8 <header_size>
    797b:	41 54                	push   %r12
    797d:	48 8d 05 5c c7 01 00 	lea    0x1c75c(%rip),%rax        # 240e0 <mm_user_end>
    7984:	55                   	push   %rbp
    7985:	4c 8b 1d 44 b7 00 00 	mov    0xb744(%rip),%r11        # 130d0 <size_mask>
    798c:	49 89 fc             	mov    %rdi,%r12
    798f:	53                   	push   %rbx
    7990:	4c 8b 0f             	mov    (%rdi),%r9
    7993:	4d 21 d9             	and    %r11,%r9
    7996:	48 39 c7             	cmp    %rax,%rdi
    7999:	73 14                	jae    79af <efree+0x3f>
    799b:	49 8d 04 39          	lea    (%r9,%rdi,1),%rax
    799f:	48 8d 15 3a c7 00 00 	lea    0xc73a(%rip),%rdx        # 140e0 <meta_reserve>
    79a6:	48 39 c2             	cmp    %rax,%rdx
    79a9:	0f 82 f9 00 00 00    	jb     7aa8 <efree+0x138>
    79af:	4d 85 c9             	test   %r9,%r9
    79b2:	74 2e                	je     79e2 <efree+0x72>
    79b4:	4c 8b 15 f5 be 00 00 	mov    0xbef5(%rip),%r10        # 138b0 <reserve_list>
    79bb:	4d 85 d2             	test   %r10,%r10
    79be:	74 22                	je     79e2 <efree+0x72>
    79c0:	4b 8d 14 21          	lea    (%r9,%r12,1),%rdx
    79c4:	0f 1f 40 00          	nopl   0x0(%rax)
    79c8:	49 8b 02             	mov    (%r10),%rax
    79cb:	49 39 c4             	cmp    %rax,%r12
    79ce:	72 09                	jb     79d9 <efree+0x69>
    79d0:	49 03 42 10          	add    0x10(%r10),%rax
    79d4:	48 39 d0             	cmp    %rdx,%rax
    79d7:	73 17                	jae    79f0 <efree+0x80>
    79d9:	4d 8b 52 18          	mov    0x18(%r10),%r10
    79dd:	4d 85 d2             	test   %r10,%r10
    79e0:	75 e6                	jne    79c8 <efree+0x58>
    79e2:	e8 59 55 00 00       	call   cf40 <abort>
    79e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    79ee:	00 00 
    79f0:	4d 89 0c 24          	mov    %r9,(%r12)
    79f4:	49 c7 44 24 08 00 00 	movq   $0x0,0x8(%r12)
    79fb:	00 00 
    79fd:	49 83 f9 10          	cmp    $0x10,%r9
    7a01:	0f 87 b9 00 00 00    	ja     7ac0 <efree+0x150>
    7a07:	4c 89 e7             	mov    %r12,%rdi
    7a0a:	48 8d 1d af be 00 00 	lea    0xbeaf(%rip),%rbx        # 138c0 <exact_block_list>
    7a11:	48 8d 2d a0 be 00 00 	lea    0xbea0(%rip),%rbp        # 138b8 <large_block_list>
    7a18:	e8 03 fc ff ff       	call   7620 <neighbor_right>
    7a1d:	48 89 c7             	mov    %rax,%rdi
    7a20:	48 85 c0             	test   %rax,%rax
    7a23:	75 3c                	jne    7a61 <efree+0xf1>
    7a25:	e9 3d 01 00 00       	jmp    7b67 <efree+0x1f7>
    7a2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    7a30:	48 89 de             	mov    %rbx,%rsi
    7a33:	48 83 f9 0f          	cmp    $0xf,%rcx
    7a37:	76 0b                	jbe    7a44 <efree+0xd4>
    7a39:	48 8d 71 f0          	lea    -0x10(%rcx),%rsi
    7a3d:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
    7a41:	48 01 de             	add    %rbx,%rsi
    7a44:	e8 d7 fa ff ff       	call   7520 <remove_from_list>
    7a49:	49 03 0c 24          	add    (%r12),%rcx
    7a4d:	49 89 0c 24          	mov    %rcx,(%r12)
    7a51:	49 89 c9             	mov    %rcx,%r9
    7a54:	e8 c7 fb ff ff       	call   7620 <neighbor_right>
    7a59:	48 89 c7             	mov    %rax,%rdi
    7a5c:	48 85 c0             	test   %rax,%rax
    7a5f:	74 23                	je     7a84 <efree+0x114>
    7a61:	48 8b 0f             	mov    (%rdi),%rcx
    7a64:	f6 c1 01             	test   $0x1,%cl
    7a67:	75 17                	jne    7a80 <efree+0x110>
    7a69:	4c 21 d9             	and    %r11,%rcx
    7a6c:	48 81 f9 08 08 00 00 	cmp    $0x808,%rcx
    7a73:	76 bb                	jbe    7a30 <efree+0xc0>
    7a75:	48 89 ee             	mov    %rbp,%rsi
    7a78:	e8 a3 fa ff ff       	call   7520 <remove_from_list>
    7a7d:	eb ca                	jmp    7a49 <efree+0xd9>
    7a7f:	90                   	nop
    7a80:	4d 8b 0c 24          	mov    (%r12),%r9
    7a84:	4d 21 cb             	and    %r9,%r11
    7a87:	49 8b 1a             	mov    (%r10),%rbx
    7a8a:	4c 89 e0             	mov    %r12,%rax
    7a8d:	48 29 d8             	sub    %rbx,%rax
    7a90:	49 01 c3             	add    %rax,%r11
    7a93:	4d 3b 5a 10          	cmp    0x10(%r10),%r11
    7a97:	74 37                	je     7ad0 <efree+0x160>
    7a99:	5b                   	pop    %rbx
    7a9a:	4c 89 e7             	mov    %r12,%rdi
    7a9d:	5d                   	pop    %rbp
    7a9e:	41 5c                	pop    %r12
    7aa0:	e9 fb fa ff ff       	jmp    75a0 <put_free_block>
    7aa5:	0f 1f 00             	nopl   (%rax)
    7aa8:	80 3d f9 bd 00 00 00 	cmpb   $0x0,0xbdf9(%rip)        # 138a8 <adding_reserve>
    7aaf:	0f 84 2d ff ff ff    	je     79e2 <efree+0x72>
    7ab5:	5b                   	pop    %rbx
    7ab6:	5d                   	pop    %rbp
    7ab7:	41 5c                	pop    %r12
    7ab9:	c3                   	ret
    7aba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    7ac0:	49 c7 44 24 10 00 00 	movq   $0x0,0x10(%r12)
    7ac7:	00 00 
    7ac9:	e9 39 ff ff ff       	jmp    7a07 <efree+0x97>
    7ace:	66 90                	xchg   %ax,%ax
    7ad0:	48 8b 0d e1 bd 00 00 	mov    0xbde1(%rip),%rcx        # 138b8 <large_block_list>
    7ad7:	4d 29 cb             	sub    %r9,%r11
    7ada:	4d 89 5a 10          	mov    %r11,0x10(%r10)
    7ade:	4e 8d 04 1b          	lea    (%rbx,%r11,1),%r8
    7ae2:	48 85 c9             	test   %rcx,%rcx
    7ae5:	75 12                	jne    7af9 <efree+0x189>
    7ae7:	eb 6d                	jmp    7b56 <efree+0x1e6>
    7ae9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    7af0:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7af4:	48 85 c9             	test   %rcx,%rcx
    7af7:	74 5d                	je     7b56 <efree+0x1e6>
    7af9:	48 8b 01             	mov    (%rcx),%rax
    7afc:	48 01 c8             	add    %rcx,%rax
    7aff:	49 39 c0             	cmp    %rax,%r8
    7b02:	75 ec                	jne    7af0 <efree+0x180>
    7b04:	48 8d 35 ad bd 00 00 	lea    0xbdad(%rip),%rsi        # 138b8 <large_block_list>
    7b0b:	48 89 cf             	mov    %rcx,%rdi
    7b0e:	e8 0d fa ff ff       	call   7520 <remove_from_list>
    7b13:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    7b18:	4c 2b 01             	sub    (%rcx),%r8
    7b1b:	48 8b 0d 96 bd 00 00 	mov    0xbd96(%rip),%rcx        # 138b8 <large_block_list>
    7b22:	48 85 c9             	test   %rcx,%rcx
    7b25:	75 12                	jne    7b39 <efree+0x1c9>
    7b27:	eb 36                	jmp    7b5f <efree+0x1ef>
    7b29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    7b30:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7b34:	48 85 c9             	test   %rcx,%rcx
    7b37:	74 17                	je     7b50 <efree+0x1e0>
    7b39:	48 8b 01             	mov    (%rcx),%rax
    7b3c:	48 01 c8             	add    %rcx,%rax
    7b3f:	49 39 c0             	cmp    %rax,%r8
    7b42:	75 ec                	jne    7b30 <efree+0x1c0>
    7b44:	48 89 cf             	mov    %rcx,%rdi
    7b47:	e8 d4 f9 ff ff       	call   7520 <remove_from_list>
    7b4c:	eb ca                	jmp    7b18 <efree+0x1a8>
    7b4e:	66 90                	xchg   %ax,%ax
    7b50:	4d 89 c3             	mov    %r8,%r11
    7b53:	49 29 db             	sub    %rbx,%r11
    7b56:	4d 89 5a 10          	mov    %r11,0x10(%r10)
    7b5a:	5b                   	pop    %rbx
    7b5b:	5d                   	pop    %rbp
    7b5c:	41 5c                	pop    %r12
    7b5e:	c3                   	ret
    7b5f:	49 29 d8             	sub    %rbx,%r8
    7b62:	4d 89 c3             	mov    %r8,%r11
    7b65:	eb ef                	jmp    7b56 <efree+0x1e6>
    7b67:	4d 89 cb             	mov    %r9,%r11
    7b6a:	e9 18 ff ff ff       	jmp    7a87 <efree+0x117>
    7b6f:	90                   	nop

0000000000007b70 <mm_init_ema>:
    7b70:	f3 0f 1e fa          	endbr64
    7b74:	41 57                	push   %r15
    7b76:	4d 89 cf             	mov    %r9,%r15
    7b79:	41 56                	push   %r14
    7b7b:	4d 89 c6             	mov    %r8,%r14
    7b7e:	41 55                	push   %r13
    7b80:	41 89 cd             	mov    %ecx,%r13d
    7b83:	41 54                	push   %r12
    7b85:	41 89 d4             	mov    %edx,%r12d
    7b88:	55                   	push   %rbp
    7b89:	48 89 f5             	mov    %rsi,%rbp
    7b8c:	53                   	push   %rbx
    7b8d:	48 89 fb             	mov    %rdi,%rbx
    7b90:	48 83 ec 18          	sub    $0x18,%rsp
    7b94:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    7b9b:	00 00 
    7b9d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    7ba2:	31 c0                	xor    %eax,%eax
    7ba4:	e8 57 ad ff ff       	call   2900 <sgx_mm_is_within_enclave>
    7ba9:	89 c2                	mov    %eax,%edx
    7bab:	b8 0d 00 00 00       	mov    $0xd,%eax
    7bb0:	84 d2                	test   %dl,%dl
    7bb2:	0f 84 7d 00 00 00    	je     7c35 <mm_init_ema+0xc5>
    7bb8:	41 f7 c4 7e f8 ff ff 	test   $0xfffff87e,%r12d
    7bbf:	75 6f                	jne    7c30 <mm_init_ema+0xc0>
    7bc1:	41 83 fd 07          	cmp    $0x7,%r13d
    7bc5:	77 69                	ja     7c30 <mm_init_ema+0xc0>
    7bc7:	48 89 e1             	mov    %rsp,%rcx
    7bca:	48 89 ea             	mov    %rbp,%rdx
    7bcd:	48 8d 3d 94 b4 00 00 	lea    0xb494(%rip),%rdi        # 13068 <g_rts_ema_root>
    7bd4:	48 89 de             	mov    %rbx,%rsi
    7bd7:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    7bde:	00 
    7bdf:	e8 ac e9 ff ff       	call   6590 <find_free_region_at>
    7be4:	84 c0                	test   %al,%al
    7be6:	74 48                	je     7c30 <mm_init_ema+0xc0>
    7be8:	48 83 ec 08          	sub    $0x8,%rsp
    7bec:	44 89 e1             	mov    %r12d,%ecx
    7bef:	41 0f b6 d4          	movzbl %r12b,%edx
    7bf3:	48 89 df             	mov    %rbx,%rdi
    7bf6:	ff 74 24 08          	push   0x8(%rsp)
    7bfa:	81 e1 00 ff 00 00    	and    $0xff00,%ecx
    7c00:	4d 89 f9             	mov    %r15,%r9
    7c03:	4d 89 f0             	mov    %r14,%r8
    7c06:	44 09 e9             	or     %r13d,%ecx
    7c09:	48 89 ee             	mov    %rbp,%rsi
    7c0c:	48 63 c9             	movslq %ecx,%rcx
    7c0f:	e8 5c ea ff ff       	call   6670 <ema_new>
    7c14:	48 89 c7             	mov    %rax,%rdi
    7c17:	58                   	pop    %rax
    7c18:	5a                   	pop    %rdx
    7c19:	48 85 ff             	test   %rdi,%rdi
    7c1c:	74 3a                	je     7c58 <mm_init_ema+0xe8>
    7c1e:	31 c0                	xor    %eax,%eax
    7c20:	41 83 e4 01          	and    $0x1,%r12d
    7c24:	75 0f                	jne    7c35 <mm_init_ema+0xc5>
    7c26:	e8 f5 e2 ff ff       	call   5f20 <ema_set_eaccept_full>
    7c2b:	eb 08                	jmp    7c35 <mm_init_ema+0xc5>
    7c2d:	0f 1f 00             	nopl   (%rax)
    7c30:	b8 16 00 00 00       	mov    $0x16,%eax
    7c35:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    7c3a:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    7c41:	00 00 
    7c43:	75 1a                	jne    7c5f <mm_init_ema+0xef>
    7c45:	48 83 c4 18          	add    $0x18,%rsp
    7c49:	5b                   	pop    %rbx
    7c4a:	5d                   	pop    %rbp
    7c4b:	41 5c                	pop    %r12
    7c4d:	41 5d                	pop    %r13
    7c4f:	41 5e                	pop    %r14
    7c51:	41 5f                	pop    %r15
    7c53:	c3                   	ret
    7c54:	0f 1f 40 00          	nopl   0x0(%rax)
    7c58:	b8 0c 00 00 00       	mov    $0xc,%eax
    7c5d:	eb d6                	jmp    7c35 <mm_init_ema+0xc5>
    7c5f:	e8 bc 38 00 00       	call   b520 <__stack_chk_fail>
    7c64:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    7c6b:	00 00 00 
    7c6e:	66 90                	xchg   %ax,%ax

0000000000007c70 <mm_alloc>:
    7c70:	f3 0f 1e fa          	endbr64
    7c74:	48 83 ec 10          	sub    $0x10,%rsp
    7c78:	48 8d 05 e9 b3 00 00 	lea    0xb3e9(%rip),%rax        # 13068 <g_rts_ema_root>
    7c7f:	50                   	push   %rax
    7c80:	e8 1b 02 00 00       	call   7ea0 <mm_alloc_internal>
    7c85:	48 83 c4 18          	add    $0x18,%rsp
    7c89:	c3                   	ret
    7c8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000007c90 <mm_commit>:
    7c90:	f3 0f 1e fa          	endbr64
    7c94:	48 8d 15 cd b3 00 00 	lea    0xb3cd(%rip),%rdx        # 13068 <g_rts_ema_root>
    7c9b:	e9 30 05 00 00       	jmp    81d0 <mm_commit_internal>

0000000000007ca0 <mm_uncommit>:
    7ca0:	f3 0f 1e fa          	endbr64
    7ca4:	48 8d 15 bd b3 00 00 	lea    0xb3bd(%rip),%rdx        # 13068 <g_rts_ema_root>
    7cab:	e9 f0 05 00 00       	jmp    82a0 <mm_uncommit_internal>

0000000000007cb0 <mm_dealloc>:
    7cb0:	f3 0f 1e fa          	endbr64
    7cb4:	48 8d 15 ad b3 00 00 	lea    0xb3ad(%rip),%rdx        # 13068 <g_rts_ema_root>
    7cbb:	e9 a0 06 00 00       	jmp    8360 <mm_dealloc_internal>

0000000000007cc0 <mm_modify_type>:
    7cc0:	f3 0f 1e fa          	endbr64
    7cc4:	48 8d 0d 9d b3 00 00 	lea    0xb39d(%rip),%rcx        # 13068 <g_rts_ema_root>
    7ccb:	e9 50 07 00 00       	jmp    8420 <mm_modify_type_internal>

0000000000007cd0 <mm_modify_permissions>:
    7cd0:	f3 0f 1e fa          	endbr64
    7cd4:	48 8d 0d 8d b3 00 00 	lea    0xb38d(%rip),%rcx        # 13068 <g_rts_ema_root>
    7cdb:	e9 20 08 00 00       	jmp    8500 <mm_modify_permissions_internal>

0000000000007ce0 <sgx_mm_enclave_pfhandler>:
    7ce0:	f3 0f 1e fa          	endbr64
    7ce4:	41 56                	push   %r14
    7ce6:	41 55                	push   %r13
    7ce8:	49 89 fd             	mov    %rdi,%r13
    7ceb:	41 54                	push   %r12
    7ced:	55                   	push   %rbp
    7cee:	53                   	push   %rbx
    7cef:	31 db                	xor    %ebx,%ebx
    7cf1:	48 83 ec 10          	sub    $0x10,%rsp
    7cf5:	4c 8b 37             	mov    (%rdi),%r14
    7cf8:	48 8b 3d f1 c3 01 00 	mov    0x1c3f1(%rip),%rdi        # 240f0 <mm_lock>
    7cff:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    7d06:	00 00 
    7d08:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    7d0d:	31 c0                	xor    %eax,%eax
    7d0f:	e8 bc ab ff ff       	call   28d0 <sgx_mm_mutex_lock>
    7d14:	85 c0                	test   %eax,%eax
    7d16:	74 28                	je     7d40 <sgx_mm_enclave_pfhandler+0x60>
    7d18:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    7d1d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    7d24:	00 00 
    7d26:	0f 85 50 01 00 00    	jne    7e7c <sgx_mm_enclave_pfhandler+0x19c>
    7d2c:	48 83 c4 10          	add    $0x10,%rsp
    7d30:	89 d8                	mov    %ebx,%eax
    7d32:	5b                   	pop    %rbx
    7d33:	5d                   	pop    %rbp
    7d34:	41 5c                	pop    %r12
    7d36:	41 5d                	pop    %r13
    7d38:	41 5e                	pop    %r14
    7d3a:	c3                   	ret
    7d3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    7d40:	49 81 e6 00 f0 ff ff 	and    $0xfffffffffffff000,%r14
    7d47:	48 8d 3d b2 b2 00 00 	lea    0xb2b2(%rip),%rdi        # 13000 <g_user_ema_root>
    7d4e:	89 c3                	mov    %eax,%ebx
    7d50:	4c 89 f6             	mov    %r14,%rsi
    7d53:	e8 38 e2 ff ff       	call   5f90 <search_ema>
    7d58:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    7d5f:	00 
    7d60:	48 89 c5             	mov    %rax,%rbp
    7d63:	48 85 c0             	test   %rax,%rax
    7d66:	0f 84 b4 00 00 00    	je     7e20 <sgx_mm_enclave_pfhandler+0x140>
    7d6c:	48 89 e6             	mov    %rsp,%rsi
    7d6f:	48 89 ef             	mov    %rbp,%rdi
    7d72:	e8 89 e1 ff ff       	call   5f00 <ema_fault_handler>
    7d77:	49 89 c4             	mov    %rax,%r12
    7d7a:	48 85 c0             	test   %rax,%rax
    7d7d:	74 21                	je     7da0 <sgx_mm_enclave_pfhandler+0xc0>
    7d7f:	48 8b 3d 6a c3 01 00 	mov    0x1c36a(%rip),%rdi        # 240f0 <mm_lock>
    7d86:	e8 65 ab ff ff       	call   28f0 <sgx_mm_mutex_unlock>
    7d8b:	48 8b 34 24          	mov    (%rsp),%rsi
    7d8f:	4c 89 ef             	mov    %r13,%rdi
    7d92:	41 ff d4             	call   *%r12
    7d95:	89 c3                	mov    %eax,%ebx
    7d97:	e9 7c ff ff ff       	jmp    7d18 <sgx_mm_enclave_pfhandler+0x38>
    7d9c:	0f 1f 40 00          	nopl   0x0(%rax)
    7da0:	4c 89 f6             	mov    %r14,%rsi
    7da3:	48 89 ef             	mov    %rbp,%rdi
    7da6:	e8 b5 e1 ff ff       	call   5f60 <ema_page_committed>
    7dab:	84 c0                	test   %al,%al
    7dad:	74 31                	je     7de0 <sgx_mm_enclave_pfhandler+0x100>
    7daf:	41 f6 45 08 02       	testb  $0x2,0x8(%r13)
    7db4:	0f 84 86 00 00 00    	je     7e40 <sgx_mm_enclave_pfhandler+0x160>
    7dba:	48 89 ef             	mov    %rbp,%rdi
    7dbd:	e8 2e e1 ff ff       	call   5ef0 <get_ema_si_flags>
    7dc2:	48 d1 e8             	shr    $1,%rax
    7dc5:	48 89 c3             	mov    %rax,%rbx
    7dc8:	83 e3 01             	and    $0x1,%ebx
    7dcb:	f7 db                	neg    %ebx
    7dcd:	48 8b 3d 1c c3 01 00 	mov    0x1c31c(%rip),%rdi        # 240f0 <mm_lock>
    7dd4:	e8 17 ab ff ff       	call   28f0 <sgx_mm_mutex_unlock>
    7dd9:	e9 3a ff ff ff       	jmp    7d18 <sgx_mm_enclave_pfhandler+0x38>
    7dde:	66 90                	xchg   %ax,%ax
    7de0:	48 89 ef             	mov    %rbp,%rdi
    7de3:	e8 f8 e0 ff ff       	call   5ee0 <get_ema_alloc_flags>
    7de8:	a8 04                	test   $0x4,%al
    7dea:	0f 84 91 00 00 00    	je     7e81 <sgx_mm_enclave_pfhandler+0x1a1>
    7df0:	41 f6 45 08 02       	testb  $0x2,0x8(%r13)
    7df5:	74 69                	je     7e60 <sgx_mm_enclave_pfhandler+0x180>
    7df7:	48 89 ef             	mov    %rbp,%rdi
    7dfa:	e8 f1 e0 ff ff       	call   5ef0 <get_ema_si_flags>
    7dff:	a8 02                	test   $0x2,%al
    7e01:	74 ca                	je     7dcd <sgx_mm_enclave_pfhandler+0xed>
    7e03:	49 8d 96 00 10 00 00 	lea    0x1000(%r14),%rdx
    7e0a:	4c 89 f6             	mov    %r14,%rsi
    7e0d:	48 89 ef             	mov    %rbp,%rdi
    7e10:	e8 9b ea ff ff       	call   68b0 <ema_do_commit>
    7e15:	85 c0                	test   %eax,%eax
    7e17:	75 68                	jne    7e81 <sgx_mm_enclave_pfhandler+0x1a1>
    7e19:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
    7e1e:	eb ad                	jmp    7dcd <sgx_mm_enclave_pfhandler+0xed>
    7e20:	4c 89 f6             	mov    %r14,%rsi
    7e23:	48 8d 3d 3e b2 00 00 	lea    0xb23e(%rip),%rdi        # 13068 <g_rts_ema_root>
    7e2a:	e8 61 e1 ff ff       	call   5f90 <search_ema>
    7e2f:	48 89 c5             	mov    %rax,%rbp
    7e32:	48 85 c0             	test   %rax,%rax
    7e35:	0f 85 31 ff ff ff    	jne    7d6c <sgx_mm_enclave_pfhandler+0x8c>
    7e3b:	eb 90                	jmp    7dcd <sgx_mm_enclave_pfhandler+0xed>
    7e3d:	0f 1f 00             	nopl   (%rax)
    7e40:	48 89 ef             	mov    %rbp,%rdi
    7e43:	e8 a8 e0 ff ff       	call   5ef0 <get_ema_si_flags>
    7e48:	a8 01                	test   $0x1,%al
    7e4a:	0f 84 7d ff ff ff    	je     7dcd <sgx_mm_enclave_pfhandler+0xed>
    7e50:	41 f6 45 08 02       	testb  $0x2,0x8(%r13)
    7e55:	74 c2                	je     7e19 <sgx_mm_enclave_pfhandler+0x139>
    7e57:	e9 5e ff ff ff       	jmp    7dba <sgx_mm_enclave_pfhandler+0xda>
    7e5c:	0f 1f 40 00          	nopl   0x0(%rax)
    7e60:	48 89 ef             	mov    %rbp,%rdi
    7e63:	e8 88 e0 ff ff       	call   5ef0 <get_ema_si_flags>
    7e68:	a8 01                	test   $0x1,%al
    7e6a:	0f 84 5d ff ff ff    	je     7dcd <sgx_mm_enclave_pfhandler+0xed>
    7e70:	41 f6 45 08 02       	testb  $0x2,0x8(%r13)
    7e75:	74 8c                	je     7e03 <sgx_mm_enclave_pfhandler+0x123>
    7e77:	e9 7b ff ff ff       	jmp    7df7 <sgx_mm_enclave_pfhandler+0x117>
    7e7c:	e8 9f 36 00 00       	call   b520 <__stack_chk_fail>
    7e81:	48 8b 3d 68 c2 01 00 	mov    0x1c268(%rip),%rdi        # 240f0 <mm_lock>
    7e88:	e8 63 aa ff ff       	call   28f0 <sgx_mm_mutex_unlock>
    7e8d:	e8 ae 50 00 00       	call   cf40 <abort>
    7e92:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    7e99:	00 00 00 
    7e9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000007ea0 <mm_alloc_internal>:
    7ea0:	f3 0f 1e fa          	endbr64
    7ea4:	41 57                	push   %r15
    7ea6:	41 56                	push   %r14
    7ea8:	41 55                	push   %r13
    7eaa:	41 54                	push   %r12
    7eac:	55                   	push   %rbp
    7ead:	53                   	push   %rbx
    7eae:	48 83 ec 68          	sub    $0x68,%rsp
    7eb2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    7eb9:	00 00 
    7ebb:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    7ec0:	31 c0                	xor    %eax,%eax
    7ec2:	4c 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%r14
    7ec9:	00 
    7eca:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    7ed1:	00 00 
    7ed3:	f6 c2 07             	test   $0x7,%dl
    7ed6:	74 60                	je     7f38 <mm_alloc_internal+0x98>
    7ed8:	4c 89 c5             	mov    %r8,%rbp
    7edb:	89 d0                	mov    %edx,%eax
    7edd:	41 89 d0             	mov    %edx,%r8d
    7ee0:	25 00 ff 00 00       	and    $0xff00,%eax
    7ee5:	41 81 e0 00 ff 00 00 	and    $0xff00,%r8d
    7eec:	f6 c6 f8             	test   $0xf8,%dh
    7eef:	75 47                	jne    7f38 <mm_alloc_internal+0x98>
    7ef1:	85 c0                	test   %eax,%eax
    7ef3:	b8 00 02 00 00       	mov    $0x200,%eax
    7ef8:	49 89 f7             	mov    %rsi,%r15
    7efb:	4c 0f 44 c0          	cmove  %rax,%r8
    7eff:	f7 c6 ff 0f 00 00    	test   $0xfff,%esi
    7f05:	75 31                	jne    7f38 <mm_alloc_internal+0x98>
    7f07:	48 89 cb             	mov    %rcx,%rbx
    7f0a:	89 d1                	mov    %edx,%ecx
    7f0c:	4d 89 cc             	mov    %r9,%r12
    7f0f:	c1 e9 18             	shr    $0x18,%ecx
    7f12:	74 54                	je     7f68 <mm_alloc_internal+0xc8>
    7f14:	83 f9 0b             	cmp    $0xb,%ecx
    7f17:	76 1f                	jbe    7f38 <mm_alloc_internal+0x98>
    7f19:	b8 01 00 00 00       	mov    $0x1,%eax
    7f1e:	49 c7 c5 ff ff ff ff 	mov    $0xffffffffffffffff,%r13
    7f25:	48 d3 e0             	shl    %cl,%rax
    7f28:	49 d3 e5             	shl    %cl,%r13
    7f2b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    7f30:	49 f7 d5             	not    %r13
    7f33:	eb 42                	jmp    7f77 <mm_alloc_internal+0xd7>
    7f35:	0f 1f 00             	nopl   (%rax)
    7f38:	b9 16 00 00 00       	mov    $0x16,%ecx
    7f3d:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    7f42:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    7f49:	00 00 
    7f4b:	0f 85 41 02 00 00    	jne    8192 <mm_alloc_internal+0x2f2>
    7f51:	48 83 c4 68          	add    $0x68,%rsp
    7f55:	89 c8                	mov    %ecx,%eax
    7f57:	5b                   	pop    %rbx
    7f58:	5d                   	pop    %rbp
    7f59:	41 5c                	pop    %r12
    7f5b:	41 5d                	pop    %r13
    7f5d:	41 5e                	pop    %r14
    7f5f:	41 5f                	pop    %r15
    7f61:	c3                   	ret
    7f62:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    7f68:	48 c7 44 24 08 00 10 	movq   $0x1000,0x8(%rsp)
    7f6f:	00 00 
    7f71:	41 bd ff 0f 00 00    	mov    $0xfff,%r13d
    7f77:	48 89 7c 24 38       	mov    %rdi,0x38(%rsp)
    7f7c:	49 21 fd             	and    %rdi,%r13
    7f7f:	75 b7                	jne    7f38 <mm_alloc_internal+0x98>
    7f81:	48 85 ff             	test   %rdi,%rdi
    7f84:	74 23                	je     7fa9 <mm_alloc_internal+0x109>
    7f86:	4c 89 fe             	mov    %r15,%rsi
    7f89:	89 54 24 1c          	mov    %edx,0x1c(%rsp)
    7f8d:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    7f92:	e8 69 a9 ff ff       	call   2900 <sgx_mm_is_within_enclave>
    7f97:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    7f9c:	8b 54 24 1c          	mov    0x1c(%rsp),%edx
    7fa0:	b9 0d 00 00 00       	mov    $0xd,%ecx
    7fa5:	84 c0                	test   %al,%al
    7fa7:	74 94                	je     7f3d <mm_alloc_internal+0x9d>
    7fa9:	48 8b 3d 40 c1 01 00 	mov    0x1c140(%rip),%rdi        # 240f0 <mm_lock>
    7fb0:	89 54 24 1c          	mov    %edx,0x1c(%rsp)
    7fb4:	4c 89 44 24 10       	mov    %r8,0x10(%rsp)
    7fb9:	e8 12 a9 ff ff       	call   28d0 <sgx_mm_mutex_lock>
    7fbe:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    7fc3:	8b 54 24 1c          	mov    0x1c(%rsp),%edx
    7fc7:	b9 0e 00 00 00       	mov    $0xe,%ecx
    7fcc:	85 c0                	test   %eax,%eax
    7fce:	0f 85 69 ff ff ff    	jne    7f3d <mm_alloc_internal+0x9d>
    7fd4:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
    7fd9:	49 83 c8 03          	or     $0x3,%r8
    7fdd:	0f b6 c2             	movzbl %dl,%eax
    7fe0:	f6 c2 01             	test   $0x1,%dl
    7fe3:	89 44 24 10          	mov    %eax,0x10(%rsp)
    7fe7:	4d 0f 44 e8          	cmove  %r8,%r13
    7feb:	48 85 f6             	test   %rsi,%rsi
    7fee:	0f 85 9c 00 00 00    	jne    8090 <mm_alloc_internal+0x1f0>
    7ff4:	4c 8d 44 24 40       	lea    0x40(%rsp),%r8
    7ff9:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    7ffe:	48 8d 4c 24 38       	lea    0x38(%rsp),%rcx
    8003:	4c 89 fe             	mov    %r15,%rsi
    8006:	4c 89 f7             	mov    %r14,%rdi
    8009:	e8 72 e2 ff ff       	call   6280 <find_free_region>
    800e:	84 c0                	test   %al,%al
    8010:	0f 84 0a 01 00 00    	je     8120 <mm_alloc_internal+0x280>
    8016:	48 83 ec 08          	sub    $0x8,%rsp
    801a:	49 89 e9             	mov    %rbp,%r9
    801d:	49 89 d8             	mov    %rbx,%r8
    8020:	4c 89 e9             	mov    %r13,%rcx
    8023:	ff 74 24 48          	push   0x48(%rsp)
    8027:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
    802c:	4c 89 fe             	mov    %r15,%rsi
    802f:	8b 54 24 20          	mov    0x20(%rsp),%edx
    8033:	e8 38 e6 ff ff       	call   6670 <ema_new>
    8038:	48 89 c7             	mov    %rax,%rdi
    803b:	58                   	pop    %rax
    803c:	5a                   	pop    %rdx
    803d:	48 85 ff             	test   %rdi,%rdi
    8040:	0f 84 da 00 00 00    	je     8120 <mm_alloc_internal+0x280>
    8046:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    804b:	e8 a0 f2 ff ff       	call   72f0 <ema_do_alloc>
    8050:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    8055:	85 c0                	test   %eax,%eax
    8057:	89 c1                	mov    %eax,%ecx
    8059:	0f 85 21 01 00 00    	jne    8180 <mm_alloc_internal+0x2e0>
    805f:	4d 85 e4             	test   %r12,%r12
    8062:	74 09                	je     806d <mm_alloc_internal+0x1cd>
    8064:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    8069:	49 89 04 24          	mov    %rax,(%r12)
    806d:	48 8b 3d 7c c0 01 00 	mov    0x1c07c(%rip),%rdi        # 240f0 <mm_lock>
    8074:	89 4c 24 08          	mov    %ecx,0x8(%rsp)
    8078:	e8 73 a8 ff ff       	call   28f0 <sgx_mm_mutex_unlock>
    807d:	8b 4c 24 08          	mov    0x8(%rsp),%ecx
    8081:	e9 b7 fe ff ff       	jmp    7f3d <mm_alloc_internal+0x9d>
    8086:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    808d:	00 00 00 
    8090:	83 e2 40             	and    $0x40,%edx
    8093:	4a 8d 04 3e          	lea    (%rsi,%r15,1),%rax
    8097:	48 8d 4c 24 48       	lea    0x48(%rsp),%rcx
    809c:	4c 89 f7             	mov    %r14,%rdi
    809f:	89 54 24 1c          	mov    %edx,0x1c(%rsp)
    80a3:	4c 8d 44 24 50       	lea    0x50(%rsp),%r8
    80a8:	48 89 c2             	mov    %rax,%rdx
    80ab:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    80b2:	00 00 
    80b4:	48 c7 44 24 50 00 00 	movq   $0x0,0x50(%rsp)
    80bb:	00 00 
    80bd:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    80c2:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
    80c7:	e8 f4 de ff ff       	call   5fc0 <search_ema_range>
    80cc:	85 c0                	test   %eax,%eax
    80ce:	75 60                	jne    8130 <mm_alloc_internal+0x290>
    80d0:	55                   	push   %rbp
    80d1:	4d 89 e9             	mov    %r13,%r9
    80d4:	53                   	push   %rbx
    80d5:	48 8b 7c 24 58       	mov    0x58(%rsp),%rdi
    80da:	44 8b 44 24 20       	mov    0x20(%rsp),%r8d
    80df:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
    80e4:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
    80e9:	48 8b 74 24 60       	mov    0x60(%rsp),%rsi
    80ee:	e8 ad f0 ff ff       	call   71a0 <ema_realloc_from_reserve_range>
    80f3:	41 58                	pop    %r8
    80f5:	41 59                	pop    %r9
    80f7:	48 89 c7             	mov    %rax,%rdi
    80fa:	48 85 c0             	test   %rax,%rax
    80fd:	0f 85 43 ff ff ff    	jne    8046 <mm_alloc_internal+0x1a6>
    8103:	8b 7c 24 1c          	mov    0x1c(%rsp),%edi
    8107:	b9 11 00 00 00       	mov    $0x11,%ecx
    810c:	85 ff                	test   %edi,%edi
    810e:	0f 84 e0 fe ff ff    	je     7ff4 <mm_alloc_internal+0x154>
    8114:	e9 54 ff ff ff       	jmp    806d <mm_alloc_internal+0x1cd>
    8119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    8120:	b9 0c 00 00 00       	mov    $0xc,%ecx
    8125:	e9 43 ff ff ff       	jmp    806d <mm_alloc_internal+0x1cd>
    812a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    8130:	4c 8d 44 24 40       	lea    0x40(%rsp),%r8
    8135:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
    813a:	4c 89 fa             	mov    %r15,%rdx
    813d:	4c 89 f7             	mov    %r14,%rdi
    8140:	4c 89 c1             	mov    %r8,%rcx
    8143:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    8148:	e8 43 e4 ff ff       	call   6590 <find_free_region_at>
    814d:	3c 01                	cmp    $0x1,%al
    814f:	0f 84 c1 fe ff ff    	je     8016 <mm_alloc_internal+0x176>
    8155:	8b 74 24 1c          	mov    0x1c(%rsp),%esi
    8159:	b9 01 00 00 00       	mov    $0x1,%ecx
    815e:	85 f6                	test   %esi,%esi
    8160:	0f 85 07 ff ff ff    	jne    806d <mm_alloc_internal+0x1cd>
    8166:	84 c0                	test   %al,%al
    8168:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
    816d:	0f 84 86 fe ff ff    	je     7ff9 <mm_alloc_internal+0x159>
    8173:	e9 9e fe ff ff       	jmp    8016 <mm_alloc_internal+0x176>
    8178:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    817f:	00 
    8180:	89 44 24 08          	mov    %eax,0x8(%rsp)
    8184:	e8 f7 e5 ff ff       	call   6780 <ema_destroy>
    8189:	8b 4c 24 08          	mov    0x8(%rsp),%ecx
    818d:	e9 db fe ff ff       	jmp    806d <mm_alloc_internal+0x1cd>
    8192:	e8 89 33 00 00       	call   b520 <__stack_chk_fail>
    8197:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    819e:	00 00 

00000000000081a0 <sgx_mm_alloc>:
    81a0:	f3 0f 1e fa          	endbr64
    81a4:	f6 c2 80             	test   $0x80,%dl
    81a7:	75 17                	jne    81c0 <sgx_mm_alloc+0x20>
    81a9:	48 83 ec 10          	sub    $0x10,%rsp
    81ad:	48 8d 05 4c ae 00 00 	lea    0xae4c(%rip),%rax        # 13000 <g_user_ema_root>
    81b4:	50                   	push   %rax
    81b5:	e8 e6 fc ff ff       	call   7ea0 <mm_alloc_internal>
    81ba:	48 83 c4 18          	add    $0x18,%rsp
    81be:	c3                   	ret
    81bf:	90                   	nop
    81c0:	b8 16 00 00 00       	mov    $0x16,%eax
    81c5:	c3                   	ret
    81c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    81cd:	00 00 00 

00000000000081d0 <mm_commit_internal>:
    81d0:	f3 0f 1e fa          	endbr64
    81d4:	41 55                	push   %r13
    81d6:	49 89 d5             	mov    %rdx,%r13
    81d9:	41 54                	push   %r12
    81db:	49 89 fc             	mov    %rdi,%r12
    81de:	55                   	push   %rbp
    81df:	48 89 f5             	mov    %rsi,%rbp
    81e2:	53                   	push   %rbx
    81e3:	bb 0e 00 00 00       	mov    $0xe,%ebx
    81e8:	48 83 ec 28          	sub    $0x28,%rsp
    81ec:	48 8b 3d fd be 01 00 	mov    0x1befd(%rip),%rdi        # 240f0 <mm_lock>
    81f3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    81fa:	00 00 
    81fc:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    8201:	31 c0                	xor    %eax,%eax
    8203:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    820a:	00 00 
    820c:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    8213:	00 00 
    8215:	e8 b6 a6 ff ff       	call   28d0 <sgx_mm_mutex_lock>
    821a:	85 c0                	test   %eax,%eax
    821c:	75 47                	jne    8265 <mm_commit_internal+0x95>
    821e:	4c 01 e5             	add    %r12,%rbp
    8221:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    8226:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    822b:	4c 89 e6             	mov    %r12,%rsi
    822e:	48 89 ea             	mov    %rbp,%rdx
    8231:	4c 89 ef             	mov    %r13,%rdi
    8234:	bb 16 00 00 00       	mov    $0x16,%ebx
    8239:	e8 82 dd ff ff       	call   5fc0 <search_ema_range>
    823e:	85 c0                	test   %eax,%eax
    8240:	78 17                	js     8259 <mm_commit_internal+0x89>
    8242:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    8247:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    824c:	48 89 e9             	mov    %rbp,%rcx
    824f:	4c 89 e2             	mov    %r12,%rdx
    8252:	e8 49 e7 ff ff       	call   69a0 <ema_do_commit_loop>
    8257:	89 c3                	mov    %eax,%ebx
    8259:	48 8b 3d 90 be 01 00 	mov    0x1be90(%rip),%rdi        # 240f0 <mm_lock>
    8260:	e8 8b a6 ff ff       	call   28f0 <sgx_mm_mutex_unlock>
    8265:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    826a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    8271:	00 00 
    8273:	75 0d                	jne    8282 <mm_commit_internal+0xb2>
    8275:	48 83 c4 28          	add    $0x28,%rsp
    8279:	89 d8                	mov    %ebx,%eax
    827b:	5b                   	pop    %rbx
    827c:	5d                   	pop    %rbp
    827d:	41 5c                	pop    %r12
    827f:	41 5d                	pop    %r13
    8281:	c3                   	ret
    8282:	e8 99 32 00 00       	call   b520 <__stack_chk_fail>
    8287:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    828e:	00 00 

0000000000008290 <sgx_mm_commit>:
    8290:	f3 0f 1e fa          	endbr64
    8294:	48 8d 15 65 ad 00 00 	lea    0xad65(%rip),%rdx        # 13000 <g_user_ema_root>
    829b:	e9 30 ff ff ff       	jmp    81d0 <mm_commit_internal>

00000000000082a0 <mm_uncommit_internal>:
    82a0:	f3 0f 1e fa          	endbr64
    82a4:	41 55                	push   %r13
    82a6:	49 89 d5             	mov    %rdx,%r13
    82a9:	41 54                	push   %r12
    82ab:	49 89 fc             	mov    %rdi,%r12
    82ae:	55                   	push   %rbp
    82af:	48 89 f5             	mov    %rsi,%rbp
    82b2:	53                   	push   %rbx
    82b3:	bb 0e 00 00 00       	mov    $0xe,%ebx
    82b8:	48 83 ec 28          	sub    $0x28,%rsp
    82bc:	48 8b 3d 2d be 01 00 	mov    0x1be2d(%rip),%rdi        # 240f0 <mm_lock>
    82c3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    82ca:	00 00 
    82cc:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    82d1:	31 c0                	xor    %eax,%eax
    82d3:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    82da:	00 00 
    82dc:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    82e3:	00 00 
    82e5:	e8 e6 a5 ff ff       	call   28d0 <sgx_mm_mutex_lock>
    82ea:	85 c0                	test   %eax,%eax
    82ec:	75 47                	jne    8335 <mm_uncommit_internal+0x95>
    82ee:	4c 01 e5             	add    %r12,%rbp
    82f1:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    82f6:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    82fb:	4c 89 e6             	mov    %r12,%rsi
    82fe:	48 89 ea             	mov    %rbp,%rdx
    8301:	4c 89 ef             	mov    %r13,%rdi
    8304:	bb 16 00 00 00       	mov    $0x16,%ebx
    8309:	e8 b2 dc ff ff       	call   5fc0 <search_ema_range>
    830e:	85 c0                	test   %eax,%eax
    8310:	78 17                	js     8329 <mm_uncommit_internal+0x89>
    8312:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    8317:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    831c:	48 89 e9             	mov    %rbp,%rcx
    831f:	4c 89 e2             	mov    %r12,%rdx
    8322:	e8 49 ec ff ff       	call   6f70 <ema_do_uncommit_loop>
    8327:	89 c3                	mov    %eax,%ebx
    8329:	48 8b 3d c0 bd 01 00 	mov    0x1bdc0(%rip),%rdi        # 240f0 <mm_lock>
    8330:	e8 bb a5 ff ff       	call   28f0 <sgx_mm_mutex_unlock>
    8335:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    833a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    8341:	00 00 
    8343:	75 0d                	jne    8352 <mm_uncommit_internal+0xb2>
    8345:	48 83 c4 28          	add    $0x28,%rsp
    8349:	89 d8                	mov    %ebx,%eax
    834b:	5b                   	pop    %rbx
    834c:	5d                   	pop    %rbp
    834d:	41 5c                	pop    %r12
    834f:	41 5d                	pop    %r13
    8351:	c3                   	ret
    8352:	e8 c9 31 00 00       	call   b520 <__stack_chk_fail>
    8357:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    835e:	00 00 

0000000000008360 <mm_dealloc_internal>:
    8360:	f3 0f 1e fa          	endbr64
    8364:	41 55                	push   %r13
    8366:	49 89 d5             	mov    %rdx,%r13
    8369:	41 54                	push   %r12
    836b:	49 89 fc             	mov    %rdi,%r12
    836e:	55                   	push   %rbp
    836f:	48 89 f5             	mov    %rsi,%rbp
    8372:	53                   	push   %rbx
    8373:	bb 0e 00 00 00       	mov    $0xe,%ebx
    8378:	48 83 ec 28          	sub    $0x28,%rsp
    837c:	48 8b 3d 6d bd 01 00 	mov    0x1bd6d(%rip),%rdi        # 240f0 <mm_lock>
    8383:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    838a:	00 00 
    838c:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    8391:	31 c0                	xor    %eax,%eax
    8393:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    839a:	00 00 
    839c:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    83a3:	00 00 
    83a5:	e8 26 a5 ff ff       	call   28d0 <sgx_mm_mutex_lock>
    83aa:	85 c0                	test   %eax,%eax
    83ac:	75 47                	jne    83f5 <mm_dealloc_internal+0x95>
    83ae:	4c 01 e5             	add    %r12,%rbp
    83b1:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    83b6:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    83bb:	4c 89 e6             	mov    %r12,%rsi
    83be:	48 89 ea             	mov    %rbp,%rdx
    83c1:	4c 89 ef             	mov    %r13,%rdi
    83c4:	bb 16 00 00 00       	mov    $0x16,%ebx
    83c9:	e8 f2 db ff ff       	call   5fc0 <search_ema_range>
    83ce:	85 c0                	test   %eax,%eax
    83d0:	78 17                	js     83e9 <mm_dealloc_internal+0x89>
    83d2:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    83d7:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    83dc:	48 89 e9             	mov    %rbp,%rcx
    83df:	4c 89 e2             	mov    %r12,%rdx
    83e2:	e8 39 eb ff ff       	call   6f20 <ema_do_dealloc_loop>
    83e7:	89 c3                	mov    %eax,%ebx
    83e9:	48 8b 3d 00 bd 01 00 	mov    0x1bd00(%rip),%rdi        # 240f0 <mm_lock>
    83f0:	e8 fb a4 ff ff       	call   28f0 <sgx_mm_mutex_unlock>
    83f5:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    83fa:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    8401:	00 00 
    8403:	75 0d                	jne    8412 <mm_dealloc_internal+0xb2>
    8405:	48 83 c4 28          	add    $0x28,%rsp
    8409:	89 d8                	mov    %ebx,%eax
    840b:	5b                   	pop    %rbx
    840c:	5d                   	pop    %rbp
    840d:	41 5c                	pop    %r12
    840f:	41 5d                	pop    %r13
    8411:	c3                   	ret
    8412:	e8 09 31 00 00       	call   b520 <__stack_chk_fail>
    8417:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    841e:	00 00 

0000000000008420 <mm_modify_type_internal>:
    8420:	f3 0f 1e fa          	endbr64
    8424:	41 54                	push   %r12
    8426:	55                   	push   %rbp
    8427:	bd 01 00 00 00       	mov    $0x1,%ebp
    842c:	53                   	push   %rbx
    842d:	48 83 ec 20          	sub    $0x20,%rsp
    8431:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    8438:	00 00 
    843a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    843f:	31 c0                	xor    %eax,%eax
    8441:	81 fa 00 01 00 00    	cmp    $0x100,%edx
    8447:	0f 85 83 00 00 00    	jne    84d0 <mm_modify_type_internal+0xb0>
    844d:	48 81 fe 00 10 00 00 	cmp    $0x1000,%rsi
    8454:	0f 85 96 00 00 00    	jne    84f0 <mm_modify_type_internal+0xd0>
    845a:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    8461:	00 00 
    8463:	49 89 fc             	mov    %rdi,%r12
    8466:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    846d:	00 00 
    846f:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
    8475:	75 79                	jne    84f0 <mm_modify_type_internal+0xd0>
    8477:	48 8b 3d 72 bc 01 00 	mov    0x1bc72(%rip),%rdi        # 240f0 <mm_lock>
    847e:	48 89 cb             	mov    %rcx,%rbx
    8481:	bd 0e 00 00 00       	mov    $0xe,%ebp
    8486:	e8 45 a4 ff ff       	call   28d0 <sgx_mm_mutex_lock>
    848b:	85 c0                	test   %eax,%eax
    848d:	75 41                	jne    84d0 <mm_modify_type_internal+0xb0>
    848f:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    8494:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    8499:	4c 89 e6             	mov    %r12,%rsi
    849c:	48 89 df             	mov    %rbx,%rdi
    849f:	49 8d 94 24 00 10 00 	lea    0x1000(%r12),%rdx
    84a6:	00 
    84a7:	bd 16 00 00 00       	mov    $0x16,%ebp
    84ac:	e8 0f db ff ff       	call   5fc0 <search_ema_range>
    84b1:	85 c0                	test   %eax,%eax
    84b3:	78 0f                	js     84c4 <mm_modify_type_internal+0xa4>
    84b5:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    84ba:	4c 89 e6             	mov    %r12,%rsi
    84bd:	e8 ae e5 ff ff       	call   6a70 <ema_change_to_tcs>
    84c2:	89 c5                	mov    %eax,%ebp
    84c4:	48 8b 3d 25 bc 01 00 	mov    0x1bc25(%rip),%rdi        # 240f0 <mm_lock>
    84cb:	e8 20 a4 ff ff       	call   28f0 <sgx_mm_mutex_unlock>
    84d0:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    84d5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    84dc:	00 00 
    84de:	75 17                	jne    84f7 <mm_modify_type_internal+0xd7>
    84e0:	48 83 c4 20          	add    $0x20,%rsp
    84e4:	89 e8                	mov    %ebp,%eax
    84e6:	5b                   	pop    %rbx
    84e7:	5d                   	pop    %rbp
    84e8:	41 5c                	pop    %r12
    84ea:	c3                   	ret
    84eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    84f0:	bd 16 00 00 00       	mov    $0x16,%ebp
    84f5:	eb d9                	jmp    84d0 <mm_modify_type_internal+0xb0>
    84f7:	e8 24 30 00 00       	call   b520 <__stack_chk_fail>
    84fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000008500 <mm_modify_permissions_internal>:
    8500:	f3 0f 1e fa          	endbr64
    8504:	41 56                	push   %r14
    8506:	41 55                	push   %r13
    8508:	41 54                	push   %r12
    850a:	41 bc 16 00 00 00    	mov    $0x16,%r12d
    8510:	55                   	push   %rbp
    8511:	53                   	push   %rbx
    8512:	48 83 ec 20          	sub    $0x20,%rsp
    8516:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    851d:	00 00 
    851f:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    8524:	31 c0                	xor    %eax,%eax
    8526:	48 85 f6             	test   %rsi,%rsi
    8529:	0f 84 9b 00 00 00    	je     85ca <mm_modify_permissions_internal+0xca>
    852f:	48 89 f8             	mov    %rdi,%rax
    8532:	48 89 fd             	mov    %rdi,%rbp
    8535:	48 89 f3             	mov    %rsi,%rbx
    8538:	48 09 f0             	or     %rsi,%rax
    853b:	a9 ff 0f 00 00       	test   $0xfff,%eax
    8540:	0f 85 84 00 00 00    	jne    85ca <mm_modify_permissions_internal+0xca>
    8546:	89 d0                	mov    %edx,%eax
    8548:	41 89 d6             	mov    %edx,%r14d
    854b:	83 e0 05             	and    $0x5,%eax
    854e:	83 f8 04             	cmp    $0x4,%eax
    8551:	74 77                	je     85ca <mm_modify_permissions_internal+0xca>
    8553:	48 8b 3d 96 bb 01 00 	mov    0x1bb96(%rip),%rdi        # 240f0 <mm_lock>
    855a:	49 89 cd             	mov    %rcx,%r13
    855d:	41 bc 0e 00 00 00    	mov    $0xe,%r12d
    8563:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    856a:	00 00 
    856c:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    8573:	00 00 
    8575:	e8 56 a3 ff ff       	call   28d0 <sgx_mm_mutex_lock>
    857a:	85 c0                	test   %eax,%eax
    857c:	75 4c                	jne    85ca <mm_modify_permissions_internal+0xca>
    857e:	48 01 eb             	add    %rbp,%rbx
    8581:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    8586:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    858b:	48 89 ee             	mov    %rbp,%rsi
    858e:	48 89 da             	mov    %rbx,%rdx
    8591:	4c 89 ef             	mov    %r13,%rdi
    8594:	41 bc 16 00 00 00    	mov    $0x16,%r12d
    859a:	e8 21 da ff ff       	call   5fc0 <search_ema_range>
    859f:	85 c0                	test   %eax,%eax
    85a1:	78 1b                	js     85be <mm_modify_permissions_internal+0xbe>
    85a3:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    85a8:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    85ad:	45 89 f0             	mov    %r14d,%r8d
    85b0:	48 89 d9             	mov    %rbx,%rcx
    85b3:	48 89 ea             	mov    %rbp,%rdx
    85b6:	e8 d5 ea ff ff       	call   7090 <ema_modify_permissions_loop>
    85bb:	41 89 c4             	mov    %eax,%r12d
    85be:	48 8b 3d 2b bb 01 00 	mov    0x1bb2b(%rip),%rdi        # 240f0 <mm_lock>
    85c5:	e8 26 a3 ff ff       	call   28f0 <sgx_mm_mutex_unlock>
    85ca:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    85cf:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    85d6:	00 00 
    85d8:	75 10                	jne    85ea <mm_modify_permissions_internal+0xea>
    85da:	48 83 c4 20          	add    $0x20,%rsp
    85de:	44 89 e0             	mov    %r12d,%eax
    85e1:	5b                   	pop    %rbx
    85e2:	5d                   	pop    %rbp
    85e3:	41 5c                	pop    %r12
    85e5:	41 5d                	pop    %r13
    85e7:	41 5e                	pop    %r14
    85e9:	c3                   	ret
    85ea:	e8 31 2f 00 00       	call   b520 <__stack_chk_fail>
    85ef:	90                   	nop

00000000000085f0 <sgx_mm_init>:
    85f0:	f3 0f 1e fa          	endbr64
    85f4:	55                   	push   %rbp
    85f5:	48 89 fd             	mov    %rdi,%rbp
    85f8:	53                   	push   %rbx
    85f9:	48 89 f3             	mov    %rsi,%rbx
    85fc:	48 83 ec 08          	sub    $0x8,%rsp
    8600:	e8 8b a2 ff ff       	call   2890 <sgx_mm_mutex_create>
    8605:	48 89 05 e4 ba 01 00 	mov    %rax,0x1bae4(%rip)        # 240f0 <mm_lock>
    860c:	48 85 c0             	test   %rax,%rax
    860f:	74 2f                	je     8640 <sgx_mm_init+0x50>
    8611:	48 8d 3d c8 f6 ff ff 	lea    -0x938(%rip),%rdi        # 7ce0 <sgx_mm_enclave_pfhandler>
    8618:	48 89 2d c9 ba 01 00 	mov    %rbp,0x1bac9(%rip)        # 240e8 <mm_user_base>
    861f:	48 89 1d ba ba 01 00 	mov    %rbx,0x1baba(%rip)        # 240e0 <mm_user_end>
    8626:	e8 35 a2 ff ff       	call   2860 <sgx_mm_register_pfhandler>
    862b:	84 c0                	test   %al,%al
    862d:	74 11                	je     8640 <sgx_mm_init+0x50>
    862f:	48 83 c4 08          	add    $0x8,%rsp
    8633:	31 c0                	xor    %eax,%eax
    8635:	5b                   	pop    %rbx
    8636:	5d                   	pop    %rbp
    8637:	c3                   	ret
    8638:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    863f:	00 
    8640:	48 83 c4 08          	add    $0x8,%rsp
    8644:	b8 0e 00 00 00       	mov    $0xe,%eax
    8649:	5b                   	pop    %rbx
    864a:	5d                   	pop    %rbp
    864b:	c3                   	ret
    864c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000008650 <alloca>:
    8650:	f3 0f 1e fa          	endbr64
    8654:	5a                   	pop    %rdx
    8655:	48 89 e1             	mov    %rsp,%rcx
    8658:	48 83 c7 0f          	add    $0xf,%rdi
    865c:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
    8660:	48 29 fc             	sub    %rdi,%rsp
    8663:	48 89 e0             	mov    %rsp,%rax
    8666:	3e ff e2             	notrack jmp *%rdx
    8669:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000008670 <heap_init>:
    8670:	f3 0f 1e fa          	endbr64
    8674:	48 89 f8             	mov    %rdi,%rax
    8677:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    867d:	48 85 ff             	test   %rdi,%rdi
    8680:	75 0e                	jne    8690 <heap_init+0x20>
    8682:	44 89 c0             	mov    %r8d,%eax
    8685:	c3                   	ret
    8686:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    868d:	00 00 00 
    8690:	48 89 f7             	mov    %rsi,%rdi
    8693:	49 89 c1             	mov    %rax,%r9
    8696:	48 09 d7             	or     %rdx,%rdi
    8699:	41 81 e1 ff 0f 00 00 	and    $0xfff,%r9d
    86a0:	81 e7 ff 0f 00 00    	and    $0xfff,%edi
    86a6:	48 0b 3d 73 87 00 00 	or     0x8773(%rip),%rdi        # 10e20 <heap_base>
    86ad:	4c 09 cf             	or     %r9,%rdi
    86b0:	75 d0                	jne    8682 <heap_init+0x12>
    86b2:	45 31 c0             	xor    %r8d,%r8d
    86b5:	48 89 05 64 87 00 00 	mov    %rax,0x8764(%rip)        # 10e20 <heap_base>
    86bc:	48 89 35 55 87 00 00 	mov    %rsi,0x8755(%rip)        # 10e18 <heap_size>
    86c3:	44 89 c0             	mov    %r8d,%eax
    86c6:	48 89 15 3b 87 00 00 	mov    %rdx,0x873b(%rip)        # 10e08 <heap_min_size>
    86cd:	89 0d 3d 87 00 00    	mov    %ecx,0x873d(%rip)        # 10e10 <is_edmm_supported>
    86d3:	c3                   	ret
    86d4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    86db:	00 00 00 
    86de:	66 90                	xchg   %ax,%ax

00000000000086e0 <sbrk>:
    86e0:	f3 0f 1e fa          	endbr64
    86e4:	55                   	push   %rbp
    86e5:	53                   	push   %rbx
    86e6:	48 83 ec 08          	sub    $0x8,%rsp
    86ea:	48 8b 05 2f 87 00 00 	mov    0x872f(%rip),%rax        # 10e20 <heap_base>
    86f1:	48 85 c0             	test   %rax,%rax
    86f4:	0f 84 e6 00 00 00    	je     87e0 <sbrk+0x100>
    86fa:	48 8b 1d f7 b9 01 00 	mov    0x1b9f7(%rip),%rbx        # 240f8 <heap_used.0>
    8701:	48 85 ff             	test   %rdi,%rdi
    8704:	0f 88 86 00 00 00    	js     8790 <sbrk+0xb0>
    870a:	48 89 fa             	mov    %rdi,%rdx
    870d:	48 01 da             	add    %rbx,%rdx
    8710:	0f 82 ca 00 00 00    	jb     87e0 <sbrk+0x100>
    8716:	48 39 15 fb 86 00 00 	cmp    %rdx,0x86fb(%rip)        # 10e18 <heap_size>
    871d:	0f 82 bd 00 00 00    	jb     87e0 <sbrk+0x100>
    8723:	48 8d 2c 18          	lea    (%rax,%rbx,1),%rbp
    8727:	48 85 ff             	test   %rdi,%rdi
    872a:	74 53                	je     877f <sbrk+0x9f>
    872c:	48 8b 0d cd b9 01 00 	mov    0x1b9cd(%rip),%rcx        # 24100 <g_peak_heap_used>
    8733:	48 89 15 be b9 01 00 	mov    %rdx,0x1b9be(%rip)        # 240f8 <heap_used.0>
    873a:	48 39 d1             	cmp    %rdx,%rcx
    873d:	48 0f 42 ca          	cmovb  %rdx,%rcx
    8741:	48 89 0d b8 b9 01 00 	mov    %rcx,0x1b9b8(%rip)        # 24100 <g_peak_heap_used>
    8748:	8b 0d c2 86 00 00    	mov    0x86c2(%rip),%ecx        # 10e10 <is_edmm_supported>
    874e:	85 c9                	test   %ecx,%ecx
    8750:	74 2d                	je     877f <sbrk+0x9f>
    8752:	48 8b 0d af 86 00 00 	mov    0x86af(%rip),%rcx        # 10e08 <heap_min_size>
    8759:	48 39 d1             	cmp    %rdx,%rcx
    875c:	73 21                	jae    877f <sbrk+0x9f>
    875e:	49 89 e8             	mov    %rbp,%r8
    8761:	48 39 d9             	cmp    %rbx,%rcx
    8764:	72 0a                	jb     8770 <sbrk+0x90>
    8766:	48 29 ca             	sub    %rcx,%rdx
    8769:	4c 8d 04 08          	lea    (%rax,%rcx,1),%r8
    876d:	48 89 d7             	mov    %rdx,%rdi
    8770:	48 89 fe             	mov    %rdi,%rsi
    8773:	4c 89 c7             	mov    %r8,%rdi
    8776:	e8 15 f5 ff ff       	call   7c90 <mm_commit>
    877b:	85 c0                	test   %eax,%eax
    877d:	75 56                	jne    87d5 <sbrk+0xf5>
    877f:	48 83 c4 08          	add    $0x8,%rsp
    8783:	48 89 e8             	mov    %rbp,%rax
    8786:	5b                   	pop    %rbx
    8787:	5d                   	pop    %rbp
    8788:	c3                   	ret
    8789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    8790:	48 89 fe             	mov    %rdi,%rsi
    8793:	48 f7 de             	neg    %rsi
    8796:	48 39 f3             	cmp    %rsi,%rbx
    8799:	72 45                	jb     87e0 <sbrk+0x100>
    879b:	44 8b 05 6e 86 00 00 	mov    0x866e(%rip),%r8d        # 10e10 <is_edmm_supported>
    87a2:	48 01 df             	add    %rbx,%rdi
    87a5:	48 89 3d 4c b9 01 00 	mov    %rdi,0x1b94c(%rip)        # 240f8 <heap_used.0>
    87ac:	48 8d 2c 38          	lea    (%rax,%rdi,1),%rbp
    87b0:	45 85 c0             	test   %r8d,%r8d
    87b3:	74 ca                	je     877f <sbrk+0x9f>
    87b5:	48 8b 15 4c 86 00 00 	mov    0x864c(%rip),%rdx        # 10e08 <heap_min_size>
    87bc:	48 39 da             	cmp    %rbx,%rdx
    87bf:	73 be                	jae    877f <sbrk+0x9f>
    87c1:	48 89 e9             	mov    %rbp,%rcx
    87c4:	48 39 fa             	cmp    %rdi,%rdx
    87c7:	73 27                	jae    87f0 <sbrk+0x110>
    87c9:	48 89 cf             	mov    %rcx,%rdi
    87cc:	e8 cf f4 ff ff       	call   7ca0 <mm_uncommit>
    87d1:	85 c0                	test   %eax,%eax
    87d3:	74 aa                	je     877f <sbrk+0x9f>
    87d5:	48 89 1d 1c b9 01 00 	mov    %rbx,0x1b91c(%rip)        # 240f8 <heap_used.0>
    87dc:	0f 1f 40 00          	nopl   0x0(%rax)
    87e0:	48 c7 c5 ff ff ff ff 	mov    $0xffffffffffffffff,%rbp
    87e7:	eb 96                	jmp    877f <sbrk+0x9f>
    87e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    87f0:	48 89 de             	mov    %rbx,%rsi
    87f3:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
    87f7:	48 29 d6             	sub    %rdx,%rsi
    87fa:	eb cd                	jmp    87c9 <sbrk+0xe9>
    87fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000008800 <sgx_spin_lock>:
    8800:	f3 0f 1e fa          	endbr64
    8804:	48 83 ec 18          	sub    $0x18,%rsp
    8808:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    880f:	00 00 
    8811:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    8816:	b8 01 00 00 00       	mov    $0x1,%eax
    881b:	f0 87 07             	lock xchg %eax,(%rdi)
    881e:	89 44 24 04          	mov    %eax,0x4(%rsp)
    8822:	8b 54 24 04          	mov    0x4(%rsp),%edx
    8826:	85 d2                	test   %edx,%edx
    8828:	74 48                	je     8872 <sgx_spin_lock+0x72>
    882a:	48 89 f9             	mov    %rdi,%rcx
    882d:	be 01 00 00 00       	mov    $0x1,%esi
    8832:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    8838:	ba 02 00 00 00       	mov    $0x2,%edx
    883d:	0f 1f 00             	nopl   (%rax)
    8840:	85 d2                	test   %edx,%edx
    8842:	7e 0d                	jle    8851 <sgx_spin_lock+0x51>
    8844:	31 c0                	xor    %eax,%eax
    8846:	f3 90                	pause
    8848:	f3 90                	pause
    884a:	83 c0 02             	add    $0x2,%eax
    884d:	39 c2                	cmp    %eax,%edx
    884f:	75 f5                	jne    8846 <sgx_spin_lock+0x46>
    8851:	b8 00 04 00 00       	mov    $0x400,%eax
    8856:	01 d2                	add    %edx,%edx
    8858:	39 c2                	cmp    %eax,%edx
    885a:	0f 4f d0             	cmovg  %eax,%edx
    885d:	8b 01                	mov    (%rcx),%eax
    885f:	85 c0                	test   %eax,%eax
    8861:	75 dd                	jne    8840 <sgx_spin_lock+0x40>
    8863:	f0 87 31             	lock xchg %esi,(%rcx)
    8866:	89 74 24 04          	mov    %esi,0x4(%rsp)
    886a:	8b 44 24 04          	mov    0x4(%rsp),%eax
    886e:	85 c0                	test   %eax,%eax
    8870:	75 c6                	jne    8838 <sgx_spin_lock+0x38>
    8872:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    8877:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    887e:	00 00 
    8880:	75 07                	jne    8889 <sgx_spin_lock+0x89>
    8882:	31 c0                	xor    %eax,%eax
    8884:	48 83 c4 18          	add    $0x18,%rsp
    8888:	c3                   	ret
    8889:	e8 92 2c 00 00       	call   b520 <__stack_chk_fail>
    888e:	66 90                	xchg   %ax,%ax

0000000000008890 <sgx_spin_unlock>:
    8890:	f3 0f 1e fa          	endbr64
    8894:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
    889a:	31 c0                	xor    %eax,%eax
    889c:	c3                   	ret
    889d:	0f 1f 00             	nopl   (%rax)

00000000000088a0 <init_mparams.isra.0>:
    88a0:	48 83 ec 18          	sub    $0x18,%rsp
    88a4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    88ab:	00 00 
    88ad:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    88b2:	b8 01 00 00 00       	mov    $0x1,%eax
    88b7:	87 05 53 bc 01 00    	xchg   %eax,0x1bc53(%rip)        # 24510 <malloc_global_mutex>
    88bd:	85 c0                	test   %eax,%eax
    88bf:	0f 85 8b 00 00 00    	jne    8950 <init_mparams.isra.0+0xb0>
    88c5:	48 83 3d 13 bc 01 00 	cmpq   $0x0,0x1bc13(%rip)        # 244e0 <mparams>
    88cc:	00 
    88cd:	75 5d                	jne    892c <init_mparams.isra.0+0x8c>
    88cf:	66 0f 6f 05 a9 47 00 	movdqa 0x47a9(%rip),%xmm0        # d080 <g_dyn_entry_table+0x80>
    88d6:	00 
    88d7:	48 89 e7             	mov    %rsp,%rdi
    88da:	be 08 00 00 00       	mov    $0x8,%esi
    88df:	c7 05 1f bc 01 00 02 	movl   $0x2,0x1bc1f(%rip)        # 24508 <mparams+0x28>
    88e6:	00 00 00 
    88e9:	48 c7 05 9c bb 01 00 	movq   $0x2,0x1bb9c(%rip)        # 24490 <_gm_+0x370>
    88f0:	02 00 00 00 
    88f4:	0f 11 05 ed bb 01 00 	movups %xmm0,0x1bbed(%rip)        # 244e8 <mparams+0x8>
    88fb:	66 0f 6f 05 8d 47 00 	movdqa 0x478d(%rip),%xmm0        # d090 <g_dyn_entry_table+0x90>
    8902:	00 
    8903:	0f 11 05 ee bb 01 00 	movups %xmm0,0x1bbee(%rip)        # 244f8 <mparams+0x18>
    890a:	e8 31 a3 ff ff       	call   2c40 <sgx_read_rand>
    890f:	85 c0                	test   %eax,%eax
    8911:	75 69                	jne    897c <init_mparams.isra.0+0xdc>
    8913:	48 8b 04 24          	mov    (%rsp),%rax
    8917:	48 35 55 55 55 55    	xor    $0x55555555,%rax
    891d:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    8921:	48 83 c8 08          	or     $0x8,%rax
    8925:	48 89 05 b4 bb 01 00 	mov    %rax,0x1bbb4(%rip)        # 244e0 <mparams>
    892c:	c7 05 da bb 01 00 00 	movl   $0x0,0x1bbda(%rip)        # 24510 <malloc_global_mutex>
    8933:	00 00 00 
    8936:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    893b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    8942:	00 00 
    8944:	75 31                	jne    8977 <init_mparams.isra.0+0xd7>
    8946:	48 83 c4 18          	add    $0x18,%rsp
    894a:	c3                   	ret
    894b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    8950:	48 8d 15 b9 bb 01 00 	lea    0x1bbb9(%rip),%rdx        # 24510 <malloc_global_mutex>
    8957:	b9 01 00 00 00       	mov    $0x1,%ecx
    895c:	0f 1f 40 00          	nopl   0x0(%rax)
    8960:	8b 02                	mov    (%rdx),%eax
    8962:	85 c0                	test   %eax,%eax
    8964:	75 fa                	jne    8960 <init_mparams.isra.0+0xc0>
    8966:	89 c8                	mov    %ecx,%eax
    8968:	87 05 a2 bb 01 00    	xchg   %eax,0x1bba2(%rip)        # 24510 <malloc_global_mutex>
    896e:	85 c0                	test   %eax,%eax
    8970:	75 ee                	jne    8960 <init_mparams.isra.0+0xc0>
    8972:	e9 4e ff ff ff       	jmp    88c5 <init_mparams.isra.0+0x25>
    8977:	e8 a4 2b 00 00       	call   b520 <__stack_chk_fail>
    897c:	e8 bf 45 00 00       	call   cf40 <abort>
    8981:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    8988:	00 00 00 
    898b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000008990 <dlmalloc>:
    8990:	f3 0f 1e fa          	endbr64
    8994:	41 57                	push   %r15
    8996:	41 56                	push   %r14
    8998:	41 55                	push   %r13
    899a:	41 54                	push   %r12
    899c:	55                   	push   %rbp
    899d:	48 89 fd             	mov    %rdi,%rbp
    89a0:	53                   	push   %rbx
    89a1:	48 83 ec 18          	sub    $0x18,%rsp
    89a5:	48 83 3d 33 bb 01 00 	cmpq   $0x0,0x1bb33(%rip)        # 244e0 <mparams>
    89ac:	00 
    89ad:	0f 84 55 01 00 00    	je     8b08 <dlmalloc+0x178>
    89b3:	f6 05 d6 ba 01 00 02 	testb  $0x2,0x1bad6(%rip)        # 24490 <_gm_+0x370>
    89ba:	0f 85 5a 01 00 00    	jne    8b1a <dlmalloc+0x18a>
    89c0:	48 81 fd e0 00 00 00 	cmp    $0xe0,%rbp
    89c7:	0f 87 fb 00 00 00    	ja     8ac8 <dlmalloc+0x138>
    89cd:	48 83 fd 0e          	cmp    $0xe,%rbp
    89d1:	0f 87 d9 00 00 00    	ja     8ab0 <dlmalloc+0x120>
    89d7:	b9 04 00 00 00       	mov    $0x4,%ecx
    89dc:	41 bc 20 00 00 00    	mov    $0x20,%r12d
    89e2:	8b 15 38 b7 01 00    	mov    0x1b738(%rip),%edx        # 24120 <_gm_>
    89e8:	4c 8d 2d 31 b7 01 00 	lea    0x1b731(%rip),%r13        # 24120 <_gm_>
    89ef:	89 d0                	mov    %edx,%eax
    89f1:	d3 e8                	shr    %cl,%eax
    89f3:	a8 03                	test   $0x3,%al
    89f5:	0f 84 d5 01 00 00    	je     8bd0 <dlmalloc+0x240>
    89fb:	f7 d0                	not    %eax
    89fd:	83 e0 01             	and    $0x1,%eax
    8a00:	01 c1                	add    %eax,%ecx
    8a02:	8d 44 09 09          	lea    0x9(%rcx,%rcx,1),%eax
    8a06:	49 8d 74 c5 00       	lea    0x0(%r13,%rax,8),%rsi
    8a0b:	48 8b 5e 10          	mov    0x10(%rsi),%rbx
    8a0f:	48 8b 43 10          	mov    0x10(%rbx),%rax
    8a13:	48 39 c6             	cmp    %rax,%rsi
    8a16:	0f 84 a4 07 00 00    	je     91c0 <dlmalloc+0x830>
    8a1c:	48 3b 05 15 b7 01 00 	cmp    0x1b715(%rip),%rax        # 24138 <_gm_+0x18>
    8a23:	0f 82 c7 05 00 00    	jb     8ff0 <dlmalloc+0x660>
    8a29:	48 39 58 18          	cmp    %rbx,0x18(%rax)
    8a2d:	0f 85 bd 05 00 00    	jne    8ff0 <dlmalloc+0x660>
    8a33:	48 89 70 18          	mov    %rsi,0x18(%rax)
    8a37:	48 89 46 10          	mov    %rax,0x10(%rsi)
    8a3b:	c1 e1 03             	shl    $0x3,%ecx
    8a3e:	89 c8                	mov    %ecx,%eax
    8a40:	83 c8 03             	or     $0x3,%eax
    8a43:	48 89 43 08          	mov    %rax,0x8(%rbx)
    8a47:	48 8d 04 0b          	lea    (%rbx,%rcx,1),%rax
    8a4b:	48 83 c3 10          	add    $0x10,%rbx
    8a4f:	48 83 48 08 01       	orq    $0x1,0x8(%rax)
    8a54:	4c 33 2d 85 ba 01 00 	xor    0x1ba85(%rip),%r13        # 244e0 <mparams>
    8a5b:	4c 89 28             	mov    %r13,(%rax)
    8a5e:	48 85 db             	test   %rbx,%rbx
    8a61:	0f 84 96 00 00 00    	je     8afd <dlmalloc+0x16d>
    8a67:	e8 34 b5 ff ff       	call   3fa0 <get_heap_base>
    8a6c:	48 39 c3             	cmp    %rax,%rbx
    8a6f:	0f 82 7b 05 00 00    	jb     8ff0 <dlmalloc+0x660>
    8a75:	48 01 dd             	add    %rbx,%rbp
    8a78:	0f 82 72 05 00 00    	jb     8ff0 <dlmalloc+0x660>
    8a7e:	31 ff                	xor    %edi,%edi
    8a80:	e8 5b fc ff ff       	call   86e0 <sbrk>
    8a85:	48 39 e8             	cmp    %rbp,%rax
    8a88:	0f 82 62 05 00 00    	jb     8ff0 <dlmalloc+0x660>
    8a8e:	f6 05 fb b9 01 00 02 	testb  $0x2,0x1b9fb(%rip)        # 24490 <_gm_+0x370>
    8a95:	0f 85 35 05 00 00    	jne    8fd0 <dlmalloc+0x640>
    8a9b:	48 83 c4 18          	add    $0x18,%rsp
    8a9f:	48 89 d8             	mov    %rbx,%rax
    8aa2:	5b                   	pop    %rbx
    8aa3:	5d                   	pop    %rbp
    8aa4:	41 5c                	pop    %r12
    8aa6:	41 5d                	pop    %r13
    8aa8:	41 5e                	pop    %r14
    8aaa:	41 5f                	pop    %r15
    8aac:	c3                   	ret
    8aad:	0f 1f 00             	nopl   (%rax)
    8ab0:	4c 8d 65 1f          	lea    0x1f(%rbp),%r12
    8ab4:	49 83 e4 f0          	and    $0xfffffffffffffff0,%r12
    8ab8:	4c 89 e1             	mov    %r12,%rcx
    8abb:	48 c1 e9 03          	shr    $0x3,%rcx
    8abf:	e9 1e ff ff ff       	jmp    89e2 <dlmalloc+0x52>
    8ac4:	0f 1f 40 00          	nopl   0x0(%rax)
    8ac8:	4c 8b 05 59 b6 01 00 	mov    0x1b659(%rip),%r8        # 24128 <_gm_+0x8>
    8acf:	4c 8d 2d 4a b6 01 00 	lea    0x1b64a(%rip),%r13        # 24120 <_gm_>
    8ad6:	4c 89 c6             	mov    %r8,%rsi
    8ad9:	48 81 fd 7f ff ff ff 	cmp    $0xffffffffffffff7f,%rbp
    8ae0:	76 76                	jbe    8b58 <dlmalloc+0x1c8>
    8ae2:	48 8b 05 f7 b9 01 00 	mov    0x1b9f7(%rip),%rax        # 244e0 <mparams>
    8ae9:	49 83 f8 ff          	cmp    $0xffffffffffffffff,%r8
    8aed:	0f 84 5d 02 00 00    	je     8d50 <dlmalloc+0x3c0>
    8af3:	48 85 c0             	test   %rax,%rax
    8af6:	75 05                	jne    8afd <dlmalloc+0x16d>
    8af8:	e8 a3 fd ff ff       	call   88a0 <init_mparams.isra.0>
    8afd:	31 db                	xor    %ebx,%ebx
    8aff:	eb 8d                	jmp    8a8e <dlmalloc+0xfe>
    8b01:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    8b08:	e8 93 fd ff ff       	call   88a0 <init_mparams.isra.0>
    8b0d:	f6 05 7c b9 01 00 02 	testb  $0x2,0x1b97c(%rip)        # 24490 <_gm_+0x370>
    8b14:	0f 84 a6 fe ff ff    	je     89c0 <dlmalloc+0x30>
    8b1a:	b8 01 00 00 00       	mov    $0x1,%eax
    8b1f:	87 05 6f b9 01 00    	xchg   %eax,0x1b96f(%rip)        # 24494 <_gm_+0x374>
    8b25:	85 c0                	test   %eax,%eax
    8b27:	0f 84 93 fe ff ff    	je     89c0 <dlmalloc+0x30>
    8b2d:	ba 01 00 00 00       	mov    $0x1,%edx
    8b32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    8b38:	8b 05 56 b9 01 00    	mov    0x1b956(%rip),%eax        # 24494 <_gm_+0x374>
    8b3e:	85 c0                	test   %eax,%eax
    8b40:	75 f6                	jne    8b38 <dlmalloc+0x1a8>
    8b42:	89 d0                	mov    %edx,%eax
    8b44:	87 05 4a b9 01 00    	xchg   %eax,0x1b94a(%rip)        # 24494 <_gm_+0x374>
    8b4a:	85 c0                	test   %eax,%eax
    8b4c:	75 ea                	jne    8b38 <dlmalloc+0x1a8>
    8b4e:	e9 6d fe ff ff       	jmp    89c0 <dlmalloc+0x30>
    8b53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    8b58:	44 8b 0d c5 b5 01 00 	mov    0x1b5c5(%rip),%r9d        # 24124 <_gm_+0x4>
    8b5f:	4c 8d 65 1f          	lea    0x1f(%rbp),%r12
    8b63:	49 83 e4 f0          	and    $0xfffffffffffffff0,%r12
    8b67:	45 85 c9             	test   %r9d,%r9d
    8b6a:	0f 85 20 02 00 00    	jne    8d90 <dlmalloc+0x400>
    8b70:	4c 39 e6             	cmp    %r12,%rsi
    8b73:	0f 83 7f 01 00 00    	jae    8cf8 <dlmalloc+0x368>
    8b79:	48 8b 05 b0 b5 01 00 	mov    0x1b5b0(%rip),%rax        # 24130 <_gm_+0x10>
    8b80:	48 8b 15 59 b9 01 00 	mov    0x1b959(%rip),%rdx        # 244e0 <mparams>
    8b87:	49 39 c4             	cmp    %rax,%r12
    8b8a:	0f 83 b0 06 00 00    	jae    9240 <dlmalloc+0x8b0>
    8b90:	48 8b 1d b1 b5 01 00 	mov    0x1b5b1(%rip),%rbx        # 24148 <_gm_+0x28>
    8b97:	4c 29 e0             	sub    %r12,%rax
    8b9a:	4c 31 ea             	xor    %r13,%rdx
    8b9d:	48 89 05 8c b5 01 00 	mov    %rax,0x1b58c(%rip)        # 24130 <_gm_+0x10>
    8ba4:	48 83 c8 01          	or     $0x1,%rax
    8ba8:	4a 8d 0c 23          	lea    (%rbx,%r12,1),%rcx
    8bac:	49 83 cc 03          	or     $0x3,%r12
    8bb0:	48 89 0d 91 b5 01 00 	mov    %rcx,0x1b591(%rip)        # 24148 <_gm_+0x28>
    8bb7:	48 89 41 08          	mov    %rax,0x8(%rcx)
    8bbb:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    8bbf:	48 89 11             	mov    %rdx,(%rcx)
    8bc2:	48 83 c3 10          	add    $0x10,%rbx
    8bc6:	e9 93 fe ff ff       	jmp    8a5e <dlmalloc+0xce>
    8bcb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    8bd0:	48 8b 35 51 b5 01 00 	mov    0x1b551(%rip),%rsi        # 24128 <_gm_+0x8>
    8bd7:	4c 39 e6             	cmp    %r12,%rsi
    8bda:	0f 83 18 01 00 00    	jae    8cf8 <dlmalloc+0x368>
    8be0:	85 c0                	test   %eax,%eax
    8be2:	0f 84 10 04 00 00    	je     8ff8 <dlmalloc+0x668>
    8be8:	bf 01 00 00 00       	mov    $0x1,%edi
    8bed:	d3 e0                	shl    %cl,%eax
    8bef:	41 89 f9             	mov    %edi,%r9d
    8bf2:	41 d3 e1             	shl    %cl,%r9d
    8bf5:	45 01 c9             	add    %r9d,%r9d
    8bf8:	45 89 c8             	mov    %r9d,%r8d
    8bfb:	41 f7 d8             	neg    %r8d
    8bfe:	45 09 c8             	or     %r9d,%r8d
    8c01:	44 21 c0             	and    %r8d,%eax
    8c04:	89 c1                	mov    %eax,%ecx
    8c06:	f7 d9                	neg    %ecx
    8c08:	21 c1                	and    %eax,%ecx
    8c0a:	f3 0f bc c9          	tzcnt  %ecx,%ecx
    8c0e:	8d 44 09 09          	lea    0x9(%rcx,%rcx,1),%eax
    8c12:	4d 8d 44 c5 00       	lea    0x0(%r13,%rax,8),%r8
    8c17:	49 8b 58 10          	mov    0x10(%r8),%rbx
    8c1b:	48 8b 43 10          	mov    0x10(%rbx),%rax
    8c1f:	49 39 c0             	cmp    %rax,%r8
    8c22:	0f 84 d1 05 00 00    	je     91f9 <dlmalloc+0x869>
    8c28:	48 3b 05 09 b5 01 00 	cmp    0x1b509(%rip),%rax        # 24138 <_gm_+0x18>
    8c2f:	0f 82 bb 03 00 00    	jb     8ff0 <dlmalloc+0x660>
    8c35:	48 39 58 18          	cmp    %rbx,0x18(%rax)
    8c39:	0f 85 b1 03 00 00    	jne    8ff0 <dlmalloc+0x660>
    8c3f:	4c 89 40 18          	mov    %r8,0x18(%rax)
    8c43:	49 89 40 10          	mov    %rax,0x10(%r8)
    8c47:	8d 04 cd 00 00 00 00 	lea    0x0(,%rcx,8),%eax
    8c4e:	48 8b 3d 8b b8 01 00 	mov    0x1b88b(%rip),%rdi        # 244e0 <mparams>
    8c55:	48 89 c2             	mov    %rax,%rdx
    8c58:	48 89 c1             	mov    %rax,%rcx
    8c5b:	48 01 d8             	add    %rbx,%rax
    8c5e:	4c 29 e2             	sub    %r12,%rdx
    8c61:	4c 31 ef             	xor    %r13,%rdi
    8c64:	48 83 fa 1f          	cmp    $0x1f,%rdx
    8c68:	0f 86 8d 0d 00 00    	jbe    99fb <dlmalloc+0x106b>
    8c6e:	4c 89 e1             	mov    %r12,%rcx
    8c71:	49 01 dc             	add    %rbx,%r12
    8c74:	48 83 c9 03          	or     $0x3,%rcx
    8c78:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    8c7c:	48 89 d1             	mov    %rdx,%rcx
    8c7f:	48 83 c9 01          	or     $0x1,%rcx
    8c83:	49 89 3c 24          	mov    %rdi,(%r12)
    8c87:	49 89 4c 24 08       	mov    %rcx,0x8(%r12)
    8c8c:	48 89 10             	mov    %rdx,(%rax)
    8c8f:	48 85 f6             	test   %rsi,%rsi
    8c92:	74 4d                	je     8ce1 <dlmalloc+0x351>
    8c94:	48 c1 ee 03          	shr    $0x3,%rsi
    8c98:	bf 01 00 00 00       	mov    $0x1,%edi
    8c9d:	48 8b 05 9c b4 01 00 	mov    0x1b49c(%rip),%rax        # 24140 <_gm_+0x20>
    8ca4:	48 89 f1             	mov    %rsi,%rcx
    8ca7:	8d 74 36 09          	lea    0x9(%rsi,%rsi,1),%esi
    8cab:	4d 8d 44 f5 00       	lea    0x0(%r13,%rsi,8),%r8
    8cb0:	8b 35 6a b4 01 00    	mov    0x1b46a(%rip),%esi        # 24120 <_gm_>
    8cb6:	d3 e7                	shl    %cl,%edi
    8cb8:	85 fe                	test   %edi,%esi
    8cba:	0f 84 a9 10 00 00    	je     9d69 <dlmalloc+0x13d9>
    8cc0:	49 8b 48 10          	mov    0x10(%r8),%rcx
    8cc4:	48 3b 0d 6d b4 01 00 	cmp    0x1b46d(%rip),%rcx        # 24138 <_gm_+0x18>
    8ccb:	0f 82 1f 03 00 00    	jb     8ff0 <dlmalloc+0x660>
    8cd1:	49 89 40 10          	mov    %rax,0x10(%r8)
    8cd5:	48 89 41 18          	mov    %rax,0x18(%rcx)
    8cd9:	48 89 48 10          	mov    %rcx,0x10(%rax)
    8cdd:	4c 89 40 18          	mov    %r8,0x18(%rax)
    8ce1:	48 89 15 40 b4 01 00 	mov    %rdx,0x1b440(%rip)        # 24128 <_gm_+0x8>
    8ce8:	4c 89 25 51 b4 01 00 	mov    %r12,0x1b451(%rip)        # 24140 <_gm_+0x20>
    8cef:	e9 ce fe ff ff       	jmp    8bc2 <dlmalloc+0x232>
    8cf4:	0f 1f 40 00          	nopl   0x0(%rax)
    8cf8:	48 8b 1d 41 b4 01 00 	mov    0x1b441(%rip),%rbx        # 24140 <_gm_+0x20>
    8cff:	48 8b 3d da b7 01 00 	mov    0x1b7da(%rip),%rdi        # 244e0 <mparams>
    8d06:	48 89 f2             	mov    %rsi,%rdx
    8d09:	4c 29 e2             	sub    %r12,%rdx
    8d0c:	48 8d 04 33          	lea    (%rbx,%rsi,1),%rax
    8d10:	4c 31 ef             	xor    %r13,%rdi
    8d13:	48 83 fa 1f          	cmp    $0x1f,%rdx
    8d17:	0f 86 83 0a 00 00    	jbe    97a0 <dlmalloc+0xe10>
    8d1d:	48 89 d6             	mov    %rdx,%rsi
    8d20:	4a 8d 0c 23          	lea    (%rbx,%r12,1),%rcx
    8d24:	49 83 cc 03          	or     $0x3,%r12
    8d28:	48 89 15 f9 b3 01 00 	mov    %rdx,0x1b3f9(%rip)        # 24128 <_gm_+0x8>
    8d2f:	48 83 ce 01          	or     $0x1,%rsi
    8d33:	48 89 0d 06 b4 01 00 	mov    %rcx,0x1b406(%rip)        # 24140 <_gm_+0x20>
    8d3a:	48 89 71 08          	mov    %rsi,0x8(%rcx)
    8d3e:	48 89 10             	mov    %rdx,(%rax)
    8d41:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    8d45:	48 89 39             	mov    %rdi,(%rcx)
    8d48:	e9 75 fe ff ff       	jmp    8bc2 <dlmalloc+0x232>
    8d4d:	0f 1f 00             	nopl   (%rax)
    8d50:	48 8b 1d e9 b3 01 00 	mov    0x1b3e9(%rip),%rbx        # 24140 <_gm_+0x20>
    8d57:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    8d5e:	48 8d 43 ff          	lea    -0x1(%rbx),%rax
    8d62:	48 c7 05 bb b3 01 00 	movq   $0x0,0x1b3bb(%rip)        # 24128 <_gm_+0x8>
    8d69:	00 00 00 00 
    8d6d:	48 c7 05 c8 b3 01 00 	movq   $0x0,0x1b3c8(%rip)        # 24140 <_gm_+0x20>
    8d74:	00 00 00 00 
    8d78:	48 89 73 08          	mov    %rsi,0x8(%rbx)
    8d7c:	48 83 48 08 01       	orq    $0x1,0x8(%rax)
    8d81:	4c 33 2d 58 b7 01 00 	xor    0x1b758(%rip),%r13        # 244e0 <mparams>
    8d88:	4c 89 28             	mov    %r13,(%rax)
    8d8b:	e9 32 fe ff ff       	jmp    8bc2 <dlmalloc+0x232>
    8d90:	4c 89 e0             	mov    %r12,%rax
    8d93:	4c 89 e7             	mov    %r12,%rdi
    8d96:	48 c1 e8 08          	shr    $0x8,%rax
    8d9a:	48 f7 df             	neg    %rdi
    8d9d:	41 89 c2             	mov    %eax,%r10d
    8da0:	85 c0                	test   %eax,%eax
    8da2:	0f 85 28 04 00 00    	jne    91d0 <dlmalloc+0x840>
    8da8:	48 8b 15 c9 b5 01 00 	mov    0x1b5c9(%rip),%rdx        # 24378 <_gm_+0x258>
    8daf:	b9 39 00 00 00       	mov    $0x39,%ecx
    8db4:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    8db9:	48 85 d2             	test   %rdx,%rdx
    8dbc:	0f 84 52 04 00 00    	je     9214 <dlmalloc+0x884>
    8dc2:	4d 89 e3             	mov    %r12,%r11
    8dc5:	49 d3 e3             	shl    %cl,%r11
    8dc8:	31 c9                	xor    %ecx,%ecx
    8dca:	31 db                	xor    %ebx,%ebx
    8dcc:	eb 05                	jmp    8dd3 <dlmalloc+0x443>
    8dce:	66 90                	xchg   %ax,%ax
    8dd0:	4d 01 db             	add    %r11,%r11
    8dd3:	48 8b 42 08          	mov    0x8(%rdx),%rax
    8dd7:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    8ddb:	4c 29 e0             	sub    %r12,%rax
    8dde:	48 39 f8             	cmp    %rdi,%rax
    8de1:	73 0f                	jae    8df2 <dlmalloc+0x462>
    8de3:	48 85 c0             	test   %rax,%rax
    8de6:	0f 84 c3 0b 00 00    	je     99af <dlmalloc+0x101f>
    8dec:	48 89 c7             	mov    %rax,%rdi
    8def:	48 89 d3             	mov    %rdx,%rbx
    8df2:	48 8b 42 28          	mov    0x28(%rdx),%rax
    8df6:	4d 89 de             	mov    %r11,%r14
    8df9:	49 c1 ee 3f          	shr    $0x3f,%r14
    8dfd:	4a 8b 54 f2 20       	mov    0x20(%rdx,%r14,8),%rdx
    8e02:	48 85 c0             	test   %rax,%rax
    8e05:	74 07                	je     8e0e <dlmalloc+0x47e>
    8e07:	48 39 d0             	cmp    %rdx,%rax
    8e0a:	48 0f 45 c8          	cmovne %rax,%rcx
    8e0e:	48 85 d2             	test   %rdx,%rdx
    8e11:	75 bd                	jne    8dd0 <dlmalloc+0x440>
    8e13:	48 89 c8             	mov    %rcx,%rax
    8e16:	48 09 d8             	or     %rbx,%rax
    8e19:	0f 84 eb 03 00 00    	je     920a <dlmalloc+0x87a>
    8e1f:	48 85 c9             	test   %rcx,%rcx
    8e22:	75 0f                	jne    8e33 <dlmalloc+0x4a3>
    8e24:	eb 35                	jmp    8e5b <dlmalloc+0x4cb>
    8e26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    8e2d:	00 00 00 
    8e30:	48 89 c1             	mov    %rax,%rcx
    8e33:	48 8b 41 08          	mov    0x8(%rcx),%rax
    8e37:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    8e3b:	4c 29 e0             	sub    %r12,%rax
    8e3e:	48 39 f8             	cmp    %rdi,%rax
    8e41:	73 06                	jae    8e49 <dlmalloc+0x4b9>
    8e43:	48 89 c7             	mov    %rax,%rdi
    8e46:	48 89 cb             	mov    %rcx,%rbx
    8e49:	48 8b 41 20          	mov    0x20(%rcx),%rax
    8e4d:	48 85 c0             	test   %rax,%rax
    8e50:	75 de                	jne    8e30 <dlmalloc+0x4a0>
    8e52:	48 8b 41 28          	mov    0x28(%rcx),%rax
    8e56:	48 85 c0             	test   %rax,%rax
    8e59:	75 d5                	jne    8e30 <dlmalloc+0x4a0>
    8e5b:	48 85 db             	test   %rbx,%rbx
    8e5e:	0f 84 0c fd ff ff    	je     8b70 <dlmalloc+0x1e0>
    8e64:	4c 89 c0             	mov    %r8,%rax
    8e67:	4c 29 e0             	sub    %r12,%rax
    8e6a:	48 39 c7             	cmp    %rax,%rdi
    8e6d:	0f 83 fd fc ff ff    	jae    8b70 <dlmalloc+0x1e0>
    8e73:	4c 8b 1d be b2 01 00 	mov    0x1b2be(%rip),%r11        # 24138 <_gm_+0x18>
    8e7a:	4c 39 db             	cmp    %r11,%rbx
    8e7d:	0f 82 6d 01 00 00    	jb     8ff0 <dlmalloc+0x660>
    8e83:	4e 8d 14 23          	lea    (%rbx,%r12,1),%r10
    8e87:	4c 39 d3             	cmp    %r10,%rbx
    8e8a:	0f 83 60 01 00 00    	jae    8ff0 <dlmalloc+0x660>
    8e90:	4c 8b 73 18          	mov    0x18(%rbx),%r14
    8e94:	4c 8b 7b 30          	mov    0x30(%rbx),%r15
    8e98:	4c 39 f3             	cmp    %r14,%rbx
    8e9b:	0f 84 2d 0d 00 00    	je     9bce <dlmalloc+0x123e>
    8ea1:	48 8b 43 10          	mov    0x10(%rbx),%rax
    8ea5:	4c 39 d8             	cmp    %r11,%rax
    8ea8:	0f 82 42 01 00 00    	jb     8ff0 <dlmalloc+0x660>
    8eae:	48 3b 58 18          	cmp    0x18(%rax),%rbx
    8eb2:	0f 85 38 01 00 00    	jne    8ff0 <dlmalloc+0x660>
    8eb8:	49 3b 5e 10          	cmp    0x10(%r14),%rbx
    8ebc:	0f 85 2e 01 00 00    	jne    8ff0 <dlmalloc+0x660>
    8ec2:	4c 89 70 18          	mov    %r14,0x18(%rax)
    8ec6:	49 89 46 10          	mov    %rax,0x10(%r14)
    8eca:	4d 85 ff             	test   %r15,%r15
    8ecd:	74 71                	je     8f40 <dlmalloc+0x5b0>
    8ecf:	8b 53 38             	mov    0x38(%rbx),%edx
    8ed2:	48 89 d0             	mov    %rdx,%rax
    8ed5:	49 3b 9c d5 58 02 00 	cmp    0x258(%r13,%rdx,8),%rbx
    8edc:	00 
    8edd:	0f 84 ca 0f 00 00    	je     9ead <dlmalloc+0x151d>
    8ee3:	4d 39 df             	cmp    %r11,%r15
    8ee6:	0f 82 04 01 00 00    	jb     8ff0 <dlmalloc+0x660>
    8eec:	49 3b 5f 20          	cmp    0x20(%r15),%rbx
    8ef0:	0f 84 3e 11 00 00    	je     a034 <dlmalloc+0x16a4>
    8ef6:	4d 89 77 28          	mov    %r14,0x28(%r15)
    8efa:	4d 85 f6             	test   %r14,%r14
    8efd:	74 41                	je     8f40 <dlmalloc+0x5b0>
    8eff:	4d 39 de             	cmp    %r11,%r14
    8f02:	0f 82 e8 00 00 00    	jb     8ff0 <dlmalloc+0x660>
    8f08:	48 8b 43 20          	mov    0x20(%rbx),%rax
    8f0c:	4d 89 7e 30          	mov    %r15,0x30(%r14)
    8f10:	48 85 c0             	test   %rax,%rax
    8f13:	74 11                	je     8f26 <dlmalloc+0x596>
    8f15:	4c 39 d8             	cmp    %r11,%rax
    8f18:	0f 82 d2 00 00 00    	jb     8ff0 <dlmalloc+0x660>
    8f1e:	49 89 46 20          	mov    %rax,0x20(%r14)
    8f22:	4c 89 70 30          	mov    %r14,0x30(%rax)
    8f26:	48 8b 43 28          	mov    0x28(%rbx),%rax
    8f2a:	48 85 c0             	test   %rax,%rax
    8f2d:	74 11                	je     8f40 <dlmalloc+0x5b0>
    8f2f:	4c 39 d8             	cmp    %r11,%rax
    8f32:	0f 82 b8 00 00 00    	jb     8ff0 <dlmalloc+0x660>
    8f38:	49 89 46 28          	mov    %rax,0x28(%r14)
    8f3c:	4c 89 70 30          	mov    %r14,0x30(%rax)
    8f40:	48 8b 15 99 b5 01 00 	mov    0x1b599(%rip),%rdx        # 244e0 <mparams>
    8f47:	4c 31 ea             	xor    %r13,%rdx
    8f4a:	48 83 ff 1f          	cmp    $0x1f,%rdi
    8f4e:	0f 86 fa 0c 00 00    	jbe    9c4e <dlmalloc+0x12be>
    8f54:	4c 89 e0             	mov    %r12,%rax
    8f57:	48 89 f9             	mov    %rdi,%rcx
    8f5a:	48 83 c8 03          	or     $0x3,%rax
    8f5e:	48 c1 e9 03          	shr    $0x3,%rcx
    8f62:	48 89 43 08          	mov    %rax,0x8(%rbx)
    8f66:	48 89 f8             	mov    %rdi,%rax
    8f69:	48 83 c8 01          	or     $0x1,%rax
    8f6d:	49 89 12             	mov    %rdx,(%r10)
    8f70:	49 89 42 08          	mov    %rax,0x8(%r10)
    8f74:	49 89 3c 3a          	mov    %rdi,(%r10,%rdi,1)
    8f78:	48 81 ff ff 00 00 00 	cmp    $0xff,%rdi
    8f7f:	0f 87 e8 0c 00 00    	ja     9c6d <dlmalloc+0x12dd>
    8f85:	8d 44 09 09          	lea    0x9(%rcx,%rcx,1),%eax
    8f89:	8b 35 91 b1 01 00    	mov    0x1b191(%rip),%esi        # 24120 <_gm_>
    8f8f:	49 8d 54 c5 00       	lea    0x0(%r13,%rax,8),%rdx
    8f94:	b8 01 00 00 00       	mov    $0x1,%eax
    8f99:	d3 e0                	shl    %cl,%eax
    8f9b:	85 c6                	test   %eax,%esi
    8f9d:	0f 84 39 10 00 00    	je     9fdc <dlmalloc+0x164c>
    8fa3:	48 8b 42 10          	mov    0x10(%rdx),%rax
    8fa7:	4c 39 d8             	cmp    %r11,%rax
    8faa:	72 44                	jb     8ff0 <dlmalloc+0x660>
    8fac:	4c 89 52 10          	mov    %r10,0x10(%rdx)
    8fb0:	4c 89 50 18          	mov    %r10,0x18(%rax)
    8fb4:	49 89 42 10          	mov    %rax,0x10(%r10)
    8fb8:	49 89 52 18          	mov    %rdx,0x18(%r10)
    8fbc:	48 83 c3 10          	add    $0x10,%rbx
    8fc0:	4c 89 c6             	mov    %r8,%rsi
    8fc3:	0f 85 9e fa ff ff    	jne    8a67 <dlmalloc+0xd7>
    8fc9:	e9 a2 fb ff ff       	jmp    8b70 <dlmalloc+0x1e0>
    8fce:	66 90                	xchg   %ax,%ax
    8fd0:	c7 05 ba b4 01 00 00 	movl   $0x0,0x1b4ba(%rip)        # 24494 <_gm_+0x374>
    8fd7:	00 00 00 
    8fda:	e9 bc fa ff ff       	jmp    8a9b <dlmalloc+0x10b>
    8fdf:	48 8b 42 10          	mov    0x10(%rdx),%rax
    8fe3:	48 3b 05 4e b1 01 00 	cmp    0x1b14e(%rip),%rax        # 24138 <_gm_+0x18>
    8fea:	0f 83 57 06 00 00    	jae    9647 <dlmalloc+0xcb7>
    8ff0:	e8 4b 3f 00 00       	call   cf40 <abort>
    8ff5:	0f 1f 00             	nopl   (%rax)
    8ff8:	44 8b 0d 25 b1 01 00 	mov    0x1b125(%rip),%r9d        # 24124 <_gm_+0x4>
    8fff:	45 85 c9             	test   %r9d,%r9d
    9002:	0f 84 71 fb ff ff    	je     8b79 <dlmalloc+0x1e9>
    9008:	44 89 c8             	mov    %r9d,%eax
    900b:	f7 d8                	neg    %eax
    900d:	44 21 c8             	and    %r9d,%eax
    9010:	f3 0f bc c0          	tzcnt  %eax,%eax
    9014:	49 8b 84 c5 58 02 00 	mov    0x258(%r13,%rax,8),%rax
    901b:	00 
    901c:	48 8b 78 08          	mov    0x8(%rax),%rdi
    9020:	48 89 c3             	mov    %rax,%rbx
    9023:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    9027:	4c 29 e7             	sub    %r12,%rdi
    902a:	eb 1d                	jmp    9049 <dlmalloc+0x6b9>
    902c:	0f 1f 40 00          	nopl   0x0(%rax)
    9030:	48 8b 41 08          	mov    0x8(%rcx),%rax
    9034:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    9038:	4c 29 e0             	sub    %r12,%rax
    903b:	48 39 f8             	cmp    %rdi,%rax
    903e:	73 06                	jae    9046 <dlmalloc+0x6b6>
    9040:	48 89 c7             	mov    %rax,%rdi
    9043:	48 89 cb             	mov    %rcx,%rbx
    9046:	48 89 c8             	mov    %rcx,%rax
    9049:	48 8b 48 20          	mov    0x20(%rax),%rcx
    904d:	48 85 c9             	test   %rcx,%rcx
    9050:	75 de                	jne    9030 <dlmalloc+0x6a0>
    9052:	48 8b 48 28          	mov    0x28(%rax),%rcx
    9056:	48 85 c9             	test   %rcx,%rcx
    9059:	75 d5                	jne    9030 <dlmalloc+0x6a0>
    905b:	4c 8b 1d d6 b0 01 00 	mov    0x1b0d6(%rip),%r11        # 24138 <_gm_+0x18>
    9062:	4c 39 db             	cmp    %r11,%rbx
    9065:	72 89                	jb     8ff0 <dlmalloc+0x660>
    9067:	4e 8d 14 23          	lea    (%rbx,%r12,1),%r10
    906b:	4c 39 d3             	cmp    %r10,%rbx
    906e:	73 80                	jae    8ff0 <dlmalloc+0x660>
    9070:	4c 8b 43 18          	mov    0x18(%rbx),%r8
    9074:	4c 8b 73 30          	mov    0x30(%rbx),%r14
    9078:	49 39 d8             	cmp    %rbx,%r8
    907b:	0f 84 36 0d 00 00    	je     9db7 <dlmalloc+0x1427>
    9081:	48 8b 43 10          	mov    0x10(%rbx),%rax
    9085:	4c 39 d8             	cmp    %r11,%rax
    9088:	0f 82 62 ff ff ff    	jb     8ff0 <dlmalloc+0x660>
    908e:	48 39 58 18          	cmp    %rbx,0x18(%rax)
    9092:	0f 85 58 ff ff ff    	jne    8ff0 <dlmalloc+0x660>
    9098:	49 39 58 10          	cmp    %rbx,0x10(%r8)
    909c:	0f 85 4e ff ff ff    	jne    8ff0 <dlmalloc+0x660>
    90a2:	4c 89 40 18          	mov    %r8,0x18(%rax)
    90a6:	49 89 40 10          	mov    %rax,0x10(%r8)
    90aa:	4d 85 f6             	test   %r14,%r14
    90ad:	74 71                	je     9120 <dlmalloc+0x790>
    90af:	8b 4b 38             	mov    0x38(%rbx),%ecx
    90b2:	48 89 c8             	mov    %rcx,%rax
    90b5:	49 39 9c cd 58 02 00 	cmp    %rbx,0x258(%r13,%rcx,8)
    90bc:	00 
    90bd:	0f 84 14 10 00 00    	je     a0d7 <dlmalloc+0x1747>
    90c3:	4d 39 de             	cmp    %r11,%r14
    90c6:	0f 82 24 ff ff ff    	jb     8ff0 <dlmalloc+0x660>
    90cc:	49 39 5e 20          	cmp    %rbx,0x20(%r14)
    90d0:	0f 84 00 11 00 00    	je     a1d6 <dlmalloc+0x1846>
    90d6:	4d 89 46 28          	mov    %r8,0x28(%r14)
    90da:	4d 85 c0             	test   %r8,%r8
    90dd:	74 41                	je     9120 <dlmalloc+0x790>
    90df:	4d 39 d8             	cmp    %r11,%r8
    90e2:	0f 82 08 ff ff ff    	jb     8ff0 <dlmalloc+0x660>
    90e8:	48 8b 43 20          	mov    0x20(%rbx),%rax
    90ec:	4d 89 70 30          	mov    %r14,0x30(%r8)
    90f0:	48 85 c0             	test   %rax,%rax
    90f3:	74 11                	je     9106 <dlmalloc+0x776>
    90f5:	4c 39 d8             	cmp    %r11,%rax
    90f8:	0f 82 f2 fe ff ff    	jb     8ff0 <dlmalloc+0x660>
    90fe:	49 89 40 20          	mov    %rax,0x20(%r8)
    9102:	4c 89 40 30          	mov    %r8,0x30(%rax)
    9106:	48 8b 43 28          	mov    0x28(%rbx),%rax
    910a:	48 85 c0             	test   %rax,%rax
    910d:	74 11                	je     9120 <dlmalloc+0x790>
    910f:	4c 39 d8             	cmp    %r11,%rax
    9112:	0f 82 d8 fe ff ff    	jb     8ff0 <dlmalloc+0x660>
    9118:	49 89 40 28          	mov    %rax,0x28(%r8)
    911c:	4c 89 40 30          	mov    %r8,0x30(%rax)
    9120:	48 8b 05 b9 b3 01 00 	mov    0x1b3b9(%rip),%rax        # 244e0 <mparams>
    9127:	4c 31 e8             	xor    %r13,%rax
    912a:	48 83 ff 1f          	cmp    $0x1f,%rdi
    912e:	0f 86 d2 0d 00 00    	jbe    9f06 <dlmalloc+0x1576>
    9134:	4c 89 e1             	mov    %r12,%rcx
    9137:	48 83 c9 03          	or     $0x3,%rcx
    913b:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    913f:	49 89 02             	mov    %rax,(%r10)
    9142:	48 89 f8             	mov    %rdi,%rax
    9145:	48 83 c8 01          	or     $0x1,%rax
    9149:	49 89 42 08          	mov    %rax,0x8(%r10)
    914d:	49 89 3c 3a          	mov    %rdi,(%r10,%rdi,1)
    9151:	48 85 f6             	test   %rsi,%rsi
    9154:	74 46                	je     919c <dlmalloc+0x80c>
    9156:	48 c1 ee 03          	shr    $0x3,%rsi
    915a:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    9160:	48 8b 05 d9 af 01 00 	mov    0x1afd9(%rip),%rax        # 24140 <_gm_+0x20>
    9167:	48 89 f1             	mov    %rsi,%rcx
    916a:	8d 74 36 09          	lea    0x9(%rsi,%rsi,1),%esi
    916e:	41 d3 e0             	shl    %cl,%r8d
    9171:	4d 8d 4c f5 00       	lea    0x0(%r13,%rsi,8),%r9
    9176:	44 85 c2             	test   %r8d,%edx
    9179:	0f 84 79 0f 00 00    	je     a0f8 <dlmalloc+0x1768>
    917f:	49 8b 51 10          	mov    0x10(%r9),%rdx
    9183:	4c 39 da             	cmp    %r11,%rdx
    9186:	0f 82 64 fe ff ff    	jb     8ff0 <dlmalloc+0x660>
    918c:	49 89 41 10          	mov    %rax,0x10(%r9)
    9190:	48 89 42 18          	mov    %rax,0x18(%rdx)
    9194:	48 89 50 10          	mov    %rdx,0x10(%rax)
    9198:	4c 89 48 18          	mov    %r9,0x18(%rax)
    919c:	48 89 3d 85 af 01 00 	mov    %rdi,0x1af85(%rip)        # 24128 <_gm_+0x8>
    91a3:	4c 89 15 96 af 01 00 	mov    %r10,0x1af96(%rip)        # 24140 <_gm_+0x20>
    91aa:	48 83 c3 10          	add    $0x10,%rbx
    91ae:	0f 85 b3 f8 ff ff    	jne    8a67 <dlmalloc+0xd7>
    91b4:	48 8b 35 6d af 01 00 	mov    0x1af6d(%rip),%rsi        # 24128 <_gm_+0x8>
    91bb:	e9 b0 f9 ff ff       	jmp    8b70 <dlmalloc+0x1e0>
    91c0:	0f b3 ca             	btr    %ecx,%edx
    91c3:	89 15 57 af 01 00    	mov    %edx,0x1af57(%rip)        # 24120 <_gm_>
    91c9:	e9 6d f8 ff ff       	jmp    8a3b <dlmalloc+0xab>
    91ce:	66 90                	xchg   %ax,%ax
    91d0:	3d ff ff 00 00       	cmp    $0xffff,%eax
    91d5:	0f 86 85 07 00 00    	jbe    9960 <dlmalloc+0xfd0>
    91db:	48 8b 15 8e b2 01 00 	mov    0x1b28e(%rip),%rdx        # 24470 <_gm_+0x350>
    91e2:	4d 89 e3             	mov    %r12,%r11
    91e5:	41 ba 1f 00 00 00    	mov    $0x1f,%r10d
    91eb:	48 85 d2             	test   %rdx,%rdx
    91ee:	0f 85 d4 fb ff ff    	jne    8dc8 <dlmalloc+0x438>
    91f4:	e9 77 f9 ff ff       	jmp    8b70 <dlmalloc+0x1e0>
    91f9:	d3 e7                	shl    %cl,%edi
    91fb:	f7 d7                	not    %edi
    91fd:	21 d7                	and    %edx,%edi
    91ff:	89 3d 1b af 01 00    	mov    %edi,0x1af1b(%rip)        # 24120 <_gm_>
    9205:	e9 3d fa ff ff       	jmp    8c47 <dlmalloc+0x2b7>
    920a:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    920f:	44 89 d1             	mov    %r10d,%ecx
    9212:	d3 e0                	shl    %cl,%eax
    9214:	44 21 c8             	and    %r9d,%eax
    9217:	0f 84 53 f9 ff ff    	je     8b70 <dlmalloc+0x1e0>
    921d:	89 c2                	mov    %eax,%edx
    921f:	31 db                	xor    %ebx,%ebx
    9221:	f7 da                	neg    %edx
    9223:	21 d0                	and    %edx,%eax
    9225:	f3 0f bc c0          	tzcnt  %eax,%eax
    9229:	49 8b 8c c5 58 02 00 	mov    0x258(%r13,%rax,8),%rcx
    9230:	00 
    9231:	48 85 c9             	test   %rcx,%rcx
    9234:	0f 85 f9 fb ff ff    	jne    8e33 <dlmalloc+0x4a3>
    923a:	e9 31 f9 ff ff       	jmp    8b70 <dlmalloc+0x1e0>
    923f:	90                   	nop
    9240:	48 85 d2             	test   %rdx,%rdx
    9243:	0f 84 74 12 00 00    	je     a4bd <dlmalloc+0x1b2d>
    9249:	48 8b 05 a0 b2 01 00 	mov    0x1b2a0(%rip),%rax        # 244f0 <mparams+0x10>
    9250:	49 8d 4c 04 5f       	lea    0x5f(%r12,%rax,1),%rcx
    9255:	48 f7 d8             	neg    %rax
    9258:	48 21 c1             	and    %rax,%rcx
    925b:	49 39 cc             	cmp    %rcx,%r12
    925e:	0f 83 99 f8 ff ff    	jae    8afd <dlmalloc+0x16d>
    9264:	48 8b 05 1d b2 01 00 	mov    0x1b21d(%rip),%rax        # 24488 <_gm_+0x368>
    926b:	48 85 c0             	test   %rax,%rax
    926e:	74 1d                	je     928d <dlmalloc+0x8fd>
    9270:	48 8b 15 01 b2 01 00 	mov    0x1b201(%rip),%rdx        # 24478 <_gm_+0x358>
    9277:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
    927b:	48 39 f2             	cmp    %rsi,%rdx
    927e:	0f 83 79 f8 ff ff    	jae    8afd <dlmalloc+0x16d>
    9284:	48 39 f0             	cmp    %rsi,%rax
    9287:	0f 82 70 f8 ff ff    	jb     8afd <dlmalloc+0x16d>
    928d:	f6 05 fc b1 01 00 04 	testb  $0x4,0x1b1fc(%rip)        # 24490 <_gm_+0x370>
    9294:	0f 85 b9 00 00 00    	jne    9353 <dlmalloc+0x9c3>
    929a:	48 8b 15 a7 ae 01 00 	mov    0x1aea7(%rip),%rdx        # 24148 <_gm_+0x28>
    92a1:	48 85 d2             	test   %rdx,%rdx
    92a4:	0f 84 b6 05 00 00    	je     9860 <dlmalloc+0xed0>
    92aa:	4c 8d 35 e7 b1 01 00 	lea    0x1b1e7(%rip),%r14        # 24498 <_gm_+0x378>
    92b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    92b8:	49 8b 06             	mov    (%r14),%rax
    92bb:	48 39 c2             	cmp    %rax,%rdx
    92be:	72 0d                	jb     92cd <dlmalloc+0x93d>
    92c0:	49 03 46 08          	add    0x8(%r14),%rax
    92c4:	48 39 c2             	cmp    %rax,%rdx
    92c7:	0f 82 44 07 00 00    	jb     9a11 <dlmalloc+0x1081>
    92cd:	4d 8b 76 10          	mov    0x10(%r14),%r14
    92d1:	4d 85 f6             	test   %r14,%r14
    92d4:	75 e2                	jne    92b8 <dlmalloc+0x928>
    92d6:	b8 01 00 00 00       	mov    $0x1,%eax
    92db:	87 05 2f b2 01 00    	xchg   %eax,0x1b22f(%rip)        # 24510 <malloc_global_mutex>
    92e1:	85 c0                	test   %eax,%eax
    92e3:	0f 84 8a 05 00 00    	je     9873 <dlmalloc+0xee3>
    92e9:	45 31 f6             	xor    %r14d,%r14d
    92ec:	48 8d 15 1d b2 01 00 	lea    0x1b21d(%rip),%rdx        # 24510 <malloc_global_mutex>
    92f3:	be 01 00 00 00       	mov    $0x1,%esi
    92f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    92ff:	00 
    9300:	8b 02                	mov    (%rdx),%eax
    9302:	85 c0                	test   %eax,%eax
    9304:	75 fa                	jne    9300 <dlmalloc+0x970>
    9306:	89 f0                	mov    %esi,%eax
    9308:	87 05 02 b2 01 00    	xchg   %eax,0x1b202(%rip)        # 24510 <malloc_global_mutex>
    930e:	85 c0                	test   %eax,%eax
    9310:	75 ee                	jne    9300 <dlmalloc+0x970>
    9312:	4d 85 f6             	test   %r14,%r14
    9315:	0f 84 58 05 00 00    	je     9873 <dlmalloc+0xee3>
    931b:	48 8b 05 ce b1 01 00 	mov    0x1b1ce(%rip),%rax        # 244f0 <mparams+0x10>
    9322:	4c 8d 78 5f          	lea    0x5f(%rax),%r15
    9326:	4c 2b 3d 03 ae 01 00 	sub    0x1ae03(%rip),%r15        # 24130 <_gm_+0x10>
    932d:	48 f7 d8             	neg    %rax
    9330:	4d 01 e7             	add    %r12,%r15
    9333:	49 21 c7             	and    %rax,%r15
    9336:	48 b8 fe ff ff ff ff 	movabs $0x7ffffffffffffffe,%rax
    933d:	ff ff 7f 
    9340:	4c 39 f8             	cmp    %r15,%rax
    9343:	0f 83 73 06 00 00    	jae    99bc <dlmalloc+0x102c>
    9349:	c7 05 bd b1 01 00 00 	movl   $0x0,0x1b1bd(%rip)        # 24510 <malloc_global_mutex>
    9350:	00 00 00 
    9353:	48 b8 fe ff ff ff ff 	movabs $0x7ffffffffffffffe,%rax
    935a:	ff ff 7f 
    935d:	48 39 c8             	cmp    %rcx,%rax
    9360:	73 16                	jae    9378 <dlmalloc+0x9e8>
    9362:	e8 89 25 00 00       	call   b8f0 <__errno>
    9367:	31 db                	xor    %ebx,%ebx
    9369:	c7 00 0c 00 00 00    	movl   $0xc,(%rax)
    936f:	e9 1a f7 ff ff       	jmp    8a8e <dlmalloc+0xfe>
    9374:	0f 1f 40 00          	nopl   0x0(%rax)
    9378:	b8 01 00 00 00       	mov    $0x1,%eax
    937d:	87 05 8d b1 01 00    	xchg   %eax,0x1b18d(%rip)        # 24510 <malloc_global_mutex>
    9383:	48 8d 15 86 b1 01 00 	lea    0x1b186(%rip),%rdx        # 24510 <malloc_global_mutex>
    938a:	be 01 00 00 00       	mov    $0x1,%esi
    938f:	85 c0                	test   %eax,%eax
    9391:	0f 85 11 03 00 00    	jne    96a8 <dlmalloc+0xd18>
    9397:	48 89 cf             	mov    %rcx,%rdi
    939a:	e8 41 f3 ff ff       	call   86e0 <sbrk>
    939f:	31 ff                	xor    %edi,%edi
    93a1:	48 89 c3             	mov    %rax,%rbx
    93a4:	e8 37 f3 ff ff       	call   86e0 <sbrk>
    93a9:	48 83 fb ff          	cmp    $0xffffffffffffffff,%rbx
    93ad:	0f 95 c1             	setne  %cl
    93b0:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
    93b4:	c7 05 52 b1 01 00 00 	movl   $0x0,0x1b152(%rip)        # 24510 <malloc_global_mutex>
    93bb:	00 00 00 
    93be:	0f 95 c2             	setne  %dl
    93c1:	84 d1                	test   %dl,%cl
    93c3:	74 9d                	je     9362 <dlmalloc+0x9d2>
    93c5:	48 39 c3             	cmp    %rax,%rbx
    93c8:	73 98                	jae    9362 <dlmalloc+0x9d2>
    93ca:	48 29 d8             	sub    %rbx,%rax
    93cd:	49 89 c7             	mov    %rax,%r15
    93d0:	49 8d 44 24 50       	lea    0x50(%r12),%rax
    93d5:	4c 39 f8             	cmp    %r15,%rax
    93d8:	73 88                	jae    9362 <dlmalloc+0x9d2>
    93da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    93e0:	48 8b 05 91 b0 01 00 	mov    0x1b091(%rip),%rax        # 24478 <_gm_+0x358>
    93e7:	4c 01 f8             	add    %r15,%rax
    93ea:	48 39 05 8f b0 01 00 	cmp    %rax,0x1b08f(%rip)        # 24480 <_gm_+0x360>
    93f1:	48 89 05 80 b0 01 00 	mov    %rax,0x1b080(%rip)        # 24478 <_gm_+0x358>
    93f8:	73 07                	jae    9401 <dlmalloc+0xa71>
    93fa:	48 89 05 7f b0 01 00 	mov    %rax,0x1b07f(%rip)        # 24480 <_gm_+0x360>
    9401:	48 8b 35 40 ad 01 00 	mov    0x1ad40(%rip),%rsi        # 24148 <_gm_+0x28>
    9408:	48 8d 05 89 b0 01 00 	lea    0x1b089(%rip),%rax        # 24498 <_gm_+0x378>
    940f:	48 85 f6             	test   %rsi,%rsi
    9412:	75 15                	jne    9429 <dlmalloc+0xa99>
    9414:	e9 a7 02 00 00       	jmp    96c0 <dlmalloc+0xd30>
    9419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    9420:	48 8b 40 10          	mov    0x10(%rax),%rax
    9424:	48 85 c0             	test   %rax,%rax
    9427:	74 27                	je     9450 <dlmalloc+0xac0>
    9429:	48 8b 10             	mov    (%rax),%rdx
    942c:	48 8b 48 08          	mov    0x8(%rax),%rcx
    9430:	48 8d 3c 0a          	lea    (%rdx,%rcx,1),%rdi
    9434:	48 39 fb             	cmp    %rdi,%rbx
    9437:	75 e7                	jne    9420 <dlmalloc+0xa90>
    9439:	f6 40 18 08          	testb  $0x8,0x18(%rax)
    943d:	75 11                	jne    9450 <dlmalloc+0xac0>
    943f:	48 39 d6             	cmp    %rdx,%rsi
    9442:	72 0c                	jb     9450 <dlmalloc+0xac0>
    9444:	48 39 de             	cmp    %rbx,%rsi
    9447:	0f 82 ed 09 00 00    	jb     9e3a <dlmalloc+0x14aa>
    944d:	0f 1f 00             	nopl   (%rax)
    9450:	48 3b 1d e1 ac 01 00 	cmp    0x1ace1(%rip),%rbx        # 24138 <_gm_+0x18>
    9457:	73 07                	jae    9460 <dlmalloc+0xad0>
    9459:	48 89 1d d8 ac 01 00 	mov    %rbx,0x1acd8(%rip)        # 24138 <_gm_+0x18>
    9460:	4a 8d 14 3b          	lea    (%rbx,%r15,1),%rdx
    9464:	48 8d 05 2d b0 01 00 	lea    0x1b02d(%rip),%rax        # 24498 <_gm_+0x378>
    946b:	eb 10                	jmp    947d <dlmalloc+0xaed>
    946d:	0f 1f 00             	nopl   (%rax)
    9470:	48 8b 40 10          	mov    0x10(%rax),%rax
    9474:	48 85 c0             	test   %rax,%rax
    9477:	0f 84 b3 05 00 00    	je     9a30 <dlmalloc+0x10a0>
    947d:	48 39 10             	cmp    %rdx,(%rax)
    9480:	75 ee                	jne    9470 <dlmalloc+0xae0>
    9482:	44 8b 48 18          	mov    0x18(%rax),%r9d
    9486:	49 89 d8             	mov    %rbx,%r8
    9489:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
    948d:	41 83 e0 0f          	and    $0xf,%r8d
    9491:	41 83 e1 08          	and    $0x8,%r9d
    9495:	0f 84 a5 05 00 00    	je     9a40 <dlmalloc+0x10b0>
    949b:	48 8d 05 f6 af 01 00 	lea    0x1aff6(%rip),%rax        # 24498 <_gm_+0x378>
    94a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    94a8:	48 8b 10             	mov    (%rax),%rdx
    94ab:	48 39 d6             	cmp    %rdx,%rsi
    94ae:	72 09                	jb     94b9 <dlmalloc+0xb29>
    94b0:	48 03 50 08          	add    0x8(%rax),%rdx
    94b4:	48 39 d6             	cmp    %rdx,%rsi
    94b7:	72 19                	jb     94d2 <dlmalloc+0xb42>
    94b9:	48 8b 40 10          	mov    0x10(%rax),%rax
    94bd:	48 85 c0             	test   %rax,%rax
    94c0:	75 e6                	jne    94a8 <dlmalloc+0xb18>
    94c2:	48 8b 14 25 08 00 00 	mov    0x8,%rdx
    94c9:	00 
    94ca:	48 03 14 25 00 00 00 	add    0x0,%rdx
    94d1:	00 
    94d2:	48 8d 42 b1          	lea    -0x4f(%rdx),%rax
    94d6:	48 c7 c1 a1 ff ff ff 	mov    $0xffffffffffffffa1,%rcx
    94dd:	a8 0f                	test   $0xf,%al
    94df:	74 0a                	je     94eb <dlmalloc+0xb5b>
    94e1:	48 f7 d8             	neg    %rax
    94e4:	83 e0 0f             	and    $0xf,%eax
    94e7:	48 8d 48 a1          	lea    -0x5f(%rax),%rcx
    94eb:	48 01 d1             	add    %rdx,%rcx
    94ee:	48 8d 46 20          	lea    0x20(%rsi),%rax
    94f2:	4d 8d 4f b0          	lea    -0x50(%r15),%r9
    94f6:	48 39 c1             	cmp    %rax,%rcx
    94f9:	48 0f 42 ce          	cmovb  %rsi,%rcx
    94fd:	4c 8d 51 10          	lea    0x10(%rcx),%r10
    9501:	4d 85 c0             	test   %r8,%r8
    9504:	0f 84 86 02 00 00    	je     9790 <dlmalloc+0xe00>
    950a:	48 f7 df             	neg    %rdi
    950d:	4c 89 c8             	mov    %r9,%rax
    9510:	83 e7 0f             	and    $0xf,%edi
    9513:	4c 8d 04 3b          	lea    (%rbx,%rdi,1),%r8
    9517:	48 29 f8             	sub    %rdi,%rax
    951a:	48 89 05 0f ac 01 00 	mov    %rax,0x1ac0f(%rip)        # 24130 <_gm_+0x10>
    9521:	48 83 c8 01          	or     $0x1,%rax
    9525:	f3 0f 6f 15 6b af 01 	movdqu 0x1af6b(%rip),%xmm2        # 24498 <_gm_+0x378>
    952c:	00 
    952d:	4c 89 05 14 ac 01 00 	mov    %r8,0x1ac14(%rip)        # 24148 <_gm_+0x28>
    9534:	49 89 40 08          	mov    %rax,0x8(%r8)
    9538:	48 8b 05 c1 af 01 00 	mov    0x1afc1(%rip),%rax        # 24500 <mparams+0x20>
    953f:	4a c7 44 0b 08 50 00 	movq   $0x50,0x8(%rbx,%r9,1)
    9546:	00 00 
    9548:	48 89 05 01 ac 01 00 	mov    %rax,0x1ac01(%rip)        # 24150 <_gm_+0x30>
    954f:	48 8b 05 8a af 01 00 	mov    0x1af8a(%rip),%rax        # 244e0 <mparams>
    9556:	0f 11 51 10          	movups %xmm2,0x10(%rcx)
    955a:	f3 0f 6f 1d 46 af 01 	movdqu 0x1af46(%rip),%xmm3        # 244a8 <_gm_+0x388>
    9561:	00 
    9562:	4c 31 e8             	xor    %r13,%rax
    9565:	48 c7 41 08 33 00 00 	movq   $0x33,0x8(%rcx)
    956c:	00 
    956d:	48 89 41 30          	mov    %rax,0x30(%rcx)
    9571:	48 8d 41 38          	lea    0x38(%rcx),%rax
    9575:	48 89 c7             	mov    %rax,%rdi
    9578:	48 8d 41 40          	lea    0x40(%rcx),%rax
    957c:	0f 11 59 20          	movups %xmm3,0x20(%rcx)
    9580:	48 f7 d7             	not    %rdi
    9583:	48 89 1d 0e af 01 00 	mov    %rbx,0x1af0e(%rip)        # 24498 <_gm_+0x378>
    958a:	48 01 d7             	add    %rdx,%rdi
    958d:	4c 89 3d 0c af 01 00 	mov    %r15,0x1af0c(%rip)        # 244a0 <_gm_+0x380>
    9594:	48 c1 ef 03          	shr    $0x3,%rdi
    9598:	4c 89 15 09 af 01 00 	mov    %r10,0x1af09(%rip)        # 244a8 <_gm_+0x388>
    959f:	c7 05 07 af 01 00 00 	movl   $0x0,0x1af07(%rip)        # 244b0 <_gm_+0x390>
    95a6:	00 00 00 
    95a9:	83 e7 01             	and    $0x1,%edi
    95ac:	48 c7 41 38 0b 00 00 	movq   $0xb,0x38(%rcx)
    95b3:	00 
    95b4:	48 39 d0             	cmp    %rdx,%rax
    95b7:	73 2f                	jae    95e8 <dlmalloc+0xc58>
    95b9:	48 85 ff             	test   %rdi,%rdi
    95bc:	74 12                	je     95d0 <dlmalloc+0xc40>
    95be:	48 c7 00 0b 00 00 00 	movq   $0xb,(%rax)
    95c5:	48 8d 41 48          	lea    0x48(%rcx),%rax
    95c9:	48 39 d0             	cmp    %rdx,%rax
    95cc:	73 1a                	jae    95e8 <dlmalloc+0xc58>
    95ce:	66 90                	xchg   %ax,%ax
    95d0:	48 c7 00 0b 00 00 00 	movq   $0xb,(%rax)
    95d7:	48 83 c0 10          	add    $0x10,%rax
    95db:	48 c7 40 f8 0b 00 00 	movq   $0xb,-0x8(%rax)
    95e2:	00 
    95e3:	48 39 d0             	cmp    %rdx,%rax
    95e6:	72 e8                	jb     95d0 <dlmalloc+0xc40>
    95e8:	48 39 ce             	cmp    %rcx,%rsi
    95eb:	0f 84 5f 02 00 00    	je     9850 <dlmalloc+0xec0>
    95f1:	48 89 ca             	mov    %rcx,%rdx
    95f4:	48 83 61 08 fe       	andq   $0xfffffffffffffffe,0x8(%rcx)
    95f9:	48 29 f2             	sub    %rsi,%rdx
    95fc:	48 89 d0             	mov    %rdx,%rax
    95ff:	48 83 c8 01          	or     $0x1,%rax
    9603:	48 89 46 08          	mov    %rax,0x8(%rsi)
    9607:	48 89 11             	mov    %rdx,(%rcx)
    960a:	48 89 d1             	mov    %rdx,%rcx
    960d:	48 c1 e9 03          	shr    $0x3,%rcx
    9611:	48 81 fa ff 00 00 00 	cmp    $0xff,%rdx
    9618:	0f 87 92 01 00 00    	ja     97b0 <dlmalloc+0xe20>
    961e:	8d 44 09 09          	lea    0x9(%rcx,%rcx,1),%eax
    9622:	8b 3d f8 aa 01 00    	mov    0x1aaf8(%rip),%edi        # 24120 <_gm_>
    9628:	49 8d 54 c5 00       	lea    0x0(%r13,%rax,8),%rdx
    962d:	b8 01 00 00 00       	mov    $0x1,%eax
    9632:	d3 e0                	shl    %cl,%eax
    9634:	85 c7                	test   %eax,%edi
    9636:	0f 85 a3 f9 ff ff    	jne    8fdf <dlmalloc+0x64f>
    963c:	09 c7                	or     %eax,%edi
    963e:	48 89 d0             	mov    %rdx,%rax
    9641:	89 3d d9 aa 01 00    	mov    %edi,0x1aad9(%rip)        # 24120 <_gm_>
    9647:	48 89 72 10          	mov    %rsi,0x10(%rdx)
    964b:	48 89 70 18          	mov    %rsi,0x18(%rax)
    964f:	48 89 56 18          	mov    %rdx,0x18(%rsi)
    9653:	48 89 46 10          	mov    %rax,0x10(%rsi)
    9657:	48 8b 05 d2 aa 01 00 	mov    0x1aad2(%rip),%rax        # 24130 <_gm_+0x10>
    965e:	49 39 c4             	cmp    %rax,%r12
    9661:	0f 83 fb fc ff ff    	jae    9362 <dlmalloc+0x9d2>
    9667:	48 8b 1d da aa 01 00 	mov    0x1aada(%rip),%rbx        # 24148 <_gm_+0x28>
    966e:	4c 29 e0             	sub    %r12,%rax
    9671:	4c 33 2d 68 ae 01 00 	xor    0x1ae68(%rip),%r13        # 244e0 <mparams>
    9678:	48 89 05 b1 aa 01 00 	mov    %rax,0x1aab1(%rip)        # 24130 <_gm_+0x10>
    967f:	48 83 c8 01          	or     $0x1,%rax
    9683:	4a 8d 14 23          	lea    (%rbx,%r12,1),%rdx
    9687:	49 83 cc 03          	or     $0x3,%r12
    968b:	48 89 15 b6 aa 01 00 	mov    %rdx,0x1aab6(%rip)        # 24148 <_gm_+0x28>
    9692:	48 89 42 08          	mov    %rax,0x8(%rdx)
    9696:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    969a:	4c 89 2a             	mov    %r13,(%rdx)
    969d:	e9 20 f5 ff ff       	jmp    8bc2 <dlmalloc+0x232>
    96a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    96a8:	8b 02                	mov    (%rdx),%eax
    96aa:	85 c0                	test   %eax,%eax
    96ac:	75 fa                	jne    96a8 <dlmalloc+0xd18>
    96ae:	89 f0                	mov    %esi,%eax
    96b0:	87 05 5a ae 01 00    	xchg   %eax,0x1ae5a(%rip)        # 24510 <malloc_global_mutex>
    96b6:	85 c0                	test   %eax,%eax
    96b8:	75 ee                	jne    96a8 <dlmalloc+0xd18>
    96ba:	e9 d8 fc ff ff       	jmp    9397 <dlmalloc+0xa07>
    96bf:	90                   	nop
    96c0:	48 8b 05 71 aa 01 00 	mov    0x1aa71(%rip),%rax        # 24138 <_gm_+0x18>
    96c7:	48 85 c0             	test   %rax,%rax
    96ca:	74 05                	je     96d1 <dlmalloc+0xd41>
    96cc:	48 39 c3             	cmp    %rax,%rbx
    96cf:	73 07                	jae    96d8 <dlmalloc+0xd48>
    96d1:	48 89 1d 60 aa 01 00 	mov    %rbx,0x1aa60(%rip)        # 24138 <_gm_+0x18>
    96d8:	48 8b 05 01 ae 01 00 	mov    0x1ae01(%rip),%rax        # 244e0 <mparams>
    96df:	48 89 1d b2 ad 01 00 	mov    %rbx,0x1adb2(%rip)        # 24498 <_gm_+0x378>
    96e6:	4c 89 3d b3 ad 01 00 	mov    %r15,0x1adb3(%rip)        # 244a0 <_gm_+0x380>
    96ed:	c7 05 b9 ad 01 00 00 	movl   $0x0,0x1adb9(%rip)        # 244b0 <_gm_+0x390>
    96f4:	00 00 00 
    96f7:	48 c7 05 56 aa 01 00 	movq   $0xffffffffffffffff,0x1aa56(%rip)        # 24158 <_gm_+0x38>
    96fe:	ff ff ff ff 
    9702:	48 89 05 57 aa 01 00 	mov    %rax,0x1aa57(%rip)        # 24160 <_gm_+0x40>
    9709:	48 8d 05 58 aa 01 00 	lea    0x1aa58(%rip),%rax        # 24168 <_gm_+0x48>
    9710:	48 8d 90 00 02 00 00 	lea    0x200(%rax),%rdx
    9717:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    971e:	00 00 
    9720:	66 48 0f 6e c0       	movq   %rax,%xmm0
    9725:	48 83 c0 10          	add    $0x10,%rax
    9729:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
    972d:	0f 11 00             	movups %xmm0,(%rax)
    9730:	48 39 d0             	cmp    %rdx,%rax
    9733:	75 eb                	jne    9720 <dlmalloc+0xd90>
    9735:	49 83 ef 50          	sub    $0x50,%r15
    9739:	48 8d 53 10          	lea    0x10(%rbx),%rdx
    973d:	f6 c3 0f             	test   $0xf,%bl
    9740:	0f 84 aa 02 00 00    	je     99f0 <dlmalloc+0x1060>
    9746:	48 f7 da             	neg    %rdx
    9749:	4c 89 f8             	mov    %r15,%rax
    974c:	83 e2 0f             	and    $0xf,%edx
    974f:	48 8d 0c 13          	lea    (%rbx,%rdx,1),%rcx
    9753:	48 29 d0             	sub    %rdx,%rax
    9756:	48 89 c2             	mov    %rax,%rdx
    9759:	48 89 0d e8 a9 01 00 	mov    %rcx,0x1a9e8(%rip)        # 24148 <_gm_+0x28>
    9760:	48 83 ca 01          	or     $0x1,%rdx
    9764:	48 89 05 c5 a9 01 00 	mov    %rax,0x1a9c5(%rip)        # 24130 <_gm_+0x10>
    976b:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    976f:	48 8b 15 8a ad 01 00 	mov    0x1ad8a(%rip),%rdx        # 24500 <mparams+0x20>
    9776:	4a c7 44 3b 08 50 00 	movq   $0x50,0x8(%rbx,%r15,1)
    977d:	00 00 
    977f:	48 89 15 ca a9 01 00 	mov    %rdx,0x1a9ca(%rip)        # 24150 <_gm_+0x30>
    9786:	e9 d3 fe ff ff       	jmp    965e <dlmalloc+0xcce>
    978b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    9790:	4c 89 c8             	mov    %r9,%rax
    9793:	49 89 d8             	mov    %rbx,%r8
    9796:	e9 7f fd ff ff       	jmp    951a <dlmalloc+0xb8a>
    979b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    97a0:	48 83 ce 03          	or     $0x3,%rsi
    97a4:	e9 b9 f5 ff ff       	jmp    8d62 <dlmalloc+0x3d2>
    97a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    97b0:	48 89 d0             	mov    %rdx,%rax
    97b3:	48 c1 e8 08          	shr    $0x8,%rax
    97b7:	89 c1                	mov    %eax,%ecx
    97b9:	85 c0                	test   %eax,%eax
    97bb:	0f 84 60 03 00 00    	je     9b21 <dlmalloc+0x1191>
    97c1:	3d ff ff 00 00       	cmp    $0xffff,%eax
    97c6:	0f 87 ad 05 00 00    	ja     9d79 <dlmalloc+0x13e9>
    97cc:	0f bd c1             	bsr    %ecx,%eax
    97cf:	b9 26 00 00 00       	mov    $0x26,%ecx
    97d4:	48 89 d3             	mov    %rdx,%rbx
    97d7:	bf 1f 00 00 00       	mov    $0x1f,%edi
    97dc:	83 f0 1f             	xor    $0x1f,%eax
    97df:	29 c1                	sub    %eax,%ecx
    97e1:	29 c7                	sub    %eax,%edi
    97e3:	48 d3 eb             	shr    %cl,%rbx
    97e6:	48 89 d9             	mov    %rbx,%rcx
    97e9:	83 e1 01             	and    $0x1,%ecx
    97ec:	8d 0c 79             	lea    (%rcx,%rdi,2),%ecx
    97ef:	bf 01 00 00 00       	mov    $0x1,%edi
    97f4:	44 8d 41 4b          	lea    0x4b(%rcx),%r8d
    97f8:	d3 e7                	shl    %cl,%edi
    97fa:	49 c1 e0 03          	shl    $0x3,%r8
    97fe:	8b 05 20 a9 01 00    	mov    0x1a920(%rip),%eax        # 24124 <_gm_+0x4>
    9804:	66 48 0f 6e ce       	movq   %rsi,%xmm1
    9809:	66 0f ef c0          	pxor   %xmm0,%xmm0
    980d:	89 4e 38             	mov    %ecx,0x38(%rsi)
    9810:	66 0f 6c c9          	punpcklqdq %xmm1,%xmm1
    9814:	0f 11 46 20          	movups %xmm0,0x20(%rsi)
    9818:	85 f8                	test   %edi,%eax
    981a:	0f 85 11 03 00 00    	jne    9b31 <dlmalloc+0x11a1>
    9820:	09 f8                	or     %edi,%eax
    9822:	4d 01 e8             	add    %r13,%r8
    9825:	49 89 b4 cd 58 02 00 	mov    %rsi,0x258(%r13,%rcx,8)
    982c:	00 
    982d:	89 05 f1 a8 01 00    	mov    %eax,0x1a8f1(%rip)        # 24124 <_gm_+0x4>
    9833:	48 8b 05 f6 a8 01 00 	mov    0x1a8f6(%rip),%rax        # 24130 <_gm_+0x10>
    983a:	4c 89 46 30          	mov    %r8,0x30(%rsi)
    983e:	0f 11 4e 10          	movups %xmm1,0x10(%rsi)
    9842:	e9 17 fe ff ff       	jmp    965e <dlmalloc+0xcce>
    9847:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    984e:	00 00 
    9850:	48 8b 05 d9 a8 01 00 	mov    0x1a8d9(%rip),%rax        # 24130 <_gm_+0x10>
    9857:	e9 02 fe ff ff       	jmp    965e <dlmalloc+0xcce>
    985c:	0f 1f 40 00          	nopl   0x0(%rax)
    9860:	b8 01 00 00 00       	mov    $0x1,%eax
    9865:	87 05 a5 ac 01 00    	xchg   %eax,0x1aca5(%rip)        # 24510 <malloc_global_mutex>
    986b:	85 c0                	test   %eax,%eax
    986d:	0f 85 76 fa ff ff    	jne    92e9 <dlmalloc+0x959>
    9873:	31 ff                	xor    %edi,%edi
    9875:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    987a:	e8 61 ee ff ff       	call   86e0 <sbrk>
    987f:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    9884:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
    9888:	49 89 c6             	mov    %rax,%r14
    988b:	0f 84 b8 fa ff ff    	je     9349 <dlmalloc+0x9b9>
    9891:	48 8b 15 50 ac 01 00 	mov    0x1ac50(%rip),%rdx        # 244e8 <mparams+0x8>
    9898:	49 89 cf             	mov    %rcx,%r15
    989b:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
    989f:	49 85 c6             	test   %rax,%r14
    98a2:	74 0f                	je     98b3 <dlmalloc+0xf23>
    98a4:	4c 01 f0             	add    %r14,%rax
    98a7:	48 f7 da             	neg    %rdx
    98aa:	4d 29 f7             	sub    %r14,%r15
    98ad:	48 21 d0             	and    %rdx,%rax
    98b0:	49 01 c7             	add    %rax,%r15
    98b3:	48 8b 05 be ab 01 00 	mov    0x1abbe(%rip),%rax        # 24478 <_gm_+0x358>
    98ba:	4d 39 fc             	cmp    %r15,%r12
    98bd:	0f 83 86 fa ff ff    	jae    9349 <dlmalloc+0x9b9>
    98c3:	48 ba fe ff ff ff ff 	movabs $0x7ffffffffffffffe,%rdx
    98ca:	ff ff 7f 
    98cd:	4c 39 fa             	cmp    %r15,%rdx
    98d0:	0f 82 73 fa ff ff    	jb     9349 <dlmalloc+0x9b9>
    98d6:	48 8b 15 ab ab 01 00 	mov    0x1abab(%rip),%rdx        # 24488 <_gm_+0x368>
    98dd:	48 85 d2             	test   %rdx,%rdx
    98e0:	74 16                	je     98f8 <dlmalloc+0xf68>
    98e2:	4a 8d 34 38          	lea    (%rax,%r15,1),%rsi
    98e6:	48 39 f0             	cmp    %rsi,%rax
    98e9:	0f 83 5a fa ff ff    	jae    9349 <dlmalloc+0x9b9>
    98ef:	48 39 f2             	cmp    %rsi,%rdx
    98f2:	0f 82 51 fa ff ff    	jb     9349 <dlmalloc+0x9b9>
    98f8:	4c 89 ff             	mov    %r15,%rdi
    98fb:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    9900:	e8 db ed ff ff       	call   86e0 <sbrk>
    9905:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    990a:	49 39 c6             	cmp    %rax,%r14
    990d:	48 89 c3             	mov    %rax,%rbx
    9910:	74 3c                	je     994e <dlmalloc+0xfbe>
    9912:	48 83 fb ff          	cmp    $0xffffffffffffffff,%rbx
    9916:	0f 84 2d fa ff ff    	je     9349 <dlmalloc+0x9b9>
    991c:	49 8d 44 24 60       	lea    0x60(%r12),%rax
    9921:	49 39 c7             	cmp    %rax,%r15
    9924:	73 28                	jae    994e <dlmalloc+0xfbe>
    9926:	48 8b 05 c3 ab 01 00 	mov    0x1abc3(%rip),%rax        # 244f0 <mparams+0x10>
    992d:	4d 8d 74 04 5f       	lea    0x5f(%r12,%rax,1),%r14
    9932:	48 f7 d8             	neg    %rax
    9935:	4d 29 fe             	sub    %r15,%r14
    9938:	49 21 c6             	and    %rax,%r14
    993b:	48 b8 fe ff ff ff ff 	movabs $0x7ffffffffffffffe,%rax
    9942:	ff ff 7f 
    9945:	4c 39 f0             	cmp    %r14,%rax
    9948:	0f 83 91 08 00 00    	jae    a1df <dlmalloc+0x184f>
    994e:	c7 05 b8 ab 01 00 00 	movl   $0x0,0x1abb8(%rip)        # 24510 <malloc_global_mutex>
    9955:	00 00 00 
    9958:	e9 83 fa ff ff       	jmp    93e0 <dlmalloc+0xa50>
    995d:	0f 1f 00             	nopl   (%rax)
    9960:	44 0f bd d0          	bsr    %eax,%r10d
    9964:	b9 26 00 00 00       	mov    $0x26,%ecx
    9969:	4c 89 e0             	mov    %r12,%rax
    996c:	ba 1f 00 00 00       	mov    $0x1f,%edx
    9971:	41 83 f2 1f          	xor    $0x1f,%r10d
    9975:	44 29 d1             	sub    %r10d,%ecx
    9978:	44 29 d2             	sub    %r10d,%edx
    997b:	48 d3 e8             	shr    %cl,%rax
    997e:	83 e0 01             	and    $0x1,%eax
    9981:	8d 04 50             	lea    (%rax,%rdx,2),%eax
    9984:	49 8b 94 c5 58 02 00 	mov    0x258(%r13,%rax,8),%rdx
    998b:	00 
    998c:	49 89 c2             	mov    %rax,%r10
    998f:	48 85 d2             	test   %rdx,%rdx
    9992:	0f 84 72 f8 ff ff    	je     920a <dlmalloc+0x87a>
    9998:	83 f8 1f             	cmp    $0x1f,%eax
    999b:	0f 84 d4 09 00 00    	je     a375 <dlmalloc+0x19e5>
    99a1:	d1 e8                	shr    $1,%eax
    99a3:	b9 39 00 00 00       	mov    $0x39,%ecx
    99a8:	29 c1                	sub    %eax,%ecx
    99aa:	e9 13 f4 ff ff       	jmp    8dc2 <dlmalloc+0x432>
    99af:	48 89 d3             	mov    %rdx,%rbx
    99b2:	31 ff                	xor    %edi,%edi
    99b4:	48 89 d1             	mov    %rdx,%rcx
    99b7:	e9 77 f4 ff ff       	jmp    8e33 <dlmalloc+0x4a3>
    99bc:	4c 89 ff             	mov    %r15,%rdi
    99bf:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    99c4:	e8 17 ed ff ff       	call   86e0 <sbrk>
    99c9:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    99ce:	48 89 c3             	mov    %rax,%rbx
    99d1:	49 8b 46 08          	mov    0x8(%r14),%rax
    99d5:	49 03 06             	add    (%r14),%rax
    99d8:	48 39 c3             	cmp    %rax,%rbx
    99db:	0f 85 31 ff ff ff    	jne    9912 <dlmalloc+0xf82>
    99e1:	48 83 fb ff          	cmp    $0xffffffffffffffff,%rbx
    99e5:	0f 85 63 ff ff ff    	jne    994e <dlmalloc+0xfbe>
    99eb:	e9 59 f9 ff ff       	jmp    9349 <dlmalloc+0x9b9>
    99f0:	4c 89 f8             	mov    %r15,%rax
    99f3:	48 89 d9             	mov    %rbx,%rcx
    99f6:	e9 5b fd ff ff       	jmp    9756 <dlmalloc+0xdc6>
    99fb:	83 c9 03             	or     $0x3,%ecx
    99fe:	89 ce                	mov    %ecx,%esi
    9a00:	48 89 73 08          	mov    %rsi,0x8(%rbx)
    9a04:	48 89 38             	mov    %rdi,(%rax)
    9a07:	48 83 48 08 01       	orq    $0x1,0x8(%rax)
    9a0c:	e9 b1 f1 ff ff       	jmp    8bc2 <dlmalloc+0x232>
    9a11:	b8 01 00 00 00       	mov    $0x1,%eax
    9a16:	87 05 f4 aa 01 00    	xchg   %eax,0x1aaf4(%rip)        # 24510 <malloc_global_mutex>
    9a1c:	85 c0                	test   %eax,%eax
    9a1e:	0f 84 f7 f8 ff ff    	je     931b <dlmalloc+0x98b>
    9a24:	e9 c3 f8 ff ff       	jmp    92ec <dlmalloc+0x95c>
    9a29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    9a30:	49 89 d8             	mov    %rbx,%r8
    9a33:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
    9a37:	41 83 e0 0f          	and    $0xf,%r8d
    9a3b:	e9 5b fa ff ff       	jmp    949b <dlmalloc+0xb0b>
    9a40:	4c 01 78 08          	add    %r15,0x8(%rax)
    9a44:	49 89 d2             	mov    %rdx,%r10
    9a47:	48 89 18             	mov    %rbx,(%rax)
    9a4a:	4d 85 c0             	test   %r8,%r8
    9a4d:	74 09                	je     9a58 <dlmalloc+0x10c8>
    9a4f:	48 f7 df             	neg    %rdi
    9a52:	83 e7 0f             	and    $0xf,%edi
    9a55:	48 01 fb             	add    %rdi,%rbx
    9a58:	48 8d 42 10          	lea    0x10(%rdx),%rax
    9a5c:	f6 c2 0f             	test   $0xf,%dl
    9a5f:	74 0a                	je     9a6b <dlmalloc+0x10db>
    9a61:	48 f7 d8             	neg    %rax
    9a64:	83 e0 0f             	and    $0xf,%eax
    9a67:	4c 8d 14 02          	lea    (%rdx,%rax,1),%r10
    9a6b:	48 8b 0d 6e aa 01 00 	mov    0x1aa6e(%rip),%rcx        # 244e0 <mparams>
    9a72:	4c 89 d0             	mov    %r10,%rax
    9a75:	4a 8d 14 23          	lea    (%rbx,%r12,1),%rdx
    9a79:	48 29 d8             	sub    %rbx,%rax
    9a7c:	4c 29 e0             	sub    %r12,%rax
    9a7f:	4c 31 e9             	xor    %r13,%rcx
    9a82:	49 83 cc 03          	or     $0x3,%r12
    9a86:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    9a8a:	48 89 0a             	mov    %rcx,(%rdx)
    9a8d:	4c 39 d6             	cmp    %r10,%rsi
    9a90:	0f 84 38 04 00 00    	je     9ece <dlmalloc+0x153e>
    9a96:	4c 39 15 a3 a6 01 00 	cmp    %r10,0x1a6a3(%rip)        # 24140 <_gm_+0x20>
    9a9d:	0f 84 49 05 00 00    	je     9fec <dlmalloc+0x165c>
    9aa3:	49 8b 72 08          	mov    0x8(%r10),%rsi
    9aa7:	4c 89 d1             	mov    %r10,%rcx
    9aaa:	48 89 f7             	mov    %rsi,%rdi
    9aad:	83 e7 03             	and    $0x3,%edi
    9ab0:	48 83 ff 01          	cmp    $0x1,%rdi
    9ab4:	0f 84 a2 05 00 00    	je     a05c <dlmalloc+0x16cc>
    9aba:	48 83 e6 fe          	and    $0xfffffffffffffffe,%rsi
    9abe:	49 89 72 08          	mov    %rsi,0x8(%r10)
    9ac2:	48 89 c6             	mov    %rax,%rsi
    9ac5:	48 83 ce 01          	or     $0x1,%rsi
    9ac9:	48 89 72 08          	mov    %rsi,0x8(%rdx)
    9acd:	48 89 01             	mov    %rax,(%rcx)
    9ad0:	48 89 c1             	mov    %rax,%rcx
    9ad3:	48 c1 e9 03          	shr    $0x3,%rcx
    9ad7:	48 3d ff 00 00 00    	cmp    $0xff,%rax
    9add:	0f 87 42 04 00 00    	ja     9f25 <dlmalloc+0x1595>
    9ae3:	bf 01 00 00 00       	mov    $0x1,%edi
    9ae8:	8b 35 32 a6 01 00    	mov    0x1a632(%rip),%esi        # 24120 <_gm_>
    9aee:	8d 44 09 09          	lea    0x9(%rcx,%rcx,1),%eax
    9af2:	d3 e7                	shl    %cl,%edi
    9af4:	49 8d 44 c5 00       	lea    0x0(%r13,%rax,8),%rax
    9af9:	85 fe                	test   %edi,%esi
    9afb:	0f 85 08 06 00 00    	jne    a109 <dlmalloc+0x1779>
    9b01:	09 fe                	or     %edi,%esi
    9b03:	48 89 c1             	mov    %rax,%rcx
    9b06:	89 35 14 a6 01 00    	mov    %esi,0x1a614(%rip)        # 24120 <_gm_>
    9b0c:	48 89 50 10          	mov    %rdx,0x10(%rax)
    9b10:	48 89 51 18          	mov    %rdx,0x18(%rcx)
    9b14:	48 89 4a 10          	mov    %rcx,0x10(%rdx)
    9b18:	48 89 42 18          	mov    %rax,0x18(%rdx)
    9b1c:	e9 a1 f0 ff ff       	jmp    8bc2 <dlmalloc+0x232>
    9b21:	bf 01 00 00 00       	mov    $0x1,%edi
    9b26:	41 b8 58 02 00 00    	mov    $0x258,%r8d
    9b2c:	e9 cd fc ff ff       	jmp    97fe <dlmalloc+0xe6e>
    9b31:	89 c8                	mov    %ecx,%eax
    9b33:	49 89 d0             	mov    %rdx,%r8
    9b36:	49 8b bc c5 58 02 00 	mov    0x258(%r13,%rax,8),%rdi
    9b3d:	00 
    9b3e:	83 f9 1f             	cmp    $0x1f,%ecx
    9b41:	74 33                	je     9b76 <dlmalloc+0x11e6>
    9b43:	89 c8                	mov    %ecx,%eax
    9b45:	b9 39 00 00 00       	mov    $0x39,%ecx
    9b4a:	d1 e8                	shr    $1,%eax
    9b4c:	29 c1                	sub    %eax,%ecx
    9b4e:	49 d3 e0             	shl    %cl,%r8
    9b51:	eb 23                	jmp    9b76 <dlmalloc+0x11e6>
    9b53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    9b58:	4c 89 c0             	mov    %r8,%rax
    9b5b:	4d 01 c0             	add    %r8,%r8
    9b5e:	48 c1 e8 3f          	shr    $0x3f,%rax
    9b62:	48 83 c0 04          	add    $0x4,%rax
    9b66:	48 8b 0c c7          	mov    (%rdi,%rax,8),%rcx
    9b6a:	48 85 c9             	test   %rcx,%rcx
    9b6d:	0f 84 1b 02 00 00    	je     9d8e <dlmalloc+0x13fe>
    9b73:	48 89 cf             	mov    %rcx,%rdi
    9b76:	48 8b 47 08          	mov    0x8(%rdi),%rax
    9b7a:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    9b7e:	48 39 c2             	cmp    %rax,%rdx
    9b81:	75 d5                	jne    9b58 <dlmalloc+0x11c8>
    9b83:	48 8b 47 10          	mov    0x10(%rdi),%rax
    9b87:	48 8b 15 aa a5 01 00 	mov    0x1a5aa(%rip),%rdx        # 24138 <_gm_+0x18>
    9b8e:	66 48 0f 6e e7       	movq   %rdi,%xmm4
    9b93:	66 48 0f 6e c0       	movq   %rax,%xmm0
    9b98:	66 0f 6c c4          	punpcklqdq %xmm4,%xmm0
    9b9c:	48 39 d7             	cmp    %rdx,%rdi
    9b9f:	0f 82 4b f4 ff ff    	jb     8ff0 <dlmalloc+0x660>
    9ba5:	48 39 d0             	cmp    %rdx,%rax
    9ba8:	0f 82 42 f4 ff ff    	jb     8ff0 <dlmalloc+0x660>
    9bae:	48 89 70 18          	mov    %rsi,0x18(%rax)
    9bb2:	48 8b 05 77 a5 01 00 	mov    0x1a577(%rip),%rax        # 24130 <_gm_+0x10>
    9bb9:	48 89 77 10          	mov    %rsi,0x10(%rdi)
    9bbd:	48 c7 46 30 00 00 00 	movq   $0x0,0x30(%rsi)
    9bc4:	00 
    9bc5:	0f 11 46 10          	movups %xmm0,0x10(%rsi)
    9bc9:	e9 90 fa ff ff       	jmp    965e <dlmalloc+0xcce>
    9bce:	48 8b 43 28          	mov    0x28(%rbx),%rax
    9bd2:	48 8d 53 28          	lea    0x28(%rbx),%rdx
    9bd6:	48 85 c0             	test   %rax,%rax
    9bd9:	0f 84 11 03 00 00    	je     9ef0 <dlmalloc+0x1560>
    9bdf:	90                   	nop
    9be0:	48 89 d6             	mov    %rdx,%rsi
    9be3:	48 89 c1             	mov    %rax,%rcx
    9be6:	48 8d 50 28          	lea    0x28(%rax),%rdx
    9bea:	48 8b 40 28          	mov    0x28(%rax),%rax
    9bee:	48 85 c0             	test   %rax,%rax
    9bf1:	75 ed                	jne    9be0 <dlmalloc+0x1250>
    9bf3:	48 8b 41 20          	mov    0x20(%rcx),%rax
    9bf7:	48 8d 51 20          	lea    0x20(%rcx),%rdx
    9bfb:	48 85 c0             	test   %rax,%rax
    9bfe:	75 e0                	jne    9be0 <dlmalloc+0x1250>
    9c00:	4c 39 de             	cmp    %r11,%rsi
    9c03:	0f 82 e7 f3 ff ff    	jb     8ff0 <dlmalloc+0x660>
    9c09:	48 c7 06 00 00 00 00 	movq   $0x0,(%rsi)
    9c10:	4d 85 ff             	test   %r15,%r15
    9c13:	0f 84 27 f3 ff ff    	je     8f40 <dlmalloc+0x5b0>
    9c19:	41 8b 46 38          	mov    0x38(%r14),%eax
    9c1d:	48 8d 50 4a          	lea    0x4a(%rax),%rdx
    9c21:	4d 3b b4 c5 58 02 00 	cmp    0x258(%r13,%rax,8),%r14
    9c28:	00 
    9c29:	0f 84 9e 04 00 00    	je     a0cd <dlmalloc+0x173d>
    9c2f:	4d 39 df             	cmp    %r11,%r15
    9c32:	0f 82 b8 f3 ff ff    	jb     8ff0 <dlmalloc+0x660>
    9c38:	49 3b 5f 20          	cmp    0x20(%r15),%rbx
    9c3c:	0f 84 cb 05 00 00    	je     a20d <dlmalloc+0x187d>
    9c42:	49 89 4f 28          	mov    %rcx,0x28(%r15)
    9c46:	49 89 ce             	mov    %rcx,%r14
    9c49:	e9 b1 f2 ff ff       	jmp    8eff <dlmalloc+0x56f>
    9c4e:	49 8d 04 3c          	lea    (%r12,%rdi,1),%rax
    9c52:	48 89 c1             	mov    %rax,%rcx
    9c55:	48 01 d8             	add    %rbx,%rax
    9c58:	48 83 c9 03          	or     $0x3,%rcx
    9c5c:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    9c60:	48 83 48 08 01       	orq    $0x1,0x8(%rax)
    9c65:	48 89 10             	mov    %rdx,(%rax)
    9c68:	e9 4f f3 ff ff       	jmp    8fbc <dlmalloc+0x62c>
    9c6d:	48 89 fa             	mov    %rdi,%rdx
    9c70:	48 c1 ea 08          	shr    $0x8,%rdx
    9c74:	89 d0                	mov    %edx,%eax
    9c76:	85 d2                	test   %edx,%edx
    9c78:	0f 84 20 02 00 00    	je     9e9e <dlmalloc+0x150e>
    9c7e:	81 fa ff ff 00 00    	cmp    $0xffff,%edx
    9c84:	0f 87 be 03 00 00    	ja     a048 <dlmalloc+0x16b8>
    9c8a:	0f bd c0             	bsr    %eax,%eax
    9c8d:	b9 26 00 00 00       	mov    $0x26,%ecx
    9c92:	48 89 fa             	mov    %rdi,%rdx
    9c95:	83 f0 1f             	xor    $0x1f,%eax
    9c98:	29 c1                	sub    %eax,%ecx
    9c9a:	48 d3 ea             	shr    %cl,%rdx
    9c9d:	b9 1f 00 00 00       	mov    $0x1f,%ecx
    9ca2:	83 e2 01             	and    $0x1,%edx
    9ca5:	29 c1                	sub    %eax,%ecx
    9ca7:	8d 04 4a             	lea    (%rdx,%rcx,2),%eax
    9caa:	ba 01 00 00 00       	mov    $0x1,%edx
    9caf:	89 c1                	mov    %eax,%ecx
    9cb1:	8d 70 4b             	lea    0x4b(%rax),%esi
    9cb4:	d3 e2                	shl    %cl,%edx
    9cb6:	48 c1 e6 03          	shl    $0x3,%rsi
    9cba:	89 d1                	mov    %edx,%ecx
    9cbc:	8b 15 62 a4 01 00    	mov    0x1a462(%rip),%edx        # 24124 <_gm_+0x4>
    9cc2:	66 49 0f 6e ca       	movq   %r10,%xmm1
    9cc7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9ccb:	41 89 42 38          	mov    %eax,0x38(%r10)
    9ccf:	66 0f 6c c9          	punpcklqdq %xmm1,%xmm1
    9cd3:	41 0f 11 42 20       	movups %xmm0,0x20(%r10)
    9cd8:	85 ca                	test   %ecx,%edx
    9cda:	0f 84 db 02 00 00    	je     9fbb <dlmalloc+0x162b>
    9ce0:	89 c2                	mov    %eax,%edx
    9ce2:	48 89 fe             	mov    %rdi,%rsi
    9ce5:	49 8b 94 d5 58 02 00 	mov    0x258(%r13,%rdx,8),%rdx
    9cec:	00 
    9ced:	83 f8 1f             	cmp    $0x1f,%eax
    9cf0:	74 2c                	je     9d1e <dlmalloc+0x138e>
    9cf2:	d1 e8                	shr    $1,%eax
    9cf4:	b9 39 00 00 00       	mov    $0x39,%ecx
    9cf9:	29 c1                	sub    %eax,%ecx
    9cfb:	48 d3 e6             	shl    %cl,%rsi
    9cfe:	eb 1e                	jmp    9d1e <dlmalloc+0x138e>
    9d00:	48 89 f0             	mov    %rsi,%rax
    9d03:	48 01 f6             	add    %rsi,%rsi
    9d06:	48 c1 e8 3f          	shr    $0x3f,%rax
    9d0a:	48 83 c0 04          	add    $0x4,%rax
    9d0e:	48 8b 0c c2          	mov    (%rdx,%rax,8),%rcx
    9d12:	48 85 c9             	test   %rcx,%rcx
    9d15:	0f 84 fa 02 00 00    	je     a015 <dlmalloc+0x1685>
    9d1b:	48 89 ca             	mov    %rcx,%rdx
    9d1e:	48 8b 42 08          	mov    0x8(%rdx),%rax
    9d22:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    9d26:	48 39 f8             	cmp    %rdi,%rax
    9d29:	75 d5                	jne    9d00 <dlmalloc+0x1370>
    9d2b:	48 8b 42 10          	mov    0x10(%rdx),%rax
    9d2f:	66 48 0f 6e ea       	movq   %rdx,%xmm5
    9d34:	66 48 0f 6e c0       	movq   %rax,%xmm0
    9d39:	66 0f 6c c5          	punpcklqdq %xmm5,%xmm0
    9d3d:	4c 39 da             	cmp    %r11,%rdx
    9d40:	0f 82 aa f2 ff ff    	jb     8ff0 <dlmalloc+0x660>
    9d46:	4c 39 d8             	cmp    %r11,%rax
    9d49:	0f 82 a1 f2 ff ff    	jb     8ff0 <dlmalloc+0x660>
    9d4f:	4c 89 50 18          	mov    %r10,0x18(%rax)
    9d53:	4c 89 52 10          	mov    %r10,0x10(%rdx)
    9d57:	49 c7 42 30 00 00 00 	movq   $0x0,0x30(%r10)
    9d5e:	00 
    9d5f:	41 0f 11 42 10       	movups %xmm0,0x10(%r10)
    9d64:	e9 53 f2 ff ff       	jmp    8fbc <dlmalloc+0x62c>
    9d69:	09 fe                	or     %edi,%esi
    9d6b:	4c 89 c1             	mov    %r8,%rcx
    9d6e:	89 35 ac a3 01 00    	mov    %esi,0x1a3ac(%rip)        # 24120 <_gm_>
    9d74:	e9 58 ef ff ff       	jmp    8cd1 <dlmalloc+0x341>
    9d79:	bf 00 00 00 80       	mov    $0x80000000,%edi
    9d7e:	41 b8 50 03 00 00    	mov    $0x350,%r8d
    9d84:	b9 1f 00 00 00       	mov    $0x1f,%ecx
    9d89:	e9 70 fa ff ff       	jmp    97fe <dlmalloc+0xe6e>
    9d8e:	48 8d 14 c7          	lea    (%rdi,%rax,8),%rdx
    9d92:	48 3b 15 9f a3 01 00 	cmp    0x1a39f(%rip),%rdx        # 24138 <_gm_+0x18>
    9d99:	0f 82 51 f2 ff ff    	jb     8ff0 <dlmalloc+0x660>
    9d9f:	48 89 34 c7          	mov    %rsi,(%rdi,%rax,8)
    9da3:	48 8b 05 86 a3 01 00 	mov    0x1a386(%rip),%rax        # 24130 <_gm_+0x10>
    9daa:	48 89 7e 30          	mov    %rdi,0x30(%rsi)
    9dae:	0f 11 4e 10          	movups %xmm1,0x10(%rsi)
    9db2:	e9 a7 f8 ff ff       	jmp    965e <dlmalloc+0xcce>
    9db7:	48 8b 43 28          	mov    0x28(%rbx),%rax
    9dbb:	48 8d 4b 28          	lea    0x28(%rbx),%rcx
    9dbf:	48 85 c0             	test   %rax,%rax
    9dc2:	0f 84 f8 03 00 00    	je     a1c0 <dlmalloc+0x1830>
    9dc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    9dcf:	00 
    9dd0:	49 89 c9             	mov    %rcx,%r9
    9dd3:	49 89 c0             	mov    %rax,%r8
    9dd6:	48 8d 48 28          	lea    0x28(%rax),%rcx
    9dda:	48 8b 40 28          	mov    0x28(%rax),%rax
    9dde:	48 85 c0             	test   %rax,%rax
    9de1:	75 ed                	jne    9dd0 <dlmalloc+0x1440>
    9de3:	49 8b 40 20          	mov    0x20(%r8),%rax
    9de7:	49 8d 48 20          	lea    0x20(%r8),%rcx
    9deb:	48 85 c0             	test   %rax,%rax
    9dee:	75 e0                	jne    9dd0 <dlmalloc+0x1440>
    9df0:	4d 39 d9             	cmp    %r11,%r9
    9df3:	0f 82 f7 f1 ff ff    	jb     8ff0 <dlmalloc+0x660>
    9df9:	49 c7 01 00 00 00 00 	movq   $0x0,(%r9)
    9e00:	4d 85 f6             	test   %r14,%r14
    9e03:	0f 84 17 f3 ff ff    	je     9120 <dlmalloc+0x790>
    9e09:	8b 43 38             	mov    0x38(%rbx),%eax
    9e0c:	48 8d 48 4a          	lea    0x4a(%rax),%rcx
    9e10:	49 3b 9c c5 58 02 00 	cmp    0x258(%r13,%rax,8),%rbx
    9e17:	00 
    9e18:	0f 84 0e 05 00 00    	je     a32c <dlmalloc+0x199c>
    9e1e:	4d 39 de             	cmp    %r11,%r14
    9e21:	0f 82 c9 f1 ff ff    	jb     8ff0 <dlmalloc+0x660>
    9e27:	49 3b 5e 20          	cmp    0x20(%r14),%rbx
    9e2b:	0f 84 3b 05 00 00    	je     a36c <dlmalloc+0x19dc>
    9e31:	4d 89 46 28          	mov    %r8,0x28(%r14)
    9e35:	e9 a5 f2 ff ff       	jmp    90df <dlmalloc+0x74f>
    9e3a:	4c 01 f9             	add    %r15,%rcx
    9e3d:	4c 03 3d ec a2 01 00 	add    0x1a2ec(%rip),%r15        # 24130 <_gm_+0x10>
    9e44:	48 89 48 08          	mov    %rcx,0x8(%rax)
    9e48:	48 8d 46 10          	lea    0x10(%rsi),%rax
    9e4c:	40 f6 c6 0f          	test   $0xf,%sil
    9e50:	0f 84 e7 01 00 00    	je     a03d <dlmalloc+0x16ad>
    9e56:	48 f7 d8             	neg    %rax
    9e59:	83 e0 0f             	and    $0xf,%eax
    9e5c:	48 89 c2             	mov    %rax,%rdx
    9e5f:	48 8d 0c 06          	lea    (%rsi,%rax,1),%rcx
    9e63:	4c 89 f8             	mov    %r15,%rax
    9e66:	48 29 d0             	sub    %rdx,%rax
    9e69:	48 89 c2             	mov    %rax,%rdx
    9e6c:	48 89 0d d5 a2 01 00 	mov    %rcx,0x1a2d5(%rip)        # 24148 <_gm_+0x28>
    9e73:	48 83 ca 01          	or     $0x1,%rdx
    9e77:	48 89 05 b2 a2 01 00 	mov    %rax,0x1a2b2(%rip)        # 24130 <_gm_+0x10>
    9e7e:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    9e82:	48 8b 15 77 a6 01 00 	mov    0x1a677(%rip),%rdx        # 24500 <mparams+0x20>
    9e89:	4a c7 44 3e 08 50 00 	movq   $0x50,0x8(%rsi,%r15,1)
    9e90:	00 00 
    9e92:	48 89 15 b7 a2 01 00 	mov    %rdx,0x1a2b7(%rip)        # 24150 <_gm_+0x30>
    9e99:	e9 c0 f7 ff ff       	jmp    965e <dlmalloc+0xcce>
    9e9e:	b9 01 00 00 00       	mov    $0x1,%ecx
    9ea3:	be 58 02 00 00       	mov    $0x258,%esi
    9ea8:	e9 0f fe ff ff       	jmp    9cbc <dlmalloc+0x132c>
    9ead:	4d 89 b4 d5 58 02 00 	mov    %r14,0x258(%r13,%rdx,8)
    9eb4:	00 
    9eb5:	4d 85 f6             	test   %r14,%r14
    9eb8:	0f 85 41 f0 ff ff    	jne    8eff <dlmalloc+0x56f>
    9ebe:	41 0f b3 c1          	btr    %eax,%r9d
    9ec2:	44 89 0d 5b a2 01 00 	mov    %r9d,0x1a25b(%rip)        # 24124 <_gm_+0x4>
    9ec9:	e9 72 f0 ff ff       	jmp    8f40 <dlmalloc+0x5b0>
    9ece:	48 03 05 5b a2 01 00 	add    0x1a25b(%rip),%rax        # 24130 <_gm_+0x10>
    9ed5:	48 89 15 6c a2 01 00 	mov    %rdx,0x1a26c(%rip)        # 24148 <_gm_+0x28>
    9edc:	48 89 05 4d a2 01 00 	mov    %rax,0x1a24d(%rip)        # 24130 <_gm_+0x10>
    9ee3:	48 83 c8 01          	or     $0x1,%rax
    9ee7:	48 89 42 08          	mov    %rax,0x8(%rdx)
    9eeb:	e9 d2 ec ff ff       	jmp    8bc2 <dlmalloc+0x232>
    9ef0:	48 8b 43 20          	mov    0x20(%rbx),%rax
    9ef4:	48 85 c0             	test   %rax,%rax
    9ef7:	0f 84 f0 03 00 00    	je     a2ed <dlmalloc+0x195d>
    9efd:	48 8d 53 20          	lea    0x20(%rbx),%rdx
    9f01:	e9 da fc ff ff       	jmp    9be0 <dlmalloc+0x1250>
    9f06:	49 8d 14 3c          	lea    (%r12,%rdi,1),%rdx
    9f0a:	48 89 d1             	mov    %rdx,%rcx
    9f0d:	48 01 da             	add    %rbx,%rdx
    9f10:	48 83 c9 03          	or     $0x3,%rcx
    9f14:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
    9f18:	48 83 4a 08 01       	orq    $0x1,0x8(%rdx)
    9f1d:	48 89 02             	mov    %rax,(%rdx)
    9f20:	e9 85 f2 ff ff       	jmp    91aa <dlmalloc+0x81a>
    9f25:	48 89 c6             	mov    %rax,%rsi
    9f28:	48 c1 ee 08          	shr    $0x8,%rsi
    9f2c:	89 f1                	mov    %esi,%ecx
    9f2e:	85 f6                	test   %esi,%esi
    9f30:	0f 84 7b 02 00 00    	je     a1b1 <dlmalloc+0x1821>
    9f36:	81 fe ff ff 00 00    	cmp    $0xffff,%esi
    9f3c:	0f 87 16 04 00 00    	ja     a358 <dlmalloc+0x19c8>
    9f42:	0f bd c9             	bsr    %ecx,%ecx
    9f45:	48 89 c7             	mov    %rax,%rdi
    9f48:	89 ce                	mov    %ecx,%esi
    9f4a:	b9 26 00 00 00       	mov    $0x26,%ecx
    9f4f:	83 f6 1f             	xor    $0x1f,%esi
    9f52:	29 f1                	sub    %esi,%ecx
    9f54:	48 d3 ef             	shr    %cl,%rdi
    9f57:	48 89 f9             	mov    %rdi,%rcx
    9f5a:	bf 1f 00 00 00       	mov    $0x1f,%edi
    9f5f:	29 f7                	sub    %esi,%edi
    9f61:	83 e1 01             	and    $0x1,%ecx
    9f64:	8d 0c 79             	lea    (%rcx,%rdi,2),%ecx
    9f67:	bf 01 00 00 00       	mov    $0x1,%edi
    9f6c:	8d 71 4b             	lea    0x4b(%rcx),%esi
    9f6f:	d3 e7                	shl    %cl,%edi
    9f71:	48 c1 e6 03          	shl    $0x3,%rsi
    9f75:	44 8b 05 a8 a1 01 00 	mov    0x1a1a8(%rip),%r8d        # 24124 <_gm_+0x4>
    9f7c:	66 48 0f 6e c2       	movq   %rdx,%xmm0
    9f81:	66 0f ef c9          	pxor   %xmm1,%xmm1
    9f85:	89 4a 38             	mov    %ecx,0x38(%rdx)
    9f88:	66 0f 6c c0          	punpcklqdq %xmm0,%xmm0
    9f8c:	0f 11 4a 20          	movups %xmm1,0x20(%rdx)
    9f90:	41 85 f8             	test   %edi,%r8d
    9f93:	0f 85 86 01 00 00    	jne    a11f <dlmalloc+0x178f>
    9f99:	41 09 f8             	or     %edi,%r8d
    9f9c:	4c 01 ee             	add    %r13,%rsi
    9f9f:	49 89 94 cd 58 02 00 	mov    %rdx,0x258(%r13,%rcx,8)
    9fa6:	00 
    9fa7:	44 89 05 76 a1 01 00 	mov    %r8d,0x1a176(%rip)        # 24124 <_gm_+0x4>
    9fae:	48 89 72 30          	mov    %rsi,0x30(%rdx)
    9fb2:	0f 11 42 10          	movups %xmm0,0x10(%rdx)
    9fb6:	e9 07 ec ff ff       	jmp    8bc2 <dlmalloc+0x232>
    9fbb:	09 ca                	or     %ecx,%edx
    9fbd:	4c 01 ee             	add    %r13,%rsi
    9fc0:	4d 89 94 c5 58 02 00 	mov    %r10,0x258(%r13,%rax,8)
    9fc7:	00 
    9fc8:	89 15 56 a1 01 00    	mov    %edx,0x1a156(%rip)        # 24124 <_gm_+0x4>
    9fce:	49 89 72 30          	mov    %rsi,0x30(%r10)
    9fd2:	41 0f 11 4a 10       	movups %xmm1,0x10(%r10)
    9fd7:	e9 e0 ef ff ff       	jmp    8fbc <dlmalloc+0x62c>
    9fdc:	09 c6                	or     %eax,%esi
    9fde:	48 89 d0             	mov    %rdx,%rax
    9fe1:	89 35 39 a1 01 00    	mov    %esi,0x1a139(%rip)        # 24120 <_gm_>
    9fe7:	e9 c0 ef ff ff       	jmp    8fac <dlmalloc+0x61c>
    9fec:	48 03 05 35 a1 01 00 	add    0x1a135(%rip),%rax        # 24128 <_gm_+0x8>
    9ff3:	48 89 15 46 a1 01 00 	mov    %rdx,0x1a146(%rip)        # 24140 <_gm_+0x20>
    9ffa:	48 89 c1             	mov    %rax,%rcx
    9ffd:	48 89 05 24 a1 01 00 	mov    %rax,0x1a124(%rip)        # 24128 <_gm_+0x8>
    a004:	48 83 c9 01          	or     $0x1,%rcx
    a008:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    a00c:	48 89 04 02          	mov    %rax,(%rdx,%rax,1)
    a010:	e9 ad eb ff ff       	jmp    8bc2 <dlmalloc+0x232>
    a015:	48 8d 0c c2          	lea    (%rdx,%rax,8),%rcx
    a019:	4c 39 d9             	cmp    %r11,%rcx
    a01c:	0f 82 ce ef ff ff    	jb     8ff0 <dlmalloc+0x660>
    a022:	4c 89 14 c2          	mov    %r10,(%rdx,%rax,8)
    a026:	49 89 52 30          	mov    %rdx,0x30(%r10)
    a02a:	41 0f 11 4a 10       	movups %xmm1,0x10(%r10)
    a02f:	e9 88 ef ff ff       	jmp    8fbc <dlmalloc+0x62c>
    a034:	4d 89 77 20          	mov    %r14,0x20(%r15)
    a038:	e9 bd ee ff ff       	jmp    8efa <dlmalloc+0x56a>
    a03d:	4c 89 f8             	mov    %r15,%rax
    a040:	48 89 f1             	mov    %rsi,%rcx
    a043:	e9 21 fe ff ff       	jmp    9e69 <dlmalloc+0x14d9>
    a048:	b9 00 00 00 80       	mov    $0x80000000,%ecx
    a04d:	be 50 03 00 00       	mov    $0x350,%esi
    a052:	b8 1f 00 00 00       	mov    $0x1f,%eax
    a057:	e9 60 fc ff ff       	jmp    9cbc <dlmalloc+0x132c>
    a05c:	49 89 f0             	mov    %rsi,%r8
    a05f:	48 89 f1             	mov    %rsi,%rcx
    a062:	49 83 e0 f8          	and    $0xfffffffffffffff8,%r8
    a066:	48 c1 e9 03          	shr    $0x3,%rcx
    a06a:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
    a071:	0f 87 9f 01 00 00    	ja     a216 <dlmalloc+0x1886>
    a077:	44 8d 5c 09 09       	lea    0x9(%rcx,%rcx,1),%r11d
    a07c:	49 8b 7a 10          	mov    0x10(%r10),%rdi
    a080:	49 8b 72 18          	mov    0x18(%r10),%rsi
    a084:	4f 8d 5c dd 00       	lea    0x0(%r13,%r11,8),%r11
    a089:	4c 39 df             	cmp    %r11,%rdi
    a08c:	0f 85 84 03 00 00    	jne    a416 <dlmalloc+0x1a86>
    a092:	48 39 fe             	cmp    %rdi,%rsi
    a095:	0f 84 69 03 00 00    	je     a404 <dlmalloc+0x1a74>
    a09b:	48 3b 35 96 a0 01 00 	cmp    0x1a096(%rip),%rsi        # 24138 <_gm_+0x18>
    a0a2:	0f 82 48 ef ff ff    	jb     8ff0 <dlmalloc+0x660>
    a0a8:	4c 39 56 10          	cmp    %r10,0x10(%rsi)
    a0ac:	0f 85 3e ef ff ff    	jne    8ff0 <dlmalloc+0x660>
    a0b2:	48 89 77 18          	mov    %rsi,0x18(%rdi)
    a0b6:	48 89 7e 10          	mov    %rdi,0x10(%rsi)
    a0ba:	4d 01 c2             	add    %r8,%r10
    a0bd:	4c 01 c0             	add    %r8,%rax
    a0c0:	49 8b 72 08          	mov    0x8(%r10),%rsi
    a0c4:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    a0c8:	e9 ed f9 ff ff       	jmp    9aba <dlmalloc+0x112a>
    a0cd:	49 89 4c d5 08       	mov    %rcx,0x8(%r13,%rdx,8)
    a0d2:	e9 6f fb ff ff       	jmp    9c46 <dlmalloc+0x12b6>
    a0d7:	4d 89 84 cd 58 02 00 	mov    %r8,0x258(%r13,%rcx,8)
    a0de:	00 
    a0df:	4d 85 c0             	test   %r8,%r8
    a0e2:	0f 85 f7 ef ff ff    	jne    90df <dlmalloc+0x74f>
    a0e8:	41 0f b3 c1          	btr    %eax,%r9d
    a0ec:	44 89 0d 31 a0 01 00 	mov    %r9d,0x1a031(%rip)        # 24124 <_gm_+0x4>
    a0f3:	e9 28 f0 ff ff       	jmp    9120 <dlmalloc+0x790>
    a0f8:	44 09 c2             	or     %r8d,%edx
    a0fb:	89 15 1f a0 01 00    	mov    %edx,0x1a01f(%rip)        # 24120 <_gm_>
    a101:	4c 89 ca             	mov    %r9,%rdx
    a104:	e9 83 f0 ff ff       	jmp    918c <dlmalloc+0x7fc>
    a109:	48 8b 48 10          	mov    0x10(%rax),%rcx
    a10d:	48 3b 0d 24 a0 01 00 	cmp    0x1a024(%rip),%rcx        # 24138 <_gm_+0x18>
    a114:	0f 83 f2 f9 ff ff    	jae    9b0c <dlmalloc+0x117c>
    a11a:	e9 d1 ee ff ff       	jmp    8ff0 <dlmalloc+0x660>
    a11f:	89 ce                	mov    %ecx,%esi
    a121:	49 8b b4 f5 58 02 00 	mov    0x258(%r13,%rsi,8),%rsi
    a128:	00 
    a129:	83 f9 1f             	cmp    $0x1f,%ecx
    a12c:	74 0b                	je     a139 <dlmalloc+0x17a9>
    a12e:	d1 e9                	shr    $1,%ecx
    a130:	41 b9 39 00 00 00    	mov    $0x39,%r9d
    a136:	41 29 c9             	sub    %ecx,%r9d
    a139:	48 89 c7             	mov    %rax,%rdi
    a13c:	44 89 c9             	mov    %r9d,%ecx
    a13f:	48 d3 e7             	shl    %cl,%rdi
    a142:	eb 1e                	jmp    a162 <dlmalloc+0x17d2>
    a144:	48 89 f9             	mov    %rdi,%rcx
    a147:	48 01 ff             	add    %rdi,%rdi
    a14a:	48 c1 e9 3f          	shr    $0x3f,%rcx
    a14e:	48 83 c1 04          	add    $0x4,%rcx
    a152:	4c 8b 04 ce          	mov    (%rsi,%rcx,8),%r8
    a156:	4d 85 c0             	test   %r8,%r8
    a159:	0f 84 d7 01 00 00    	je     a336 <dlmalloc+0x19a6>
    a15f:	4c 89 c6             	mov    %r8,%rsi
    a162:	48 8b 4e 08          	mov    0x8(%rsi),%rcx
    a166:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    a16a:	48 39 c8             	cmp    %rcx,%rax
    a16d:	75 d5                	jne    a144 <dlmalloc+0x17b4>
    a16f:	48 8b 46 10          	mov    0x10(%rsi),%rax
    a173:	48 8b 0d be 9f 01 00 	mov    0x19fbe(%rip),%rcx        # 24138 <_gm_+0x18>
    a17a:	66 48 0f 6e f6       	movq   %rsi,%xmm6
    a17f:	66 48 0f 6e c0       	movq   %rax,%xmm0
    a184:	66 0f 6c c6          	punpcklqdq %xmm6,%xmm0
    a188:	48 39 c8             	cmp    %rcx,%rax
    a18b:	0f 82 5f ee ff ff    	jb     8ff0 <dlmalloc+0x660>
    a191:	48 39 ce             	cmp    %rcx,%rsi
    a194:	0f 82 56 ee ff ff    	jb     8ff0 <dlmalloc+0x660>
    a19a:	48 89 50 18          	mov    %rdx,0x18(%rax)
    a19e:	31 c0                	xor    %eax,%eax
    a1a0:	48 89 56 10          	mov    %rdx,0x10(%rsi)
    a1a4:	48 89 42 30          	mov    %rax,0x30(%rdx)
    a1a8:	0f 11 42 10          	movups %xmm0,0x10(%rdx)
    a1ac:	e9 11 ea ff ff       	jmp    8bc2 <dlmalloc+0x232>
    a1b1:	bf 01 00 00 00       	mov    $0x1,%edi
    a1b6:	be 58 02 00 00       	mov    $0x258,%esi
    a1bb:	e9 b5 fd ff ff       	jmp    9f75 <dlmalloc+0x15e5>
    a1c0:	48 8b 43 20          	mov    0x20(%rbx),%rax
    a1c4:	48 85 c0             	test   %rax,%rax
    a1c7:	0f 84 b0 01 00 00    	je     a37d <dlmalloc+0x19ed>
    a1cd:	48 8d 4b 20          	lea    0x20(%rbx),%rcx
    a1d1:	e9 fa fb ff ff       	jmp    9dd0 <dlmalloc+0x1440>
    a1d6:	4d 89 46 20          	mov    %r8,0x20(%r14)
    a1da:	e9 fb ee ff ff       	jmp    90da <dlmalloc+0x74a>
    a1df:	4c 89 f7             	mov    %r14,%rdi
    a1e2:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    a1e7:	e8 f4 e4 ff ff       	call   86e0 <sbrk>
    a1ec:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    a1f1:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
    a1f5:	0f 84 5b 02 00 00    	je     a456 <dlmalloc+0x1ac6>
    a1fb:	4d 01 f7             	add    %r14,%r15
    a1fe:	c7 05 08 a3 01 00 00 	movl   $0x0,0x1a308(%rip)        # 24510 <malloc_global_mutex>
    a205:	00 00 00 
    a208:	e9 d3 f1 ff ff       	jmp    93e0 <dlmalloc+0xa50>
    a20d:	49 89 4f 20          	mov    %rcx,0x20(%r15)
    a211:	e9 30 fa ff ff       	jmp    9c46 <dlmalloc+0x12b6>
    a216:	49 8b 72 18          	mov    0x18(%r10),%rsi
    a21a:	4d 8b 62 30          	mov    0x30(%r10),%r12
    a21e:	4c 39 d6             	cmp    %r10,%rsi
    a221:	0f 84 96 01 00 00    	je     a3bd <dlmalloc+0x1a2d>
    a227:	49 8b 4a 10          	mov    0x10(%r10),%rcx
    a22b:	48 3b 0d 06 9f 01 00 	cmp    0x19f06(%rip),%rcx        # 24138 <_gm_+0x18>
    a232:	0f 82 b8 ed ff ff    	jb     8ff0 <dlmalloc+0x660>
    a238:	4c 39 51 18          	cmp    %r10,0x18(%rcx)
    a23c:	0f 85 ae ed ff ff    	jne    8ff0 <dlmalloc+0x660>
    a242:	4c 39 56 10          	cmp    %r10,0x10(%rsi)
    a246:	0f 85 a4 ed ff ff    	jne    8ff0 <dlmalloc+0x660>
    a24c:	48 89 71 18          	mov    %rsi,0x18(%rcx)
    a250:	48 89 4e 10          	mov    %rcx,0x10(%rsi)
    a254:	4d 85 e4             	test   %r12,%r12
    a257:	0f 84 5d fe ff ff    	je     a0ba <dlmalloc+0x172a>
    a25d:	41 8b 7a 38          	mov    0x38(%r10),%edi
    a261:	48 89 f9             	mov    %rdi,%rcx
    a264:	4c 8d 5f 4a          	lea    0x4a(%rdi),%r11
    a268:	4d 39 94 fd 58 02 00 	cmp    %r10,0x258(%r13,%rdi,8)
    a26f:	00 
    a270:	0f 84 0e 02 00 00    	je     a484 <dlmalloc+0x1af4>
    a276:	4c 3b 25 bb 9e 01 00 	cmp    0x19ebb(%rip),%r12        # 24138 <_gm_+0x18>
    a27d:	0f 82 6d ed ff ff    	jb     8ff0 <dlmalloc+0x660>
    a283:	4d 39 54 24 20       	cmp    %r10,0x20(%r12)
    a288:	0f 84 ec 01 00 00    	je     a47a <dlmalloc+0x1aea>
    a28e:	49 89 74 24 28       	mov    %rsi,0x28(%r12)
    a293:	48 85 f6             	test   %rsi,%rsi
    a296:	0f 84 1e fe ff ff    	je     a0ba <dlmalloc+0x172a>
    a29c:	48 8b 3d 95 9e 01 00 	mov    0x19e95(%rip),%rdi        # 24138 <_gm_+0x18>
    a2a3:	48 39 fe             	cmp    %rdi,%rsi
    a2a6:	0f 82 44 ed ff ff    	jb     8ff0 <dlmalloc+0x660>
    a2ac:	49 8b 4a 20          	mov    0x20(%r10),%rcx
    a2b0:	4c 89 66 30          	mov    %r12,0x30(%rsi)
    a2b4:	48 85 c9             	test   %rcx,%rcx
    a2b7:	74 11                	je     a2ca <dlmalloc+0x193a>
    a2b9:	48 39 f9             	cmp    %rdi,%rcx
    a2bc:	0f 82 2e ed ff ff    	jb     8ff0 <dlmalloc+0x660>
    a2c2:	48 89 4e 20          	mov    %rcx,0x20(%rsi)
    a2c6:	48 89 71 30          	mov    %rsi,0x30(%rcx)
    a2ca:	49 8b 4a 28          	mov    0x28(%r10),%rcx
    a2ce:	48 85 c9             	test   %rcx,%rcx
    a2d1:	0f 84 e3 fd ff ff    	je     a0ba <dlmalloc+0x172a>
    a2d7:	48 39 f9             	cmp    %rdi,%rcx
    a2da:	0f 82 10 ed ff ff    	jb     8ff0 <dlmalloc+0x660>
    a2e0:	48 89 4e 28          	mov    %rcx,0x28(%rsi)
    a2e4:	48 89 71 30          	mov    %rsi,0x30(%rcx)
    a2e8:	e9 cd fd ff ff       	jmp    a0ba <dlmalloc+0x172a>
    a2ed:	4d 85 ff             	test   %r15,%r15
    a2f0:	0f 84 4a ec ff ff    	je     8f40 <dlmalloc+0x5b0>
    a2f6:	8b 53 38             	mov    0x38(%rbx),%edx
    a2f9:	48 89 d0             	mov    %rdx,%rax
    a2fc:	48 8d 4a 4a          	lea    0x4a(%rdx),%rcx
    a300:	49 3b 9c d5 58 02 00 	cmp    0x258(%r13,%rdx,8),%rbx
    a307:	00 
    a308:	0f 84 a2 01 00 00    	je     a4b0 <dlmalloc+0x1b20>
    a30e:	4d 39 df             	cmp    %r11,%r15
    a311:	0f 82 d9 ec ff ff    	jb     8ff0 <dlmalloc+0x660>
    a317:	4d 39 77 20          	cmp    %r14,0x20(%r15)
    a31b:	0f 84 83 01 00 00    	je     a4a4 <dlmalloc+0x1b14>
    a321:	31 f6                	xor    %esi,%esi
    a323:	49 89 77 28          	mov    %rsi,0x28(%r15)
    a327:	e9 14 ec ff ff       	jmp    8f40 <dlmalloc+0x5b0>
    a32c:	4d 89 44 cd 08       	mov    %r8,0x8(%r13,%rcx,8)
    a331:	e9 a9 ed ff ff       	jmp    90df <dlmalloc+0x74f>
    a336:	48 8d 04 ce          	lea    (%rsi,%rcx,8),%rax
    a33a:	48 3b 05 f7 9d 01 00 	cmp    0x19df7(%rip),%rax        # 24138 <_gm_+0x18>
    a341:	0f 82 a9 ec ff ff    	jb     8ff0 <dlmalloc+0x660>
    a347:	48 89 14 ce          	mov    %rdx,(%rsi,%rcx,8)
    a34b:	48 89 72 30          	mov    %rsi,0x30(%rdx)
    a34f:	0f 11 42 10          	movups %xmm0,0x10(%rdx)
    a353:	e9 6a e8 ff ff       	jmp    8bc2 <dlmalloc+0x232>
    a358:	bf 00 00 00 80       	mov    $0x80000000,%edi
    a35d:	be 50 03 00 00       	mov    $0x350,%esi
    a362:	b9 1f 00 00 00       	mov    $0x1f,%ecx
    a367:	e9 09 fc ff ff       	jmp    9f75 <dlmalloc+0x15e5>
    a36c:	4d 89 46 20          	mov    %r8,0x20(%r14)
    a370:	e9 6a ed ff ff       	jmp    90df <dlmalloc+0x74f>
    a375:	4d 89 e3             	mov    %r12,%r11
    a378:	e9 4b ea ff ff       	jmp    8dc8 <dlmalloc+0x438>
    a37d:	4d 85 f6             	test   %r14,%r14
    a380:	0f 84 9a ed ff ff    	je     9120 <dlmalloc+0x790>
    a386:	8b 4b 38             	mov    0x38(%rbx),%ecx
    a389:	48 89 c8             	mov    %rcx,%rax
    a38c:	4c 8d 41 4a          	lea    0x4a(%rcx),%r8
    a390:	49 3b 9c cd 58 02 00 	cmp    0x258(%r13,%rcx,8),%rbx
    a397:	00 
    a398:	0f 84 34 01 00 00    	je     a4d2 <dlmalloc+0x1b42>
    a39e:	4d 39 de             	cmp    %r11,%r14
    a3a1:	0f 82 49 ec ff ff    	jb     8ff0 <dlmalloc+0x660>
    a3a7:	49 3b 5e 20          	cmp    0x20(%r14),%rbx
    a3ab:	0f 84 16 01 00 00    	je     a4c7 <dlmalloc+0x1b37>
    a3b1:	45 31 ff             	xor    %r15d,%r15d
    a3b4:	4d 89 7e 28          	mov    %r15,0x28(%r14)
    a3b8:	e9 63 ed ff ff       	jmp    9120 <dlmalloc+0x790>
    a3bd:	49 8b 72 28          	mov    0x28(%r10),%rsi
    a3c1:	48 85 f6             	test   %rsi,%rsi
    a3c4:	74 7a                	je     a440 <dlmalloc+0x1ab0>
    a3c6:	49 8d 7a 28          	lea    0x28(%r10),%rdi
    a3ca:	48 89 f1             	mov    %rsi,%rcx
    a3cd:	49 89 fb             	mov    %rdi,%r11
    a3d0:	48 89 ce             	mov    %rcx,%rsi
    a3d3:	48 8d 79 28          	lea    0x28(%rcx),%rdi
    a3d7:	48 8b 49 28          	mov    0x28(%rcx),%rcx
    a3db:	48 85 c9             	test   %rcx,%rcx
    a3de:	75 ed                	jne    a3cd <dlmalloc+0x1a3d>
    a3e0:	48 8b 4e 20          	mov    0x20(%rsi),%rcx
    a3e4:	48 8d 7e 20          	lea    0x20(%rsi),%rdi
    a3e8:	48 85 c9             	test   %rcx,%rcx
    a3eb:	75 e0                	jne    a3cd <dlmalloc+0x1a3d>
    a3ed:	4c 3b 1d 44 9d 01 00 	cmp    0x19d44(%rip),%r11        # 24138 <_gm_+0x18>
    a3f4:	0f 82 f6 eb ff ff    	jb     8ff0 <dlmalloc+0x660>
    a3fa:	31 c9                	xor    %ecx,%ecx
    a3fc:	49 89 0b             	mov    %rcx,(%r11)
    a3ff:	e9 50 fe ff ff       	jmp    a254 <dlmalloc+0x18c4>
    a404:	be fe ff ff ff       	mov    $0xfffffffe,%esi
    a409:	d3 c6                	rol    %cl,%esi
    a40b:	21 35 0f 9d 01 00    	and    %esi,0x19d0f(%rip)        # 24120 <_gm_>
    a411:	e9 a4 fc ff ff       	jmp    a0ba <dlmalloc+0x172a>
    a416:	48 3b 3d 1b 9d 01 00 	cmp    0x19d1b(%rip),%rdi        # 24138 <_gm_+0x18>
    a41d:	0f 82 cd eb ff ff    	jb     8ff0 <dlmalloc+0x660>
    a423:	4c 39 57 18          	cmp    %r10,0x18(%rdi)
    a427:	0f 85 c3 eb ff ff    	jne    8ff0 <dlmalloc+0x660>
    a42d:	48 39 f7             	cmp    %rsi,%rdi
    a430:	74 d2                	je     a404 <dlmalloc+0x1a74>
    a432:	4c 39 de             	cmp    %r11,%rsi
    a435:	0f 84 77 fc ff ff    	je     a0b2 <dlmalloc+0x1722>
    a43b:	e9 5b fc ff ff       	jmp    a09b <dlmalloc+0x170b>
    a440:	49 8b 72 20          	mov    0x20(%r10),%rsi
    a444:	48 85 f6             	test   %rsi,%rsi
    a447:	0f 84 07 fe ff ff    	je     a254 <dlmalloc+0x18c4>
    a44d:	49 8d 7a 20          	lea    0x20(%r10),%rdi
    a451:	e9 74 ff ff ff       	jmp    a3ca <dlmalloc+0x1a3a>
    a456:	4c 89 ff             	mov    %r15,%rdi
    a459:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    a45e:	48 f7 df             	neg    %rdi
    a461:	e8 7a e2 ff ff       	call   86e0 <sbrk>
    a466:	c7 05 a0 a0 01 00 00 	movl   $0x0,0x1a0a0(%rip)        # 24510 <malloc_global_mutex>
    a46d:	00 00 00 
    a470:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    a475:	e9 d9 ee ff ff       	jmp    9353 <dlmalloc+0x9c3>
    a47a:	49 89 74 24 20       	mov    %rsi,0x20(%r12)
    a47f:	e9 0f fe ff ff       	jmp    a293 <dlmalloc+0x1903>
    a484:	4b 89 74 dd 08       	mov    %rsi,0x8(%r13,%r11,8)
    a489:	48 85 f6             	test   %rsi,%rsi
    a48c:	0f 85 0a fe ff ff    	jne    a29c <dlmalloc+0x190c>
    a492:	be fe ff ff ff       	mov    $0xfffffffe,%esi
    a497:	d3 c6                	rol    %cl,%esi
    a499:	21 35 85 9c 01 00    	and    %esi,0x19c85(%rip)        # 24124 <_gm_+0x4>
    a49f:	e9 16 fc ff ff       	jmp    a0ba <dlmalloc+0x172a>
    a4a4:	45 31 c9             	xor    %r9d,%r9d
    a4a7:	4d 89 4f 20          	mov    %r9,0x20(%r15)
    a4ab:	e9 90 ea ff ff       	jmp    8f40 <dlmalloc+0x5b0>
    a4b0:	45 31 f6             	xor    %r14d,%r14d
    a4b3:	4d 89 74 cd 08       	mov    %r14,0x8(%r13,%rcx,8)
    a4b8:	e9 01 fa ff ff       	jmp    9ebe <dlmalloc+0x152e>
    a4bd:	e8 de e3 ff ff       	call   88a0 <init_mparams.isra.0>
    a4c2:	e9 82 ed ff ff       	jmp    9249 <dlmalloc+0x8b9>
    a4c7:	31 c0                	xor    %eax,%eax
    a4c9:	49 89 46 20          	mov    %rax,0x20(%r14)
    a4cd:	e9 4e ec ff ff       	jmp    9120 <dlmalloc+0x790>
    a4d2:	31 c9                	xor    %ecx,%ecx
    a4d4:	4b 89 4c c5 08       	mov    %rcx,0x8(%r13,%r8,8)
    a4d9:	e9 0a fc ff ff       	jmp    a0e8 <dlmalloc+0x1758>
    a4de:	66 90                	xchg   %ax,%ax

000000000000a4e0 <dlfree>:
    a4e0:	f3 0f 1e fa          	endbr64
    a4e4:	48 85 ff             	test   %rdi,%rdi
    a4e7:	0f 84 db 01 00 00    	je     a6c8 <dlfree+0x1e8>
    a4ed:	41 55                	push   %r13
    a4ef:	48 89 f8             	mov    %rdi,%rax
    a4f2:	48 8d 57 f0          	lea    -0x10(%rdi),%rdx
    a4f6:	41 54                	push   %r12
    a4f8:	55                   	push   %rbp
    a4f9:	53                   	push   %rbx
    a4fa:	48 83 ec 08          	sub    $0x8,%rsp
    a4fe:	48 8b 4f f8          	mov    -0x8(%rdi),%rcx
    a502:	48 8b 35 d7 9f 01 00 	mov    0x19fd7(%rip),%rsi        # 244e0 <mparams>
    a509:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    a50d:	48 8b 5c 0f f0       	mov    -0x10(%rdi,%rcx,1),%rbx
    a512:	48 31 f3             	xor    %rsi,%rbx
    a515:	48 3b 73 40          	cmp    0x40(%rbx),%rsi
    a519:	0f 85 89 02 00 00    	jne    a7a8 <dlfree+0x2c8>
    a51f:	f6 83 70 03 00 00 02 	testb  $0x2,0x370(%rbx)
    a526:	0f 85 54 01 00 00    	jne    a680 <dlfree+0x1a0>
    a52c:	4c 8b 4b 18          	mov    0x18(%rbx),%r9
    a530:	4c 39 ca             	cmp    %r9,%rdx
    a533:	0f 82 87 01 00 00    	jb     a6c0 <dlfree+0x1e0>
    a539:	48 8b 48 f8          	mov    -0x8(%rax),%rcx
    a53d:	49 89 c8             	mov    %rcx,%r8
    a540:	41 83 e0 03          	and    $0x3,%r8d
    a544:	49 83 f8 01          	cmp    $0x1,%r8
    a548:	0f 84 72 01 00 00    	je     a6c0 <dlfree+0x1e0>
    a54e:	48 89 ce             	mov    %rcx,%rsi
    a551:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
    a555:	83 e1 01             	and    $0x1,%ecx
    a558:	48 8d 3c 32          	lea    (%rdx,%rsi,1),%rdi
    a55c:	0f 84 9e 00 00 00    	je     a600 <dlfree+0x120>
    a562:	48 39 fa             	cmp    %rdi,%rdx
    a565:	0f 83 55 01 00 00    	jae    a6c0 <dlfree+0x1e0>
    a56b:	48 8b 47 08          	mov    0x8(%rdi),%rax
    a56f:	a8 01                	test   $0x1,%al
    a571:	0f 84 49 01 00 00    	je     a6c0 <dlfree+0x1e0>
    a577:	a8 02                	test   $0x2,%al
    a579:	0f 84 51 01 00 00    	je     a6d0 <dlfree+0x1f0>
    a57f:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    a583:	48 89 47 08          	mov    %rax,0x8(%rdi)
    a587:	48 89 f0             	mov    %rsi,%rax
    a58a:	48 83 c8 01          	or     $0x1,%rax
    a58e:	48 89 42 08          	mov    %rax,0x8(%rdx)
    a592:	48 89 34 32          	mov    %rsi,(%rdx,%rsi,1)
    a596:	48 89 f1             	mov    %rsi,%rcx
    a599:	48 c1 e9 03          	shr    $0x3,%rcx
    a59d:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
    a5a4:	0f 87 ce 01 00 00    	ja     a778 <dlfree+0x298>
    a5aa:	8d 44 09 09          	lea    0x9(%rcx,%rcx,1),%eax
    a5ae:	8b 3b                	mov    (%rbx),%edi
    a5b0:	48 8d 34 c3          	lea    (%rbx,%rax,8),%rsi
    a5b4:	b8 01 00 00 00       	mov    $0x1,%eax
    a5b9:	d3 e0                	shl    %cl,%eax
    a5bb:	85 c7                	test   %eax,%edi
    a5bd:	0f 84 35 06 00 00    	je     abf8 <dlfree+0x718>
    a5c3:	48 8b 46 10          	mov    0x10(%rsi),%rax
    a5c7:	4c 39 c8             	cmp    %r9,%rax
    a5ca:	0f 82 d8 01 00 00    	jb     a7a8 <dlfree+0x2c8>
    a5d0:	48 89 56 10          	mov    %rdx,0x10(%rsi)
    a5d4:	48 89 50 18          	mov    %rdx,0x18(%rax)
    a5d8:	48 89 42 10          	mov    %rax,0x10(%rdx)
    a5dc:	48 89 72 18          	mov    %rsi,0x18(%rdx)
    a5e0:	f6 83 70 03 00 00 02 	testb  $0x2,0x370(%rbx)
    a5e7:	0f 85 73 01 00 00    	jne    a760 <dlfree+0x280>
    a5ed:	48 83 c4 08          	add    $0x8,%rsp
    a5f1:	5b                   	pop    %rbx
    a5f2:	5d                   	pop    %rbp
    a5f3:	41 5c                	pop    %r12
    a5f5:	41 5d                	pop    %r13
    a5f7:	c3                   	ret
    a5f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    a5ff:	00 
    a600:	48 8b 40 f0          	mov    -0x10(%rax),%rax
    a604:	4d 85 c0             	test   %r8,%r8
    a607:	74 d7                	je     a5e0 <dlfree+0x100>
    a609:	48 29 c2             	sub    %rax,%rdx
    a60c:	48 01 c6             	add    %rax,%rsi
    a60f:	4c 39 ca             	cmp    %r9,%rdx
    a612:	0f 82 a8 00 00 00    	jb     a6c0 <dlfree+0x1e0>
    a618:	48 39 53 20          	cmp    %rdx,0x20(%rbx)
    a61c:	0f 84 9e 05 00 00    	je     abc0 <dlfree+0x6e0>
    a622:	48 89 c1             	mov    %rax,%rcx
    a625:	48 c1 e9 03          	shr    $0x3,%rcx
    a629:	48 3d ff 00 00 00    	cmp    $0xff,%rax
    a62f:	0f 87 6b 02 00 00    	ja     a8a0 <dlfree+0x3c0>
    a635:	44 8d 54 09 09       	lea    0x9(%rcx,%rcx,1),%r10d
    a63a:	48 8b 42 10          	mov    0x10(%rdx),%rax
    a63e:	4c 8b 42 18          	mov    0x18(%rdx),%r8
    a642:	4e 8d 14 d3          	lea    (%rbx,%r10,8),%r10
    a646:	49 39 c2             	cmp    %rax,%r10
    a649:	0f 85 ae 07 00 00    	jne    adfd <dlfree+0x91d>
    a64f:	4c 39 c0             	cmp    %r8,%rax
    a652:	0f 84 28 05 00 00    	je     ab80 <dlfree+0x6a0>
    a658:	4d 39 c8             	cmp    %r9,%r8
    a65b:	0f 82 47 01 00 00    	jb     a7a8 <dlfree+0x2c8>
    a661:	49 39 50 10          	cmp    %rdx,0x10(%r8)
    a665:	0f 85 3d 01 00 00    	jne    a7a8 <dlfree+0x2c8>
    a66b:	4c 89 40 18          	mov    %r8,0x18(%rax)
    a66f:	49 89 40 10          	mov    %rax,0x10(%r8)
    a673:	e9 ea fe ff ff       	jmp    a562 <dlfree+0x82>
    a678:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    a67f:	00 
    a680:	48 8d b3 74 03 00 00 	lea    0x374(%rbx),%rsi
    a687:	b9 01 00 00 00       	mov    $0x1,%ecx
    a68c:	87 0e                	xchg   %ecx,(%rsi)
    a68e:	85 c9                	test   %ecx,%ecx
    a690:	0f 84 96 fe ff ff    	je     a52c <dlfree+0x4c>
    a696:	bf 01 00 00 00       	mov    $0x1,%edi
    a69b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    a6a0:	8b 8b 74 03 00 00    	mov    0x374(%rbx),%ecx
    a6a6:	85 c9                	test   %ecx,%ecx
    a6a8:	75 f6                	jne    a6a0 <dlfree+0x1c0>
    a6aa:	89 f9                	mov    %edi,%ecx
    a6ac:	87 0e                	xchg   %ecx,(%rsi)
    a6ae:	85 c9                	test   %ecx,%ecx
    a6b0:	75 ee                	jne    a6a0 <dlfree+0x1c0>
    a6b2:	e9 75 fe ff ff       	jmp    a52c <dlfree+0x4c>
    a6b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    a6be:	00 00 
    a6c0:	e8 7b 28 00 00       	call   cf40 <abort>
    a6c5:	0f 1f 00             	nopl   (%rax)
    a6c8:	c3                   	ret
    a6c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    a6d0:	4c 8b 5b 20          	mov    0x20(%rbx),%r11
    a6d4:	48 39 7b 28          	cmp    %rdi,0x28(%rbx)
    a6d8:	0f 84 72 05 00 00    	je     ac50 <dlfree+0x770>
    a6de:	49 39 fb             	cmp    %rdi,%r11
    a6e1:	0f 84 91 06 00 00    	je     ad78 <dlfree+0x898>
    a6e7:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    a6eb:	48 89 c1             	mov    %rax,%rcx
    a6ee:	48 01 c6             	add    %rax,%rsi
    a6f1:	48 c1 e9 03          	shr    $0x3,%rcx
    a6f5:	48 3d f8 00 00 00    	cmp    $0xf8,%rax
    a6fb:	0f 87 67 02 00 00    	ja     a968 <dlfree+0x488>
    a701:	44 8d 54 09 09       	lea    0x9(%rcx,%rcx,1),%r10d
    a706:	48 8b 47 10          	mov    0x10(%rdi),%rax
    a70a:	4c 8b 47 18          	mov    0x18(%rdi),%r8
    a70e:	4e 8d 14 d3          	lea    (%rbx,%r10,8),%r10
    a712:	49 39 c2             	cmp    %rax,%r10
    a715:	0f 85 73 04 00 00    	jne    ab8e <dlfree+0x6ae>
    a71b:	4c 39 c0             	cmp    %r8,%rax
    a71e:	0f 84 7c 06 00 00    	je     ada0 <dlfree+0x8c0>
    a724:	4d 39 c8             	cmp    %r9,%r8
    a727:	72 7f                	jb     a7a8 <dlfree+0x2c8>
    a729:	49 39 78 10          	cmp    %rdi,0x10(%r8)
    a72d:	75 79                	jne    a7a8 <dlfree+0x2c8>
    a72f:	4c 89 40 18          	mov    %r8,0x18(%rax)
    a733:	49 89 40 10          	mov    %rax,0x10(%r8)
    a737:	48 89 f0             	mov    %rsi,%rax
    a73a:	48 83 c8 01          	or     $0x1,%rax
    a73e:	48 89 42 08          	mov    %rax,0x8(%rdx)
    a742:	48 89 34 32          	mov    %rsi,(%rdx,%rsi,1)
    a746:	4c 39 da             	cmp    %r11,%rdx
    a749:	0f 85 47 fe ff ff    	jne    a596 <dlfree+0xb6>
    a74f:	48 89 73 08          	mov    %rsi,0x8(%rbx)
    a753:	e9 88 fe ff ff       	jmp    a5e0 <dlfree+0x100>
    a758:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    a75f:	00 
    a760:	c7 83 74 03 00 00 00 	movl   $0x0,0x374(%rbx)
    a767:	00 00 00 
    a76a:	48 83 c4 08          	add    $0x8,%rsp
    a76e:	5b                   	pop    %rbx
    a76f:	5d                   	pop    %rbp
    a770:	41 5c                	pop    %r12
    a772:	41 5d                	pop    %r13
    a774:	c3                   	ret
    a775:	0f 1f 00             	nopl   (%rax)
    a778:	48 89 f0             	mov    %rsi,%rax
    a77b:	48 c1 e8 08          	shr    $0x8,%rax
    a77f:	89 c1                	mov    %eax,%ecx
    a781:	85 c0                	test   %eax,%eax
    a783:	74 2b                	je     a7b0 <dlfree+0x2d0>
    a785:	3d ff ff 00 00       	cmp    $0xffff,%eax
    a78a:	0f 86 a0 02 00 00    	jbe    aa30 <dlfree+0x550>
    a790:	b8 00 00 00 80       	mov    $0x80000000,%eax
    a795:	bf 50 03 00 00       	mov    $0x350,%edi
    a79a:	b9 1f 00 00 00       	mov    $0x1f,%ecx
    a79f:	eb 19                	jmp    a7ba <dlfree+0x2da>
    a7a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    a7a8:	e8 93 27 00 00       	call   cf40 <abort>
    a7ad:	0f 1f 00             	nopl   (%rax)
    a7b0:	b8 01 00 00 00       	mov    $0x1,%eax
    a7b5:	bf 58 02 00 00       	mov    $0x258,%edi
    a7ba:	44 8b 43 04          	mov    0x4(%rbx),%r8d
    a7be:	66 48 0f 6e ca       	movq   %rdx,%xmm1
    a7c3:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a7c7:	89 4a 38             	mov    %ecx,0x38(%rdx)
    a7ca:	66 0f 6c c9          	punpcklqdq %xmm1,%xmm1
    a7ce:	0f 11 42 20          	movups %xmm0,0x20(%rdx)
    a7d2:	44 85 c0             	test   %r8d,%eax
    a7d5:	0f 84 2d 04 00 00    	je     ac08 <dlfree+0x728>
    a7db:	89 c8                	mov    %ecx,%eax
    a7dd:	49 89 f0             	mov    %rsi,%r8
    a7e0:	48 8b bc c3 58 02 00 	mov    0x258(%rbx,%rax,8),%rdi
    a7e7:	00 
    a7e8:	83 f9 1f             	cmp    $0x1f,%ecx
    a7eb:	74 31                	je     a81e <dlfree+0x33e>
    a7ed:	89 c8                	mov    %ecx,%eax
    a7ef:	b9 39 00 00 00       	mov    $0x39,%ecx
    a7f4:	d1 e8                	shr    $1,%eax
    a7f6:	29 c1                	sub    %eax,%ecx
    a7f8:	49 d3 e0             	shl    %cl,%r8
    a7fb:	eb 21                	jmp    a81e <dlfree+0x33e>
    a7fd:	0f 1f 00             	nopl   (%rax)
    a800:	4c 89 c0             	mov    %r8,%rax
    a803:	4d 01 c0             	add    %r8,%r8
    a806:	48 c1 e8 3f          	shr    $0x3f,%rax
    a80a:	48 83 c0 04          	add    $0x4,%rax
    a80e:	48 8b 0c c7          	mov    (%rdi,%rax,8),%rcx
    a812:	48 85 c9             	test   %rcx,%rcx
    a815:	0f 84 15 04 00 00    	je     ac30 <dlfree+0x750>
    a81b:	48 89 cf             	mov    %rcx,%rdi
    a81e:	48 8b 47 08          	mov    0x8(%rdi),%rax
    a822:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    a826:	48 39 f0             	cmp    %rsi,%rax
    a829:	75 d5                	jne    a800 <dlfree+0x320>
    a82b:	48 8b 47 10          	mov    0x10(%rdi),%rax
    a82f:	66 48 0f 6e d7       	movq   %rdi,%xmm2
    a834:	66 48 0f 6e c0       	movq   %rax,%xmm0
    a839:	66 0f 6c c2          	punpcklqdq %xmm2,%xmm0
    a83d:	4c 39 cf             	cmp    %r9,%rdi
    a840:	0f 82 62 ff ff ff    	jb     a7a8 <dlfree+0x2c8>
    a846:	4c 39 c8             	cmp    %r9,%rax
    a849:	0f 82 59 ff ff ff    	jb     a7a8 <dlfree+0x2c8>
    a84f:	48 89 50 18          	mov    %rdx,0x18(%rax)
    a853:	48 89 57 10          	mov    %rdx,0x10(%rdi)
    a857:	48 c7 42 30 00 00 00 	movq   $0x0,0x30(%rdx)
    a85e:	00 
    a85f:	0f 11 42 10          	movups %xmm0,0x10(%rdx)
    a863:	48 83 6b 38 01       	subq   $0x1,0x38(%rbx)
    a868:	0f 85 72 fd ff ff    	jne    a5e0 <dlfree+0x100>
    a86e:	48 8b 83 88 03 00 00 	mov    0x388(%rbx),%rax
    a875:	48 85 c0             	test   %rax,%rax
    a878:	74 0f                	je     a889 <dlfree+0x3a9>
    a87a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    a880:	48 8b 40 10          	mov    0x10(%rax),%rax
    a884:	48 85 c0             	test   %rax,%rax
    a887:	75 f7                	jne    a880 <dlfree+0x3a0>
    a889:	48 c7 43 38 ff ff ff 	movq   $0xffffffffffffffff,0x38(%rbx)
    a890:	ff 
    a891:	e9 4a fd ff ff       	jmp    a5e0 <dlfree+0x100>
    a896:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    a89d:	00 00 00 
    a8a0:	4c 8b 42 18          	mov    0x18(%rdx),%r8
    a8a4:	4c 8b 5a 30          	mov    0x30(%rdx),%r11
    a8a8:	49 39 d0             	cmp    %rdx,%r8
    a8ab:	0f 84 bf 01 00 00    	je     aa70 <dlfree+0x590>
    a8b1:	48 8b 42 10          	mov    0x10(%rdx),%rax
    a8b5:	4c 39 c8             	cmp    %r9,%rax
    a8b8:	0f 82 ea fe ff ff    	jb     a7a8 <dlfree+0x2c8>
    a8be:	48 39 50 18          	cmp    %rdx,0x18(%rax)
    a8c2:	0f 85 e0 fe ff ff    	jne    a7a8 <dlfree+0x2c8>
    a8c8:	49 39 50 10          	cmp    %rdx,0x10(%r8)
    a8cc:	0f 85 d6 fe ff ff    	jne    a7a8 <dlfree+0x2c8>
    a8d2:	4c 89 40 18          	mov    %r8,0x18(%rax)
    a8d6:	49 89 40 10          	mov    %rax,0x10(%r8)
    a8da:	4d 85 db             	test   %r11,%r11
    a8dd:	0f 84 7f fc ff ff    	je     a562 <dlfree+0x82>
    a8e3:	8b 42 38             	mov    0x38(%rdx),%eax
    a8e6:	48 89 c1             	mov    %rax,%rcx
    a8e9:	4c 8d 50 4a          	lea    0x4a(%rax),%r10
    a8ed:	48 39 94 c3 58 02 00 	cmp    %rdx,0x258(%rbx,%rax,8)
    a8f4:	00 
    a8f5:	0f 84 c8 04 00 00    	je     adc3 <dlfree+0x8e3>
    a8fb:	4d 39 cb             	cmp    %r9,%r11
    a8fe:	0f 82 a4 fe ff ff    	jb     a7a8 <dlfree+0x2c8>
    a904:	49 39 53 20          	cmp    %rdx,0x20(%r11)
    a908:	0f 84 4a 05 00 00    	je     ae58 <dlfree+0x978>
    a90e:	4d 89 43 28          	mov    %r8,0x28(%r11)
    a912:	4d 85 c0             	test   %r8,%r8
    a915:	0f 84 47 fc ff ff    	je     a562 <dlfree+0x82>
    a91b:	4d 39 c8             	cmp    %r9,%r8
    a91e:	0f 82 84 fe ff ff    	jb     a7a8 <dlfree+0x2c8>
    a924:	48 8b 42 20          	mov    0x20(%rdx),%rax
    a928:	4d 89 58 30          	mov    %r11,0x30(%r8)
    a92c:	48 85 c0             	test   %rax,%rax
    a92f:	74 11                	je     a942 <dlfree+0x462>
    a931:	4c 39 c8             	cmp    %r9,%rax
    a934:	0f 82 6e fe ff ff    	jb     a7a8 <dlfree+0x2c8>
    a93a:	49 89 40 20          	mov    %rax,0x20(%r8)
    a93e:	4c 89 40 30          	mov    %r8,0x30(%rax)
    a942:	48 8b 42 28          	mov    0x28(%rdx),%rax
    a946:	48 85 c0             	test   %rax,%rax
    a949:	0f 84 13 fc ff ff    	je     a562 <dlfree+0x82>
    a94f:	4c 39 c8             	cmp    %r9,%rax
    a952:	0f 82 50 fe ff ff    	jb     a7a8 <dlfree+0x2c8>
    a958:	49 89 40 28          	mov    %rax,0x28(%r8)
    a95c:	4c 89 40 30          	mov    %r8,0x30(%rax)
    a960:	e9 fd fb ff ff       	jmp    a562 <dlfree+0x82>
    a965:	0f 1f 00             	nopl   (%rax)
    a968:	4c 8b 47 18          	mov    0x18(%rdi),%r8
    a96c:	48 8b 6f 30          	mov    0x30(%rdi),%rbp
    a970:	49 39 f8             	cmp    %rdi,%r8
    a973:	0f 84 7f 01 00 00    	je     aaf8 <dlfree+0x618>
    a979:	48 8b 47 10          	mov    0x10(%rdi),%rax
    a97d:	4c 39 c8             	cmp    %r9,%rax
    a980:	0f 82 22 fe ff ff    	jb     a7a8 <dlfree+0x2c8>
    a986:	48 39 78 18          	cmp    %rdi,0x18(%rax)
    a98a:	0f 85 18 fe ff ff    	jne    a7a8 <dlfree+0x2c8>
    a990:	49 39 78 10          	cmp    %rdi,0x10(%r8)
    a994:	0f 85 0e fe ff ff    	jne    a7a8 <dlfree+0x2c8>
    a99a:	4c 89 40 18          	mov    %r8,0x18(%rax)
    a99e:	49 89 40 10          	mov    %rax,0x10(%r8)
    a9a2:	48 85 ed             	test   %rbp,%rbp
    a9a5:	0f 84 8c fd ff ff    	je     a737 <dlfree+0x257>
    a9ab:	8b 47 38             	mov    0x38(%rdi),%eax
    a9ae:	48 89 c1             	mov    %rax,%rcx
    a9b1:	4c 8d 50 4a          	lea    0x4a(%rax),%r10
    a9b5:	48 39 bc c3 58 02 00 	cmp    %rdi,0x258(%rbx,%rax,8)
    a9bc:	00 
    a9bd:	0f 84 1d 04 00 00    	je     ade0 <dlfree+0x900>
    a9c3:	4c 39 cd             	cmp    %r9,%rbp
    a9c6:	0f 82 dc fd ff ff    	jb     a7a8 <dlfree+0x2c8>
    a9cc:	48 39 7d 20          	cmp    %rdi,0x20(%rbp)
    a9d0:	0f 84 8b 04 00 00    	je     ae61 <dlfree+0x981>
    a9d6:	4c 89 45 28          	mov    %r8,0x28(%rbp)
    a9da:	4d 85 c0             	test   %r8,%r8
    a9dd:	0f 84 54 fd ff ff    	je     a737 <dlfree+0x257>
    a9e3:	4d 39 c8             	cmp    %r9,%r8
    a9e6:	0f 82 bc fd ff ff    	jb     a7a8 <dlfree+0x2c8>
    a9ec:	48 8b 47 20          	mov    0x20(%rdi),%rax
    a9f0:	49 89 68 30          	mov    %rbp,0x30(%r8)
    a9f4:	48 85 c0             	test   %rax,%rax
    a9f7:	74 11                	je     aa0a <dlfree+0x52a>
    a9f9:	4c 39 c8             	cmp    %r9,%rax
    a9fc:	0f 82 a6 fd ff ff    	jb     a7a8 <dlfree+0x2c8>
    aa02:	49 89 40 20          	mov    %rax,0x20(%r8)
    aa06:	4c 89 40 30          	mov    %r8,0x30(%rax)
    aa0a:	48 8b 47 28          	mov    0x28(%rdi),%rax
    aa0e:	48 85 c0             	test   %rax,%rax
    aa11:	0f 84 20 fd ff ff    	je     a737 <dlfree+0x257>
    aa17:	4c 39 c8             	cmp    %r9,%rax
    aa1a:	0f 82 88 fd ff ff    	jb     a7a8 <dlfree+0x2c8>
    aa20:	49 89 40 28          	mov    %rax,0x28(%r8)
    aa24:	4c 89 40 30          	mov    %r8,0x30(%rax)
    aa28:	e9 0a fd ff ff       	jmp    a737 <dlfree+0x257>
    aa2d:	0f 1f 00             	nopl   (%rax)
    aa30:	0f bd c1             	bsr    %ecx,%eax
    aa33:	b9 26 00 00 00       	mov    $0x26,%ecx
    aa38:	48 89 f7             	mov    %rsi,%rdi
    aa3b:	83 f0 1f             	xor    $0x1f,%eax
    aa3e:	29 c1                	sub    %eax,%ecx
    aa40:	48 d3 ef             	shr    %cl,%rdi
    aa43:	48 89 f9             	mov    %rdi,%rcx
    aa46:	bf 1f 00 00 00       	mov    $0x1f,%edi
    aa4b:	29 c7                	sub    %eax,%edi
    aa4d:	83 e1 01             	and    $0x1,%ecx
    aa50:	b8 01 00 00 00       	mov    $0x1,%eax
    aa55:	8d 0c 79             	lea    (%rcx,%rdi,2),%ecx
    aa58:	8d 79 4b             	lea    0x4b(%rcx),%edi
    aa5b:	d3 e0                	shl    %cl,%eax
    aa5d:	48 c1 e7 03          	shl    $0x3,%rdi
    aa61:	e9 54 fd ff ff       	jmp    a7ba <dlfree+0x2da>
    aa66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    aa6d:	00 00 00 
    aa70:	48 8b 42 28          	mov    0x28(%rdx),%rax
    aa74:	48 8d 4a 28          	lea    0x28(%rdx),%rcx
    aa78:	48 85 c0             	test   %rax,%rax
    aa7b:	0f 84 af 03 00 00    	je     ae30 <dlfree+0x950>
    aa81:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    aa88:	49 89 ca             	mov    %rcx,%r10
    aa8b:	49 89 c0             	mov    %rax,%r8
    aa8e:	48 8d 48 28          	lea    0x28(%rax),%rcx
    aa92:	48 8b 40 28          	mov    0x28(%rax),%rax
    aa96:	48 85 c0             	test   %rax,%rax
    aa99:	75 ed                	jne    aa88 <dlfree+0x5a8>
    aa9b:	49 8b 40 20          	mov    0x20(%r8),%rax
    aa9f:	49 8d 48 20          	lea    0x20(%r8),%rcx
    aaa3:	48 85 c0             	test   %rax,%rax
    aaa6:	75 e0                	jne    aa88 <dlfree+0x5a8>
    aaa8:	4d 39 ca             	cmp    %r9,%r10
    aaab:	0f 82 f7 fc ff ff    	jb     a7a8 <dlfree+0x2c8>
    aab1:	49 c7 02 00 00 00 00 	movq   $0x0,(%r10)
    aab8:	4d 85 db             	test   %r11,%r11
    aabb:	0f 84 a1 fa ff ff    	je     a562 <dlfree+0x82>
    aac1:	8b 42 38             	mov    0x38(%rdx),%eax
    aac4:	48 8d 48 4a          	lea    0x4a(%rax),%rcx
    aac8:	48 39 94 c3 58 02 00 	cmp    %rdx,0x258(%rbx,%rax,8)
    aacf:	00 
    aad0:	0f 84 a2 03 00 00    	je     ae78 <dlfree+0x998>
    aad6:	4d 39 cb             	cmp    %r9,%r11
    aad9:	0f 82 c9 fc ff ff    	jb     a7a8 <dlfree+0x2c8>
    aadf:	49 39 53 20          	cmp    %rdx,0x20(%r11)
    aae3:	0f 84 ac 03 00 00    	je     ae95 <dlfree+0x9b5>
    aae9:	4d 89 43 28          	mov    %r8,0x28(%r11)
    aaed:	e9 29 fe ff ff       	jmp    a91b <dlfree+0x43b>
    aaf2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    aaf8:	48 8b 47 28          	mov    0x28(%rdi),%rax
    aafc:	48 8d 4f 28          	lea    0x28(%rdi),%rcx
    ab00:	48 85 c0             	test   %rax,%rax
    ab03:	0f 84 39 03 00 00    	je     ae42 <dlfree+0x962>
    ab09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    ab10:	49 89 ca             	mov    %rcx,%r10
    ab13:	49 89 c0             	mov    %rax,%r8
    ab16:	48 8d 48 28          	lea    0x28(%rax),%rcx
    ab1a:	48 8b 40 28          	mov    0x28(%rax),%rax
    ab1e:	48 85 c0             	test   %rax,%rax
    ab21:	75 ed                	jne    ab10 <dlfree+0x630>
    ab23:	49 8b 40 20          	mov    0x20(%r8),%rax
    ab27:	49 8d 48 20          	lea    0x20(%r8),%rcx
    ab2b:	48 85 c0             	test   %rax,%rax
    ab2e:	75 e0                	jne    ab10 <dlfree+0x630>
    ab30:	4d 39 ca             	cmp    %r9,%r10
    ab33:	0f 82 6f fc ff ff    	jb     a7a8 <dlfree+0x2c8>
    ab39:	49 c7 02 00 00 00 00 	movq   $0x0,(%r10)
    ab40:	48 85 ed             	test   %rbp,%rbp
    ab43:	0f 84 ee fb ff ff    	je     a737 <dlfree+0x257>
    ab49:	8b 47 38             	mov    0x38(%rdi),%eax
    ab4c:	48 8d 48 4a          	lea    0x4a(%rax),%rcx
    ab50:	48 39 bc c3 58 02 00 	cmp    %rdi,0x258(%rbx,%rax,8)
    ab57:	00 
    ab58:	0f 84 24 03 00 00    	je     ae82 <dlfree+0x9a2>
    ab5e:	4c 39 cd             	cmp    %r9,%rbp
    ab61:	0f 82 41 fc ff ff    	jb     a7a8 <dlfree+0x2c8>
    ab67:	48 39 7d 20          	cmp    %rdi,0x20(%rbp)
    ab6b:	0f 84 1b 03 00 00    	je     ae8c <dlfree+0x9ac>
    ab71:	4c 89 45 28          	mov    %r8,0x28(%rbp)
    ab75:	e9 69 fe ff ff       	jmp    a9e3 <dlfree+0x503>
    ab7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    ab80:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    ab85:	d3 c0                	rol    %cl,%eax
    ab87:	21 03                	and    %eax,(%rbx)
    ab89:	e9 d4 f9 ff ff       	jmp    a562 <dlfree+0x82>
    ab8e:	4c 39 c8             	cmp    %r9,%rax
    ab91:	0f 82 11 fc ff ff    	jb     a7a8 <dlfree+0x2c8>
    ab97:	48 39 78 18          	cmp    %rdi,0x18(%rax)
    ab9b:	0f 85 07 fc ff ff    	jne    a7a8 <dlfree+0x2c8>
    aba1:	4c 39 c0             	cmp    %r8,%rax
    aba4:	0f 84 f6 01 00 00    	je     ada0 <dlfree+0x8c0>
    abaa:	4d 39 c2             	cmp    %r8,%r10
    abad:	0f 84 7c fb ff ff    	je     a72f <dlfree+0x24f>
    abb3:	e9 6c fb ff ff       	jmp    a724 <dlfree+0x244>
    abb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    abbf:	00 
    abc0:	48 8b 47 08          	mov    0x8(%rdi),%rax
    abc4:	48 89 c1             	mov    %rax,%rcx
    abc7:	48 f7 d1             	not    %rcx
    abca:	83 e1 03             	and    $0x3,%ecx
    abcd:	0f 85 8f f9 ff ff    	jne    a562 <dlfree+0x82>
    abd3:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    abd7:	48 89 73 08          	mov    %rsi,0x8(%rbx)
    abdb:	48 89 47 08          	mov    %rax,0x8(%rdi)
    abdf:	48 89 f0             	mov    %rsi,%rax
    abe2:	48 83 c8 01          	or     $0x1,%rax
    abe6:	48 89 42 08          	mov    %rax,0x8(%rdx)
    abea:	48 89 37             	mov    %rsi,(%rdi)
    abed:	e9 ee f9 ff ff       	jmp    a5e0 <dlfree+0x100>
    abf2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    abf8:	09 c7                	or     %eax,%edi
    abfa:	48 89 f0             	mov    %rsi,%rax
    abfd:	89 3b                	mov    %edi,(%rbx)
    abff:	e9 cc f9 ff ff       	jmp    a5d0 <dlfree+0xf0>
    ac04:	0f 1f 40 00          	nopl   0x0(%rax)
    ac08:	44 09 c0             	or     %r8d,%eax
    ac0b:	48 01 df             	add    %rbx,%rdi
    ac0e:	89 43 04             	mov    %eax,0x4(%rbx)
    ac11:	48 89 94 cb 58 02 00 	mov    %rdx,0x258(%rbx,%rcx,8)
    ac18:	00 
    ac19:	48 89 7a 30          	mov    %rdi,0x30(%rdx)
    ac1d:	0f 11 4a 10          	movups %xmm1,0x10(%rdx)
    ac21:	e9 3d fc ff ff       	jmp    a863 <dlfree+0x383>
    ac26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    ac2d:	00 00 00 
    ac30:	48 8d 0c c7          	lea    (%rdi,%rax,8),%rcx
    ac34:	4c 39 c9             	cmp    %r9,%rcx
    ac37:	0f 82 6b fb ff ff    	jb     a7a8 <dlfree+0x2c8>
    ac3d:	48 89 14 c7          	mov    %rdx,(%rdi,%rax,8)
    ac41:	48 89 7a 30          	mov    %rdi,0x30(%rdx)
    ac45:	0f 11 4a 10          	movups %xmm1,0x10(%rdx)
    ac49:	e9 15 fc ff ff       	jmp    a863 <dlfree+0x383>
    ac4e:	66 90                	xchg   %ax,%ax
    ac50:	48 03 73 10          	add    0x10(%rbx),%rsi
    ac54:	48 89 53 28          	mov    %rdx,0x28(%rbx)
    ac58:	48 89 f0             	mov    %rsi,%rax
    ac5b:	48 89 73 10          	mov    %rsi,0x10(%rbx)
    ac5f:	48 83 c8 01          	or     $0x1,%rax
    ac63:	48 89 42 08          	mov    %rax,0x8(%rdx)
    ac67:	4c 39 da             	cmp    %r11,%rdx
    ac6a:	0f 84 3e 01 00 00    	je     adae <dlfree+0x8ce>
    ac70:	48 39 73 30          	cmp    %rsi,0x30(%rbx)
    ac74:	0f 83 66 f9 ff ff    	jae    a5e0 <dlfree+0x100>
    ac7a:	48 83 3d 5e 98 01 00 	cmpq   $0x0,0x1985e(%rip)        # 244e0 <mparams>
    ac81:	00 
    ac82:	0f 84 e2 01 00 00    	je     ae6a <dlfree+0x98a>
    ac88:	48 85 d2             	test   %rdx,%rdx
    ac8b:	0f 84 4f f9 ff ff    	je     a5e0 <dlfree+0x100>
    ac91:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
    ac95:	48 83 f9 50          	cmp    $0x50,%rcx
    ac99:	0f 86 a7 00 00 00    	jbe    ad46 <dlfree+0x866>
    ac9f:	48 8b 35 4a 98 01 00 	mov    0x1984a(%rip),%rsi        # 244f0 <mparams+0x10>
    aca6:	48 8d ab 78 03 00 00 	lea    0x378(%rbx),%rbp
    acad:	0f 1f 00             	nopl   (%rax)
    acb0:	48 8b 45 00          	mov    0x0(%rbp),%rax
    acb4:	48 39 c2             	cmp    %rax,%rdx
    acb7:	72 09                	jb     acc2 <dlfree+0x7e2>
    acb9:	48 03 45 08          	add    0x8(%rbp),%rax
    acbd:	48 39 c2             	cmp    %rax,%rdx
    acc0:	72 09                	jb     accb <dlfree+0x7eb>
    acc2:	48 8b 6d 10          	mov    0x10(%rbp),%rbp
    acc6:	48 85 ed             	test   %rbp,%rbp
    acc9:	75 e5                	jne    acb0 <dlfree+0x7d0>
    accb:	f6 45 18 08          	testb  $0x8,0x18(%rbp)
    accf:	75 75                	jne    ad46 <dlfree+0x866>
    acd1:	48 8d 44 31 af       	lea    -0x51(%rcx,%rsi,1),%rax
    acd6:	31 d2                	xor    %edx,%edx
    acd8:	48 f7 f6             	div    %rsi
    acdb:	48 83 e8 01          	sub    $0x1,%rax
    acdf:	48 0f af c6          	imul   %rsi,%rax
    ace3:	49 89 c4             	mov    %rax,%r12
    ace6:	48 b8 fe ff ff ff ff 	movabs $0x7ffffffffffffffe,%rax
    aced:	ff ff 7f 
    acf0:	4c 39 e0             	cmp    %r12,%rax
    acf3:	73 0d                	jae    ad02 <dlfree+0x822>
    acf5:	49 bc 00 00 00 00 00 	movabs $0x8000000000000000,%r12
    acfc:	00 00 80 
    acff:	49 29 f4             	sub    %rsi,%r12
    ad02:	b8 01 00 00 00       	mov    $0x1,%eax
    ad07:	87 05 03 98 01 00    	xchg   %eax,0x19803(%rip)        # 24510 <malloc_global_mutex>
    ad0d:	48 8d 15 fc 97 01 00 	lea    0x197fc(%rip),%rdx        # 24510 <malloc_global_mutex>
    ad14:	b9 01 00 00 00       	mov    $0x1,%ecx
    ad19:	85 c0                	test   %eax,%eax
    ad1b:	75 40                	jne    ad5d <dlfree+0x87d>
    ad1d:	31 ff                	xor    %edi,%edi
    ad1f:	e8 bc d9 ff ff       	call   86e0 <sbrk>
    ad24:	49 89 c5             	mov    %rax,%r13
    ad27:	48 8b 45 08          	mov    0x8(%rbp),%rax
    ad2b:	48 03 45 00          	add    0x0(%rbp),%rax
    ad2f:	49 39 c5             	cmp    %rax,%r13
    ad32:	0f 84 e5 01 00 00    	je     af1d <dlfree+0xa3d>
    ad38:	c7 05 ce 97 01 00 00 	movl   $0x0,0x197ce(%rip)        # 24510 <malloc_global_mutex>
    ad3f:	00 00 00 
    ad42:	48 8b 4b 10          	mov    0x10(%rbx),%rcx
    ad46:	48 39 4b 30          	cmp    %rcx,0x30(%rbx)
    ad4a:	0f 83 90 f8 ff ff    	jae    a5e0 <dlfree+0x100>
    ad50:	48 c7 43 30 ff ff ff 	movq   $0xffffffffffffffff,0x30(%rbx)
    ad57:	ff 
    ad58:	e9 83 f8 ff ff       	jmp    a5e0 <dlfree+0x100>
    ad5d:	8b 02                	mov    (%rdx),%eax
    ad5f:	85 c0                	test   %eax,%eax
    ad61:	75 fa                	jne    ad5d <dlfree+0x87d>
    ad63:	89 c8                	mov    %ecx,%eax
    ad65:	87 05 a5 97 01 00    	xchg   %eax,0x197a5(%rip)        # 24510 <malloc_global_mutex>
    ad6b:	85 c0                	test   %eax,%eax
    ad6d:	75 ee                	jne    ad5d <dlfree+0x87d>
    ad6f:	eb ac                	jmp    ad1d <dlfree+0x83d>
    ad71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    ad78:	48 03 73 08          	add    0x8(%rbx),%rsi
    ad7c:	48 89 53 20          	mov    %rdx,0x20(%rbx)
    ad80:	48 89 f0             	mov    %rsi,%rax
    ad83:	48 89 73 08          	mov    %rsi,0x8(%rbx)
    ad87:	48 83 c8 01          	or     $0x1,%rax
    ad8b:	48 89 42 08          	mov    %rax,0x8(%rdx)
    ad8f:	48 89 34 32          	mov    %rsi,(%rdx,%rsi,1)
    ad93:	e9 48 f8 ff ff       	jmp    a5e0 <dlfree+0x100>
    ad98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    ad9f:	00 
    ada0:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    ada5:	d3 c0                	rol    %cl,%eax
    ada7:	21 03                	and    %eax,(%rbx)
    ada9:	e9 89 f9 ff ff       	jmp    a737 <dlfree+0x257>
    adae:	48 c7 43 20 00 00 00 	movq   $0x0,0x20(%rbx)
    adb5:	00 
    adb6:	48 c7 43 08 00 00 00 	movq   $0x0,0x8(%rbx)
    adbd:	00 
    adbe:	e9 ad fe ff ff       	jmp    ac70 <dlfree+0x790>
    adc3:	4e 89 44 d3 08       	mov    %r8,0x8(%rbx,%r10,8)
    adc8:	4d 85 c0             	test   %r8,%r8
    adcb:	0f 85 4a fb ff ff    	jne    a91b <dlfree+0x43b>
    add1:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    add6:	d3 c0                	rol    %cl,%eax
    add8:	21 43 04             	and    %eax,0x4(%rbx)
    addb:	e9 82 f7 ff ff       	jmp    a562 <dlfree+0x82>
    ade0:	4e 89 44 d3 08       	mov    %r8,0x8(%rbx,%r10,8)
    ade5:	4d 85 c0             	test   %r8,%r8
    ade8:	0f 85 f5 fb ff ff    	jne    a9e3 <dlfree+0x503>
    adee:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
    adf3:	d3 c0                	rol    %cl,%eax
    adf5:	21 43 04             	and    %eax,0x4(%rbx)
    adf8:	e9 3a f9 ff ff       	jmp    a737 <dlfree+0x257>
    adfd:	4c 39 c8             	cmp    %r9,%rax
    ae00:	0f 82 a2 f9 ff ff    	jb     a7a8 <dlfree+0x2c8>
    ae06:	48 39 50 18          	cmp    %rdx,0x18(%rax)
    ae0a:	0f 85 98 f9 ff ff    	jne    a7a8 <dlfree+0x2c8>
    ae10:	4c 39 c0             	cmp    %r8,%rax
    ae13:	0f 84 67 fd ff ff    	je     ab80 <dlfree+0x6a0>
    ae19:	4d 39 c2             	cmp    %r8,%r10
    ae1c:	0f 84 49 f8 ff ff    	je     a66b <dlfree+0x18b>
    ae22:	e9 31 f8 ff ff       	jmp    a658 <dlfree+0x178>
    ae27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    ae2e:	00 00 
    ae30:	48 8b 42 20          	mov    0x20(%rdx),%rax
    ae34:	48 85 c0             	test   %rax,%rax
    ae37:	74 65                	je     ae9e <dlfree+0x9be>
    ae39:	48 8d 4a 20          	lea    0x20(%rdx),%rcx
    ae3d:	e9 46 fc ff ff       	jmp    aa88 <dlfree+0x5a8>
    ae42:	48 8b 47 20          	mov    0x20(%rdi),%rax
    ae46:	48 85 c0             	test   %rax,%rax
    ae49:	0f 84 8f 00 00 00    	je     aede <dlfree+0x9fe>
    ae4f:	48 8d 4f 20          	lea    0x20(%rdi),%rcx
    ae53:	e9 b8 fc ff ff       	jmp    ab10 <dlfree+0x630>
    ae58:	4d 89 43 20          	mov    %r8,0x20(%r11)
    ae5c:	e9 b1 fa ff ff       	jmp    a912 <dlfree+0x432>
    ae61:	4c 89 45 20          	mov    %r8,0x20(%rbp)
    ae65:	e9 70 fb ff ff       	jmp    a9da <dlfree+0x4fa>
    ae6a:	e8 31 da ff ff       	call   88a0 <init_mparams.isra.0>
    ae6f:	48 8b 53 28          	mov    0x28(%rbx),%rdx
    ae73:	e9 10 fe ff ff       	jmp    ac88 <dlfree+0x7a8>
    ae78:	4c 89 44 cb 08       	mov    %r8,0x8(%rbx,%rcx,8)
    ae7d:	e9 99 fa ff ff       	jmp    a91b <dlfree+0x43b>
    ae82:	4c 89 44 cb 08       	mov    %r8,0x8(%rbx,%rcx,8)
    ae87:	e9 57 fb ff ff       	jmp    a9e3 <dlfree+0x503>
    ae8c:	4c 89 45 20          	mov    %r8,0x20(%rbp)
    ae90:	e9 4e fb ff ff       	jmp    a9e3 <dlfree+0x503>
    ae95:	4d 89 43 20          	mov    %r8,0x20(%r11)
    ae99:	e9 7d fa ff ff       	jmp    a91b <dlfree+0x43b>
    ae9e:	4d 85 db             	test   %r11,%r11
    aea1:	0f 84 bb f6 ff ff    	je     a562 <dlfree+0x82>
    aea7:	8b 42 38             	mov    0x38(%rdx),%eax
    aeaa:	48 89 c1             	mov    %rax,%rcx
    aead:	4c 8d 40 4a          	lea    0x4a(%rax),%r8
    aeb1:	48 39 94 c3 58 02 00 	cmp    %rdx,0x258(%rbx,%rax,8)
    aeb8:	00 
    aeb9:	0f 84 fd 00 00 00    	je     afbc <dlfree+0xadc>
    aebf:	4d 39 cb             	cmp    %r9,%r11
    aec2:	0f 82 e0 f8 ff ff    	jb     a7a8 <dlfree+0x2c8>
    aec8:	49 3b 53 20          	cmp    0x20(%r11),%rdx
    aecc:	0f 84 02 01 00 00    	je     afd4 <dlfree+0xaf4>
    aed2:	45 31 c0             	xor    %r8d,%r8d
    aed5:	4d 89 43 28          	mov    %r8,0x28(%r11)
    aed9:	e9 84 f6 ff ff       	jmp    a562 <dlfree+0x82>
    aede:	48 85 ed             	test   %rbp,%rbp
    aee1:	0f 84 50 f8 ff ff    	je     a737 <dlfree+0x257>
    aee7:	8b 47 38             	mov    0x38(%rdi),%eax
    aeea:	48 89 c1             	mov    %rax,%rcx
    aeed:	4c 8d 40 4a          	lea    0x4a(%rax),%r8
    aef1:	48 3b bc c3 58 02 00 	cmp    0x258(%rbx,%rax,8),%rdi
    aef8:	00 
    aef9:	0f 84 b1 00 00 00    	je     afb0 <dlfree+0xad0>
    aeff:	4c 39 cd             	cmp    %r9,%rbp
    af02:	0f 82 a0 f8 ff ff    	jb     a7a8 <dlfree+0x2c8>
    af08:	48 39 7d 20          	cmp    %rdi,0x20(%rbp)
    af0c:	0f 84 b7 00 00 00    	je     afc9 <dlfree+0xae9>
    af12:	31 c0                	xor    %eax,%eax
    af14:	48 89 45 28          	mov    %rax,0x28(%rbp)
    af18:	e9 1a f8 ff ff       	jmp    a737 <dlfree+0x257>
    af1d:	4c 89 e7             	mov    %r12,%rdi
    af20:	48 f7 df             	neg    %rdi
    af23:	e8 b8 d7 ff ff       	call   86e0 <sbrk>
    af28:	31 ff                	xor    %edi,%edi
    af2a:	49 89 c4             	mov    %rax,%r12
    af2d:	e8 ae d7 ff ff       	call   86e0 <sbrk>
    af32:	49 83 c4 01          	add    $0x1,%r12
    af36:	0f 84 fc fd ff ff    	je     ad38 <dlfree+0x858>
    af3c:	4c 39 e8             	cmp    %r13,%rax
    af3f:	0f 83 f3 fd ff ff    	jae    ad38 <dlfree+0x858>
    af45:	49 29 c5             	sub    %rax,%r13
    af48:	c7 05 be 95 01 00 00 	movl   $0x0,0x195be(%rip)        # 24510 <malloc_global_mutex>
    af4f:	00 00 00 
    af52:	48 8b 43 28          	mov    0x28(%rbx),%rax
    af56:	48 8b 53 10          	mov    0x10(%rbx),%rdx
    af5a:	4c 29 6d 08          	sub    %r13,0x8(%rbp)
    af5e:	48 89 c6             	mov    %rax,%rsi
    af61:	4c 29 ea             	sub    %r13,%rdx
    af64:	48 8d 48 10          	lea    0x10(%rax),%rcx
    af68:	4c 29 ab 58 03 00 00 	sub    %r13,0x358(%rbx)
    af6f:	83 e6 0f             	and    $0xf,%esi
    af72:	74 09                	je     af7d <dlfree+0xa9d>
    af74:	48 f7 d9             	neg    %rcx
    af77:	48 89 ce             	mov    %rcx,%rsi
    af7a:	83 e6 0f             	and    $0xf,%esi
    af7d:	48 89 d1             	mov    %rdx,%rcx
    af80:	48 8d 3c 30          	lea    (%rax,%rsi,1),%rdi
    af84:	48 29 f1             	sub    %rsi,%rcx
    af87:	48 89 7b 28          	mov    %rdi,0x28(%rbx)
    af8b:	48 89 4b 10          	mov    %rcx,0x10(%rbx)
    af8f:	48 83 c9 01          	or     $0x1,%rcx
    af93:	48 89 4f 08          	mov    %rcx,0x8(%rdi)
    af97:	48 c7 44 10 08 50 00 	movq   $0x50,0x8(%rax,%rdx,1)
    af9e:	00 00 
    afa0:	48 8b 05 59 95 01 00 	mov    0x19559(%rip),%rax        # 24500 <mparams+0x20>
    afa7:	48 89 43 30          	mov    %rax,0x30(%rbx)
    afab:	e9 30 f6 ff ff       	jmp    a5e0 <dlfree+0x100>
    afb0:	31 ff                	xor    %edi,%edi
    afb2:	4a 89 7c c3 08       	mov    %rdi,0x8(%rbx,%r8,8)
    afb7:	e9 32 fe ff ff       	jmp    adee <dlfree+0x90e>
    afbc:	45 31 db             	xor    %r11d,%r11d
    afbf:	4e 89 5c c3 08       	mov    %r11,0x8(%rbx,%r8,8)
    afc4:	e9 08 fe ff ff       	jmp    add1 <dlfree+0x8f1>
    afc9:	31 c9                	xor    %ecx,%ecx
    afcb:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
    afcf:	e9 63 f7 ff ff       	jmp    a737 <dlfree+0x257>
    afd4:	45 31 d2             	xor    %r10d,%r10d
    afd7:	4d 89 53 20          	mov    %r10,0x20(%r11)
    afdb:	e9 82 f5 ff ff       	jmp    a562 <dlfree+0x82>

000000000000afe0 <__memcpy.part.0>:
    afe0:	48 89 f0             	mov    %rsi,%rax
    afe3:	48 89 f1             	mov    %rsi,%rcx
    afe6:	48 09 f8             	or     %rdi,%rax
    afe9:	a8 07                	test   $0x7,%al
    afeb:	74 43                	je     b030 <__memcpy.part.0+0x50>
    afed:	48 89 f0             	mov    %rsi,%rax
    aff0:	48 31 f8             	xor    %rdi,%rax
    aff3:	a8 07                	test   $0x7,%al
    aff5:	75 0a                	jne    b001 <__memcpy.part.0+0x21>
    aff7:	48 83 fa 07          	cmp    $0x7,%rdx
    affb:	0f 87 87 00 00 00    	ja     b088 <__memcpy.part.0+0xa8>
    b001:	45 31 c9             	xor    %r9d,%r9d
    b004:	45 31 c0             	xor    %r8d,%r8d
    b007:	45 31 d2             	xor    %r10d,%r10d
    b00a:	31 c0                	xor    %eax,%eax
    b00c:	0f 1f 40 00          	nopl   0x0(%rax)
    b010:	0f b6 34 01          	movzbl (%rcx,%rax,1),%esi
    b014:	40 88 34 07          	mov    %sil,(%rdi,%rax,1)
    b018:	48 83 c0 01          	add    $0x1,%rax
    b01c:	48 39 c2             	cmp    %rax,%rdx
    b01f:	75 ef                	jne    b010 <__memcpy.part.0+0x30>
    b021:	48 01 d1             	add    %rdx,%rcx
    b024:	48 01 d7             	add    %rdx,%rdi
    b027:	4c 89 d2             	mov    %r10,%rdx
    b02a:	eb 12                	jmp    b03e <__memcpy.part.0+0x5e>
    b02c:	0f 1f 40 00          	nopl   0x0(%rax)
    b030:	49 89 d0             	mov    %rdx,%r8
    b033:	49 89 d1             	mov    %rdx,%r9
    b036:	49 c1 e8 03          	shr    $0x3,%r8
    b03a:	41 83 e1 07          	and    $0x7,%r9d
    b03e:	48 83 fa 07          	cmp    $0x7,%rdx
    b042:	76 23                	jbe    b067 <__memcpy.part.0+0x87>
    b044:	4a 8d 34 c5 00 00 00 	lea    0x0(,%r8,8),%rsi
    b04b:	00 
    b04c:	31 c0                	xor    %eax,%eax
    b04e:	66 90                	xchg   %ax,%ax
    b050:	48 8b 14 01          	mov    (%rcx,%rax,1),%rdx
    b054:	48 89 14 07          	mov    %rdx,(%rdi,%rax,1)
    b058:	48 83 c0 08          	add    $0x8,%rax
    b05c:	48 39 f0             	cmp    %rsi,%rax
    b05f:	75 ef                	jne    b050 <__memcpy.part.0+0x70>
    b061:	48 01 c1             	add    %rax,%rcx
    b064:	48 01 c7             	add    %rax,%rdi
    b067:	4d 85 c9             	test   %r9,%r9
    b06a:	74 14                	je     b080 <__memcpy.part.0+0xa0>
    b06c:	31 c0                	xor    %eax,%eax
    b06e:	66 90                	xchg   %ax,%ax
    b070:	0f b6 14 01          	movzbl (%rcx,%rax,1),%edx
    b074:	88 14 07             	mov    %dl,(%rdi,%rax,1)
    b077:	48 83 c0 01          	add    $0x1,%rax
    b07b:	49 39 c1             	cmp    %rax,%r9
    b07e:	75 f0                	jne    b070 <__memcpy.part.0+0x90>
    b080:	c3                   	ret
    b081:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    b088:	48 89 f0             	mov    %rsi,%rax
    b08b:	83 e0 07             	and    $0x7,%eax
    b08e:	4c 8d 54 10 f8       	lea    -0x8(%rax,%rdx,1),%r10
    b093:	ba 08 00 00 00       	mov    $0x8,%edx
    b098:	4d 89 d0             	mov    %r10,%r8
    b09b:	4d 89 d1             	mov    %r10,%r9
    b09e:	48 29 c2             	sub    %rax,%rdx
    b0a1:	49 c1 e8 03          	shr    $0x3,%r8
    b0a5:	41 83 e1 07          	and    $0x7,%r9d
    b0a9:	e9 5c ff ff ff       	jmp    b00a <__memcpy.part.0+0x2a>
    b0ae:	66 90                	xchg   %ax,%ax

000000000000b0b0 <memcpy_verw>:
    b0b0:	f3 0f 1e fa          	endbr64
    b0b4:	41 56                	push   %r14
    b0b6:	41 55                	push   %r13
    b0b8:	49 89 fd             	mov    %rdi,%r13
    b0bb:	41 54                	push   %r12
    b0bd:	55                   	push   %rbp
    b0be:	53                   	push   %rbx
    b0bf:	48 85 d2             	test   %rdx,%rdx
    b0c2:	0f 84 8f 00 00 00    	je     b157 <memcpy_verw+0xa7>
    b0c8:	48 89 f3             	mov    %rsi,%rbx
    b0cb:	48 39 f7             	cmp    %rsi,%rdi
    b0ce:	0f 84 83 00 00 00    	je     b157 <memcpy_verw+0xa7>
    b0d4:	49 89 d4             	mov    %rdx,%r12
    b0d7:	48 89 fd             	mov    %rdi,%rbp
    b0da:	48 83 fa 07          	cmp    $0x7,%rdx
    b0de:	77 25                	ja     b105 <memcpy_verw+0x55>
    b0e0:	eb 5b                	jmp    b13d <memcpy_verw+0x8d>
    b0e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    b0e8:	48 89 de             	mov    %rbx,%rsi
    b0eb:	48 89 ef             	mov    %rbp,%rdi
    b0ee:	49 83 ec 01          	sub    $0x1,%r12
    b0f2:	48 83 c3 01          	add    $0x1,%rbx
    b0f6:	e8 05 08 00 00       	call   b900 <__memcpy_verw>
    b0fb:	48 83 c5 01          	add    $0x1,%rbp
    b0ff:	49 83 fc 07          	cmp    $0x7,%r12
    b103:	76 33                	jbe    b138 <memcpy_verw+0x88>
    b105:	48 89 e8             	mov    %rbp,%rax
    b108:	48 09 d8             	or     %rbx,%rax
    b10b:	a8 07                	test   $0x7,%al
    b10d:	75 d9                	jne    b0e8 <memcpy_verw+0x38>
    b10f:	4d 89 e3             	mov    %r12,%r11
    b112:	49 83 e3 f8          	and    $0xfffffffffffffff8,%r11
    b116:	48 39 dd             	cmp    %rbx,%rbp
    b119:	74 0e                	je     b129 <memcpy_verw+0x79>
    b11b:	4c 89 da             	mov    %r11,%rdx
    b11e:	48 89 de             	mov    %rbx,%rsi
    b121:	48 89 ef             	mov    %rbp,%rdi
    b124:	e8 b7 fe ff ff       	call   afe0 <__memcpy.part.0>
    b129:	4d 29 dc             	sub    %r11,%r12
    b12c:	4c 01 db             	add    %r11,%rbx
    b12f:	4c 01 dd             	add    %r11,%rbp
    b132:	49 83 fc 07          	cmp    $0x7,%r12
    b136:	77 cd                	ja     b105 <memcpy_verw+0x55>
    b138:	4d 85 e4             	test   %r12,%r12
    b13b:	74 1a                	je     b157 <memcpy_verw+0xa7>
    b13d:	45 31 f6             	xor    %r14d,%r14d
    b140:	4a 8d 34 33          	lea    (%rbx,%r14,1),%rsi
    b144:	4a 8d 7c 35 00       	lea    0x0(%rbp,%r14,1),%rdi
    b149:	49 83 c6 01          	add    $0x1,%r14
    b14d:	e8 ae 07 00 00       	call   b900 <__memcpy_verw>
    b152:	4d 39 e6             	cmp    %r12,%r14
    b155:	72 e9                	jb     b140 <memcpy_verw+0x90>
    b157:	5b                   	pop    %rbx
    b158:	4c 89 e8             	mov    %r13,%rax
    b15b:	5d                   	pop    %rbp
    b15c:	41 5c                	pop    %r12
    b15e:	41 5d                	pop    %r13
    b160:	41 5e                	pop    %r14
    b162:	c3                   	ret
    b163:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    b16a:	00 00 00 
    b16d:	0f 1f 00             	nopl   (%rax)

000000000000b170 <copy_external_memory>:
    b170:	41 57                	push   %r15
    b172:	66 0f ef c0          	pxor   %xmm0,%xmm0
    b176:	41 56                	push   %r14
    b178:	41 55                	push   %r13
    b17a:	41 54                	push   %r12
    b17c:	55                   	push   %rbp
    b17d:	53                   	push   %rbx
    b17e:	48 83 ec 38          	sub    $0x38,%rsp
    b182:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    b189:	00 00 
    b18b:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    b190:	31 c0                	xor    %eax,%eax
    b192:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
    b197:	48 85 d2             	test   %rdx,%rdx
    b19a:	74 2d                	je     b1c9 <copy_external_memory+0x59>
    b19c:	41 89 f6             	mov    %esi,%r14d
    b19f:	49 89 fd             	mov    %rdi,%r13
    b1a2:	48 89 f3             	mov    %rsi,%rbx
    b1a5:	41 89 cc             	mov    %ecx,%r12d
    b1a8:	41 83 e6 07          	and    $0x7,%r14d
    b1ac:	75 52                	jne    b200 <copy_external_memory+0x90>
    b1ae:	48 83 fa 08          	cmp    $0x8,%rdx
    b1b2:	75 4c                	jne    b200 <copy_external_memory+0x90>
    b1b4:	45 84 e4             	test   %r12b,%r12b
    b1b7:	75 37                	jne    b1f0 <copy_external_memory+0x80>
    b1b9:	4c 39 eb             	cmp    %r13,%rbx
    b1bc:	74 0b                	je     b1c9 <copy_external_memory+0x59>
    b1be:	48 89 de             	mov    %rbx,%rsi
    b1c1:	4c 89 ef             	mov    %r13,%rdi
    b1c4:	e8 17 fe ff ff       	call   afe0 <__memcpy.part.0>
    b1c9:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    b1ce:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    b1d5:	00 00 
    b1d7:	75 7f                	jne    b258 <copy_external_memory+0xe8>
    b1d9:	48 83 c4 38          	add    $0x38,%rsp
    b1dd:	5b                   	pop    %rbx
    b1de:	5d                   	pop    %rbp
    b1df:	41 5c                	pop    %r12
    b1e1:	41 5d                	pop    %r13
    b1e3:	41 5e                	pop    %r14
    b1e5:	41 5f                	pop    %r15
    b1e7:	c3                   	ret
    b1e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    b1ef:	00 
    b1f0:	48 89 de             	mov    %rbx,%rsi
    b1f3:	4c 89 ef             	mov    %r13,%rdi
    b1f6:	e8 b5 fe ff ff       	call   b0b0 <memcpy_verw>
    b1fb:	eb cc                	jmp    b1c9 <copy_external_memory+0x59>
    b1fd:	0f 1f 00             	nopl   (%rax)
    b200:	45 89 f7             	mov    %r14d,%r15d
    b203:	48 89 de             	mov    %rbx,%rsi
    b206:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    b20b:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    b210:	4c 29 fe             	sub    %r15,%rsi
    b213:	48 89 ef             	mov    %rbp,%rdi
    b216:	e8 05 07 00 00       	call   b920 <__memcpy_8a>
    b21b:	45 85 f6             	test   %r14d,%r14d
    b21e:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    b223:	74 0a                	je     b22f <copy_external_memory+0xbf>
    b225:	49 8d 04 17          	lea    (%r15,%rdx,1),%rax
    b229:	48 83 f8 08          	cmp    $0x8,%rax
    b22d:	77 11                	ja     b240 <copy_external_memory+0xd0>
    b22f:	4a 8d 5c 3d 00       	lea    0x0(%rbp,%r15,1),%rbx
    b234:	45 84 e4             	test   %r12b,%r12b
    b237:	74 80                	je     b1b9 <copy_external_memory+0x49>
    b239:	eb b5                	jmp    b1f0 <copy_external_memory+0x80>
    b23b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    b240:	4c 29 fb             	sub    %r15,%rbx
    b243:	48 8d 7c 24 18       	lea    0x18(%rsp),%rdi
    b248:	48 8d 73 08          	lea    0x8(%rbx),%rsi
    b24c:	e8 cf 06 00 00       	call   b920 <__memcpy_8a>
    b251:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    b256:	eb d7                	jmp    b22f <copy_external_memory+0xbf>
    b258:	e8 c3 02 00 00       	call   b520 <__stack_chk_fail>
    b25d:	0f 1f 00             	nopl   (%rax)

000000000000b260 <memcpy>:
    b260:	f3 0f 1e fa          	endbr64
    b264:	41 57                	push   %r15
    b266:	41 56                	push   %r14
    b268:	41 55                	push   %r13
    b26a:	49 89 fd             	mov    %rdi,%r13
    b26d:	41 54                	push   %r12
    b26f:	55                   	push   %rbp
    b270:	53                   	push   %rbx
    b271:	48 83 ec 18          	sub    $0x18,%rsp
    b275:	48 85 d2             	test   %rdx,%rdx
    b278:	0f 84 d4 00 00 00    	je     b352 <memcpy+0xf2>
    b27e:	48 89 f3             	mov    %rsi,%rbx
    b281:	48 39 f7             	cmp    %rsi,%rdi
    b284:	0f 84 c8 00 00 00    	je     b352 <memcpy+0xf2>
    b28a:	48 89 d6             	mov    %rdx,%rsi
    b28d:	48 89 df             	mov    %rbx,%rdi
    b290:	48 89 d5             	mov    %rdx,%rbp
    b293:	e8 a8 77 ff ff       	call   2a40 <sgx_is_within_enclave>
    b298:	48 89 ee             	mov    %rbp,%rsi
    b29b:	4c 89 ef             	mov    %r13,%rdi
    b29e:	41 89 c4             	mov    %eax,%r12d
    b2a1:	e8 9a 77 ff ff       	call   2a40 <sgx_is_within_enclave>
    b2a6:	45 85 e4             	test   %r12d,%r12d
    b2a9:	0f 85 b9 00 00 00    	jne    b368 <memcpy+0x108>
    b2af:	85 c0                	test   %eax,%eax
    b2b1:	4d 89 ec             	mov    %r13,%r12
    b2b4:	0f 94 c0             	sete   %al
    b2b7:	0f b6 c0             	movzbl %al,%eax
    b2ba:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    b2be:	48 83 fd 07          	cmp    $0x7,%rbp
    b2c2:	77 38                	ja     b2fc <memcpy+0x9c>
    b2c4:	eb 7a                	jmp    b340 <memcpy+0xe0>
    b2c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    b2cd:	00 00 00 
    b2d0:	41 be 08 00 00 00    	mov    $0x8,%r14d
    b2d6:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
    b2da:	48 89 de             	mov    %rbx,%rsi
    b2dd:	4c 89 e7             	mov    %r12,%rdi
    b2e0:	4d 29 fe             	sub    %r15,%r14
    b2e3:	49 8d 6c 2f f8       	lea    -0x8(%r15,%rbp,1),%rbp
    b2e8:	4c 89 f2             	mov    %r14,%rdx
    b2eb:	4c 01 f3             	add    %r14,%rbx
    b2ee:	4d 01 f4             	add    %r14,%r12
    b2f1:	e8 7a fe ff ff       	call   b170 <copy_external_memory>
    b2f6:	48 83 fd 07          	cmp    $0x7,%rbp
    b2fa:	76 44                	jbe    b340 <memcpy+0xe0>
    b2fc:	48 89 d8             	mov    %rbx,%rax
    b2ff:	4d 89 e7             	mov    %r12,%r15
    b302:	4c 09 e0             	or     %r12,%rax
    b305:	41 83 e7 07          	and    $0x7,%r15d
    b309:	a8 07                	test   $0x7,%al
    b30b:	75 c3                	jne    b2d0 <memcpy+0x70>
    b30d:	49 89 eb             	mov    %rbp,%r11
    b310:	49 83 e3 f8          	and    $0xfffffffffffffff8,%r11
    b314:	4c 39 e3             	cmp    %r12,%rbx
    b317:	74 0e                	je     b327 <memcpy+0xc7>
    b319:	4c 89 da             	mov    %r11,%rdx
    b31c:	48 89 de             	mov    %rbx,%rsi
    b31f:	4c 89 e7             	mov    %r12,%rdi
    b322:	e8 b9 fc ff ff       	call   afe0 <__memcpy.part.0>
    b327:	4c 29 dd             	sub    %r11,%rbp
    b32a:	4c 01 db             	add    %r11,%rbx
    b32d:	4d 01 dc             	add    %r11,%r12
    b330:	48 83 fd 07          	cmp    $0x7,%rbp
    b334:	77 c6                	ja     b2fc <memcpy+0x9c>
    b336:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    b33d:	00 00 00 
    b340:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
    b344:	48 89 ea             	mov    %rbp,%rdx
    b347:	48 89 de             	mov    %rbx,%rsi
    b34a:	4c 89 e7             	mov    %r12,%rdi
    b34d:	e8 1e fe ff ff       	call   b170 <copy_external_memory>
    b352:	48 83 c4 18          	add    $0x18,%rsp
    b356:	4c 89 e8             	mov    %r13,%rax
    b359:	5b                   	pop    %rbx
    b35a:	5d                   	pop    %rbp
    b35b:	41 5c                	pop    %r12
    b35d:	41 5d                	pop    %r13
    b35f:	41 5e                	pop    %r14
    b361:	41 5f                	pop    %r15
    b363:	c3                   	ret
    b364:	0f 1f 40 00          	nopl   0x0(%rax)
    b368:	48 89 ea             	mov    %rbp,%rdx
    b36b:	48 89 de             	mov    %rbx,%rsi
    b36e:	4c 89 ef             	mov    %r13,%rdi
    b371:	85 c0                	test   %eax,%eax
    b373:	75 1b                	jne    b390 <memcpy+0x130>
    b375:	48 83 c4 18          	add    $0x18,%rsp
    b379:	5b                   	pop    %rbx
    b37a:	5d                   	pop    %rbp
    b37b:	41 5c                	pop    %r12
    b37d:	41 5d                	pop    %r13
    b37f:	41 5e                	pop    %r14
    b381:	41 5f                	pop    %r15
    b383:	e9 28 fd ff ff       	jmp    b0b0 <memcpy_verw>
    b388:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    b38f:	00 
    b390:	e8 4b fc ff ff       	call   afe0 <__memcpy.part.0>
    b395:	eb bb                	jmp    b352 <memcpy+0xf2>
    b397:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    b39e:	00 00 

000000000000b3a0 <memset_verw>:
    b3a0:	f3 0f 1e fa          	endbr64
    b3a4:	41 56                	push   %r14
    b3a6:	41 55                	push   %r13
    b3a8:	41 54                	push   %r12
    b3aa:	49 89 fc             	mov    %rdi,%r12
    b3ad:	55                   	push   %rbp
    b3ae:	53                   	push   %rbx
    b3af:	48 83 ec 20          	sub    $0x20,%rsp
    b3b3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    b3ba:	00 00 
    b3bc:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    b3c1:	31 c0                	xor    %eax,%eax
    b3c3:	48 85 d2             	test   %rdx,%rdx
    b3c6:	0f 84 a0 00 00 00    	je     b46c <memset_verw+0xcc>
    b3cc:	48 85 ff             	test   %rdi,%rdi
    b3cf:	0f 84 97 00 00 00    	je     b46c <memset_verw+0xcc>
    b3d5:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
    b3da:	48 89 d5             	mov    %rdx,%rbp
    b3dd:	ba 08 00 00 00       	mov    $0x8,%edx
    b3e2:	4c 89 e3             	mov    %r12,%rbx
    b3e5:	4c 89 ef             	mov    %r13,%rdi
    b3e8:	40 88 74 24 0f       	mov    %sil,0xf(%rsp)
    b3ed:	48 c7 44 24 10 00 00 	movq   $0x0,0x10(%rsp)
    b3f4:	00 00 
    b3f6:	e8 35 05 00 00       	call   b930 <__memset>
    b3fb:	48 83 fd 07          	cmp    $0x7,%rbp
    b3ff:	76 4b                	jbe    b44c <memset_verw+0xac>
    b401:	4c 8d 74 24 0f       	lea    0xf(%rsp),%r14
    b406:	eb 21                	jmp    b429 <memset_verw+0x89>
    b408:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    b40f:	00 
    b410:	48 89 df             	mov    %rbx,%rdi
    b413:	4c 89 ee             	mov    %r13,%rsi
    b416:	48 83 ed 08          	sub    $0x8,%rbp
    b41a:	48 83 c3 08          	add    $0x8,%rbx
    b41e:	e8 fd 04 00 00       	call   b920 <__memcpy_8a>
    b423:	48 83 fd 07          	cmp    $0x7,%rbp
    b427:	76 1e                	jbe    b447 <memset_verw+0xa7>
    b429:	f6 c3 07             	test   $0x7,%bl
    b42c:	74 e2                	je     b410 <memset_verw+0x70>
    b42e:	48 89 df             	mov    %rbx,%rdi
    b431:	4c 89 f6             	mov    %r14,%rsi
    b434:	48 83 ed 01          	sub    $0x1,%rbp
    b438:	48 83 c3 01          	add    $0x1,%rbx
    b43c:	e8 bf 04 00 00       	call   b900 <__memcpy_verw>
    b441:	48 83 fd 07          	cmp    $0x7,%rbp
    b445:	77 e2                	ja     b429 <memset_verw+0x89>
    b447:	48 85 ed             	test   %rbp,%rbp
    b44a:	74 20                	je     b46c <memset_verw+0xcc>
    b44c:	48 01 dd             	add    %rbx,%rbp
    b44f:	4c 8d 6c 24 0f       	lea    0xf(%rsp),%r13
    b454:	0f 1f 40 00          	nopl   0x0(%rax)
    b458:	48 89 df             	mov    %rbx,%rdi
    b45b:	4c 89 ee             	mov    %r13,%rsi
    b45e:	48 83 c3 01          	add    $0x1,%rbx
    b462:	e8 99 04 00 00       	call   b900 <__memcpy_verw>
    b467:	48 39 eb             	cmp    %rbp,%rbx
    b46a:	75 ec                	jne    b458 <memset_verw+0xb8>
    b46c:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    b471:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    b478:	00 00 
    b47a:	75 10                	jne    b48c <memset_verw+0xec>
    b47c:	48 83 c4 20          	add    $0x20,%rsp
    b480:	4c 89 e0             	mov    %r12,%rax
    b483:	5b                   	pop    %rbx
    b484:	5d                   	pop    %rbp
    b485:	41 5c                	pop    %r12
    b487:	41 5d                	pop    %r13
    b489:	41 5e                	pop    %r14
    b48b:	c3                   	ret
    b48c:	e8 8f 00 00 00       	call   b520 <__stack_chk_fail>
    b491:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    b498:	00 00 00 
    b49b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000000b4a0 <memset>:
    b4a0:	f3 0f 1e fa          	endbr64
    b4a4:	e9 87 04 00 00       	jmp    b930 <__memset>
    b4a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000000b4b0 <memset_s>:
    b4b0:	f3 0f 1e fa          	endbr64
    b4b4:	53                   	push   %rbx
    b4b5:	48 85 ff             	test   %rdi,%rdi
    b4b8:	74 3e                	je     b4f8 <memset_s+0x48>
    b4ba:	48 89 f0             	mov    %rsi,%rax
    b4bd:	89 d6                	mov    %edx,%esi
    b4bf:	48 39 c8             	cmp    %rcx,%rax
    b4c2:	73 1c                	jae    b4e0 <memset_s+0x30>
    b4c4:	48 8b 0d 5d 59 00 00 	mov    0x595d(%rip),%rcx        # 10e28 <__memset_vp>
    b4cb:	48 89 c2             	mov    %rax,%rdx
    b4ce:	bb 4b 00 00 00       	mov    $0x4b,%ebx
    b4d3:	ff d1                	call   *%rcx
    b4d5:	e8 16 04 00 00       	call   b8f0 <__errno>
    b4da:	89 18                	mov    %ebx,(%rax)
    b4dc:	89 d8                	mov    %ebx,%eax
    b4de:	5b                   	pop    %rbx
    b4df:	c3                   	ret
    b4e0:	31 db                	xor    %ebx,%ebx
    b4e2:	48 8b 05 3f 59 00 00 	mov    0x593f(%rip),%rax        # 10e28 <__memset_vp>
    b4e9:	48 89 ca             	mov    %rcx,%rdx
    b4ec:	ff d0                	call   *%rax
    b4ee:	89 d8                	mov    %ebx,%eax
    b4f0:	5b                   	pop    %rbx
    b4f1:	c3                   	ret
    b4f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    b4f8:	bb 16 00 00 00       	mov    $0x16,%ebx
    b4fd:	eb d6                	jmp    b4d5 <memset_s+0x25>
    b4ff:	90                   	nop

000000000000b500 <sgx_init_string_lib>:
    b500:	f3 0f 1e fa          	endbr64
    b504:	31 c0                	xor    %eax,%eax
    b506:	c3                   	ret
    b507:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    b50e:	00 00 

000000000000b510 <strlen>:
    b510:	f3 0f 1e fa          	endbr64
    b514:	e9 77 04 00 00       	jmp    b990 <_libc__strlen>
    b519:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000000b520 <__stack_chk_fail>:
    b520:	f3 0f 1e fa          	endbr64
    b524:	50                   	push   %rax
    b525:	58                   	pop    %rax
    b526:	48 83 ec 08          	sub    $0x8,%rsp
    b52a:	e8 11 1a 00 00       	call   cf40 <abort>
    b52f:	90                   	nop

000000000000b530 <sgx_thread_spin_trylock>:
    b530:	f3 0f 1e fa          	endbr64
    b534:	48 85 ff             	test   %rdi,%rdi
    b537:	74 7f                	je     b5b8 <sgx_thread_spin_trylock+0x88>
    b539:	41 54                	push   %r12
    b53b:	be 18 00 00 00       	mov    $0x18,%esi
    b540:	55                   	push   %rbp
    b541:	53                   	push   %rbx
    b542:	48 89 fb             	mov    %rdi,%rbx
    b545:	e8 f6 74 ff ff       	call   2a40 <sgx_is_within_enclave>
    b54a:	85 c0                	test   %eax,%eax
    b54c:	74 42                	je     b590 <sgx_thread_spin_trylock+0x60>
    b54e:	e8 f9 15 00 00       	call   cb4c <get_thread_data>
    b553:	4c 8d 63 08          	lea    0x8(%rbx),%r12
    b557:	4c 89 e7             	mov    %r12,%rdi
    b55a:	48 89 c5             	mov    %rax,%rbp
    b55d:	e8 9e d2 ff ff       	call   8800 <sgx_spin_lock>
    b562:	48 8b 43 10          	mov    0x10(%rbx),%rax
    b566:	48 39 e8             	cmp    %rbp,%rax
    b569:	74 09                	je     b574 <sgx_thread_spin_trylock+0x44>
    b56b:	48 85 c0             	test   %rax,%rax
    b56e:	75 30                	jne    b5a0 <sgx_thread_spin_trylock+0x70>
    b570:	48 89 6b 10          	mov    %rbp,0x10(%rbx)
    b574:	48 83 03 01          	addq   $0x1,(%rbx)
    b578:	4c 89 e7             	mov    %r12,%rdi
    b57b:	e8 10 d3 ff ff       	call   8890 <sgx_spin_unlock>
    b580:	5b                   	pop    %rbx
    b581:	31 c0                	xor    %eax,%eax
    b583:	5d                   	pop    %rbp
    b584:	41 5c                	pop    %r12
    b586:	c3                   	ret
    b587:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    b58e:	00 00 
    b590:	5b                   	pop    %rbx
    b591:	b8 16 00 00 00       	mov    $0x16,%eax
    b596:	5d                   	pop    %rbp
    b597:	41 5c                	pop    %r12
    b599:	c3                   	ret
    b59a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    b5a0:	4c 89 e7             	mov    %r12,%rdi
    b5a3:	e8 e8 d2 ff ff       	call   8890 <sgx_spin_unlock>
    b5a8:	5b                   	pop    %rbx
    b5a9:	b8 10 00 00 00       	mov    $0x10,%eax
    b5ae:	5d                   	pop    %rbp
    b5af:	41 5c                	pop    %r12
    b5b1:	c3                   	ret
    b5b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    b5b8:	b8 16 00 00 00       	mov    $0x16,%eax
    b5bd:	c3                   	ret
    b5be:	66 90                	xchg   %ax,%ax

000000000000b5c0 <sgx_thread_spin_unlock>:
    b5c0:	f3 0f 1e fa          	endbr64
    b5c4:	48 85 ff             	test   %rdi,%rdi
    b5c7:	0f 84 8b 00 00 00    	je     b658 <sgx_thread_spin_unlock+0x98>
    b5cd:	41 54                	push   %r12
    b5cf:	be 18 00 00 00       	mov    $0x18,%esi
    b5d4:	55                   	push   %rbp
    b5d5:	53                   	push   %rbx
    b5d6:	48 89 fb             	mov    %rdi,%rbx
    b5d9:	e8 62 74 ff ff       	call   2a40 <sgx_is_within_enclave>
    b5de:	85 c0                	test   %eax,%eax
    b5e0:	74 56                	je     b638 <sgx_thread_spin_unlock+0x78>
    b5e2:	e8 65 15 00 00       	call   cb4c <get_thread_data>
    b5e7:	4c 8d 63 08          	lea    0x8(%rbx),%r12
    b5eb:	4c 89 e7             	mov    %r12,%rdi
    b5ee:	48 89 c5             	mov    %rax,%rbp
    b5f1:	e8 0a d2 ff ff       	call   8800 <sgx_spin_lock>
    b5f6:	48 8b 43 10          	mov    0x10(%rbx),%rax
    b5fa:	48 85 c0             	test   %rax,%rax
    b5fd:	74 21                	je     b620 <sgx_thread_spin_unlock+0x60>
    b5ff:	48 39 e8             	cmp    %rbp,%rax
    b602:	75 1c                	jne    b620 <sgx_thread_spin_unlock+0x60>
    b604:	48 83 2b 01          	subq   $0x1,(%rbx)
    b608:	74 3e                	je     b648 <sgx_thread_spin_unlock+0x88>
    b60a:	4c 89 e7             	mov    %r12,%rdi
    b60d:	e8 7e d2 ff ff       	call   8890 <sgx_spin_unlock>
    b612:	5b                   	pop    %rbx
    b613:	31 c0                	xor    %eax,%eax
    b615:	5d                   	pop    %rbp
    b616:	41 5c                	pop    %r12
    b618:	c3                   	ret
    b619:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    b620:	4c 89 e7             	mov    %r12,%rdi
    b623:	e8 68 d2 ff ff       	call   8890 <sgx_spin_unlock>
    b628:	5b                   	pop    %rbx
    b629:	b8 01 00 00 00       	mov    $0x1,%eax
    b62e:	5d                   	pop    %rbp
    b62f:	41 5c                	pop    %r12
    b631:	c3                   	ret
    b632:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    b638:	5b                   	pop    %rbx
    b639:	b8 16 00 00 00       	mov    $0x16,%eax
    b63e:	5d                   	pop    %rbp
    b63f:	41 5c                	pop    %r12
    b641:	c3                   	ret
    b642:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    b648:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
    b64f:	00 
    b650:	eb b8                	jmp    b60a <sgx_thread_spin_unlock+0x4a>
    b652:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    b658:	b8 16 00 00 00       	mov    $0x16,%eax
    b65d:	c3                   	ret
    b65e:	66 90                	xchg   %ax,%ax

000000000000b660 <memcpy_s>:
    b660:	f3 0f 1e fa          	endbr64
    b664:	48 85 c9             	test   %rcx,%rcx
    b667:	74 4f                	je     b6b8 <memcpy_s+0x58>
    b669:	53                   	push   %rbx
    b66a:	48 85 ff             	test   %rdi,%rdi
    b66d:	74 51                	je     b6c0 <memcpy_s+0x60>
    b66f:	48 89 d3             	mov    %rdx,%rbx
    b672:	48 85 d2             	test   %rdx,%rdx
    b675:	74 19                	je     b690 <memcpy_s+0x30>
    b677:	48 39 ce             	cmp    %rcx,%rsi
    b67a:	72 14                	jb     b690 <memcpy_s+0x30>
    b67c:	48 89 de             	mov    %rbx,%rsi
    b67f:	48 89 ca             	mov    %rcx,%rdx
    b682:	e8 d9 fb ff ff       	call   b260 <memcpy>
    b687:	31 c0                	xor    %eax,%eax
    b689:	5b                   	pop    %rbx
    b68a:	c3                   	ret
    b68b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    b690:	48 89 f2             	mov    %rsi,%rdx
    b693:	31 f6                	xor    %esi,%esi
    b695:	e8 06 fe ff ff       	call   b4a0 <memset>
    b69a:	48 85 db             	test   %rbx,%rbx
    b69d:	74 21                	je     b6c0 <memcpy_s+0x60>
    b69f:	e8 4c 02 00 00       	call   b8f0 <__errno>
    b6a4:	c7 00 22 00 00 00    	movl   $0x22,(%rax)
    b6aa:	b8 22 00 00 00       	mov    $0x22,%eax
    b6af:	5b                   	pop    %rbx
    b6b0:	c3                   	ret
    b6b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    b6b8:	31 c0                	xor    %eax,%eax
    b6ba:	c3                   	ret
    b6bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    b6c0:	e8 2b 02 00 00       	call   b8f0 <__errno>
    b6c5:	c7 00 16 00 00 00    	movl   $0x16,(%rax)
    b6cb:	b8 16 00 00 00       	mov    $0x16,%eax
    b6d0:	5b                   	pop    %rbx
    b6d1:	c3                   	ret
    b6d2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    b6d9:	00 00 00 
    b6dc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000000b6e0 <memcpy_verw_s>:
    b6e0:	f3 0f 1e fa          	endbr64
    b6e4:	48 85 c9             	test   %rcx,%rcx
    b6e7:	74 4f                	je     b738 <memcpy_verw_s+0x58>
    b6e9:	53                   	push   %rbx
    b6ea:	48 85 ff             	test   %rdi,%rdi
    b6ed:	74 51                	je     b740 <memcpy_verw_s+0x60>
    b6ef:	48 89 d3             	mov    %rdx,%rbx
    b6f2:	48 85 d2             	test   %rdx,%rdx
    b6f5:	74 19                	je     b710 <memcpy_verw_s+0x30>
    b6f7:	48 39 ce             	cmp    %rcx,%rsi
    b6fa:	72 14                	jb     b710 <memcpy_verw_s+0x30>
    b6fc:	48 89 de             	mov    %rbx,%rsi
    b6ff:	48 89 ca             	mov    %rcx,%rdx
    b702:	e8 a9 f9 ff ff       	call   b0b0 <memcpy_verw>
    b707:	31 c0                	xor    %eax,%eax
    b709:	5b                   	pop    %rbx
    b70a:	c3                   	ret
    b70b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    b710:	48 89 f2             	mov    %rsi,%rdx
    b713:	31 f6                	xor    %esi,%esi
    b715:	e8 86 fc ff ff       	call   b3a0 <memset_verw>
    b71a:	48 85 db             	test   %rbx,%rbx
    b71d:	74 21                	je     b740 <memcpy_verw_s+0x60>
    b71f:	e8 cc 01 00 00       	call   b8f0 <__errno>
    b724:	c7 00 22 00 00 00    	movl   $0x22,(%rax)
    b72a:	b8 22 00 00 00       	mov    $0x22,%eax
    b72f:	5b                   	pop    %rbx
    b730:	c3                   	ret
    b731:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    b738:	31 c0                	xor    %eax,%eax
    b73a:	c3                   	ret
    b73b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    b740:	e8 ab 01 00 00       	call   b8f0 <__errno>
    b745:	c7 00 16 00 00 00    	movl   $0x16,(%rax)
    b74b:	b8 16 00 00 00       	mov    $0x16,%eax
    b750:	5b                   	pop    %rbx
    b751:	c3                   	ret

000000000000b752 <_setjmp>:
    b752:	f3 0f 1e fa          	endbr64
    b756:	50                   	push   %rax
    b757:	53                   	push   %rbx
    b758:	51                   	push   %rcx
    b759:	52                   	push   %rdx
    b75a:	56                   	push   %rsi
    b75b:	57                   	push   %rdi
    b75c:	41 50                	push   %r8
    b75e:	41 51                	push   %r9
    b760:	41 52                	push   %r10
    b762:	41 53                	push   %r11
    b764:	41 54                	push   %r12
    b766:	41 55                	push   %r13
    b768:	41 56                	push   %r14
    b76a:	41 57                	push   %r15
    b76c:	48 c7 c6 08 00 00 00 	mov    $0x8,%rsi
    b773:	e8 c8 72 ff ff       	call   2a40 <sgx_is_within_enclave>
    b778:	83 f8 00             	cmp    $0x0,%eax
    b77b:	74 60                	je     b7dd <.crash>
    b77d:	41 5f                	pop    %r15
    b77f:	41 5e                	pop    %r14
    b781:	41 5d                	pop    %r13
    b783:	41 5c                	pop    %r12
    b785:	41 5b                	pop    %r11
    b787:	41 5a                	pop    %r10
    b789:	41 59                	pop    %r9
    b78b:	41 58                	pop    %r8
    b78d:	5f                   	pop    %rdi
    b78e:	5e                   	pop    %rsi
    b78f:	5a                   	pop    %rdx
    b790:	59                   	pop    %rcx
    b791:	5b                   	pop    %rbx
    b792:	58                   	pop    %rax
    b793:	4c 8b 1c 24          	mov    (%rsp),%r11
    b797:	48 89 1f             	mov    %rbx,(%rdi)
    b79a:	48 89 6f 08          	mov    %rbp,0x8(%rdi)
    b79e:	4c 89 67 10          	mov    %r12,0x10(%rdi)
    b7a2:	4c 89 6f 18          	mov    %r13,0x18(%rdi)
    b7a6:	4c 89 77 20          	mov    %r14,0x20(%rdi)
    b7aa:	4c 89 7f 28          	mov    %r15,0x28(%rdi)
    b7ae:	48 89 67 30          	mov    %rsp,0x30(%rdi)
    b7b2:	4c 89 5f 38          	mov    %r11,0x38(%rdi)
    b7b6:	e8 9f 13 00 00       	call   cb5a <get_stack_guard>
    b7bb:	48 31 07             	xor    %rax,(%rdi)
    b7be:	48 31 47 08          	xor    %rax,0x8(%rdi)
    b7c2:	48 31 47 10          	xor    %rax,0x10(%rdi)
    b7c6:	48 31 47 18          	xor    %rax,0x18(%rdi)
    b7ca:	48 31 47 20          	xor    %rax,0x20(%rdi)
    b7ce:	48 31 47 28          	xor    %rax,0x28(%rdi)
    b7d2:	48 31 47 30          	xor    %rax,0x30(%rdi)
    b7d6:	48 31 47 38          	xor    %rax,0x38(%rdi)
    b7da:	31 c0                	xor    %eax,%eax
    b7dc:	c3                   	ret

000000000000b7dd <.crash>:
    b7dd:	0f 0b                	ud2

000000000000b7df <_longjmp>:
    b7df:	f3 0f 1e fa          	endbr64
    b7e3:	50                   	push   %rax
    b7e4:	53                   	push   %rbx
    b7e5:	51                   	push   %rcx
    b7e6:	52                   	push   %rdx
    b7e7:	56                   	push   %rsi
    b7e8:	57                   	push   %rdi
    b7e9:	41 50                	push   %r8
    b7eb:	41 51                	push   %r9
    b7ed:	41 52                	push   %r10
    b7ef:	41 53                	push   %r11
    b7f1:	41 54                	push   %r12
    b7f3:	41 55                	push   %r13
    b7f5:	41 56                	push   %r14
    b7f7:	41 57                	push   %r15
    b7f9:	57                   	push   %rdi
    b7fa:	48 c7 c6 08 00 00 00 	mov    $0x8,%rsi
    b801:	e8 3a 72 ff ff       	call   2a40 <sgx_is_within_enclave>
    b806:	83 f8 00             	cmp    $0x0,%eax
    b809:	74 d2                	je     b7dd <.crash>
    b80b:	5f                   	pop    %rdi
    b80c:	48 8b 57 30          	mov    0x30(%rdi),%rdx
    b810:	e8 45 13 00 00       	call   cb5a <get_stack_guard>
    b815:	48 31 c2             	xor    %rax,%rdx
    b818:	52                   	push   %rdx
    b819:	5f                   	pop    %rdi
    b81a:	e8 11 8a ff ff       	call   4230 <is_valid_sp>
    b81f:	83 f8 00             	cmp    $0x0,%eax
    b822:	74 b9                	je     b7dd <.crash>
    b824:	41 5f                	pop    %r15
    b826:	41 5e                	pop    %r14
    b828:	41 5d                	pop    %r13
    b82a:	41 5c                	pop    %r12
    b82c:	41 5b                	pop    %r11
    b82e:	41 5a                	pop    %r10
    b830:	41 59                	pop    %r9
    b832:	41 58                	pop    %r8
    b834:	5f                   	pop    %rdi
    b835:	5e                   	pop    %rsi
    b836:	5a                   	pop    %rdx
    b837:	59                   	pop    %rcx
    b838:	5b                   	pop    %rbx
    b839:	58                   	pop    %rax
    b83a:	89 f0                	mov    %esi,%eax
    b83c:	48 8b 1f             	mov    (%rdi),%rbx
    b83f:	48 8b 77 08          	mov    0x8(%rdi),%rsi
    b843:	4c 8b 67 10          	mov    0x10(%rdi),%r12
    b847:	4c 8b 6f 18          	mov    0x18(%rdi),%r13
    b84b:	4c 8b 77 20          	mov    0x20(%rdi),%r14
    b84f:	4c 8b 7f 28          	mov    0x28(%rdi),%r15
    b853:	48 8b 57 30          	mov    0x30(%rdi),%rdx
    b857:	48 8b 4f 38          	mov    0x38(%rdi),%rcx
    b85b:	50                   	push   %rax
    b85c:	e8 f9 12 00 00       	call   cb5a <get_stack_guard>
    b861:	48 31 c3             	xor    %rax,%rbx
    b864:	48 31 c6             	xor    %rax,%rsi
    b867:	49 31 c4             	xor    %rax,%r12
    b86a:	49 31 c5             	xor    %rax,%r13
    b86d:	49 31 c6             	xor    %rax,%r14
    b870:	49 31 c7             	xor    %rax,%r15
    b873:	48 31 c2             	xor    %rax,%rdx
    b876:	48 31 c1             	xor    %rax,%rcx
    b879:	58                   	pop    %rax
    b87a:	48 89 f5             	mov    %rsi,%rbp
    b87d:	48 89 0a             	mov    %rcx,(%rdx)
    b880:	48 89 d4             	mov    %rdx,%rsp
    b883:	85 c0                	test   %eax,%eax
    b885:	75 02                	jne    b889 <_longjmp+0xaa>
    b887:	ff c0                	inc    %eax
    b889:	c3                   	ret
    b88a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000b890 <rsrv_mem_init>:
    b890:	f3 0f 1e fa          	endbr64
    b894:	48 85 ff             	test   %rdi,%rdi
    b897:	74 47                	je     b8e0 <rsrv_mem_init+0x50>
    b899:	48 89 f0             	mov    %rsi,%rax
    b89c:	b9 01 00 00 00       	mov    $0x1,%ecx
    b8a1:	48 09 d0             	or     %rdx,%rax
    b8a4:	48 09 f8             	or     %rdi,%rax
    b8a7:	a9 ff 0f 00 00       	test   $0xfff,%eax
    b8ac:	74 0a                	je     b8b8 <rsrv_mem_init+0x28>
    b8ae:	89 c8                	mov    %ecx,%eax
    b8b0:	c3                   	ret
    b8b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    b8b8:	48 89 f0             	mov    %rsi,%rax
    b8bb:	48 03 05 7e 55 00 00 	add    0x557e(%rip),%rax        # 10e40 <rsrv_mem_base>
    b8c2:	72 ea                	jb     b8ae <rsrv_mem_init+0x1e>
    b8c4:	31 c9                	xor    %ecx,%ecx
    b8c6:	48 89 3d 73 55 00 00 	mov    %rdi,0x5573(%rip)        # 10e40 <rsrv_mem_base>
    b8cd:	48 89 35 64 55 00 00 	mov    %rsi,0x5564(%rip)        # 10e38 <rsrv_mem_size>
    b8d4:	89 c8                	mov    %ecx,%eax
    b8d6:	48 89 15 53 55 00 00 	mov    %rdx,0x5553(%rip)        # 10e30 <rsrv_mem_min_size>
    b8dd:	c3                   	ret
    b8de:	66 90                	xchg   %ax,%ax
    b8e0:	b9 01 00 00 00       	mov    $0x1,%ecx
    b8e5:	89 c8                	mov    %ecx,%eax
    b8e7:	c3                   	ret
    b8e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    b8ef:	00 

000000000000b8f0 <__errno>:
    b8f0:	f3 0f 1e fa          	endbr64
    b8f4:	e9 87 88 ff ff       	jmp    4180 <get_errno_addr>
    b8f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000000b900 <__memcpy_verw>:
    b900:	8a 06                	mov    (%rsi),%al
    b902:	48 83 ec 08          	sub    $0x8,%rsp
    b906:	8c 1c 24             	mov    %ds,(%rsp)
    b909:	0f 00 2c 24          	verw   (%rsp)
    b90d:	88 07                	mov    %al,(%rdi)
    b90f:	0f ae f0             	mfence
    b912:	0f ae e8             	lfence
    b915:	48 83 c4 08          	add    $0x8,%rsp
    b919:	48 89 f8             	mov    %rdi,%rax
    b91c:	c3                   	ret
    b91d:	cc                   	int3
    b91e:	cc                   	int3
    b91f:	cc                   	int3

000000000000b920 <__memcpy_8a>:
    b920:	48 8b 06             	mov    (%rsi),%rax
    b923:	48 89 07             	mov    %rax,(%rdi)
    b926:	48 89 f8             	mov    %rdi,%rax
    b929:	c3                   	ret
    b92a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000b930 <__memset>:
    b930:	48 89 f0             	mov    %rsi,%rax
    b933:	48 25 ff 00 00 00    	and    $0xff,%rax
    b939:	48 89 d1             	mov    %rdx,%rcx
    b93c:	49 89 fb             	mov    %rdi,%r11
    b93f:	fc                   	cld
    b940:	48 83 f9 0f          	cmp    $0xf,%rcx
    b944:	7e 38                	jle    b97e <L1>
    b946:	88 c4                	mov    %al,%ah
    b948:	89 c2                	mov    %eax,%edx
    b94a:	c1 e0 10             	shl    $0x10,%eax
    b94d:	09 d0                	or     %edx,%eax
    b94f:	89 c2                	mov    %eax,%edx
    b951:	48 c1 e0 20          	shl    $0x20,%rax
    b955:	48 09 d0             	or     %rdx,%rax
    b958:	48 89 fa             	mov    %rdi,%rdx
    b95b:	48 f7 da             	neg    %rdx
    b95e:	48 83 e2 07          	and    $0x7,%rdx
    b962:	49 89 c8             	mov    %rcx,%r8
    b965:	49 29 d0             	sub    %rdx,%r8
    b968:	48 89 d1             	mov    %rdx,%rcx
    b96b:	f3 aa                	rep stos %al,%es:(%rdi)
    b96d:	4c 89 c1             	mov    %r8,%rcx
    b970:	48 c1 e9 03          	shr    $0x3,%rcx
    b974:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    b977:	4c 89 c1             	mov    %r8,%rcx
    b97a:	48 83 e1 07          	and    $0x7,%rcx

000000000000b97e <L1>:
    b97e:	f3 aa                	rep stos %al,%es:(%rdi)
    b980:	4c 89 d8             	mov    %r11,%rax
    b983:	c3                   	ret
    b984:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    b98b:	00 00 00 
    b98e:	66 90                	xchg   %ax,%ax

000000000000b990 <_libc__strlen>:
    b990:	49 b8 01 01 01 01 01 	movabs $0x101010101010101,%r8
    b997:	01 01 01 
    b99a:	40 f6 c7 07          	test   $0x7,%dil
    b99e:	48 89 f8             	mov    %rdi,%rax
    b9a1:	49 b9 80 80 80 80 80 	movabs $0x8080808080808080,%r9
    b9a8:	80 80 80 
    b9ab:	75 33                	jne    b9e0 <_libc__strlen+0x50>
    b9ad:	0f 1f 00             	nopl   (%rax)
    b9b0:	48 8b 10             	mov    (%rax),%rdx
    b9b3:	48 83 c0 08          	add    $0x8,%rax
    b9b7:	48 89 d1             	mov    %rdx,%rcx
    b9ba:	4c 29 c2             	sub    %r8,%rdx
    b9bd:	48 f7 d1             	not    %rcx
    b9c0:	4c 21 ca             	and    %r9,%rdx
    b9c3:	74 eb                	je     b9b0 <_libc__strlen+0x20>
    b9c5:	48 21 ca             	and    %rcx,%rdx
    b9c8:	74 e6                	je     b9b0 <_libc__strlen+0x20>
    b9ca:	48 29 f8             	sub    %rdi,%rax
    b9cd:	48 0f bc d2          	bsf    %rdx,%rdx
    b9d1:	48 c1 ea 03          	shr    $0x3,%rdx
    b9d5:	48 8d 44 10 f8       	lea    -0x8(%rax,%rdx,1),%rax
    b9da:	c3                   	ret
    b9db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    b9e0:	88 c1                	mov    %al,%cl
    b9e2:	48 c7 c6 01 00 00 00 	mov    $0x1,%rsi
    b9e9:	80 e1 07             	and    $0x7,%cl
    b9ec:	24 f8                	and    $0xf8,%al
    b9ee:	c0 e1 03             	shl    $0x3,%cl
    b9f1:	48 8b 10             	mov    (%rax),%rdx
    b9f4:	48 d3 e6             	shl    %cl,%rsi
    b9f7:	48 ff ce             	dec    %rsi
    b9fa:	48 09 f2             	or     %rsi,%rdx
    b9fd:	eb b4                	jmp    b9b3 <_libc__strlen+0x23>
    b9ff:	90                   	nop

000000000000ba00 <sgx_init_crypto_lib>:
    ba00:	f3 0f 1e fa          	endbr64
    ba04:	e9 07 00 00 00       	jmp    ba10 <init_ipp_cpuid>
    ba09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000000ba10 <init_ipp_cpuid>:
    ba10:	f3 0f 1e fa          	endbr64
    ba14:	48 83 3d d4 55 00 00 	cmpq   $0x0,0x55d4(%rip)        # 10ff0 <ippcpSetCpuFeatures@Base>
    ba1b:	00 
    ba1c:	0f 84 2e 02 00 00    	je     bc50 <init_ipp_cpuid+0x240>
    ba22:	48 89 f8             	mov    %rdi,%rax
    ba25:	ba 02 00 00 00       	mov    $0x2,%edx
    ba2a:	f6 c4 02             	test   $0x2,%ah
    ba2d:	0f 84 1f 02 00 00    	je     bc52 <init_ipp_cpuid+0x242>
    ba33:	48 89 fa             	mov    %rdi,%rdx
    ba36:	48 83 ec 08          	sub    $0x8,%rsp
    ba3a:	48 b9 00 00 00 00 08 	movabs $0x800000000,%rcx
    ba41:	00 00 00 
    ba44:	81 e2 00 08 00 00    	and    $0x800,%edx
    ba4a:	48 83 fa 01          	cmp    $0x1,%rdx
    ba4e:	48 19 ff             	sbb    %rdi,%rdi
    ba51:	48 83 e7 e0          	and    $0xffffffffffffffe0,%rdi
    ba55:	48 83 c7 7f          	add    $0x7f,%rdi
    ba59:	48 89 fa             	mov    %rdi,%rdx
    ba5c:	80 ca 80             	or     $0x80,%dl
    ba5f:	f6 c4 04             	test   $0x4,%ah
    ba62:	48 0f 45 fa          	cmovne %rdx,%rdi
    ba66:	48 89 fa             	mov    %rdi,%rdx
    ba69:	80 ce 03             	or     $0x3,%dh
    ba6c:	a9 00 00 01 00       	test   $0x10000,%eax
    ba71:	48 0f 45 fa          	cmovne %rdx,%rdi
    ba75:	48 89 fa             	mov    %rdi,%rdx
    ba78:	80 ce 04             	or     $0x4,%dh
    ba7b:	f6 c4 40             	test   $0x40,%ah
    ba7e:	48 0f 45 fa          	cmovne %rdx,%rdi
    ba82:	48 89 fa             	mov    %rdi,%rdx
    ba85:	80 ce 08             	or     $0x8,%dh
    ba88:	f6 c4 20             	test   $0x20,%ah
    ba8b:	48 0f 45 fa          	cmovne %rdx,%rdi
    ba8f:	48 89 fa             	mov    %rdi,%rdx
    ba92:	80 ce 20             	or     $0x20,%dh
    ba95:	a9 00 00 02 00       	test   $0x20000,%eax
    ba9a:	48 0f 45 fa          	cmovne %rdx,%rdi
    ba9e:	48 89 fa             	mov    %rdi,%rdx
    baa1:	80 ce 40             	or     $0x40,%dh
    baa4:	f6 c4 80             	test   $0x80,%ah
    baa7:	48 0f 45 fa          	cmovne %rdx,%rdi
    baab:	48 89 fa             	mov    %rdi,%rdx
    baae:	80 ce 80             	or     $0x80,%dh
    bab1:	a9 00 00 80 00       	test   $0x800000,%eax
    bab6:	48 0f 45 fa          	cmovne %rdx,%rdi
    baba:	48 89 fa             	mov    %rdi,%rdx
    babd:	48 81 ca 00 00 01 00 	or     $0x10000,%rdx
    bac4:	a9 00 00 00 10       	test   $0x10000000,%eax
    bac9:	48 0f 45 fa          	cmovne %rdx,%rdi
    bacd:	48 89 fa             	mov    %rdi,%rdx
    bad0:	48 81 ca 00 00 02 00 	or     $0x20000,%rdx
    bad7:	a9 00 00 00 20       	test   $0x20000000,%eax
    badc:	48 0f 45 fa          	cmovne %rdx,%rdi
    bae0:	48 89 fa             	mov    %rdi,%rdx
    bae3:	48 81 ca 00 00 08 00 	or     $0x80000,%rdx
    baea:	48 85 c8             	test   %rcx,%rax
    baed:	48 0f 45 fa          	cmovne %rdx,%rdi
    baf1:	a9 00 00 00 08       	test   $0x8000000,%eax
    baf6:	74 0d                	je     bb05 <init_ipp_cpuid+0xf5>
    baf8:	48 ba 00 00 10 00 02 	movabs $0x200100000,%rdx
    baff:	00 00 00 
    bb02:	48 09 d7             	or     %rdx,%rdi
    bb05:	48 b9 00 00 00 00 02 	movabs $0x200000000,%rcx
    bb0c:	00 00 00 
    bb0f:	48 89 fa             	mov    %rdi,%rdx
    bb12:	48 81 ca 00 00 80 00 	or     $0x800000,%rdx
    bb19:	48 85 c8             	test   %rcx,%rax
    bb1c:	48 b9 00 00 00 00 01 	movabs $0x100000000,%rcx
    bb23:	00 00 00 
    bb26:	48 0f 45 fa          	cmovne %rdx,%rdi
    bb2a:	48 89 fa             	mov    %rdi,%rdx
    bb2d:	48 81 ca 00 00 40 00 	or     $0x400000,%rdx
    bb34:	48 85 c8             	test   %rcx,%rax
    bb37:	48 b9 00 00 00 00 04 	movabs $0x400000000,%rcx
    bb3e:	00 00 00 
    bb41:	48 0f 45 fa          	cmovne %rdx,%rdi
    bb45:	48 89 fa             	mov    %rdi,%rdx
    bb48:	48 81 ca 00 00 20 00 	or     $0x200000,%rdx
    bb4f:	48 85 c8             	test   %rcx,%rax
    bb52:	48 b9 00 00 00 00 20 	movabs $0x2000000000,%rcx
    bb59:	00 00 00 
    bb5c:	48 0f 45 fa          	cmovne %rdx,%rdi
    bb60:	48 89 fa             	mov    %rdi,%rdx
    bb63:	48 81 ca 00 00 00 02 	or     $0x2000000,%rdx
    bb6a:	a9 00 00 00 01       	test   $0x1000000,%eax
    bb6f:	48 0f 45 fa          	cmovne %rdx,%rdi
    bb73:	48 89 fa             	mov    %rdi,%rdx
    bb76:	48 81 ca 00 00 00 01 	or     $0x1000000,%rdx
    bb7d:	48 85 c8             	test   %rcx,%rax
    bb80:	48 b9 00 00 00 00 40 	movabs $0x4000000000,%rcx
    bb87:	00 00 00 
    bb8a:	48 0f 45 fa          	cmovne %rdx,%rdi
    bb8e:	48 89 fa             	mov    %rdi,%rdx
    bb91:	48 81 ca 00 00 00 04 	or     $0x4000000,%rdx
    bb98:	48 85 c8             	test   %rcx,%rax
    bb9b:	48 b9 00 00 00 00 80 	movabs $0x8000000000,%rcx
    bba2:	00 00 00 
    bba5:	48 0f 45 fa          	cmovne %rdx,%rdi
    bba9:	48 89 fa             	mov    %rdi,%rdx
    bbac:	48 81 ca 00 00 00 08 	or     $0x8000000,%rdx
    bbb3:	48 85 c8             	test   %rcx,%rax
    bbb6:	48 b9 00 00 00 00 00 	movabs $0x20000000000,%rcx
    bbbd:	02 00 00 
    bbc0:	48 0f 45 fa          	cmovne %rdx,%rdi
    bbc4:	48 89 fa             	mov    %rdi,%rdx
    bbc7:	48 81 ca 00 00 00 40 	or     $0x40000000,%rdx
    bbce:	48 85 c8             	test   %rcx,%rax
    bbd1:	48 b9 00 00 00 00 00 	movabs $0x10000000000,%rcx
    bbd8:	01 00 00 
    bbdb:	48 0f 45 fa          	cmovne %rdx,%rdi
    bbdf:	48 89 fa             	mov    %rdi,%rdx
    bbe2:	48 81 ca 00 00 00 20 	or     $0x20000000,%rdx
    bbe9:	48 85 c8             	test   %rcx,%rax
    bbec:	48 0f 45 fa          	cmovne %rdx,%rdi
    bbf0:	48 0f ba e0 2e       	bt     $0x2e,%rax
    bbf5:	73 05                	jae    bbfc <init_ipp_cpuid+0x1ec>
    bbf7:	48 0f ba ef 23       	bts    $0x23,%rdi
    bbfc:	a9 00 00 00 40       	test   $0x40000000,%eax
    bc01:	74 05                	je     bc08 <init_ipp_cpuid+0x1f8>
    bc03:	48 0f ba ef 20       	bts    $0x20,%rdi
    bc08:	48 0f ba e0 2d       	bt     $0x2d,%rax
    bc0d:	73 05                	jae    bc14 <init_ipp_cpuid+0x204>
    bc0f:	48 0f ba ef 22       	bts    $0x22,%rdi
    bc14:	48 0f ba e0 2c       	bt     $0x2c,%rax
    bc19:	73 05                	jae    bc20 <init_ipp_cpuid+0x210>
    bc1b:	48 0f ba ef 25       	bts    $0x25,%rdi
    bc20:	48 0f ba e0 2f       	bt     $0x2f,%rax
    bc25:	73 05                	jae    bc2c <init_ipp_cpuid+0x21c>
    bc27:	48 0f ba ef 24       	bts    $0x24,%rdi
    bc2c:	48 0f ba ef 3f       	bts    $0x3f,%rdi
    bc31:	e8 e2 53 ff ff       	call   1018 <ippcpSetCpuFeatures@plt>
    bc36:	31 d2                	xor    %edx,%edx
    bc38:	85 c0                	test   %eax,%eax
    bc3a:	0f 95 c2             	setne  %dl
    bc3d:	48 83 c4 08          	add    $0x8,%rsp
    bc41:	01 d2                	add    %edx,%edx
    bc43:	89 d0                	mov    %edx,%eax
    bc45:	c3                   	ret
    bc46:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    bc4d:	00 00 00 
    bc50:	31 d2                	xor    %edx,%edx
    bc52:	89 d0                	mov    %edx,%eax
    bc54:	c3                   	ret
    bc55:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    bc5c:	00 00 00 
    bc5f:	90                   	nop

000000000000bc60 <sgx_create_report>:
    bc60:	f3 0f 1e fa          	endbr64
    bc64:	55                   	push   %rbp
    bc65:	48 89 e5             	mov    %rsp,%rbp
    bc68:	41 57                	push   %r15
    bc6a:	49 89 f7             	mov    %rsi,%r15
    bc6d:	31 f6                	xor    %esi,%esi
    bc6f:	41 56                	push   %r14
    bc71:	41 55                	push   %r13
    bc73:	49 89 fd             	mov    %rdi,%r13
    bc76:	41 54                	push   %r12
    bc78:	53                   	push   %rbx
    bc79:	48 89 d3             	mov    %rdx,%rbx
    bc7c:	ba 40 00 00 00       	mov    $0x40,%edx
    bc81:	48 81 e4 00 fe ff ff 	and    $0xfffffffffffffe00,%rsp
    bc88:	48 81 ec 00 08 00 00 	sub    $0x800,%rsp
    bc8f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    bc96:	00 00 
    bc98:	48 89 84 24 f8 07 00 	mov    %rax,0x7f8(%rsp)
    bc9f:	00 
    bca0:	31 c0                	xor    %eax,%eax
    bca2:	48 8d 84 24 80 01 00 	lea    0x180(%rsp),%rax
    bca9:	00 
    bcaa:	4c 8d b4 24 00 04 00 	lea    0x400(%rsp),%r14
    bcb1:	00 
    bcb2:	48 89 c7             	mov    %rax,%rdi
    bcb5:	48 89 84 24 78 01 00 	mov    %rax,0x178(%rsp)
    bcbc:	00 
    bcbd:	4c 8d a4 24 00 02 00 	lea    0x200(%rsp),%r12
    bcc4:	00 
    bcc5:	e8 66 fc ff ff       	call   b930 <__memset>
    bcca:	31 f6                	xor    %esi,%esi
    bccc:	ba 00 02 00 00       	mov    $0x200,%edx
    bcd1:	4c 89 f7             	mov    %r14,%rdi
    bcd4:	e8 57 fc ff ff       	call   b930 <__memset>
    bcd9:	31 f6                	xor    %esi,%esi
    bcdb:	ba b0 01 00 00       	mov    $0x1b0,%edx
    bce0:	4c 89 e7             	mov    %r12,%rdi
    bce3:	e8 48 fc ff ff       	call   b930 <__memset>
    bce8:	4d 85 ed             	test   %r13,%r13
    bceb:	74 23                	je     bd10 <sgx_create_report+0xb0>
    bced:	be 00 02 00 00       	mov    $0x200,%esi
    bcf2:	4c 89 ef             	mov    %r13,%rdi
    bcf5:	e8 46 6d ff ff       	call   2a40 <sgx_is_within_enclave>
    bcfa:	85 c0                	test   %eax,%eax
    bcfc:	0f 84 be 00 00 00    	je     bdc0 <sgx_create_report+0x160>
    bd02:	b9 40 00 00 00       	mov    $0x40,%ecx
    bd07:	4c 89 f7             	mov    %r14,%rdi
    bd0a:	4c 89 ee             	mov    %r13,%rsi
    bd0d:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    bd10:	4d 85 ff             	test   %r15,%r15
    bd13:	74 4c                	je     bd61 <sgx_create_report+0x101>
    bd15:	be 40 00 00 00       	mov    $0x40,%esi
    bd1a:	4c 89 ff             	mov    %r15,%rdi
    bd1d:	e8 1e 6d ff ff       	call   2a40 <sgx_is_within_enclave>
    bd22:	85 c0                	test   %eax,%eax
    bd24:	0f 84 96 00 00 00    	je     bdc0 <sgx_create_report+0x160>
    bd2a:	f3 41 0f 6f 0f       	movdqu (%r15),%xmm1
    bd2f:	f3 41 0f 6f 57 10    	movdqu 0x10(%r15),%xmm2
    bd35:	f3 41 0f 6f 5f 20    	movdqu 0x20(%r15),%xmm3
    bd3b:	f3 41 0f 6f 67 30    	movdqu 0x30(%r15),%xmm4
    bd41:	0f 29 8c 24 80 01 00 	movaps %xmm1,0x180(%rsp)
    bd48:	00 
    bd49:	0f 29 94 24 90 01 00 	movaps %xmm2,0x190(%rsp)
    bd50:	00 
    bd51:	0f 29 9c 24 a0 01 00 	movaps %xmm3,0x1a0(%rsp)
    bd58:	00 
    bd59:	0f 29 a4 24 b0 01 00 	movaps %xmm4,0x1b0(%rsp)
    bd60:	00 
    bd61:	48 85 db             	test   %rbx,%rbx
    bd64:	74 5a                	je     bdc0 <sgx_create_report+0x160>
    bd66:	be b0 01 00 00       	mov    $0x1b0,%esi
    bd6b:	48 89 df             	mov    %rbx,%rdi
    bd6e:	e8 cd 6c ff ff       	call   2a40 <sgx_is_within_enclave>
    bd73:	85 c0                	test   %eax,%eax
    bd75:	74 49                	je     bdc0 <sgx_create_report+0x160>
    bd77:	48 8b b4 24 78 01 00 	mov    0x178(%rsp),%rsi
    bd7e:	00 
    bd7f:	4c 89 e2             	mov    %r12,%rdx
    bd82:	4c 89 f7             	mov    %r14,%rdi
    bd85:	e8 ff 10 00 00       	call   ce89 <do_ereport>
    bd8a:	89 c2                	mov    %eax,%edx
    bd8c:	b8 01 00 00 00       	mov    $0x1,%eax
    bd91:	85 d2                	test   %edx,%edx
    bd93:	75 30                	jne    bdc5 <sgx_create_report+0x165>
    bd95:	31 c0                	xor    %eax,%eax
    bd97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    bd9e:	00 00 
    bda0:	66 41 0f 6f 04 04    	movdqa (%r12,%rax,1),%xmm0
    bda6:	0f 11 04 03          	movups %xmm0,(%rbx,%rax,1)
    bdaa:	48 83 c0 10          	add    $0x10,%rax
    bdae:	48 3d b0 01 00 00    	cmp    $0x1b0,%rax
    bdb4:	75 ea                	jne    bda0 <sgx_create_report+0x140>
    bdb6:	31 c0                	xor    %eax,%eax
    bdb8:	eb 0b                	jmp    bdc5 <sgx_create_report+0x165>
    bdba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    bdc0:	b8 02 00 00 00       	mov    $0x2,%eax
    bdc5:	48 8b 94 24 f8 07 00 	mov    0x7f8(%rsp),%rdx
    bdcc:	00 
    bdcd:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    bdd4:	00 00 
    bdd6:	75 0f                	jne    bde7 <sgx_create_report+0x187>
    bdd8:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
    bddc:	5b                   	pop    %rbx
    bddd:	41 5c                	pop    %r12
    bddf:	41 5d                	pop    %r13
    bde1:	41 5e                	pop    %r14
    bde3:	41 5f                	pop    %r15
    bde5:	5d                   	pop    %rbp
    bde6:	c3                   	ret
    bde7:	e8 34 f7 ff ff       	call   b520 <__stack_chk_fail>
    bdec:	0f 1f 40 00          	nopl   0x0(%rax)

000000000000bdf0 <sgx_self_report>:
    bdf0:	f3 0f 1e fa          	endbr64
    bdf4:	55                   	push   %rbp
    bdf5:	53                   	push   %rbx
    bdf6:	48 8d 1d 43 87 01 00 	lea    0x18743(%rip),%rbx        # 24540 <_ZZ15sgx_self_reportE7_report>
    bdfd:	48 83 ec 08          	sub    $0x8,%rsp
    be01:	48 83 3d 67 87 01 00 	cmpq   $0x0,0x18767(%rip)        # 24570 <_ZZ15sgx_self_reportE7_report+0x30>
    be08:	00 
    be09:	74 0d                	je     be18 <sgx_self_report+0x28>
    be0b:	48 83 c4 08          	add    $0x8,%rsp
    be0f:	48 89 d8             	mov    %rbx,%rax
    be12:	5b                   	pop    %rbx
    be13:	5d                   	pop    %rbp
    be14:	c3                   	ret
    be15:	0f 1f 00             	nopl   (%rax)
    be18:	48 8d 2d 01 87 01 00 	lea    0x18701(%rip),%rbp        # 24520 <_ZZ15sgx_self_reportE11report_lock>
    be1f:	48 89 ef             	mov    %rbp,%rdi
    be22:	e8 d9 c9 ff ff       	call   8800 <sgx_spin_lock>
    be27:	48 83 3d 41 87 01 00 	cmpq   $0x0,0x18741(%rip)        # 24570 <_ZZ15sgx_self_reportE7_report+0x30>
    be2e:	00 
    be2f:	74 17                	je     be48 <sgx_self_report+0x58>
    be31:	48 89 ef             	mov    %rbp,%rdi
    be34:	e8 57 ca ff ff       	call   8890 <sgx_spin_unlock>
    be39:	48 83 c4 08          	add    $0x8,%rsp
    be3d:	48 89 d8             	mov    %rbx,%rax
    be40:	5b                   	pop    %rbx
    be41:	5d                   	pop    %rbp
    be42:	c3                   	ret
    be43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    be48:	48 89 da             	mov    %rbx,%rdx
    be4b:	31 f6                	xor    %esi,%esi
    be4d:	31 ff                	xor    %edi,%edi
    be4f:	e8 0c fe ff ff       	call   bc60 <sgx_create_report>
    be54:	eb db                	jmp    be31 <sgx_self_report+0x41>

Disassembly of section .nipx:

000000000000c000 <init_enclave>:
    c000:	f3 0f 1e fa          	endbr64
    c004:	41 54                	push   %r12
    c006:	55                   	push   %rbp
    c007:	53                   	push   %rbx
    c008:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
    c00f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    c016:	00 00 
    c018:	48 89 84 24 b8 00 00 	mov    %rax,0xb8(%rsp)
    c01f:	00 
    c020:	31 c0                	xor    %eax,%eax
    c022:	48 85 ff             	test   %rdi,%rdi
    c025:	0f 84 f5 02 00 00    	je     c320 <init_enclave+0x320>
    c02b:	48 89 f3             	mov    %rsi,%rbx
    c02e:	48 85 f6             	test   %rsi,%rsi
    c031:	0f 84 e9 02 00 00    	je     c320 <init_enclave+0x320>
    c037:	48 83 3d 91 4f 00 00 	cmpq   $0x0,0x4f91(%rip)        # 10fd0 <_Z9pcl_entryPvS_@Base>
    c03e:	00 
    c03f:	48 89 fd             	mov    %rdi,%rbp
    c042:	74 10                	je     c054 <init_enclave+0x54>
    c044:	0f ae e8             	lfence
    c047:	e8 c4 4f ff ff       	call   1010 <_Z9pcl_entryPvS_@plt>
    c04c:	85 c0                	test   %eax,%eax
    c04e:	0f 85 cc 02 00 00    	jne    c320 <init_enclave+0x320>
    c054:	48 89 ef             	mov    %rbp,%rdi
    c057:	e8 d4 8c ff ff       	call   4d30 <relocate_enclave>
    c05c:	41 89 c4             	mov    %eax,%r12d
    c05f:	85 c0                	test   %eax,%eax
    c061:	0f 85 b9 02 00 00    	jne    c320 <init_enclave+0x320>
    c067:	48 89 ef             	mov    %rbp,%rdi
    c06a:	e8 f1 8e ff ff       	call   4f60 <get_aligned_enclave_segments_size>
    c06f:	48 01 c5             	add    %rax,%rbp
    c072:	48 89 ef             	mov    %rbp,%rdi
    c075:	e8 16 92 ff ff       	call   5290 <is_shared_object>
    c07a:	85 c0                	test   %eax,%eax
    c07c:	0f 85 86 02 00 00    	jne    c308 <init_enclave+0x308>
    c082:	e8 7a 0a 00 00       	call   cb01 <get_enclave_base>
    c087:	48 8d 15 d2 70 00 00 	lea    0x70d2(%rip),%rdx        # 13160 <g_global_data>
    c08e:	48 89 05 5b 4d 00 00 	mov    %rax,0x4d5b(%rip)        # 10df0 <g_enclave_base>
    c095:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
    c099:	48 89 0d 48 4d 00 00 	mov    %rcx,0x4d48(%rip)        # 10de8 <g_enclave_size>
    c0a0:	48 8b 8a d0 06 00 00 	mov    0x6d0(%rdx),%rcx
    c0a7:	48 85 c9             	test   %rcx,%rcx
    c0aa:	74 2c                	je     c0d8 <init_enclave+0xd8>
    c0ac:	48 8b 8a c0 06 00 00 	mov    0x6c0(%rdx),%rcx
    c0b3:	48 39 c8             	cmp    %rcx,%rax
    c0b6:	0f 85 b2 02 00 00    	jne    c36e <init_enclave+0x36e>
    c0bc:	48 8b 82 c8 06 00 00 	mov    0x6c8(%rdx),%rax
    c0c3:	48 89 05 26 4d 00 00 	mov    %rax,0x4d26(%rip)        # 10df0 <g_enclave_base>
    c0ca:	48 8b 82 d0 06 00 00 	mov    0x6d0(%rdx),%rax
    c0d1:	48 89 05 10 4d 00 00 	mov    %rax,0x4d10(%rip)        # 10de8 <g_enclave_size>
    c0d8:	be b0 00 00 00       	mov    $0xb0,%esi
    c0dd:	48 89 df             	mov    %rbx,%rdi
    c0e0:	e8 bb 69 ff ff       	call   2aa0 <sgx_is_outside_enclave>
    c0e5:	85 c0                	test   %eax,%eax
    c0e7:	0f 84 33 02 00 00    	je     c320 <init_enclave+0x320>
    c0ed:	0f ae e8             	lfence
    c0f0:	f3 0f 6f 03          	movdqu (%rbx),%xmm0
    c0f4:	f3 0f 6f 4b 10       	movdqu 0x10(%rbx),%xmm1
    c0f9:	f3 0f 6f 53 20       	movdqu 0x20(%rbx),%xmm2
    c0fe:	f3 0f 6f 5b 30       	movdqu 0x30(%rbx),%xmm3
    c103:	f3 0f 6f 63 40       	movdqu 0x40(%rbx),%xmm4
    c108:	0f 29 04 24          	movaps %xmm0,(%rsp)
    c10c:	f3 0f 6f 6b 50       	movdqu 0x50(%rbx),%xmm5
    c111:	f3 0f 6f 73 60       	movdqu 0x60(%rbx),%xmm6
    c116:	0f 29 4c 24 10       	movaps %xmm1,0x10(%rsp)
    c11b:	f3 0f 6f 7b 70       	movdqu 0x70(%rbx),%xmm7
    c120:	f3 0f 6f 83 80 00 00 	movdqu 0x80(%rbx),%xmm0
    c127:	00 
    c128:	0f 29 54 24 20       	movaps %xmm2,0x20(%rsp)
    c12d:	f3 0f 6f 8b 90 00 00 	movdqu 0x90(%rbx),%xmm1
    c134:	00 
    c135:	f3 0f 6f 93 a0 00 00 	movdqu 0xa0(%rbx),%xmm2
    c13c:	00 
    c13d:	0f 29 5c 24 30       	movaps %xmm3,0x30(%rsp)
    c142:	0f 29 64 24 40       	movaps %xmm4,0x40(%rsp)
    c147:	0f 29 6c 24 50       	movaps %xmm5,0x50(%rsp)
    c14c:	0f 29 74 24 60       	movaps %xmm6,0x60(%rsp)
    c151:	0f 29 7c 24 70       	movaps %xmm7,0x70(%rsp)
    c156:	0f 29 84 24 80 00 00 	movaps %xmm0,0x80(%rsp)
    c15d:	00 
    c15e:	0f 29 8c 24 90 00 00 	movaps %xmm1,0x90(%rsp)
    c165:	00 
    c166:	0f 29 94 24 a0 00 00 	movaps %xmm2,0xa0(%rsp)
    c16d:	00 
    c16e:	f6 44 24 13 40       	testb  $0x40,0x13(%rsp)
    c173:	0f 85 b7 01 00 00    	jne    c330 <init_enclave+0x330>
    c179:	b9 14 00 00 00       	mov    $0x14,%ecx
    c17e:	b8 9c 00 00 00       	mov    $0x9c,%eax
    c183:	48 8d 14 04          	lea    (%rsp,%rax,1),%rdx
    c187:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
    c18b:	83 e0 01             	and    $0x1,%eax
    c18e:	c6 02 00             	movb   $0x0,(%rdx)
    c191:	48 89 c6             	mov    %rax,%rsi
    c194:	b8 01 00 00 00       	mov    $0x1,%eax
    c199:	48 39 c8             	cmp    %rcx,%rax
    c19c:	73 2c                	jae    c1ca <init_enclave+0x1ca>
    c19e:	48 85 f6             	test   %rsi,%rsi
    c1a1:	74 15                	je     c1b8 <init_enclave+0x1b8>
    c1a3:	b8 02 00 00 00       	mov    $0x2,%eax
    c1a8:	c6 42 01 00          	movb   $0x0,0x1(%rdx)
    c1ac:	48 39 c8             	cmp    %rcx,%rax
    c1af:	73 19                	jae    c1ca <init_enclave+0x1ca>
    c1b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    c1b8:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    c1bc:	48 83 c0 02          	add    $0x2,%rax
    c1c0:	c6 44 10 ff 00       	movb   $0x0,-0x1(%rax,%rdx,1)
    c1c5:	48 39 c8             	cmp    %rcx,%rax
    c1c8:	72 ee                	jb     c1b8 <init_enclave+0x1b8>
    c1ca:	8b 84 24 ac 00 00 00 	mov    0xac(%rsp),%eax
    c1d1:	48 8d 5c 24 0c       	lea    0xc(%rsp),%rbx
    c1d6:	89 05 04 4c 00 00    	mov    %eax,0x4c04(%rip)        # 10de0 <g_cpu_core_num>
    c1dc:	8b 44 24 08          	mov    0x8(%rsp),%eax
    c1e0:	89 05 12 4c 00 00    	mov    %eax,0x4c12(%rip)        # 10df8 <g_sdk_version>
    c1e6:	85 c0                	test   %eax,%eax
    c1e8:	74 1b                	je     c205 <init_enclave+0x205>
    c1ea:	83 f8 04             	cmp    $0x4,%eax
    c1ed:	0f 8e 2d 01 00 00    	jle    c320 <init_enclave+0x320>
    c1f3:	48 8d 5c 24 0c       	lea    0xc(%rsp),%rbx
    c1f8:	31 f6                	xor    %esi,%esi
    c1fa:	48 89 df             	mov    %rbx,%rdi
    c1fd:	e8 9e 7f ff ff       	call   41a0 <feature_supported>
    c202:	41 89 c4             	mov    %eax,%r12d
    c205:	48 89 df             	mov    %rbx,%rdi
    c208:	be 01 00 00 00       	mov    $0x1,%esi
    c20d:	44 89 25 e8 4b 00 00 	mov    %r12d,0x4be8(%rip)        # 10dfc <EDMM_supported>
    c214:	e8 87 7f ff ff       	call   41a0 <feature_supported>
    c219:	44 8b 25 dc 4b 00 00 	mov    0x4bdc(%rip),%r12d        # 10dfc <EDMM_supported>
    c220:	89 05 be 4b 00 00    	mov    %eax,0x4bbe(%rip)        # 10de4 <g_aexnotify_supported>
    c226:	e8 05 7e ff ff       	call   4030 <get_heap_min_size>
    c22b:	48 89 c5             	mov    %rax,%rbp
    c22e:	e8 8d 7d ff ff       	call   3fc0 <get_heap_size>
    c233:	48 89 c3             	mov    %rax,%rbx
    c236:	e8 65 7d ff ff       	call   3fa0 <get_heap_base>
    c23b:	44 89 e1             	mov    %r12d,%ecx
    c23e:	48 89 ea             	mov    %rbp,%rdx
    c241:	48 89 de             	mov    %rbx,%rsi
    c244:	48 89 c7             	mov    %rax,%rdi
    c247:	e8 24 c4 ff ff       	call   8670 <heap_init>
    c24c:	85 c0                	test   %eax,%eax
    c24e:	0f 85 cc 00 00 00    	jne    c320 <init_enclave+0x320>
    c254:	e8 57 88 ff ff       	call   4ab0 <get_xfeature_state>
    c259:	48 8b 3c 24          	mov    (%rsp),%rdi
    c25d:	48 89 c2             	mov    %rax,%rdx
    c260:	48 81 e7 ff e7 ff e1 	and    $0xffffffffe1ffe7ff,%rdi
    c267:	f6 44 24 13 40       	testb  $0x40,0x13(%rsp)
    c26c:	74 08                	je     c276 <init_enclave+0x276>
    c26e:	48 8b bc 24 a4 00 00 	mov    0xa4(%rsp),%rdi
    c275:	00 
    c276:	83 3d 7b 4b 00 00 01 	cmpl   $0x1,0x4b7b(%rip)        # 10df8 <g_sdk_version>
    c27d:	7f 0f                	jg     c28e <init_enclave+0x28e>
    c27f:	48 83 bc 24 9c 00 00 	cmpq   $0x0,0x9c(%rsp)
    c286:	00 00 
    c288:	0f 84 ca 00 00 00    	je     c358 <init_enclave+0x358>
    c28e:	48 8d 74 24 14       	lea    0x14(%rsp),%rsi
    c293:	e8 88 66 ff ff       	call   2920 <init_optimized_libs>
    c298:	85 c0                	test   %eax,%eax
    c29a:	0f 85 80 00 00 00    	jne    c320 <init_enclave+0x320>
    c2a0:	e8 0b 7e ff ff       	call   40b0 <get_rsrv_size>
    c2a5:	48 85 c0             	test   %rax,%rax
    c2a8:	74 27                	je     c2d1 <init_enclave+0x2d1>
    c2aa:	e8 71 7e ff ff       	call   4120 <get_rsrv_min_size>
    c2af:	48 89 c5             	mov    %rax,%rbp
    c2b2:	e8 f9 7d ff ff       	call   40b0 <get_rsrv_size>
    c2b7:	48 89 c3             	mov    %rax,%rbx
    c2ba:	e8 d1 7d ff ff       	call   4090 <get_rsrv_base>
    c2bf:	48 89 ea             	mov    %rbp,%rdx
    c2c2:	48 89 de             	mov    %rbx,%rsi
    c2c5:	48 89 c7             	mov    %rax,%rdi
    c2c8:	e8 c3 f5 ff ff       	call   b890 <rsrv_mem_init>
    c2cd:	85 c0                	test   %eax,%eax
    c2cf:	75 4f                	jne    c320 <init_enclave+0x320>
    c2d1:	be 08 00 00 00       	mov    $0x8,%esi
    c2d6:	48 8d 3d fb 4a 00 00 	lea    0x4afb(%rip),%rdi        # 10dd8 <__intel_security_cookie>
    c2dd:	e8 5e 69 ff ff       	call   2c40 <sgx_read_rand>
    c2e2:	f7 d8                	neg    %eax
    c2e4:	19 c0                	sbb    %eax,%eax
    c2e6:	48 8b 94 24 b8 00 00 	mov    0xb8(%rsp),%rdx
    c2ed:	00 
    c2ee:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    c2f5:	00 00 
    c2f7:	75 70                	jne    c369 <init_enclave+0x369>
    c2f9:	48 81 c4 c0 00 00 00 	add    $0xc0,%rsp
    c300:	5b                   	pop    %rbx
    c301:	5d                   	pop    %rbp
    c302:	41 5c                	pop    %r12
    c304:	c3                   	ret
    c305:	0f 1f 00             	nopl   (%rax)
    c308:	48 89 ef             	mov    %rbp,%rdi
    c30b:	e8 b0 8f ff ff       	call   52c0 <__relocate_fips_module>
    c310:	85 c0                	test   %eax,%eax
    c312:	0f 84 6a fd ff ff    	je     c082 <init_enclave+0x82>
    c318:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    c31f:	00 
    c320:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    c325:	eb bf                	jmp    c2e6 <init_enclave+0x2e6>
    c327:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    c32e:	00 00 
    c330:	48 8b 84 24 9c 00 00 	mov    0x9c(%rsp),%rax
    c337:	00 
    c338:	b9 b0 00 00 00       	mov    $0xb0,%ecx
    c33d:	48 29 c1             	sub    %rax,%rcx
    c340:	48 3d af 00 00 00    	cmp    $0xaf,%rax
    c346:	0f 86 37 fe ff ff    	jbe    c183 <init_enclave+0x183>
    c34c:	e9 79 fe ff ff       	jmp    c1ca <init_enclave+0x1ca>
    c351:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    c358:	31 f6                	xor    %esi,%esi
    c35a:	e8 c1 65 ff ff       	call   2920 <init_optimized_libs>
    c35f:	85 c0                	test   %eax,%eax
    c361:	0f 84 39 ff ff ff    	je     c2a0 <init_enclave+0x2a0>
    c367:	eb b7                	jmp    c320 <init_enclave+0x320>
    c369:	e8 b2 f1 ff ff       	call   b520 <__stack_chk_fail>
    c36e:	e8 cd 0b 00 00       	call   cf40 <abort>
    c373:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    c37a:	00 00 00 00 
    c37e:	66 90                	xchg   %ax,%ax

000000000000c380 <do_init_enclave>:
    c380:	f3 0f 1e fa          	endbr64
    c384:	41 54                	push   %r12
    c386:	49 89 f4             	mov    %rsi,%r12
    c389:	55                   	push   %rbp
    c38a:	48 89 fd             	mov    %rdi,%rbp
    c38d:	53                   	push   %rbx
    c38e:	e8 6e 07 00 00       	call   cb01 <get_enclave_base>
    c393:	48 89 c3             	mov    %rax,%rbx
    c396:	e8 91 07 00 00       	call   cb2c <lock_enclave>
    c39b:	85 c0                	test   %eax,%eax
    c39d:	74 11                	je     c3b0 <do_init_enclave+0x30>
    c39f:	bd 01 00 00 00       	mov    $0x1,%ebp
    c3a4:	89 e8                	mov    %ebp,%eax
    c3a6:	5b                   	pop    %rbx
    c3a7:	5d                   	pop    %rbp
    c3a8:	41 5c                	pop    %r12
    c3aa:	c3                   	ret
    c3ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    c3b0:	48 89 ee             	mov    %rbp,%rsi
    c3b3:	48 89 df             	mov    %rbx,%rdi
    c3b6:	e8 45 fc ff ff       	call   c000 <init_enclave>
    c3bb:	85 c0                	test   %eax,%eax
    c3bd:	75 e0                	jne    c39f <do_init_enclave+0x1f>
    c3bf:	be 01 00 00 00       	mov    $0x1,%esi
    c3c4:	4c 89 e7             	mov    %r12,%rdi
    c3c7:	e8 24 74 ff ff       	call   37f0 <do_init_thread>
    c3cc:	89 c5                	mov    %eax,%ebp
    c3ce:	85 c0                	test   %eax,%eax
    c3d0:	75 cd                	jne    c39f <do_init_enclave+0x1f>
    c3d2:	8b 15 24 4a 00 00    	mov    0x4a24(%rip),%edx        # 10dfc <EDMM_supported>
    c3d8:	85 d2                	test   %edx,%edx
    c3da:	0f 84 f0 00 00 00    	je     c4d0 <do_init_enclave+0x150>
    c3e0:	e8 4b 7c ff ff       	call   4030 <get_heap_min_size>
    c3e5:	4c 8d 25 74 6d 00 00 	lea    0x6d74(%rip),%r12        # 13160 <g_global_data>
    c3ec:	31 d2                	xor    %edx,%edx
    c3ee:	48 89 c6             	mov    %rax,%rsi
    c3f1:	48 89 c1             	mov    %rax,%rcx
    c3f4:	49 8b 7c 24 10       	mov    0x10(%r12),%rdi
    c3f9:	48 01 df             	add    %rbx,%rdi
    c3fc:	e8 af f0 ff ff       	call   b4b0 <memset_s>
    c401:	48 8d 05 28 4a 00 00 	lea    0x4a28(%rip),%rax        # 10e30 <rsrv_mem_min_size>
    c408:	49 8b 7c 24 20       	mov    0x20(%r12),%rdi
    c40d:	31 d2                	xor    %edx,%edx
    c40f:	48 8b 30             	mov    (%rax),%rsi
    c412:	48 01 df             	add    %rbx,%rdi
    c415:	48 89 f1             	mov    %rsi,%rcx
    c418:	e8 93 f0 ff ff       	call   b4b0 <memset_s>
    c41d:	bf 02 00 00 00       	mov    $0x2,%edi
    c422:	e8 f7 06 00 00       	call   cb1e <set_enclave_state>
    c427:	8b 05 cf 49 00 00    	mov    0x49cf(%rip),%eax        # 10dfc <EDMM_supported>
    c42d:	85 c0                	test   %eax,%eax
    c42f:	0f 84 6f ff ff ff    	je     c3a4 <do_init_enclave+0x24>
    c435:	41 8b 84 24 58 01 00 	mov    0x158(%r12),%eax
    c43c:	00 
    c43d:	49 8d ac 24 60 01 00 	lea    0x160(%r12),%rbp
    c444:	00 
    c445:	48 c1 e0 05          	shl    $0x5,%rax
    c449:	48 01 e8             	add    %rbp,%rax
    c44c:	48 39 c5             	cmp    %rax,%rbp
    c44f:	72 10                	jb     c461 <do_init_enclave+0xe1>
    c451:	eb 15                	jmp    c468 <do_init_enclave+0xe8>
    c453:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    c458:	48 83 c5 20          	add    $0x20,%rbp
    c45c:	48 39 c5             	cmp    %rax,%rbp
    c45f:	73 07                	jae    c468 <do_init_enclave+0xe8>
    c461:	66 83 7d 00 17       	cmpw   $0x17,0x0(%rbp)
    c466:	75 f0                	jne    c458 <do_init_enclave+0xd8>
    c468:	48 39 e8             	cmp    %rbp,%rax
    c46b:	0f 84 9f 00 00 00    	je     c510 <do_init_enclave+0x190>
    c471:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
    c475:	8b 75 04             	mov    0x4(%rbp),%esi
    c478:	48 01 df             	add    %rbx,%rdi
    c47b:	48 c1 e6 0c          	shl    $0xc,%rsi
    c47f:	48 01 fe             	add    %rdi,%rsi
    c482:	0f 82 17 ff ff ff    	jb     c39f <do_init_enclave+0x1f>
    c488:	e8 63 c1 ff ff       	call   85f0 <sgx_mm_init>
    c48d:	85 c0                	test   %eax,%eax
    c48f:	0f 85 0a ff ff ff    	jne    c39f <do_init_enclave+0x1f>
    c495:	49 8b bc 24 d8 06 00 	mov    0x6d8(%r12),%rdi
    c49c:	00 
    c49d:	e8 0e b2 ff ff       	call   76b0 <emalloc_init_with_reserved_mem>
    c4a2:	85 c0                	test   %eax,%eax
    c4a4:	0f 85 f5 fe ff ff    	jne    c39f <do_init_enclave+0x1f>
    c4aa:	48 89 ea             	mov    %rbp,%rdx
    c4ad:	49 8d b4 24 60 01 00 	lea    0x160(%r12),%rsi
    c4b4:	00 
    c4b5:	48 89 df             	mov    %rbx,%rdi
    c4b8:	31 ed                	xor    %ebp,%ebp
    c4ba:	e8 41 62 ff ff       	call   2700 <init_rts_emas>
    c4bf:	85 c0                	test   %eax,%eax
    c4c1:	40 0f 95 c5          	setne  %bpl
    c4c5:	e9 da fe ff ff       	jmp    c3a4 <do_init_enclave+0x24>
    c4ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    c4d0:	4c 8d 25 89 6c 00 00 	lea    0x6c89(%rip),%r12        # 13160 <g_global_data>
    c4d7:	31 d2                	xor    %edx,%edx
    c4d9:	49 8b 4c 24 18       	mov    0x18(%r12),%rcx
    c4de:	49 8b 74 24 18       	mov    0x18(%r12),%rsi
    c4e3:	49 8b 7c 24 10       	mov    0x10(%r12),%rdi
    c4e8:	48 01 df             	add    %rbx,%rdi
    c4eb:	e8 c0 ef ff ff       	call   b4b0 <memset_s>
    c4f0:	49 8b 4c 24 28       	mov    0x28(%r12),%rcx
    c4f5:	49 8b 74 24 28       	mov    0x28(%r12),%rsi
    c4fa:	31 d2                	xor    %edx,%edx
    c4fc:	49 8b 7c 24 20       	mov    0x20(%r12),%rdi
    c501:	48 01 df             	add    %rbx,%rdi
    c504:	e8 a7 ef ff ff       	call   b4b0 <memset_s>
    c509:	e9 0f ff ff ff       	jmp    c41d <do_init_enclave+0x9d>
    c50e:	66 90                	xchg   %ax,%ax
    c510:	31 f6                	xor    %esi,%esi
    c512:	31 ff                	xor    %edi,%edi
    c514:	e9 6f ff ff ff       	jmp    c488 <do_init_enclave+0x108>
    c519:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

000000000000c520 <sgx_is_enclave_crashed>:
    c520:	f3 0f 1e fa          	endbr64
    c524:	48 83 ec 08          	sub    $0x8,%rsp
    c528:	e8 e0 05 00 00       	call   cb0d <get_enclave_state>
    c52d:	83 f8 03             	cmp    $0x3,%eax
    c530:	0f 94 c0             	sete   %al
    c533:	48 83 c4 08          	add    $0x8,%rsp
    c537:	0f b6 c0             	movzbl %al,%eax
    c53a:	c3                   	ret
    c53b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

000000000000c540 <enter_enclave>:
    c540:	f3 0f 1e fa          	endbr64
    c544:	41 55                	push   %r13
    c546:	49 89 d5             	mov    %rdx,%r13
    c549:	41 54                	push   %r12
    c54b:	49 89 f4             	mov    %rsi,%r12
    c54e:	55                   	push   %rbp
    c54f:	89 cd                	mov    %ecx,%ebp
    c551:	53                   	push   %rbx
    c552:	89 fb                	mov    %edi,%ebx
    c554:	48 83 ec 18          	sub    $0x18,%rsp
    c558:	e8 c3 ff ff ff       	call   c520 <sgx_is_enclave_crashed>
    c55d:	85 c0                	test   %eax,%eax
    c55f:	75 67                	jne    c5c8 <enter_enclave+0x88>
    c561:	83 fb ff             	cmp    $0xffffffff,%ebx
    c564:	75 2a                	jne    c590 <enter_enclave+0x50>
    c566:	85 ed                	test   %ebp,%ebp
    c568:	75 34                	jne    c59e <enter_enclave+0x5e>
    c56a:	4c 89 ee             	mov    %r13,%rsi
    c56d:	4c 89 e7             	mov    %r12,%rdi
    c570:	e8 0b fe ff ff       	call   c380 <do_init_enclave>
    c575:	89 c3                	mov    %eax,%ebx
    c577:	89 d8                	mov    %ebx,%eax
    c579:	83 fb 01             	cmp    $0x1,%ebx
    c57c:	74 29                	je     c5a7 <enter_enclave+0x67>
    c57e:	48 83 c4 18          	add    $0x18,%rsp
    c582:	5b                   	pop    %rbx
    c583:	5d                   	pop    %rbp
    c584:	41 5c                	pop    %r12
    c586:	41 5d                	pop    %r13
    c588:	c3                   	ret
    c589:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    c590:	e8 78 05 00 00       	call   cb0d <get_enclave_state>
    c595:	83 f8 02             	cmp    $0x2,%eax
    c598:	75 0d                	jne    c5a7 <enter_enclave+0x67>
    c59a:	85 ed                	test   %ebp,%ebp
    c59c:	74 42                	je     c5e0 <enter_enclave+0xa0>
    c59e:	83 fd 01             	cmp    $0x1,%ebp
    c5a1:	0f 84 e9 00 00 00    	je     c690 <enter_enclave+0x150>
    c5a7:	bf 03 00 00 00       	mov    $0x3,%edi
    c5ac:	e8 6d 05 00 00       	call   cb1e <set_enclave_state>
    c5b1:	b8 01 00 00 00       	mov    $0x1,%eax
    c5b6:	48 83 c4 18          	add    $0x18,%rsp
    c5ba:	5b                   	pop    %rbx
    c5bb:	5d                   	pop    %rbp
    c5bc:	41 5c                	pop    %r12
    c5be:	41 5d                	pop    %r13
    c5c0:	c3                   	ret
    c5c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    c5c8:	48 83 c4 18          	add    $0x18,%rsp
    c5cc:	b8 06 10 00 00       	mov    $0x1006,%eax
    c5d1:	5b                   	pop    %rbx
    c5d2:	5d                   	pop    %rbp
    c5d3:	41 5c                	pop    %r12
    c5d5:	41 5d                	pop    %r13
    c5d7:	c3                   	ret
    c5d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    c5df:	00 
    c5e0:	85 db                	test   %ebx,%ebx
    c5e2:	79 2c                	jns    c610 <enter_enclave+0xd0>
    c5e4:	83 fb fa             	cmp    $0xfffffffa,%ebx
    c5e7:	74 27                	je     c610 <enter_enclave+0xd0>
    c5e9:	83 fb fe             	cmp    $0xfffffffe,%ebx
    c5ec:	0f 84 ce 00 00 00    	je     c6c0 <enter_enclave+0x180>
    c5f2:	83 fb fc             	cmp    $0xfffffffc,%ebx
    c5f5:	0f 84 d5 00 00 00    	je     c6d0 <enter_enclave+0x190>
    c5fb:	83 fb fb             	cmp    $0xfffffffb,%ebx
    c5fe:	75 a7                	jne    c5a7 <enter_enclave+0x67>
    c600:	4c 89 ef             	mov    %r13,%rdi
    c603:	e8 88 77 ff ff       	call   3d90 <do_uninit_enclave>
    c608:	89 c3                	mov    %eax,%ebx
    c60a:	e9 68 ff ff ff       	jmp    c577 <enter_enclave+0x37>
    c60f:	90                   	nop
    c610:	e8 37 05 00 00       	call   cb4c <get_thread_data>
    c615:	48 85 c0             	test   %rax,%rax
    c618:	0f 84 c2 00 00 00    	je     c6e0 <enter_enclave+0x1a0>
    c61e:	48 8b 48 08          	mov    0x8(%rax),%rcx
    c622:	48 39 48 10          	cmp    %rcx,0x10(%rax)
    c626:	75 40                	jne    c668 <enter_enclave+0x128>
    c628:	48 8d 05 31 6b 00 00 	lea    0x6b31(%rip),%rax        # 13160 <g_global_data>
    c62f:	48 8b 50 38          	mov    0x38(%rax),%rdx
    c633:	48 85 d2             	test   %rdx,%rdx
    c636:	74 30                	je     c668 <enter_enclave+0x128>
    c638:	48 8b 68 50          	mov    0x50(%rax),%rbp
    c63c:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
    c641:	be 08 00 00 00       	mov    $0x8,%esi
    c646:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    c64d:	00 00 
    c64f:	4c 01 ed             	add    %r13,%rbp
    c652:	e8 e9 65 ff ff       	call   2c40 <sgx_read_rand>
    c657:	85 c0                	test   %eax,%eax
    c659:	0f 85 8d 00 00 00    	jne    c6ec <enter_enclave+0x1ac>
    c65f:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    c664:	48 89 45 28          	mov    %rax,0x28(%rbp)
    c668:	89 df                	mov    %ebx,%edi
    c66a:	4c 89 ea             	mov    %r13,%rdx
    c66d:	4c 89 e6             	mov    %r12,%rsi
    c670:	e8 db 73 ff ff       	call   3a50 <do_ecall>
    c675:	89 c3                	mov    %eax,%ebx
    c677:	89 d8                	mov    %ebx,%eax
    c679:	83 fb 01             	cmp    $0x1,%ebx
    c67c:	0f 85 fc fe ff ff    	jne    c57e <enter_enclave+0x3e>
    c682:	e9 20 ff ff ff       	jmp    c5a7 <enter_enclave+0x67>
    c687:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    c68e:	00 00 
    c690:	4c 89 ef             	mov    %r13,%rdi
    c693:	e8 68 80 ff ff       	call   4700 <trts_handle_exception>
    c698:	4c 89 ef             	mov    %r13,%rdi
    c69b:	89 c3                	mov    %eax,%ebx
    c69d:	e8 ce 66 ff ff       	call   2d70 <check_static_stack_canary>
    c6a2:	89 c2                	mov    %eax,%edx
    c6a4:	b8 09 10 00 00       	mov    $0x1009,%eax
    c6a9:	85 d2                	test   %edx,%edx
    c6ab:	0f 85 05 ff ff ff    	jne    c5b6 <enter_enclave+0x76>
    c6b1:	e9 c1 fe ff ff       	jmp    c577 <enter_enclave+0x37>
    c6b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c6bd:	00 00 00 
    c6c0:	4c 89 e7             	mov    %r12,%rdi
    c6c3:	e8 18 78 ff ff       	call   3ee0 <do_oret>
    c6c8:	89 c3                	mov    %eax,%ebx
    c6ca:	e9 a8 fe ff ff       	jmp    c577 <enter_enclave+0x37>
    c6cf:	90                   	nop
    c6d0:	4c 89 e7             	mov    %r12,%rdi
    c6d3:	e8 d8 75 ff ff       	call   3cb0 <do_ecall_add_thread>
    c6d8:	89 c3                	mov    %eax,%ebx
    c6da:	e9 98 fe ff ff       	jmp    c577 <enter_enclave+0x37>
    c6df:	90                   	nop
    c6e0:	48 8d 05 79 6a 00 00 	lea    0x6a79(%rip),%rax        # 13160 <g_global_data>
    c6e7:	e9 4c ff ff ff       	jmp    c638 <enter_enclave+0xf8>
    c6ec:	e8 4f 08 00 00       	call   cf40 <abort>

000000000000c6f1 <restore_xregs>:
    c6f1:	f3 0f 1e fa          	endbr64
    c6f5:	48 89 f9             	mov    %rdi,%rcx
    c6f8:	48 8d 05 49 71 00 00 	lea    0x7149(%rip),%rax        # 13848 <g_xsave_enabled>
    c6ff:	8b 00                	mov    (%rax),%eax
    c701:	83 f8 00             	cmp    $0x0,%eax
    c704:	74 16                	je     c71c <restore_xregs+0x2b>
    c706:	48 31 c0             	xor    %rax,%rax
    c709:	48 31 d2             	xor    %rdx,%rdx
    c70c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    c711:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    c716:	48 0f ae 29          	xrstor64 (%rcx)
    c71a:	eb 04                	jmp    c720 <restore_xregs+0x2f>
    c71c:	48 0f ae 09          	fxrstor64 (%rcx)
    c720:	c3                   	ret

000000000000c721 <save_xregs>:
    c721:	f3 0f 1e fa          	endbr64
    c725:	48 89 f9             	mov    %rdi,%rcx
    c728:	48 8d 05 19 71 00 00 	lea    0x7119(%rip),%rax        # 13848 <g_xsave_enabled>
    c72f:	9b                   	fwait
    c730:	8b 00                	mov    (%rax),%eax
    c732:	83 f8 00             	cmp    $0x0,%eax
    c735:	74 16                	je     c74d <save_xregs+0x2c>
    c737:	48 31 c0             	xor    %rax,%rax
    c73a:	48 31 d2             	xor    %rdx,%rdx
    c73d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    c742:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    c747:	48 0f c7 21          	xsavec64 (%rcx)
    c74b:	eb 04                	jmp    c751 <save_xregs+0x30>
    c74d:	48 0f ae 01          	fxsave64 (%rcx)
    c751:	c3                   	ret
    c752:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c759:	00 00 00 
    c75c:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c763:	00 00 00 
    c766:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c76d:	00 00 00 
    c770:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c777:	00 00 00 
    c77a:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c781:	00 00 00 
    c784:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c78b:	00 00 00 
    c78e:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c795:	00 00 00 
    c798:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c79f:	00 00 00 
    c7a2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c7a9:	00 00 00 
    c7ac:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c7b3:	00 00 00 
    c7b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c7bd:	00 00 00 
    c7c0:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c7c7:	00 00 00 
    c7ca:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c7d1:	00 00 00 
    c7d4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c7db:	00 00 00 
    c7de:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c7e5:	00 00 00 
    c7e8:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c7ef:	00 00 00 
    c7f2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    c7f9:	00 00 00 
    c7fc:	0f 1f 40 00          	nopl   0x0(%rax)

000000000000c800 <cselect_mitigation_rip>:
    c800:	f3 0f 1e fa          	endbr64
    c804:	48 8b 87 88 00 00 00 	mov    0x88(%rdi),%rax
    c80b:	48 8b 4f 20          	mov    0x20(%rdi),%rcx
    c80f:	48 8d 35 ea 02 00 00 	lea    0x2ea(%rip),%rsi        # cb00 <__ct_mitigation_ret>
    c816:	48 39 f0             	cmp    %rsi,%rax
    c819:	48 8d 71 08          	lea    0x8(%rcx),%rsi
    c81d:	48 0f 44 ce          	cmove  %rsi,%rcx
    c821:	48 8d 15 d8 02 00 00 	lea    0x2d8(%rip),%rdx        # cb00 <__ct_mitigation_ret>
    c828:	48 29 c2             	sub    %rax,%rdx
    c82b:	48 81 fa fe 00 00 00 	cmp    $0xfe,%rdx
    c832:	48 0f 42 81 78 ff ff 	cmovb  -0x88(%rcx),%rax
    c839:	ff 
    c83a:	c3                   	ret

000000000000c83b <cselect_mitigation_regs>:
    c83b:	f3 0f 1e fa          	endbr64
    c83f:	48 8b 87 88 00 00 00 	mov    0x88(%rdi),%rax
    c846:	48 8b 4f 20          	mov    0x20(%rdi),%rcx
    c84a:	48 39 f2             	cmp    %rsi,%rdx
    c84d:	41 0f 94 c0          	sete   %r8b
    c851:	48 8d 15 a8 02 00 00 	lea    0x2a8(%rip),%rdx        # cb00 <__ct_mitigation_ret>
    c858:	48 39 c2             	cmp    %rax,%rdx
    c85b:	41 0f 94 c1          	sete   %r9b
    c85f:	48 8d 15 e5 01 00 00 	lea    0x1e5(%rip),%rdx        # ca4b <.ct_check_execute_post>
    c866:	48 3b 11             	cmp    (%rcx),%rdx
    c869:	41 0f 94 c2          	sete   %r10b
    c86d:	45 08 c8             	or     %r9b,%r8b
    c870:	45 20 d0             	and    %r10b,%r8b
    c873:	48 8d 51 08          	lea    0x8(%rcx),%rdx
    c877:	48 0f 45 ca          	cmovne %rdx,%rcx
    c87b:	48 89 4f 20          	mov    %rcx,0x20(%rdi)
    c87f:	48 8d 15 73 02 00 00 	lea    0x273(%rip),%rdx        # caf9 <.ct_mitigation_end>
    c886:	48 29 c2             	sub    %rax,%rdx
    c889:	48 81 fa f7 00 00 00 	cmp    $0xf7,%rdx
    c890:	41 0f 92 c1          	setb   %r9b
    c894:	45 08 c8             	or     %r9b,%r8b
    c897:	48 8b 87 88 00 00 00 	mov    0x88(%rdi),%rax
    c89e:	48 0f 45 81 78 ff ff 	cmovne -0x88(%rcx),%rax
    c8a5:	ff 
    c8a6:	48 89 81 78 ff ff ff 	mov    %rax,-0x88(%rcx)
    c8ad:	48 89 87 88 00 00 00 	mov    %rax,0x88(%rdi)
    c8b4:	48 8b 07             	mov    (%rdi),%rax
    c8b7:	48 0f 45 81 70 ff ff 	cmovne -0x90(%rcx),%rax
    c8be:	ff 
    c8bf:	48 89 81 70 ff ff ff 	mov    %rax,-0x90(%rcx)
    c8c6:	48 89 07             	mov    %rax,(%rdi)
    c8c9:	48 8b 47 08          	mov    0x8(%rdi),%rax
    c8cd:	48 0f 45 81 68 ff ff 	cmovne -0x98(%rcx),%rax
    c8d4:	ff 
    c8d5:	48 89 81 68 ff ff ff 	mov    %rax,-0x98(%rcx)
    c8dc:	48 89 47 08          	mov    %rax,0x8(%rdi)
    c8e0:	48 8b 47 10          	mov    0x10(%rdi),%rax
    c8e4:	48 0f 45 81 60 ff ff 	cmovne -0xa0(%rcx),%rax
    c8eb:	ff 
    c8ec:	48 89 81 60 ff ff ff 	mov    %rax,-0xa0(%rcx)
    c8f3:	48 89 47 10          	mov    %rax,0x10(%rdi)
    c8f7:	48 8b 47 18          	mov    0x18(%rdi),%rax
    c8fb:	48 0f 45 81 58 ff ff 	cmovne -0xa8(%rcx),%rax
    c902:	ff 
    c903:	48 89 81 58 ff ff ff 	mov    %rax,-0xa8(%rcx)
    c90a:	48 89 47 18          	mov    %rax,0x18(%rdi)
    c90e:	48 8b 47 28          	mov    0x28(%rdi),%rax
    c912:	48 0f 45 81 50 ff ff 	cmovne -0xb0(%rcx),%rax
    c919:	ff 
    c91a:	48 89 81 50 ff ff ff 	mov    %rax,-0xb0(%rcx)
    c921:	48 89 47 28          	mov    %rax,0x28(%rdi)
    c925:	48 8b 47 30          	mov    0x30(%rdi),%rax
    c929:	48 0f 45 81 48 ff ff 	cmovne -0xb8(%rcx),%rax
    c930:	ff 
    c931:	48 89 81 48 ff ff ff 	mov    %rax,-0xb8(%rcx)
    c938:	48 89 47 30          	mov    %rax,0x30(%rdi)
    c93c:	48 8b 47 38          	mov    0x38(%rdi),%rax
    c940:	48 0f 45 81 40 ff ff 	cmovne -0xc0(%rcx),%rax
    c947:	ff 
    c948:	48 89 81 40 ff ff ff 	mov    %rax,-0xc0(%rcx)
    c94f:	48 89 47 38          	mov    %rax,0x38(%rdi)
    c953:	48 8b 41 f8          	mov    -0x8(%rcx),%rax
    c957:	48 0f 45 81 38 ff ff 	cmovne -0xc8(%rcx),%rax
    c95e:	ff 
    c95f:	48 89 81 38 ff ff ff 	mov    %rax,-0xc8(%rcx)
    c966:	c3                   	ret

000000000000c967 <constant_time_apply_sgxstep_mitigation_and_continue_execution>:
    c967:	f3 0f 1e fa          	endbr64
    c96b:	4c 89 c3             	mov    %r8,%rbx
    c96e:	4c 89 cd             	mov    %r9,%rbp
    c971:	4c 8b 47 40          	mov    0x40(%rdi),%r8
    c975:	4c 8b 4f 48          	mov    0x48(%rdi),%r9
    c979:	4c 8b 57 50          	mov    0x50(%rdi),%r10
    c97d:	4c 8b 5f 58          	mov    0x58(%rdi),%r11
    c981:	4c 8b 67 60          	mov    0x60(%rdi),%r12
    c985:	4c 8b 6f 68          	mov    0x68(%rdi),%r13
    c989:	4c 8b 77 70          	mov    0x70(%rdi),%r14
    c98d:	4c 8b 7f 78          	mov    0x78(%rdi),%r15
    c991:	48 8d a7 80 00 00 00 	lea    0x80(%rdi),%rsp
    c998:	9d                   	popf
    c999:	48 8b 67 20          	mov    0x20(%rdi),%rsp
    c99d:	48 89 d7             	mov    %rdx,%rdi
    c9a0:	eb 5e                	jmp    ca00 <.ct_enable_aexnotify>
    c9a2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    c9a9:	00 00 00 00 
    c9ad:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    c9b4:	00 00 00 00 
    c9b8:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    c9bf:	00 00 00 00 
    c9c3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    c9ca:	00 00 00 00 
    c9ce:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    c9d5:	00 00 00 00 
    c9d9:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    c9e0:	00 00 00 00 
    c9e4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    c9eb:	00 00 00 00 
    c9ef:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    c9f6:	00 00 00 00 
    c9fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

000000000000ca00 <.ct_enable_aexnotify>:
    ca00:	c6 06 01             	movb   $0x1,(%rsi)

000000000000ca03 <.ct_mitigation_begin>:
    ca03:	48 8b b4 24 38 ff ff 	mov    -0xc8(%rsp),%rsi
    ca0a:	ff 
    ca0b:	0f ae e8             	lfence
    ca0e:	40 0f b6 d7          	movzbl %dil,%edx
    ca12:	40 b7 00             	mov    $0x0,%dil
    ca15:	b8 0c 00 00 00       	mov    $0xc,%eax
    ca1a:	c4 e2 f9 f7 d2       	shlx   %rax,%rdx,%rdx
    ca1f:	48 8d 14 17          	lea    (%rdi,%rdx,1),%rdx

000000000000ca23 <.ct_check_write>:
    ca23:	48 89 c8             	mov    %rcx,%rax
    ca26:	b9 3f 00 00 00       	mov    $0x3f,%ecx
    ca2b:	c4 e2 f1 f7 c8       	shlx   %rcx,%rax,%rcx
    ca30:	e3 08                	jrcxz  ca3a <.ct_clear_low_bits_of_rbx>
    ca32:	48 8d 40 ff          	lea    -0x1(%rax),%rax
    ca36:	8a 0b                	mov    (%rbx),%cl
    ca38:	88 0b                	mov    %cl,(%rbx)

000000000000ca3a <.ct_clear_low_bits_of_rbx>:
    ca3a:	b9 0c 00 00 00       	mov    $0xc,%ecx
    ca3f:	c4 e2 f3 f7 db       	shrx   %rcx,%rbx,%rbx
    ca44:	c4 e2 f1 f7 db       	shlx   %rcx,%rbx,%rbx

000000000000ca49 <.ct_check_execute>:
    ca49:	ff d5                	call   *%rbp

000000000000ca4b <.ct_check_execute_post>:
    ca4b:	48 8b ac 24 50 ff ff 	mov    -0xb0(%rsp),%rbp
    ca52:	ff 
    ca53:	48 89 74 24 f8       	mov    %rsi,-0x8(%rsp)
    ca58:	b9 00 10 00 00       	mov    $0x1000,%ecx
    ca5d:	0f 1f 00             	nopl   (%rax)

000000000000ca60 <.ct_warm_caches_and_tlbs>:
    ca60:	67 8d 49 c0          	lea    -0x40(%ecx),%ecx
    ca64:	8b 34 08             	mov    (%rax,%rcx,1),%esi
    ca67:	8b 34 0f             	mov    (%rdi,%rcx,1),%esi
    ca6a:	8b 34 0a             	mov    (%rdx,%rcx,1),%esi
    ca6d:	8b 34 0b             	mov    (%rbx,%rcx,1),%esi
    ca70:	e3 02                	jrcxz  ca74 <.ct_restore_state>
    ca72:	eb ec                	jmp    ca60 <.ct_warm_caches_and_tlbs>

000000000000ca74 <.ct_restore_state>:
    ca74:	0f b6 c8             	movzbl %al,%ecx
    ca77:	48 8b bc 24 40 ff ff 	mov    -0xc0(%rsp),%rdi
    ca7e:	ff 
    ca7f:	48 8b b4 24 48 ff ff 	mov    -0xb8(%rsp),%rsi
    ca86:	ff 
    ca87:	48 8b 9c 24 58 ff ff 	mov    -0xa8(%rsp),%rbx
    ca8e:	ff 
    ca8f:	48 8b 94 24 60 ff ff 	mov    -0xa0(%rsp),%rdx
    ca96:	ff 
    ca97:	48 8b 84 24 70 ff ff 	mov    -0x90(%rsp),%rax
    ca9e:	ff 
    ca9f:	e3 50                	jrcxz  caf1 <.ct_restore_rcx>
    caa1:	48 8d 24 24          	lea    (%rsp),%rsp
    caa5:	48 8d 24 24          	lea    (%rsp),%rsp
    caa9:	48 8d 24 24          	lea    (%rsp),%rsp
    caad:	48 8d 24 24          	lea    (%rsp),%rsp
    cab1:	48 8d 24 24          	lea    (%rsp),%rsp
    cab5:	48 8d 24 24          	lea    (%rsp),%rsp
    cab9:	48 8d 24 24          	lea    (%rsp),%rsp
    cabd:	48 8d 24 24          	lea    (%rsp),%rsp
    cac1:	48 8d 24 24          	lea    (%rsp),%rsp
    cac5:	48 8d 24 24          	lea    (%rsp),%rsp
    cac9:	48 8d 24 24          	lea    (%rsp),%rsp
    cacd:	48 8d 24 24          	lea    (%rsp),%rsp
    cad1:	48 8d 24 24          	lea    (%rsp),%rsp
    cad5:	48 8d 24 24          	lea    (%rsp),%rsp
    cad9:	48 8d 24 24          	lea    (%rsp),%rsp
    cadd:	48 8d 24 24          	lea    (%rsp),%rsp
    cae1:	48 8d 24 24          	lea    (%rsp),%rsp
    cae5:	48 8d 24 24          	lea    (%rsp),%rsp
    cae9:	48 8d 24 24          	lea    (%rsp),%rsp
    caed:	48 8d 24 24          	lea    (%rsp),%rsp

000000000000caf1 <.ct_restore_rcx>:
    caf1:	48 8b 8c 24 68 ff ff 	mov    -0x98(%rsp),%rcx
    caf8:	ff 

000000000000caf9 <.ct_mitigation_end>:
    caf9:	ff a4 24 78 ff ff ff 	jmp    *-0x88(%rsp)

000000000000cb00 <__ct_mitigation_ret>:
    cb00:	c3                   	ret

000000000000cb01 <get_enclave_base>:
    cb01:	f3 0f 1e fa          	endbr64
    cb05:	48 8d 05 f4 34 ff ff 	lea    -0xcb0c(%rip),%rax        # 0 <enclave.so>
    cb0c:	c3                   	ret

000000000000cb0d <get_enclave_state>:
    cb0d:	f3 0f 1e fa          	endbr64
    cb11:	48 8d 0d 28 66 00 00 	lea    0x6628(%rip),%rcx        # 13140 <g_enclave_state>
    cb18:	48 31 c0             	xor    %rax,%rax
    cb1b:	8b 01                	mov    (%rcx),%eax
    cb1d:	c3                   	ret

000000000000cb1e <set_enclave_state>:
    cb1e:	f3 0f 1e fa          	endbr64
    cb22:	48 8d 05 17 66 00 00 	lea    0x6617(%rip),%rax        # 13140 <g_enclave_state>
    cb29:	89 38                	mov    %edi,(%rax)
    cb2b:	c3                   	ret

000000000000cb2c <lock_enclave>:
    cb2c:	f3 0f 1e fa          	endbr64
    cb30:	48 8d 15 09 66 00 00 	lea    0x6609(%rip),%rdx        # 13140 <g_enclave_state>
    cb37:	48 31 c0             	xor    %rax,%rax
    cb3a:	b8 00 00 00 00       	mov    $0x0,%eax
    cb3f:	48 31 c9             	xor    %rcx,%rcx
    cb42:	b9 01 00 00 00       	mov    $0x1,%ecx
    cb47:	f0 0f b1 0a          	lock cmpxchg %ecx,(%rdx)
    cb4b:	c3                   	ret

000000000000cb4c <get_thread_data>:
    cb4c:	f3 0f 1e fa          	endbr64
    cb50:	65 48 8b 04 25 00 00 	mov    %gs:0x0,%rax
    cb57:	00 00 
    cb59:	c3                   	ret

000000000000cb5a <get_stack_guard>:
    cb5a:	f3 0f 1e fa          	endbr64
    cb5e:	65 48 8b 04 25 28 00 	mov    %gs:0x28,%rax
    cb65:	00 00 
    cb67:	c3                   	ret

000000000000cb68 <enclave_entry>:
    cb68:	f3 0f 1e fa          	endbr64
    cb6c:	48 31 d2             	xor    %rdx,%rdx
    cb6f:	48 01 d2             	add    %rdx,%rdx
    cb72:	fc                   	cld
    cb73:	4d 31 c0             	xor    %r8,%r8
    cb76:	4d 31 c9             	xor    %r9,%r9
    cb79:	4d 31 d2             	xor    %r10,%r10
    cb7c:	4d 31 db             	xor    %r11,%r11
    cb7f:	4d 31 e4             	xor    %r12,%r12
    cb82:	4d 31 ed             	xor    %r13,%r13
    cb85:	4d 31 f6             	xor    %r14,%r14
    cb88:	4d 31 ff             	xor    %r15,%r15
    cb8b:	48 83 f8 00          	cmp    $0x0,%rax
    cb8f:	0f 85 07 01 00 00    	jne    cc9c <enclave_entry+0x134>
    cb95:	65 48 8b 04 25 08 00 	mov    %gs:0x8,%rax
    cb9c:	00 00 
    cb9e:	48 83 f8 00          	cmp    $0x0,%rax
    cba2:	75 0f                	jne    cbb3 <enclave_entry+0x4b>
    cba4:	48 89 d8             	mov    %rbx,%rax
    cba7:	48 2d 00 00 01 00    	sub    $0x10000,%rax
    cbad:	48 2d 00 04 00 00    	sub    $0x400,%rax
    cbb3:	48 94                	xchg   %rax,%rsp
    cbb5:	51                   	push   %rcx
    cbb6:	55                   	push   %rbp
    cbb7:	48 89 e5             	mov    %rsp,%rbp
    cbba:	9c                   	pushf
    cbbb:	48 f7 14 24          	notq   (%rsp)
    cbbf:	48 81 0c 24 00 00 04 	orq    $0x40000,(%rsp)
    cbc6:	00 
    cbc7:	48 f7 14 24          	notq   (%rsp)
    cbcb:	9d                   	popf
    cbcc:	48 83 ec 30          	sub    $0x30,%rsp
    cbd0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    cbd4:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    cbd8:	48 89 5d e0          	mov    %rbx,-0x20(%rbp)
    cbdc:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
    cbe0:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
    cbe4:	48 83 ec 20          	sub    $0x20,%rsp
    cbe8:	48 8d 3d 91 05 00 00 	lea    0x591(%rip),%rdi        # d180 <SYNTHETIC_STATE>
    cbef:	e8 fd fa ff ff       	call   c6f1 <restore_xregs>
    cbf4:	0f ae e8             	lfence
    cbf7:	48 83 c4 20          	add    $0x20,%rsp
    cbfb:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
    cbff:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
    cc03:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    cc07:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    cc0b:	e8 30 f9 ff ff       	call   c540 <enter_enclave>
    cc10:	48 89 c3             	mov    %rax,%rbx
    cc13:	48 8d 3d 66 05 00 00 	lea    0x566(%rip),%rdi        # d180 <SYNTHETIC_STATE>
    cc1a:	e8 d2 fa ff ff       	call   c6f1 <restore_xregs>
    cc1f:	0f ae e8             	lfence
    cc22:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    cc26:	48 83 f8 00          	cmp    $0x0,%rax
    cc2a:	75 2c                	jne    cc58 <enclave_entry+0xf0>
    cc2c:	65 48 8b 04 25 00 00 	mov    %gs:0x0,%rax
    cc33:	00 00 
    cc35:	48 83 f8 00          	cmp    $0x0,%rax
    cc39:	74 1d                	je     cc58 <enclave_entry+0xf0>
    cc3b:	48 8b 50 20          	mov    0x20(%rax),%rdx
    cc3f:	8a 8a a7 00 00 00    	mov    0xa7(%rdx),%cl
    cc45:	80 f9 00             	cmp    $0x0,%cl
    cc48:	74 0e                	je     cc58 <enclave_entry+0xf0>
    cc4a:	c6 82 a7 00 00 00 00 	movb   $0x0,0xa7(%rdx)
    cc51:	c7 40 50 01 00 00 00 	movl   $0x1,0x50(%rax)
    cc58:	48 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%rdi
    cc5f:	48 89 de             	mov    %rbx,%rsi
    cc62:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    cc66:	48 89 ec             	mov    %rbp,%rsp
    cc69:	5d                   	pop    %rbp
    cc6a:	5b                   	pop    %rbx
    cc6b:	48 89 d4             	mov    %rdx,%rsp
    cc6e:	48 31 c9             	xor    %rcx,%rcx
    cc71:	48 31 d2             	xor    %rdx,%rdx
    cc74:	4d 31 c0             	xor    %r8,%r8
    cc77:	4d 31 c9             	xor    %r9,%r9
    cc7a:	4d 31 d2             	xor    %r10,%r10
    cc7d:	4d 31 db             	xor    %r11,%r11
    cc80:	4d 31 e4             	xor    %r12,%r12
    cc83:	4d 31 ed             	xor    %r13,%r13
    cc86:	4d 31 f6             	xor    %r14,%r14
    cc89:	4d 31 ff             	xor    %r15,%r15
    cc8c:	48 01 d2             	add    %rdx,%rdx
    cc8f:	fc                   	cld
    cc90:	48 c7 c0 04 00 00 00 	mov    $0x4,%rax
    cc97:	0f 01 d7             	enclu
    cc9a:	0f 0b                	ud2
    cc9c:	48 89 c2             	mov    %rax,%rdx
    cc9f:	48 89 d8             	mov    %rbx,%rax
    cca2:	48 2d 00 00 01 00    	sub    $0x10000,%rax
    cca8:	e9 06 ff ff ff       	jmp    cbb3 <enclave_entry+0x4b>
    ccad:	0f 0b                	ud2

000000000000ccaf <do_ocall>:
    ccaf:	f3 0f 1e fa          	endbr64
    ccb3:	55                   	push   %rbp
    ccb4:	48 89 e5             	mov    %rsp,%rbp
    ccb7:	48 89 7d 10          	mov    %rdi,0x10(%rbp)
    ccbb:	48 89 75 18          	mov    %rsi,0x18(%rbp)
    ccbf:	65 48 8b 04 25 38 00 	mov    %gs:0x38,%rax
    ccc6:	00 00 
    ccc8:	48 29 c4             	sub    %rax,%rsp
    cccb:	48 c7 c0 3f 00 00 00 	mov    $0x3f,%rax
    ccd2:	48 f7 d0             	not    %rax
    ccd5:	48 21 c4             	and    %rax,%rsp
    ccd8:	48 89 e1             	mov    %rsp,%rcx
    ccdb:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
    cce2:	48 89 8c 24 98 00 00 	mov    %rcx,0x98(%rsp)
    cce9:	00 
    ccea:	48 89 5c 24 70       	mov    %rbx,0x70(%rsp)
    ccef:	48 89 74 24 68       	mov    %rsi,0x68(%rsp)
    ccf4:	48 89 7c 24 60       	mov    %rdi,0x60(%rsp)
    ccf9:	48 89 6c 24 58       	mov    %rbp,0x58(%rsp)
    ccfe:	4c 89 64 24 50       	mov    %r12,0x50(%rsp)
    cd03:	4c 89 6c 24 48       	mov    %r13,0x48(%rsp)
    cd08:	4c 89 74 24 40       	mov    %r14,0x40(%rsp)
    cd0d:	4c 89 7c 24 38       	mov    %r15,0x38(%rsp)
    cd12:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    cd19:	00 
    cd1a:	65 48 8b 04 25 38 00 	mov    %gs:0x38,%rax
    cd21:	00 00 
    cd23:	48 89 c1             	mov    %rax,%rcx
    cd26:	48 c1 e9 02          	shr    $0x2,%rcx
    cd2a:	48 31 c0             	xor    %rax,%rax
    cd2d:	fc                   	cld
    cd2e:	f3 ab                	rep stos %eax,%es:(%rdi)
    cd30:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    cd37:	00 
    cd38:	48 89 3c 24          	mov    %rdi,(%rsp)
    cd3c:	e8 e0 f9 ff ff       	call   c721 <save_xregs>
    cd41:	48 8d 3d 38 04 00 00 	lea    0x438(%rip),%rdi        # d180 <SYNTHETIC_STATE>
    cd48:	48 89 3c 24          	mov    %rdi,(%rsp)
    cd4c:	e8 a0 f9 ff ff       	call   c6f1 <restore_xregs>
    cd51:	0f ae e8             	lfence
    cd54:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    cd59:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
    cd5e:	48 c7 c0 44 49 43 4f 	mov    $0x4f434944,%rax
    cd65:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    cd6a:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
    cd6f:	65 48 8b 04 25 00 00 	mov    %gs:0x0,%rax
    cd76:	00 00 
    cd78:	48 89 c3             	mov    %rax,%rbx
    cd7b:	48 89 e7             	mov    %rsp,%rdi
    cd7e:	e8 1d 71 ff ff       	call   3ea0 <update_ocall_lastsp>
    cd83:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    cd88:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
    cd8d:	48 8b 53 20          	mov    0x20(%rbx),%rdx
    cd91:	8a 8a a7 00 00 00    	mov    0xa7(%rdx),%cl
    cd97:	80 f9 00             	cmp    $0x0,%cl
    cd9a:	74 0e                	je     cdaa <do_ocall+0xfb>
    cd9c:	c6 82 a7 00 00 00 00 	movb   $0x0,0xa7(%rdx)
    cda3:	c7 43 50 01 00 00 00 	movl   $0x1,0x50(%rbx)
    cdaa:	48 8b aa 98 00 00 00 	mov    0x98(%rdx),%rbp
    cdb1:	48 8b a2 90 00 00 00 	mov    0x90(%rdx),%rsp
    cdb8:	48 8b 58 f8          	mov    -0x8(%rax),%rbx
    cdbc:	48 c7 c0 04 00 00 00 	mov    $0x4,%rax
    cdc3:	48 31 c9             	xor    %rcx,%rcx
    cdc6:	48 31 d2             	xor    %rdx,%rdx
    cdc9:	4d 31 c0             	xor    %r8,%r8
    cdcc:	4d 31 c9             	xor    %r9,%r9
    cdcf:	4d 31 d2             	xor    %r10,%r10
    cdd2:	4d 31 db             	xor    %r11,%r11
    cdd5:	4d 31 e4             	xor    %r12,%r12
    cdd8:	4d 31 ed             	xor    %r13,%r13
    cddb:	4d 31 f6             	xor    %r14,%r14
    cdde:	4d 31 ff             	xor    %r15,%r15
    cde1:	48 01 d2             	add    %rdx,%rdx
    cde4:	fc                   	cld
    cde5:	0f 01 d7             	enclu

000000000000cde8 <__morestack>:
    cde8:	f3 0f 1e fa          	endbr64
    cdec:	55                   	push   %rbp
    cded:	48 89 e5             	mov    %rsp,%rbp
    cdf0:	48 83 ec 20          	sub    $0x20,%rsp
    cdf4:	e8 b6 fe ff ff       	call   ccaf <do_ocall>
    cdf9:	c9                   	leave
    cdfa:	c3                   	ret

000000000000cdfb <asm_oret>:
    cdfb:	f3 0f 1e fa          	endbr64
    cdff:	48 89 e3             	mov    %rsp,%rbx
    ce02:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    ce07:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    ce0c:	48 8b 63 08          	mov    0x8(%rbx),%rsp
    ce10:	48 8b bc 24 98 00 00 	mov    0x98(%rsp),%rdi
    ce17:	00 
    ce18:	e8 d4 f8 ff ff       	call   c6f1 <restore_xregs>
    ce1d:	0f ae e8             	lfence
    ce20:	48 31 c0             	xor    %rax,%rax
    ce23:	48 8b 4c 24 58       	mov    0x58(%rsp),%rcx
    ce28:	48 29 f9             	sub    %rdi,%rcx
    ce2b:	48 83 e9 08          	sub    $0x8,%rcx
    ce2f:	48 c1 e9 02          	shr    $0x2,%rcx
    ce33:	fc                   	cld
    ce34:	f3 ab                	rep stos %eax,%es:(%rdi)
    ce36:	48 8b 43 10          	mov    0x10(%rbx),%rax
    ce3a:	4c 8b 7c 24 38       	mov    0x38(%rsp),%r15
    ce3f:	4c 8b 74 24 40       	mov    0x40(%rsp),%r14
    ce44:	4c 8b 6c 24 48       	mov    0x48(%rsp),%r13
    ce49:	4c 8b 64 24 50       	mov    0x50(%rsp),%r12
    ce4e:	48 8b 6c 24 58       	mov    0x58(%rsp),%rbp
    ce53:	48 8b 7c 24 60       	mov    0x60(%rsp),%rdi
    ce58:	48 8b 74 24 68       	mov    0x68(%rsp),%rsi
    ce5d:	48 8b 5c 24 70       	mov    0x70(%rsp),%rbx
    ce62:	48 89 ec             	mov    %rbp,%rsp
    ce65:	5d                   	pop    %rbp
    ce66:	c3                   	ret
    ce67:	0f 0b                	ud2

000000000000ce69 <do_egetkey>:
    ce69:	f3 0f 1e fa          	endbr64
    ce6d:	53                   	push   %rbx
    ce6e:	51                   	push   %rcx
    ce6f:	52                   	push   %rdx
    ce70:	48 89 fb             	mov    %rdi,%rbx
    ce73:	48 89 f1             	mov    %rsi,%rcx
    ce76:	48 c7 c0 01 00 00 00 	mov    $0x1,%rax
    ce7d:	0f 01 d7             	enclu
    ce80:	74 03                	je     ce85 <do_egetkey+0x1c>
    ce82:	48 31 c0             	xor    %rax,%rax
    ce85:	5a                   	pop    %rdx
    ce86:	59                   	pop    %rcx
    ce87:	5b                   	pop    %rbx
    ce88:	c3                   	ret

000000000000ce89 <do_ereport>:
    ce89:	f3 0f 1e fa          	endbr64
    ce8d:	53                   	push   %rbx
    ce8e:	51                   	push   %rcx
    ce8f:	52                   	push   %rdx
    ce90:	48 89 fb             	mov    %rdi,%rbx
    ce93:	48 89 f1             	mov    %rsi,%rcx
    ce96:	48 c7 c0 00 00 00 00 	mov    $0x0,%rax
    ce9d:	f8                   	clc

000000000000ce9e <Lereport_inst>:
    ce9e:	0f 01 d7             	enclu
    cea1:	0f 92 c0             	setb   %al
    cea4:	5a                   	pop    %rdx
    cea5:	59                   	pop    %rcx
    cea6:	5b                   	pop    %rbx
    cea7:	c3                   	ret

000000000000cea8 <do_everifyreport2>:
    cea8:	f3 0f 1e fa          	endbr64
    ceac:	53                   	push   %rbx
    cead:	51                   	push   %rcx
    ceae:	52                   	push   %rdx
    ceaf:	48 89 fb             	mov    %rdi,%rbx
    ceb2:	48 89 f1             	mov    %rsi,%rcx
    ceb5:	48 c7 c0 08 00 00 00 	mov    $0x8,%rax

000000000000cebc <Leverifyreport2_inst>:
    cebc:	0f 01 d7             	enclu
    cebf:	74 03                	je     cec4 <Leverifyreport2_inst+0x8>
    cec1:	48 31 c0             	xor    %rax,%rax
    cec4:	5a                   	pop    %rdx
    cec5:	59                   	pop    %rcx
    cec6:	5b                   	pop    %rbx
    cec7:	c3                   	ret

000000000000cec8 <do_eaccept>:
    cec8:	f3 0f 1e fa          	endbr64
    cecc:	53                   	push   %rbx
    cecd:	51                   	push   %rcx
    cece:	52                   	push   %rdx
    cecf:	48 89 fb             	mov    %rdi,%rbx
    ced2:	48 89 f1             	mov    %rsi,%rcx
    ced5:	b8 05 00 00 00       	mov    $0x5,%eax
    ceda:	0f 01 d7             	enclu
    cedd:	83 f8 00             	cmp    $0x0,%eax
    cee0:	75 5e                	jne    cf40 <abort>
    cee2:	5a                   	pop    %rdx
    cee3:	59                   	pop    %rcx
    cee4:	5b                   	pop    %rbx
    cee5:	c3                   	ret

000000000000cee6 <do_eacceptcopy>:
    cee6:	f3 0f 1e fa          	endbr64
    ceea:	53                   	push   %rbx
    ceeb:	51                   	push   %rcx
    ceec:	52                   	push   %rdx
    ceed:	48 89 fb             	mov    %rdi,%rbx
    cef0:	48 89 f1             	mov    %rsi,%rcx
    cef3:	b8 07 00 00 00       	mov    $0x7,%eax
    cef8:	0f 01 d7             	enclu
    cefb:	83 f8 00             	cmp    $0x0,%eax
    cefe:	75 40                	jne    cf40 <abort>
    cf00:	5a                   	pop    %rdx
    cf01:	59                   	pop    %rcx
    cf02:	5b                   	pop    %rbx
    cf03:	c3                   	ret

000000000000cf04 <do_emodpe>:
    cf04:	f3 0f 1e fa          	endbr64
    cf08:	53                   	push   %rbx
    cf09:	51                   	push   %rcx
    cf0a:	52                   	push   %rdx
    cf0b:	48 89 fb             	mov    %rdi,%rbx
    cf0e:	48 89 f1             	mov    %rsi,%rcx
    cf11:	b8 06 00 00 00       	mov    $0x6,%eax
    cf16:	0f 01 d7             	enclu
    cf19:	5a                   	pop    %rdx
    cf1a:	59                   	pop    %rcx
    cf1b:	5b                   	pop    %rbx
    cf1c:	c3                   	ret

000000000000cf1d <do_rdrand>:
    cf1d:	f3 0f 1e fa          	endbr64
    cf21:	b9 0a 00 00 00       	mov    $0xa,%ecx
    cf26:	0f c7 f0             	rdrand %eax
    cf29:	72 08                	jb     cf33 <do_rdrand+0x16>
    cf2b:	ff c9                	dec    %ecx
    cf2d:	75 f7                	jne    cf26 <do_rdrand+0x9>
    cf2f:	48 31 c0             	xor    %rax,%rax
    cf32:	c3                   	ret
    cf33:	48 89 f9             	mov    %rdi,%rcx
    cf36:	89 01                	mov    %eax,(%rcx)
    cf38:	48 c7 c0 01 00 00 00 	mov    $0x1,%rax
    cf3f:	c3                   	ret

000000000000cf40 <abort>:
    cf40:	f3 0f 1e fa          	endbr64
    cf44:	48 8d 05 f5 61 00 00 	lea    0x61f5(%rip),%rax        # 13140 <g_enclave_state>
    cf4b:	c7 00 03 00 00 00    	movl   $0x3,(%rax)
    cf51:	0f 0b                	ud2

000000000000cf53 <continue_execution>:
    cf53:	f3 0f 1e fa          	endbr64
    cf57:	48 89 f9             	mov    %rdi,%rcx
    cf5a:	48 8b 01             	mov    (%rcx),%rax
    cf5d:	50                   	push   %rax
    cf5e:	48 8b 41 08          	mov    0x8(%rcx),%rax
    cf62:	50                   	push   %rax
    cf63:	48 8b 41 20          	mov    0x20(%rcx),%rax
    cf67:	48 2d 88 00 00 00    	sub    $0x88,%rax
    cf6d:	48 8b 51 10          	mov    0x10(%rcx),%rdx
    cf71:	48 8b 59 18          	mov    0x18(%rcx),%rbx
    cf75:	48 8b 69 28          	mov    0x28(%rcx),%rbp
    cf79:	48 8b 71 30          	mov    0x30(%rcx),%rsi
    cf7d:	48 8b 79 38          	mov    0x38(%rcx),%rdi
    cf81:	4c 8b 41 40          	mov    0x40(%rcx),%r8
    cf85:	4c 8b 49 48          	mov    0x48(%rcx),%r9
    cf89:	4c 8b 51 50          	mov    0x50(%rcx),%r10
    cf8d:	4c 8b 59 58          	mov    0x58(%rcx),%r11
    cf91:	4c 8b 61 60          	mov    0x60(%rcx),%r12
    cf95:	4c 8b 69 68          	mov    0x68(%rcx),%r13
    cf99:	4c 8b 71 70          	mov    0x70(%rcx),%r14
    cf9d:	4c 8b 79 78          	mov    0x78(%rcx),%r15
    cfa1:	ff b1 80 00 00 00    	push   0x80(%rcx)
    cfa7:	9d                   	popf
    cfa8:	48 8b 89 88 00 00 00 	mov    0x88(%rcx),%rcx
    cfaf:	48 89 08             	mov    %rcx,(%rax)
    cfb2:	59                   	pop    %rcx
    cfb3:	5c                   	pop    %rsp
    cfb4:	48 94                	xchg   %rax,%rsp
    cfb6:	c2 80 00             	ret    $0x80

000000000000cfb9 <second_phase>:
    cfb9:	f3 0f 1e fa          	endbr64
    cfbd:	48 89 f4             	mov    %rsi,%rsp
    cfc0:	48 c7 c0 09 00 00 00 	mov    $0x9,%rax
    cfc7:	0f 01 d7             	enclu
    cfca:	ff e2                	jmp    *%rdx
