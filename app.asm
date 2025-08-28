
app:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d1 2f 00 00 	mov    0x2fd1(%rip),%rax        # 3fe0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 62 2f 00 00    	push   0x2f62(%rip)        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 64 2f 00 00    	jmp    *0x2f64(%rip)        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   %ax,%ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   %ax,%ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <_init+0x20>
    105e:	66 90                	xchg   %ax,%ax
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <_init+0x20>
    106e:	66 90                	xchg   %ax,%ax
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	e9 a2 ff ff ff       	jmp    1020 <_init+0x20>
    107e:	66 90                	xchg   %ax,%ax
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	e9 92 ff ff ff       	jmp    1020 <_init+0x20>
    108e:	66 90                	xchg   %ax,%ax
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   $0x6
    1099:	e9 82 ff ff ff       	jmp    1020 <_init+0x20>
    109e:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	ff 25 46 2f 00 00    	jmp    *0x2f46(%rip)        # 3ff0 <__cxa_finalize@GLIBC_2.2.5>
    10aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010b0 <puts@plt>:
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	ff 25 de 2e 00 00    	jmp    *0x2ede(%rip)        # 3f98 <puts@GLIBC_2.2.5>
    10ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010c0 <sgx_destroy_enclave@plt>:
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	ff 25 d6 2e 00 00    	jmp    *0x2ed6(%rip)        # 3fa0 <sgx_destroy_enclave@Base>
    10ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010d0 <__stack_chk_fail@plt>:
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	ff 25 ce 2e 00 00    	jmp    *0x2ece(%rip)        # 3fa8 <__stack_chk_fail@GLIBC_2.4>
    10da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010e0 <printf@plt>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	ff 25 c6 2e 00 00    	jmp    *0x2ec6(%rip)        # 3fb0 <printf@GLIBC_2.2.5>
    10ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010f0 <__isoc23_scanf@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	ff 25 be 2e 00 00    	jmp    *0x2ebe(%rip)        # 3fb8 <__isoc23_scanf@GLIBC_2.38>
    10fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001100 <sgx_ecall@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	ff 25 b6 2e 00 00    	jmp    *0x2eb6(%rip)        # 3fc0 <sgx_ecall@Base>
    110a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001110 <sgx_create_enclave@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	ff 25 ae 2e 00 00    	jmp    *0x2eae(%rip)        # 3fc8 <sgx_create_enclave@Base>
    111a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001120 <_start>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	31 ed                	xor    %ebp,%ebp
    1126:	49 89 d1             	mov    %rdx,%r9
    1129:	5e                   	pop    %rsi
    112a:	48 89 e2             	mov    %rsp,%rdx
    112d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1131:	50                   	push   %rax
    1132:	54                   	push   %rsp
    1133:	45 31 c0             	xor    %r8d,%r8d
    1136:	31 c9                	xor    %ecx,%ecx
    1138:	48 8d 3d ac 01 00 00 	lea    0x1ac(%rip),%rdi        # 12eb <main>
    113f:	ff 15 8b 2e 00 00    	call   *0x2e8b(%rip)        # 3fd0 <__libc_start_main@GLIBC_2.34>
    1145:	f4                   	hlt
    1146:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    114d:	00 00 00 

0000000000001150 <deregister_tm_clones>:
    1150:	48 8d 3d b9 2e 00 00 	lea    0x2eb9(%rip),%rdi        # 4010 <__TMC_END__>
    1157:	48 8d 05 b2 2e 00 00 	lea    0x2eb2(%rip),%rax        # 4010 <__TMC_END__>
    115e:	48 39 f8             	cmp    %rdi,%rax
    1161:	74 15                	je     1178 <deregister_tm_clones+0x28>
    1163:	48 8b 05 6e 2e 00 00 	mov    0x2e6e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable@Base>
    116a:	48 85 c0             	test   %rax,%rax
    116d:	74 09                	je     1178 <deregister_tm_clones+0x28>
    116f:	ff e0                	jmp    *%rax
    1171:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1178:	c3                   	ret
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <register_tm_clones>:
    1180:	48 8d 3d 89 2e 00 00 	lea    0x2e89(%rip),%rdi        # 4010 <__TMC_END__>
    1187:	48 8d 35 82 2e 00 00 	lea    0x2e82(%rip),%rsi        # 4010 <__TMC_END__>
    118e:	48 29 fe             	sub    %rdi,%rsi
    1191:	48 89 f0             	mov    %rsi,%rax
    1194:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1198:	48 c1 f8 03          	sar    $0x3,%rax
    119c:	48 01 c6             	add    %rax,%rsi
    119f:	48 d1 fe             	sar    $1,%rsi
    11a2:	74 14                	je     11b8 <register_tm_clones+0x38>
    11a4:	48 8b 05 3d 2e 00 00 	mov    0x2e3d(%rip),%rax        # 3fe8 <_ITM_registerTMCloneTable@Base>
    11ab:	48 85 c0             	test   %rax,%rax
    11ae:	74 08                	je     11b8 <register_tm_clones+0x38>
    11b0:	ff e0                	jmp    *%rax
    11b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11b8:	c3                   	ret
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <__do_global_dtors_aux>:
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	80 3d 45 2e 00 00 00 	cmpb   $0x0,0x2e45(%rip)        # 4010 <__TMC_END__>
    11cb:	75 2b                	jne    11f8 <__do_global_dtors_aux+0x38>
    11cd:	55                   	push   %rbp
    11ce:	48 83 3d 1a 2e 00 00 	cmpq   $0x0,0x2e1a(%rip)        # 3ff0 <__cxa_finalize@GLIBC_2.2.5>
    11d5:	00 
    11d6:	48 89 e5             	mov    %rsp,%rbp
    11d9:	74 0c                	je     11e7 <__do_global_dtors_aux+0x27>
    11db:	48 8b 3d 26 2e 00 00 	mov    0x2e26(%rip),%rdi        # 4008 <__dso_handle>
    11e2:	e8 b9 fe ff ff       	call   10a0 <__cxa_finalize@plt>
    11e7:	e8 64 ff ff ff       	call   1150 <deregister_tm_clones>
    11ec:	c6 05 1d 2e 00 00 01 	movb   $0x1,0x2e1d(%rip)        # 4010 <__TMC_END__>
    11f3:	5d                   	pop    %rbp
    11f4:	c3                   	ret
    11f5:	0f 1f 00             	nopl   (%rax)
    11f8:	c3                   	ret
    11f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001200 <frame_dummy>:
    1200:	f3 0f 1e fa          	endbr64
    1204:	e9 77 ff ff ff       	jmp    1180 <register_tm_clones>

0000000000001209 <Enclave_host_print>:
    1209:	f3 0f 1e fa          	endbr64
    120d:	55                   	push   %rbp
    120e:	48 89 e5             	mov    %rsp,%rbp
    1211:	48 83 ec 20          	sub    $0x20,%rsp
    1215:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1219:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    121d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1221:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1225:	48 8b 00             	mov    (%rax),%rax
    1228:	48 89 c7             	mov    %rax,%rdi
    122b:	e8 8d 00 00 00       	call   12bd <host_print>
    1230:	b8 00 00 00 00       	mov    $0x0,%eax
    1235:	c9                   	leave
    1236:	c3                   	ret

0000000000001237 <enclave_add>:
    1237:	f3 0f 1e fa          	endbr64
    123b:	55                   	push   %rbp
    123c:	48 89 e5             	mov    %rsp,%rbp
    123f:	48 83 ec 40          	sub    $0x40,%rsp
    1243:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    1247:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    124b:	89 55 cc             	mov    %edx,-0x34(%rbp)
    124e:	89 4d c8             	mov    %ecx,-0x38(%rbp)
    1251:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1258:	00 00 
    125a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    125e:	31 c0                	xor    %eax,%eax
    1260:	8b 45 cc             	mov    -0x34(%rbp),%eax
    1263:	89 45 f0             	mov    %eax,-0x10(%rbp)
    1266:	8b 45 c8             	mov    -0x38(%rbp),%eax
    1269:	89 45 f4             	mov    %eax,-0xc(%rbp)
    126c:	48 8d 55 ec          	lea    -0x14(%rbp),%rdx
    1270:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    1274:	48 89 d1             	mov    %rdx,%rcx
    1277:	48 8d 15 f2 2a 00 00 	lea    0x2af2(%rip),%rdx        # 3d70 <ocall_table_Enclave>
    127e:	be 00 00 00 00       	mov    $0x0,%esi
    1283:	48 89 c7             	mov    %rax,%rdi
    1286:	e8 75 fe ff ff       	call   1100 <sgx_ecall@plt>
    128b:	89 45 e8             	mov    %eax,-0x18(%rbp)
    128e:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
    1292:	75 10                	jne    12a4 <enclave_add+0x6d>
    1294:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
    1299:	74 09                	je     12a4 <enclave_add+0x6d>
    129b:	8b 55 ec             	mov    -0x14(%rbp),%edx
    129e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    12a2:	89 10                	mov    %edx,(%rax)
    12a4:	8b 45 e8             	mov    -0x18(%rbp),%eax
    12a7:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    12ab:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    12b2:	00 00 
    12b4:	74 05                	je     12bb <enclave_add+0x84>
    12b6:	e8 15 fe ff ff       	call   10d0 <__stack_chk_fail@plt>
    12bb:	c9                   	leave
    12bc:	c3                   	ret

00000000000012bd <host_print>:
    12bd:	f3 0f 1e fa          	endbr64
    12c1:	55                   	push   %rbp
    12c2:	48 89 e5             	mov    %rsp,%rbp
    12c5:	48 83 ec 10          	sub    $0x10,%rsp
    12c9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    12cd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    12d1:	48 89 c6             	mov    %rax,%rsi
    12d4:	48 8d 05 2d 0d 00 00 	lea    0xd2d(%rip),%rax        # 2008 <_IO_stdin_used+0x8>
    12db:	48 89 c7             	mov    %rax,%rdi
    12de:	b8 00 00 00 00       	mov    $0x0,%eax
    12e3:	e8 f8 fd ff ff       	call   10e0 <printf@plt>
    12e8:	90                   	nop
    12e9:	c9                   	leave
    12ea:	c3                   	ret

00000000000012eb <main>:
    12eb:	f3 0f 1e fa          	endbr64
    12ef:	55                   	push   %rbp
    12f0:	48 89 e5             	mov    %rsp,%rbp
    12f3:	48 81 ec 30 04 00 00 	sub    $0x430,%rsp
    12fa:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1301:	00 00 
    1303:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    1307:	31 c0                	xor    %eax,%eax
    1309:	48 8d 95 f0 fb ff ff 	lea    -0x410(%rbp),%rdx
    1310:	b8 00 00 00 00       	mov    $0x0,%eax
    1315:	b9 80 00 00 00       	mov    $0x80,%ecx
    131a:	48 89 d7             	mov    %rdx,%rdi
    131d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1320:	c7 85 d8 fb ff ff 00 	movl   $0x0,-0x428(%rbp)
    1327:	00 00 00 
    132a:	48 8d 95 d8 fb ff ff 	lea    -0x428(%rbp),%rdx
    1331:	48 8d 85 f0 fb ff ff 	lea    -0x410(%rbp),%rax
    1338:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    133e:	48 8d 0d d3 2c 00 00 	lea    0x2cd3(%rip),%rcx        # 4018 <eid>
    1345:	49 89 c8             	mov    %rcx,%r8
    1348:	48 89 d1             	mov    %rdx,%rcx
    134b:	48 89 c2             	mov    %rax,%rdx
    134e:	be 01 00 00 00       	mov    $0x1,%esi
    1353:	48 8d 05 d8 0c 00 00 	lea    0xcd8(%rip),%rax        # 2032 <_IO_stdin_used+0x32>
    135a:	48 89 c7             	mov    %rax,%rdi
    135d:	e8 ae fd ff ff       	call   1110 <sgx_create_enclave@plt>
    1362:	85 c0                	test   %eax,%eax
    1364:	0f 95 c0             	setne  %al
    1367:	84 c0                	test   %al,%al
    1369:	74 19                	je     1384 <main+0x99>
    136b:	48 8d 05 d2 0c 00 00 	lea    0xcd2(%rip),%rax        # 2044 <_IO_stdin_used+0x44>
    1372:	48 89 c7             	mov    %rax,%rdi
    1375:	e8 36 fd ff ff       	call   10b0 <puts@plt>
    137a:	b8 01 00 00 00       	mov    $0x1,%eax
    137f:	e9 1a 01 00 00       	jmp    149e <main+0x1b3>
    1384:	48 8d 05 d2 0c 00 00 	lea    0xcd2(%rip),%rax        # 205d <_IO_stdin_used+0x5d>
    138b:	48 89 c7             	mov    %rax,%rdi
    138e:	b8 00 00 00 00       	mov    $0x0,%eax
    1393:	e8 48 fd ff ff       	call   10e0 <printf@plt>
    1398:	48 8d 85 dc fb ff ff 	lea    -0x424(%rbp),%rax
    139f:	48 89 c6             	mov    %rax,%rsi
    13a2:	48 8d 05 cd 0c 00 00 	lea    0xccd(%rip),%rax        # 2076 <_IO_stdin_used+0x76>
    13a9:	48 89 c7             	mov    %rax,%rdi
    13ac:	b8 00 00 00 00       	mov    $0x0,%eax
    13b1:	e8 3a fd ff ff       	call   10f0 <__isoc23_scanf@plt>
    13b6:	83 f8 01             	cmp    $0x1,%eax
    13b9:	0f 95 c0             	setne  %al
    13bc:	84 c0                	test   %al,%al
    13be:	74 19                	je     13d9 <main+0xee>
    13c0:	48 8d 05 b2 0c 00 00 	lea    0xcb2(%rip),%rax        # 2079 <_IO_stdin_used+0x79>
    13c7:	48 89 c7             	mov    %rax,%rdi
    13ca:	e8 e1 fc ff ff       	call   10b0 <puts@plt>
    13cf:	b8 01 00 00 00       	mov    $0x1,%eax
    13d4:	e9 c5 00 00 00       	jmp    149e <main+0x1b3>
    13d9:	48 8d 05 a8 0c 00 00 	lea    0xca8(%rip),%rax        # 2088 <_IO_stdin_used+0x88>
    13e0:	48 89 c7             	mov    %rax,%rdi
    13e3:	b8 00 00 00 00       	mov    $0x0,%eax
    13e8:	e8 f3 fc ff ff       	call   10e0 <printf@plt>
    13ed:	48 8d 85 e0 fb ff ff 	lea    -0x420(%rbp),%rax
    13f4:	48 89 c6             	mov    %rax,%rsi
    13f7:	48 8d 05 78 0c 00 00 	lea    0xc78(%rip),%rax        # 2076 <_IO_stdin_used+0x76>
    13fe:	48 89 c7             	mov    %rax,%rdi
    1401:	b8 00 00 00 00       	mov    $0x0,%eax
    1406:	e8 e5 fc ff ff       	call   10f0 <__isoc23_scanf@plt>
    140b:	83 f8 01             	cmp    $0x1,%eax
    140e:	0f 95 c0             	setne  %al
    1411:	84 c0                	test   %al,%al
    1413:	74 16                	je     142b <main+0x140>
    1415:	48 8d 05 5d 0c 00 00 	lea    0xc5d(%rip),%rax        # 2079 <_IO_stdin_used+0x79>
    141c:	48 89 c7             	mov    %rax,%rdi
    141f:	e8 8c fc ff ff       	call   10b0 <puts@plt>
    1424:	b8 01 00 00 00       	mov    $0x1,%eax
    1429:	eb 73                	jmp    149e <main+0x1b3>
    142b:	c7 85 e4 fb ff ff 00 	movl   $0x0,-0x41c(%rbp)
    1432:	00 00 00 
    1435:	48 8d 85 e4 fb ff ff 	lea    -0x41c(%rbp),%rax
    143c:	48 89 85 e8 fb ff ff 	mov    %rax,-0x418(%rbp)
    1443:	8b 8d e0 fb ff ff    	mov    -0x420(%rbp),%ecx
    1449:	8b 95 dc fb ff ff    	mov    -0x424(%rbp),%edx
    144f:	48 8d 05 c2 2b 00 00 	lea    0x2bc2(%rip),%rax        # 4018 <eid>
    1456:	48 8b 00             	mov    (%rax),%rax
    1459:	48 8b b5 e8 fb ff ff 	mov    -0x418(%rbp),%rsi
    1460:	48 89 c7             	mov    %rax,%rdi
    1463:	e8 cf fd ff ff       	call   1237 <enclave_add>
    1468:	48 8b 85 e8 fb ff ff 	mov    -0x418(%rbp),%rax
    146f:	8b 00                	mov    (%rax),%eax
    1471:	89 c6                	mov    %eax,%esi
    1473:	48 8d 05 28 0c 00 00 	lea    0xc28(%rip),%rax        # 20a2 <_IO_stdin_used+0xa2>
    147a:	48 89 c7             	mov    %rax,%rdi
    147d:	b8 00 00 00 00       	mov    $0x0,%eax
    1482:	e8 59 fc ff ff       	call   10e0 <printf@plt>
    1487:	48 8d 05 8a 2b 00 00 	lea    0x2b8a(%rip),%rax        # 4018 <eid>
    148e:	48 8b 00             	mov    (%rax),%rax
    1491:	48 89 c7             	mov    %rax,%rdi
    1494:	e8 27 fc ff ff       	call   10c0 <sgx_destroy_enclave@plt>
    1499:	b8 00 00 00 00       	mov    $0x0,%eax
    149e:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    14a2:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    14a9:	00 00 
    14ab:	74 05                	je     14b2 <main+0x1c7>
    14ad:	e8 1e fc ff ff       	call   10d0 <__stack_chk_fail@plt>
    14b2:	c9                   	leave
    14b3:	c3                   	ret

Disassembly of section .fini:

00000000000014b4 <_fini>:
    14b4:	f3 0f 1e fa          	endbr64
    14b8:	48 83 ec 08          	sub    $0x8,%rsp
    14bc:	48 83 c4 08          	add    $0x8,%rsp
    14c0:	c3                   	ret
