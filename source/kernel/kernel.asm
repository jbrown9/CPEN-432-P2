
opt/kernel.elf:     file format elf32-littlearm


Disassembly of section .text:

00008000 <__start>:
    8000:	e10f0000 	mrs	r0, CPSR
    8004:	e321f0d2 	msr	CPSR_c, #210	; 0xd2
    8008:	e59fd034 	ldr	sp, [pc, #52]	; 8044 <hang+0x8>
    800c:	e121f000 	msr	CPSR_c, r0
    8010:	e59fd030 	ldr	sp, [pc, #48]	; 8048 <hang+0xc>
    8014:	e59f0030 	ldr	r0, [pc, #48]	; 804c <hang+0x10>
    8018:	e59f1030 	ldr	r1, [pc, #48]	; 8050 <hang+0x14>
    801c:	e3a02000 	mov	r2, #0
    8020:	e3a03000 	mov	r3, #0
    8024:	e3a04000 	mov	r4, #0
    8028:	e3a05000 	mov	r5, #0

0000802c <bss_loop>:
    802c:	e8a0003c 	stmia	r0!, {r2, r3, r4, r5}
    8030:	e1500001 	cmp	r0, r1
    8034:	3afffffc 	bcc	802c <bss_loop>
    8038:	eb0000cf 	bl	837c <kernel_main>

0000803c <hang>:
    803c:	e320f003 	wfi
    8040:	eafffffd 	b	803c <hang>
    8044:	0012e000 	andseq	lr, r2, r0
    8048:	0011d000 	andseq	sp, r1, r0
    804c:	0000c000 	andeq	ip, r0, r0
    8050:	0000d000 	andeq	sp, r0, r0

00008054 <gpio_config>:
    8054:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8058:	e28db000 	add	fp, sp, #0
    805c:	e24dd01c 	sub	sp, sp, #28
    8060:	e1a03000 	mov	r3, r0
    8064:	e1a02001 	mov	r2, r1
    8068:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    806c:	e1a03002 	mov	r3, r2
    8070:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
    8074:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    8078:	e3530035 	cmp	r3, #53	; 0x35
    807c:	8a000037 	bhi	8160 <gpio_config+0x10c>
    8080:	e55b3016 	ldrb	r3, [fp, #-22]	; 0xffffffea
    8084:	e3530007 	cmp	r3, #7
    8088:	8a000034 	bhi	8160 <gpio_config+0x10c>
    808c:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    8090:	e30c3ccd 	movw	r3, #52429	; 0xcccd
    8094:	e34c3ccc 	movt	r3, #52428	; 0xcccc
    8098:	e0832293 	umull	r2, r3, r3, r2
    809c:	e1a031a3 	lsr	r3, r3, #3
    80a0:	e6ef3073 	uxtb	r3, r3
    80a4:	e50b3008 	str	r3, [fp, #-8]
    80a8:	e30b3000 	movw	r3, #45056	; 0xb000
    80ac:	e3403000 	movt	r3, #0
    80b0:	e5932000 	ldr	r2, [r3]
    80b4:	e51b3008 	ldr	r3, [fp, #-8]
    80b8:	e1a03103 	lsl	r3, r3, #2
    80bc:	e0823003 	add	r3, r2, r3
    80c0:	e5933000 	ldr	r3, [r3]
    80c4:	e50b300c 	str	r3, [fp, #-12]
    80c8:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    80cc:	e30c3ccd 	movw	r3, #52429	; 0xcccd
    80d0:	e34c3ccc 	movt	r3, #52428	; 0xcccc
    80d4:	e0831293 	umull	r1, r3, r3, r2
    80d8:	e1a031a3 	lsr	r3, r3, #3
    80dc:	e3a0100a 	mov	r1, #10
    80e0:	e0030391 	mul	r3, r1, r3
    80e4:	e0423003 	sub	r3, r2, r3
    80e8:	e6ef3073 	uxtb	r3, r3
    80ec:	e1a02003 	mov	r2, r3
    80f0:	e1a03002 	mov	r3, r2
    80f4:	e1a03083 	lsl	r3, r3, #1
    80f8:	e0833002 	add	r3, r3, r2
    80fc:	e50b3010 	str	r3, [fp, #-16]
    8100:	e3a02007 	mov	r2, #7
    8104:	e51b3010 	ldr	r3, [fp, #-16]
    8108:	e1a03312 	lsl	r3, r2, r3
    810c:	e1e03003 	mvn	r3, r3
    8110:	e1a02003 	mov	r2, r3
    8114:	e51b300c 	ldr	r3, [fp, #-12]
    8118:	e0033002 	and	r3, r3, r2
    811c:	e50b300c 	str	r3, [fp, #-12]
    8120:	e55b2016 	ldrb	r2, [fp, #-22]	; 0xffffffea
    8124:	e51b3010 	ldr	r3, [fp, #-16]
    8128:	e1a03312 	lsl	r3, r2, r3
    812c:	e1a02003 	mov	r2, r3
    8130:	e51b300c 	ldr	r3, [fp, #-12]
    8134:	e1833002 	orr	r3, r3, r2
    8138:	e50b300c 	str	r3, [fp, #-12]
    813c:	e30b3000 	movw	r3, #45056	; 0xb000
    8140:	e3403000 	movt	r3, #0
    8144:	e5932000 	ldr	r2, [r3]
    8148:	e51b3008 	ldr	r3, [fp, #-8]
    814c:	e1a03103 	lsl	r3, r3, #2
    8150:	e0823003 	add	r3, r2, r3
    8154:	e51b200c 	ldr	r2, [fp, #-12]
    8158:	e5832000 	str	r2, [r3]
    815c:	ea000000 	b	8164 <gpio_config+0x110>
    8160:	e320f000 	nop	{0}
    8164:	e28bd000 	add	sp, fp, #0
    8168:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    816c:	e12fff1e 	bx	lr

00008170 <gpio_set>:
    8170:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8174:	e28db000 	add	fp, sp, #0
    8178:	e24dd00c 	sub	sp, sp, #12
    817c:	e1a03000 	mov	r3, r0
    8180:	e54b3005 	strb	r3, [fp, #-5]
    8184:	e55b3005 	ldrb	r3, [fp, #-5]
    8188:	e3530035 	cmp	r3, #53	; 0x35
    818c:	8a000015 	bhi	81e8 <gpio_set+0x78>
    8190:	e55b3005 	ldrb	r3, [fp, #-5]
    8194:	e353001f 	cmp	r3, #31
    8198:	9a000009 	bls	81c4 <gpio_set+0x54>
    819c:	e55b3005 	ldrb	r3, [fp, #-5]
    81a0:	e2433020 	sub	r3, r3, #32
    81a4:	e3a02001 	mov	r2, #1
    81a8:	e1a02312 	lsl	r2, r2, r3
    81ac:	e30b3000 	movw	r3, #45056	; 0xb000
    81b0:	e3403000 	movt	r3, #0
    81b4:	e5933000 	ldr	r3, [r3]
    81b8:	e2833020 	add	r3, r3, #32
    81bc:	e5832000 	str	r2, [r3]
    81c0:	ea000009 	b	81ec <gpio_set+0x7c>
    81c4:	e55b3005 	ldrb	r3, [fp, #-5]
    81c8:	e3a02001 	mov	r2, #1
    81cc:	e1a02312 	lsl	r2, r2, r3
    81d0:	e30b3000 	movw	r3, #45056	; 0xb000
    81d4:	e3403000 	movt	r3, #0
    81d8:	e5933000 	ldr	r3, [r3]
    81dc:	e283301c 	add	r3, r3, #28
    81e0:	e5832000 	str	r2, [r3]
    81e4:	ea000000 	b	81ec <gpio_set+0x7c>
    81e8:	e320f000 	nop	{0}
    81ec:	e28bd000 	add	sp, fp, #0
    81f0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    81f4:	e12fff1e 	bx	lr

000081f8 <gpio_clr>:
    81f8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    81fc:	e28db000 	add	fp, sp, #0
    8200:	e24dd00c 	sub	sp, sp, #12
    8204:	e1a03000 	mov	r3, r0
    8208:	e54b3005 	strb	r3, [fp, #-5]
    820c:	e55b3005 	ldrb	r3, [fp, #-5]
    8210:	e3530035 	cmp	r3, #53	; 0x35
    8214:	8a000015 	bhi	8270 <gpio_clr+0x78>
    8218:	e55b3005 	ldrb	r3, [fp, #-5]
    821c:	e353001f 	cmp	r3, #31
    8220:	9a000009 	bls	824c <gpio_clr+0x54>
    8224:	e55b3005 	ldrb	r3, [fp, #-5]
    8228:	e2433020 	sub	r3, r3, #32
    822c:	e3a02001 	mov	r2, #1
    8230:	e1a02312 	lsl	r2, r2, r3
    8234:	e30b3000 	movw	r3, #45056	; 0xb000
    8238:	e3403000 	movt	r3, #0
    823c:	e5933000 	ldr	r3, [r3]
    8240:	e283302c 	add	r3, r3, #44	; 0x2c
    8244:	e5832000 	str	r2, [r3]
    8248:	ea000009 	b	8274 <gpio_clr+0x7c>
    824c:	e55b3005 	ldrb	r3, [fp, #-5]
    8250:	e3a02001 	mov	r2, #1
    8254:	e1a02312 	lsl	r2, r2, r3
    8258:	e30b3000 	movw	r3, #45056	; 0xb000
    825c:	e3403000 	movt	r3, #0
    8260:	e5933000 	ldr	r3, [r3]
    8264:	e2833028 	add	r3, r3, #40	; 0x28
    8268:	e5832000 	str	r2, [r3]
    826c:	ea000000 	b	8274 <gpio_clr+0x7c>
    8270:	e320f000 	nop	{0}
    8274:	e28bd000 	add	sp, fp, #0
    8278:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    827c:	e12fff1e 	bx	lr

00008280 <gpio_set_pull>:
    8280:	e92d4800 	push	{fp, lr}
    8284:	e28db004 	add	fp, sp, #4
    8288:	e24dd008 	sub	sp, sp, #8
    828c:	e1a03000 	mov	r3, r0
    8290:	e1a02001 	mov	r2, r1
    8294:	e54b3005 	strb	r3, [fp, #-5]
    8298:	e1a03002 	mov	r3, r2
    829c:	e54b3006 	strb	r3, [fp, #-6]
    82a0:	e55b3005 	ldrb	r3, [fp, #-5]
    82a4:	e3530035 	cmp	r3, #53	; 0x35
    82a8:	8a000030 	bhi	8370 <gpio_set_pull+0xf0>
    82ac:	e55b3006 	ldrb	r3, [fp, #-6]
    82b0:	e3530002 	cmp	r3, #2
    82b4:	8a00002d 	bhi	8370 <gpio_set_pull+0xf0>
    82b8:	e30b3000 	movw	r3, #45056	; 0xb000
    82bc:	e3403000 	movt	r3, #0
    82c0:	e5933000 	ldr	r3, [r3]
    82c4:	e2833094 	add	r3, r3, #148	; 0x94
    82c8:	e55b2006 	ldrb	r2, [fp, #-6]
    82cc:	e5832000 	str	r2, [r3]
    82d0:	e3a00096 	mov	r0, #150	; 0x96
    82d4:	eb0002c1 	bl	8de0 <delay_cycles>
    82d8:	e55b3005 	ldrb	r3, [fp, #-5]
    82dc:	e353001f 	cmp	r3, #31
    82e0:	9a000011 	bls	832c <gpio_set_pull+0xac>
    82e4:	e55b3005 	ldrb	r3, [fp, #-5]
    82e8:	e2433020 	sub	r3, r3, #32
    82ec:	e3a02001 	mov	r2, #1
    82f0:	e1a02312 	lsl	r2, r2, r3
    82f4:	e30b3000 	movw	r3, #45056	; 0xb000
    82f8:	e3403000 	movt	r3, #0
    82fc:	e5933000 	ldr	r3, [r3]
    8300:	e283309c 	add	r3, r3, #156	; 0x9c
    8304:	e5832000 	str	r2, [r3]
    8308:	e3a00096 	mov	r0, #150	; 0x96
    830c:	eb0002b3 	bl	8de0 <delay_cycles>
    8310:	e30b3000 	movw	r3, #45056	; 0xb000
    8314:	e3403000 	movt	r3, #0
    8318:	e5933000 	ldr	r3, [r3]
    831c:	e283309c 	add	r3, r3, #156	; 0x9c
    8320:	e3a02000 	mov	r2, #0
    8324:	e5832000 	str	r2, [r3]
    8328:	ea000011 	b	8374 <gpio_set_pull+0xf4>
    832c:	e55b3005 	ldrb	r3, [fp, #-5]
    8330:	e3a02001 	mov	r2, #1
    8334:	e1a02312 	lsl	r2, r2, r3
    8338:	e30b3000 	movw	r3, #45056	; 0xb000
    833c:	e3403000 	movt	r3, #0
    8340:	e5933000 	ldr	r3, [r3]
    8344:	e2833098 	add	r3, r3, #152	; 0x98
    8348:	e5832000 	str	r2, [r3]
    834c:	e3a00096 	mov	r0, #150	; 0x96
    8350:	eb0002a2 	bl	8de0 <delay_cycles>
    8354:	e30b3000 	movw	r3, #45056	; 0xb000
    8358:	e3403000 	movt	r3, #0
    835c:	e5933000 	ldr	r3, [r3]
    8360:	e2833098 	add	r3, r3, #152	; 0x98
    8364:	e3a02000 	mov	r2, #0
    8368:	e5832000 	str	r2, [r3]
    836c:	ea000000 	b	8374 <gpio_set_pull+0xf4>
    8370:	e320f000 	nop	{0}
    8374:	e24bd004 	sub	sp, fp, #4
    8378:	e8bd8800 	pop	{fp, pc}

0000837c <kernel_main>:
    837c:	e92d4800 	push	{fp, lr}
    8380:	e28db004 	add	fp, sp, #4
    8384:	e24dd010 	sub	sp, sp, #16
    8388:	e3a03001 	mov	r3, #1
    838c:	e50b300c 	str	r3, [fp, #-12]
    8390:	eb000161 	bl	891c <uart_init>
    8394:	e3a03000 	mov	r3, #0
    8398:	e50b3008 	str	r3, [fp, #-8]
    839c:	ea00000c 	b	83d4 <kernel_main+0x58>
    83a0:	e30c3000 	movw	r3, #49152	; 0xc000
    83a4:	e3403000 	movt	r3, #0
    83a8:	e51b2008 	ldr	r2, [fp, #-8]
    83ac:	e51b1008 	ldr	r1, [fp, #-8]
    83b0:	e7831102 	str	r1, [r3, r2, lsl #2]
    83b4:	e30c37d0 	movw	r3, #51152	; 0xc7d0
    83b8:	e3403000 	movt	r3, #0
    83bc:	e51b2008 	ldr	r2, [fp, #-8]
    83c0:	e51b1008 	ldr	r1, [fp, #-8]
    83c4:	e7831102 	str	r1, [r3, r2, lsl #2]
    83c8:	e51b3008 	ldr	r3, [fp, #-8]
    83cc:	e2833001 	add	r3, r3, #1
    83d0:	e50b3008 	str	r3, [fp, #-8]
    83d4:	e51b3008 	ldr	r3, [fp, #-8]
    83d8:	e3530f7d 	cmp	r3, #500	; 0x1f4
    83dc:	baffffef 	blt	83a0 <kernel_main+0x24>
    83e0:	e30a0000 	movw	r0, #40960	; 0xa000
    83e4:	e3400000 	movt	r0, #0
    83e8:	eb00009b 	bl	865c <printk>
    83ec:	eb000258 	bl	8d54 <start_countdown>
    83f0:	e30c0000 	movw	r0, #49152	; 0xc000
    83f4:	e3400000 	movt	r0, #0
    83f8:	eb0002ea 	bl	8fa8 <optimized>
    83fc:	eb00026a 	bl	8dac <timer_latch>
    8400:	e50b0010 	str	r0, [fp, #-16]
    8404:	e51b1010 	ldr	r1, [fp, #-16]
    8408:	e30a0024 	movw	r0, #40996	; 0xa024
    840c:	e3400000 	movt	r0, #0
    8410:	eb000091 	bl	865c <printk>
    8414:	e30a0028 	movw	r0, #41000	; 0xa028
    8418:	e3400000 	movt	r0, #0
    841c:	eb00008e 	bl	865c <printk>
    8420:	eb00024b 	bl	8d54 <start_countdown>
    8424:	e30c07d0 	movw	r0, #51152	; 0xc7d0
    8428:	e3400000 	movt	r0, #0
    842c:	eb00028d 	bl	8e68 <unoptimized>
    8430:	eb00025d 	bl	8dac <timer_latch>
    8434:	e50b0010 	str	r0, [fp, #-16]
    8438:	e51b1010 	ldr	r1, [fp, #-16]
    843c:	e30a0024 	movw	r0, #40996	; 0xa024
    8440:	e3400000 	movt	r0, #0
    8444:	eb000084 	bl	865c <printk>
    8448:	e3a03000 	mov	r3, #0
    844c:	e50b3008 	str	r3, [fp, #-8]
    8450:	ea000026 	b	84f0 <kernel_main+0x174>
    8454:	e30c3000 	movw	r3, #49152	; 0xc000
    8458:	e3403000 	movt	r3, #0
    845c:	e51b2008 	ldr	r2, [fp, #-8]
    8460:	e7932102 	ldr	r2, [r3, r2, lsl #2]
    8464:	e30c37d0 	movw	r3, #51152	; 0xc7d0
    8468:	e3403000 	movt	r3, #0
    846c:	e51b1008 	ldr	r1, [fp, #-8]
    8470:	e7933101 	ldr	r3, [r3, r1, lsl #2]
    8474:	e1520003 	cmp	r2, r3
    8478:	0a000019 	beq	84e4 <kernel_main+0x168>
    847c:	e51b1008 	ldr	r1, [fp, #-8]
    8480:	e30a004c 	movw	r0, #41036	; 0xa04c
    8484:	e3400000 	movt	r0, #0
    8488:	eb000073 	bl	865c <printk>
    848c:	e30c3000 	movw	r3, #49152	; 0xc000
    8490:	e3403000 	movt	r3, #0
    8494:	e51b2008 	ldr	r2, [fp, #-8]
    8498:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    849c:	e1a01003 	mov	r1, r3
    84a0:	e30a0058 	movw	r0, #41048	; 0xa058
    84a4:	e3400000 	movt	r0, #0
    84a8:	eb00006b 	bl	865c <printk>
    84ac:	e30c37d0 	movw	r3, #51152	; 0xc7d0
    84b0:	e3403000 	movt	r3, #0
    84b4:	e51b2008 	ldr	r2, [fp, #-8]
    84b8:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    84bc:	e1a01003 	mov	r1, r3
    84c0:	e30a0064 	movw	r0, #41060	; 0xa064
    84c4:	e3400000 	movt	r0, #0
    84c8:	eb000063 	bl	865c <printk>
    84cc:	e30a0070 	movw	r0, #41072	; 0xa070
    84d0:	e3400000 	movt	r0, #0
    84d4:	eb000060 	bl	865c <printk>
    84d8:	e3a03000 	mov	r3, #0
    84dc:	e50b300c 	str	r3, [fp, #-12]
    84e0:	ea000005 	b	84fc <kernel_main+0x180>
    84e4:	e51b3008 	ldr	r3, [fp, #-8]
    84e8:	e2833001 	add	r3, r3, #1
    84ec:	e50b3008 	str	r3, [fp, #-8]
    84f0:	e51b3008 	ldr	r3, [fp, #-8]
    84f4:	e3530f7d 	cmp	r3, #500	; 0x1f4
    84f8:	baffffd5 	blt	8454 <kernel_main+0xd8>
    84fc:	e51b300c 	ldr	r3, [fp, #-12]
    8500:	e3530000 	cmp	r3, #0
    8504:	0a000002 	beq	8514 <kernel_main+0x198>
    8508:	e30a008c 	movw	r0, #41100	; 0xa08c
    850c:	e3400000 	movt	r0, #0
    8510:	eb000051 	bl	865c <printk>
    8514:	e30806a0 	movw	r0, #34464	; 0x86a0
    8518:	e3400001 	movt	r0, #1
    851c:	eb00022f 	bl	8de0 <delay_cycles>
    8520:	eafffffb 	b	8514 <kernel_main+0x198>

00008524 <printnumk>:
    8524:	e92d48f0 	push	{r4, r5, r6, r7, fp, lr}
    8528:	e28db014 	add	fp, sp, #20
    852c:	e24dd060 	sub	sp, sp, #96	; 0x60
    8530:	e1a01000 	mov	r1, r0
    8534:	e14b27f4 	strd	r2, [fp, #-116]	; 0xffffff8c
    8538:	e1a03001 	mov	r3, r1
    853c:	e54b3065 	strb	r3, [fp, #-101]	; 0xffffff9b
    8540:	e3a03000 	mov	r3, #0
    8544:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    8548:	e3a03000 	mov	r3, #0
    854c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    8550:	e14b27d4 	ldrd	r2, [fp, #-116]	; 0xffffff8c
    8554:	e1923003 	orrs	r3, r2, r3
    8558:	1a000024 	bne	85f0 <printnumk+0xcc>
    855c:	e3a00030 	mov	r0, #48	; 0x30
    8560:	eb0001c1 	bl	8c6c <uart_put_byte>
    8564:	ea000039 	b	8650 <printnumk+0x12c>
    8568:	e55b3065 	ldrb	r3, [fp, #-101]	; 0xffffff9b
    856c:	e3a02000 	mov	r2, #0
    8570:	e1a04003 	mov	r4, r3
    8574:	e1a05002 	mov	r5, r2
    8578:	e14b07d4 	ldrd	r0, [fp, #-116]	; 0xffffff8c
    857c:	e1a02004 	mov	r2, r4
    8580:	e1a03005 	mov	r3, r5
    8584:	eb0002a7 	bl	9028 <__aeabi_uldivmod>
    8588:	e1a03002 	mov	r3, r2
    858c:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    8590:	e30b3004 	movw	r3, #45060	; 0xb004
    8594:	e3403000 	movt	r3, #0
    8598:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    859c:	e0833002 	add	r3, r3, r2
    85a0:	e5d31000 	ldrb	r1, [r3]
    85a4:	e24b2064 	sub	r2, fp, #100	; 0x64
    85a8:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    85ac:	e0823003 	add	r3, r2, r3
    85b0:	e1a02001 	mov	r2, r1
    85b4:	e5c32000 	strb	r2, [r3]
    85b8:	e55b3065 	ldrb	r3, [fp, #-101]	; 0xffffff9b
    85bc:	e3a02000 	mov	r2, #0
    85c0:	e1a06003 	mov	r6, r3
    85c4:	e1a07002 	mov	r7, r2
    85c8:	e1a02006 	mov	r2, r6
    85cc:	e1a03007 	mov	r3, r7
    85d0:	e14b07d4 	ldrd	r0, [fp, #-116]	; 0xffffff8c
    85d4:	eb000293 	bl	9028 <__aeabi_uldivmod>
    85d8:	e1a02000 	mov	r2, r0
    85dc:	e1a03001 	mov	r3, r1
    85e0:	e14b27f4 	strd	r2, [fp, #-116]	; 0xffffff8c
    85e4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    85e8:	e2833001 	add	r3, r3, #1
    85ec:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    85f0:	e14b27d4 	ldrd	r2, [fp, #-116]	; 0xffffff8c
    85f4:	e1923003 	orrs	r3, r2, r3
    85f8:	1affffda 	bne	8568 <printnumk+0x44>
    85fc:	e3a03000 	mov	r3, #0
    8600:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    8604:	ea00000d 	b	8640 <printnumk+0x11c>
    8608:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    860c:	e2432001 	sub	r2, r3, #1
    8610:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8614:	e0423003 	sub	r3, r2, r3
    8618:	e2433014 	sub	r3, r3, #20
    861c:	e083300b 	add	r3, r3, fp
    8620:	e5533050 	ldrb	r3, [r3, #-80]	; 0xffffffb0
    8624:	e54b3021 	strb	r3, [fp, #-33]	; 0xffffffdf
    8628:	e55b3021 	ldrb	r3, [fp, #-33]	; 0xffffffdf
    862c:	e1a00003 	mov	r0, r3
    8630:	eb00018d 	bl	8c6c <uart_put_byte>
    8634:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8638:	e2833001 	add	r3, r3, #1
    863c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    8640:	e51b201c 	ldr	r2, [fp, #-28]	; 0xffffffe4
    8644:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8648:	e1520003 	cmp	r2, r3
    864c:	baffffed 	blt	8608 <printnumk+0xe4>
    8650:	e320f000 	nop	{0}
    8654:	e24bd014 	sub	sp, fp, #20
    8658:	e8bd88f0 	pop	{r4, r5, r6, r7, fp, pc}

0000865c <printk>:
    865c:	e92d000f 	push	{r0, r1, r2, r3}
    8660:	e92d4bf0 	push	{r4, r5, r6, r7, r8, r9, fp, lr}
    8664:	e28db01c 	add	fp, sp, #28
    8668:	e24dd030 	sub	sp, sp, #48	; 0x30
    866c:	e28b3008 	add	r3, fp, #8
    8670:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
    8674:	ea00009e 	b	88f4 <printk+0x298>
    8678:	e59b3004 	ldr	r3, [fp, #4]
    867c:	e5d33000 	ldrb	r3, [r3]
    8680:	e3530025 	cmp	r3, #37	; 0x25
    8684:	1a000093 	bne	88d8 <printk+0x27c>
    8688:	e59b3004 	ldr	r3, [fp, #4]
    868c:	e2833001 	add	r3, r3, #1
    8690:	e58b3004 	str	r3, [fp, #4]
    8694:	e59b3004 	ldr	r3, [fp, #4]
    8698:	e5d33000 	ldrb	r3, [r3]
    869c:	e353006f 	cmp	r3, #111	; 0x6f
    86a0:	1a00000f 	bne	86e4 <printk+0x88>
    86a4:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
    86a8:	e2832004 	add	r2, r3, #4
    86ac:	e50b203c 	str	r2, [fp, #-60]	; 0xffffffc4
    86b0:	e5933000 	ldr	r3, [r3]
    86b4:	e50b3038 	str	r3, [fp, #-56]	; 0xffffffc8
    86b8:	e3a00030 	mov	r0, #48	; 0x30
    86bc:	eb00016a 	bl	8c6c <uart_put_byte>
    86c0:	e51b3038 	ldr	r3, [fp, #-56]	; 0xffffffc8
    86c4:	e1a02fc3 	asr	r2, r3, #31
    86c8:	e1a04003 	mov	r4, r3
    86cc:	e1a05002 	mov	r5, r2
    86d0:	e1a02004 	mov	r2, r4
    86d4:	e1a03005 	mov	r3, r5
    86d8:	e3a00008 	mov	r0, #8
    86dc:	ebffff90 	bl	8524 <printnumk>
    86e0:	ea000080 	b	88e8 <printk+0x28c>
    86e4:	e59b3004 	ldr	r3, [fp, #4]
    86e8:	e5d33000 	ldrb	r3, [r3]
    86ec:	e3530064 	cmp	r3, #100	; 0x64
    86f0:	1a000015 	bne	874c <printk+0xf0>
    86f4:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
    86f8:	e2832004 	add	r2, r3, #4
    86fc:	e50b203c 	str	r2, [fp, #-60]	; 0xffffffc4
    8700:	e5933000 	ldr	r3, [r3]
    8704:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8708:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    870c:	e3530000 	cmp	r3, #0
    8710:	aa000004 	bge	8728 <printk+0xcc>
    8714:	e3a0002d 	mov	r0, #45	; 0x2d
    8718:	eb000153 	bl	8c6c <uart_put_byte>
    871c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8720:	e2633000 	rsb	r3, r3, #0
    8724:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8728:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    872c:	e1a02fc3 	asr	r2, r3, #31
    8730:	e1a06003 	mov	r6, r3
    8734:	e1a07002 	mov	r7, r2
    8738:	e1a02006 	mov	r2, r6
    873c:	e1a03007 	mov	r3, r7
    8740:	e3a0000a 	mov	r0, #10
    8744:	ebffff76 	bl	8524 <printnumk>
    8748:	ea000066 	b	88e8 <printk+0x28c>
    874c:	e59b3004 	ldr	r3, [fp, #4]
    8750:	e5d33000 	ldrb	r3, [r3]
    8754:	e3530075 	cmp	r3, #117	; 0x75
    8758:	1a00000d 	bne	8794 <printk+0x138>
    875c:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
    8760:	e2832004 	add	r2, r3, #4
    8764:	e50b203c 	str	r2, [fp, #-60]	; 0xffffffc4
    8768:	e5933000 	ldr	r3, [r3]
    876c:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
    8770:	e51b3034 	ldr	r3, [fp, #-52]	; 0xffffffcc
    8774:	e1a02fc3 	asr	r2, r3, #31
    8778:	e1a08003 	mov	r8, r3
    877c:	e1a09002 	mov	r9, r2
    8780:	e1a02008 	mov	r2, r8
    8784:	e1a03009 	mov	r3, r9
    8788:	e3a0000a 	mov	r0, #10
    878c:	ebffff64 	bl	8524 <printnumk>
    8790:	ea000054 	b	88e8 <printk+0x28c>
    8794:	e59b3004 	ldr	r3, [fp, #4]
    8798:	e5d33000 	ldrb	r3, [r3]
    879c:	e3530078 	cmp	r3, #120	; 0x78
    87a0:	1a000010 	bne	87e8 <printk+0x18c>
    87a4:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
    87a8:	e2832004 	add	r2, r3, #4
    87ac:	e50b203c 	str	r2, [fp, #-60]	; 0xffffffc4
    87b0:	e5933000 	ldr	r3, [r3]
    87b4:	e50b3030 	str	r3, [fp, #-48]	; 0xffffffd0
    87b8:	e3a00030 	mov	r0, #48	; 0x30
    87bc:	eb00012a 	bl	8c6c <uart_put_byte>
    87c0:	e3a00078 	mov	r0, #120	; 0x78
    87c4:	eb000128 	bl	8c6c <uart_put_byte>
    87c8:	e51b3030 	ldr	r3, [fp, #-48]	; 0xffffffd0
    87cc:	e1a02fc3 	asr	r2, r3, #31
    87d0:	e50b3044 	str	r3, [fp, #-68]	; 0xffffffbc
    87d4:	e50b2040 	str	r2, [fp, #-64]	; 0xffffffc0
    87d8:	e14b24d4 	ldrd	r2, [fp, #-68]	; 0xffffffbc
    87dc:	e3a00010 	mov	r0, #16
    87e0:	ebffff4f 	bl	8524 <printnumk>
    87e4:	ea00003f 	b	88e8 <printk+0x28c>
    87e8:	e59b3004 	ldr	r3, [fp, #4]
    87ec:	e5d33000 	ldrb	r3, [r3]
    87f0:	e3530063 	cmp	r3, #99	; 0x63
    87f4:	1a000009 	bne	8820 <printk+0x1c4>
    87f8:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
    87fc:	e2832004 	add	r2, r3, #4
    8800:	e50b203c 	str	r2, [fp, #-60]	; 0xffffffc4
    8804:	e5933000 	ldr	r3, [r3]
    8808:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
    880c:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
    8810:	e6ef3073 	uxtb	r3, r3
    8814:	e1a00003 	mov	r0, r3
    8818:	eb000113 	bl	8c6c <uart_put_byte>
    881c:	ea000031 	b	88e8 <printk+0x28c>
    8820:	e59b3004 	ldr	r3, [fp, #4]
    8824:	e5d33000 	ldrb	r3, [r3]
    8828:	e3530073 	cmp	r3, #115	; 0x73
    882c:	1a000011 	bne	8878 <printk+0x21c>
    8830:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
    8834:	e2832004 	add	r2, r3, #4
    8838:	e50b203c 	str	r2, [fp, #-60]	; 0xffffffc4
    883c:	e5933000 	ldr	r3, [r3]
    8840:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    8844:	ea000006 	b	8864 <printk+0x208>
    8848:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    884c:	e5d33000 	ldrb	r3, [r3]
    8850:	e1a00003 	mov	r0, r3
    8854:	eb000104 	bl	8c6c <uart_put_byte>
    8858:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    885c:	e2833001 	add	r3, r3, #1
    8860:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    8864:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    8868:	e5d33000 	ldrb	r3, [r3]
    886c:	e3530000 	cmp	r3, #0
    8870:	1afffff4 	bne	8848 <printk+0x1ec>
    8874:	ea00001b 	b	88e8 <printk+0x28c>
    8878:	e59b3004 	ldr	r3, [fp, #4]
    887c:	e5d33000 	ldrb	r3, [r3]
    8880:	e3530070 	cmp	r3, #112	; 0x70
    8884:	1a000010 	bne	88cc <printk+0x270>
    8888:	e51b303c 	ldr	r3, [fp, #-60]	; 0xffffffc4
    888c:	e2832004 	add	r2, r3, #4
    8890:	e50b203c 	str	r2, [fp, #-60]	; 0xffffffc4
    8894:	e5933000 	ldr	r3, [r3]
    8898:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
    889c:	e3a00030 	mov	r0, #48	; 0x30
    88a0:	eb0000f1 	bl	8c6c <uart_put_byte>
    88a4:	e3a00078 	mov	r0, #120	; 0x78
    88a8:	eb0000ef 	bl	8c6c <uart_put_byte>
    88ac:	e51b3028 	ldr	r3, [fp, #-40]	; 0xffffffd8
    88b0:	e1a02fc3 	asr	r2, r3, #31
    88b4:	e50b304c 	str	r3, [fp, #-76]	; 0xffffffb4
    88b8:	e50b2048 	str	r2, [fp, #-72]	; 0xffffffb8
    88bc:	e14b24dc 	ldrd	r2, [fp, #-76]	; 0xffffffb4
    88c0:	e3a00010 	mov	r0, #16
    88c4:	ebffff16 	bl	8524 <printnumk>
    88c8:	ea000006 	b	88e8 <printk+0x28c>
    88cc:	e3a00025 	mov	r0, #37	; 0x25
    88d0:	eb0000e5 	bl	8c6c <uart_put_byte>
    88d4:	ea000003 	b	88e8 <printk+0x28c>
    88d8:	e59b3004 	ldr	r3, [fp, #4]
    88dc:	e5d33000 	ldrb	r3, [r3]
    88e0:	e1a00003 	mov	r0, r3
    88e4:	eb0000e0 	bl	8c6c <uart_put_byte>
    88e8:	e59b3004 	ldr	r3, [fp, #4]
    88ec:	e2833001 	add	r3, r3, #1
    88f0:	e58b3004 	str	r3, [fp, #4]
    88f4:	e59b3004 	ldr	r3, [fp, #4]
    88f8:	e5d33000 	ldrb	r3, [r3]
    88fc:	e3530000 	cmp	r3, #0
    8900:	1affff5c 	bne	8678 <printk+0x1c>
    8904:	e3a03000 	mov	r3, #0
    8908:	e1a00003 	mov	r0, r3
    890c:	e24bd01c 	sub	sp, fp, #28
    8910:	e8bd4bf0 	pop	{r4, r5, r6, r7, r8, r9, fp, lr}
    8914:	e28dd010 	add	sp, sp, #16
    8918:	e12fff1e 	bx	lr

0000891c <uart_init>:
    891c:	e92d4800 	push	{fp, lr}
    8920:	e28db004 	add	fp, sp, #4
    8924:	e24dd048 	sub	sp, sp, #72	; 0x48
    8928:	e3a01002 	mov	r1, #2
    892c:	e3a0000f 	mov	r0, #15
    8930:	ebfffdc7 	bl	8054 <gpio_config>
    8934:	e3a01002 	mov	r1, #2
    8938:	e3a0000e 	mov	r0, #14
    893c:	ebfffdc4 	bl	8054 <gpio_config>
    8940:	e3a01000 	mov	r1, #0
    8944:	e3a0000f 	mov	r0, #15
    8948:	ebfffe4c 	bl	8280 <gpio_set_pull>
    894c:	e3a01000 	mov	r1, #0
    8950:	e3a0000e 	mov	r0, #14
    8954:	ebfffe49 	bl	8280 <gpio_set_pull>
    8958:	e3053004 	movw	r3, #20484	; 0x5004
    895c:	e3433f21 	movt	r3, #16161	; 0x3f21
    8960:	e3a02001 	mov	r2, #1
    8964:	e5832000 	str	r2, [r3]
    8968:	e3053060 	movw	r3, #20576	; 0x5060
    896c:	e3433f21 	movt	r3, #16161	; 0x3f21
    8970:	e3a02000 	mov	r2, #0
    8974:	e5832000 	str	r2, [r3]
    8978:	e3053044 	movw	r3, #20548	; 0x5044
    897c:	e3433f21 	movt	r3, #16161	; 0x3f21
    8980:	e3a02000 	mov	r2, #0
    8984:	e5832000 	str	r2, [r3]
    8988:	e305304c 	movw	r3, #20556	; 0x504c
    898c:	e3433f21 	movt	r3, #16161	; 0x3f21
    8990:	e3a02003 	mov	r2, #3
    8994:	e5832000 	str	r2, [r3]
    8998:	e3053068 	movw	r3, #20584	; 0x5068
    899c:	e3433f21 	movt	r3, #16161	; 0x3f21
    89a0:	e300210e 	movw	r2, #270	; 0x10e
    89a4:	e5832000 	str	r2, [r3]
    89a8:	e3053060 	movw	r3, #20576	; 0x5060
    89ac:	e3433f21 	movt	r3, #16161	; 0x3f21
    89b0:	e3a02003 	mov	r2, #3
    89b4:	e5832000 	str	r2, [r3]
    89b8:	e3a0301e 	mov	r3, #30
    89bc:	e50b3008 	str	r3, [fp, #-8]
    89c0:	e3a0302e 	mov	r3, #46	; 0x2e
    89c4:	e50b300c 	str	r3, [fp, #-12]
    89c8:	e3a0307b 	mov	r3, #123	; 0x7b
    89cc:	e50b3010 	str	r3, [fp, #-16]
    89d0:	e3e0307a 	mvn	r3, #122	; 0x7a
    89d4:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    89d8:	e3a0300b 	mov	r3, #11
    89dc:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    89e0:	e3e0300a 	mvn	r3, #10
    89e4:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    89e8:	e3a030ac 	mov	r3, #172	; 0xac
    89ec:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    89f0:	e3003157 	movw	r3, #343	; 0x157
    89f4:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    89f8:	e3003157 	movw	r3, #343	; 0x157
    89fc:	e50b3028 	str	r3, [fp, #-40]	; 0xffffffd8
    8a00:	e30b3344 	movw	r3, #45892	; 0xb344
    8a04:	e340300a 	movt	r3, #10
    8a08:	e50b303c 	str	r3, [fp, #-60]	; 0xffffffc4
    8a0c:	e24b303c 	sub	r3, fp, #60	; 0x3c
    8a10:	e50b302c 	str	r3, [fp, #-44]	; 0xffffffd4
    8a14:	e3a03055 	mov	r3, #85	; 0x55
    8a18:	e54b302d 	strb	r3, [fp, #-45]	; 0xffffffd3
    8a1c:	e3a03075 	mov	r3, #117	; 0x75
    8a20:	e54b302e 	strb	r3, [fp, #-46]	; 0xffffffd2
    8a24:	e30a336c 	movw	r3, #41836	; 0xa36c
    8a28:	e3403000 	movt	r3, #0
    8a2c:	e24bc048 	sub	ip, fp, #72	; 0x48
    8a30:	e8930007 	ldm	r3, {r0, r1, r2}
    8a34:	e88c0007 	stm	ip, {r0, r1, r2}
    8a38:	e3a0000d 	mov	r0, #13
    8a3c:	eb00008a 	bl	8c6c <uart_put_byte>
    8a40:	e3a0000a 	mov	r0, #10
    8a44:	eb000088 	bl	8c6c <uart_put_byte>
    8a48:	e3a00061 	mov	r0, #97	; 0x61
    8a4c:	eb000086 	bl	8c6c <uart_put_byte>
    8a50:	e3a00062 	mov	r0, #98	; 0x62
    8a54:	eb000084 	bl	8c6c <uart_put_byte>
    8a58:	e3a00063 	mov	r0, #99	; 0x63
    8a5c:	eb000082 	bl	8c6c <uart_put_byte>
    8a60:	e3a00031 	mov	r0, #49	; 0x31
    8a64:	eb000080 	bl	8c6c <uart_put_byte>
    8a68:	e3a00032 	mov	r0, #50	; 0x32
    8a6c:	eb00007e 	bl	8c6c <uart_put_byte>
    8a70:	e3a00033 	mov	r0, #51	; 0x33
    8a74:	eb00007c 	bl	8c6c <uart_put_byte>
    8a78:	e3a00034 	mov	r0, #52	; 0x34
    8a7c:	eb00007a 	bl	8c6c <uart_put_byte>
    8a80:	e3a00035 	mov	r0, #53	; 0x35
    8a84:	eb000078 	bl	8c6c <uart_put_byte>
    8a88:	e3a00036 	mov	r0, #54	; 0x36
    8a8c:	eb000076 	bl	8c6c <uart_put_byte>
    8a90:	e3a00037 	mov	r0, #55	; 0x37
    8a94:	eb000074 	bl	8c6c <uart_put_byte>
    8a98:	e3a00038 	mov	r0, #56	; 0x38
    8a9c:	eb000072 	bl	8c6c <uart_put_byte>
    8aa0:	e3a00039 	mov	r0, #57	; 0x39
    8aa4:	eb000070 	bl	8c6c <uart_put_byte>
    8aa8:	e3a0000d 	mov	r0, #13
    8aac:	eb00006e 	bl	8c6c <uart_put_byte>
    8ab0:	e3a0000a 	mov	r0, #10
    8ab4:	eb00006c 	bl	8c6c <uart_put_byte>
    8ab8:	e30a00a8 	movw	r0, #41128	; 0xa0a8
    8abc:	e3400000 	movt	r0, #0
    8ac0:	ebfffee5 	bl	865c <printk>
    8ac4:	eb00007d 	bl	8cc0 <uart_get_byte>
    8ac8:	e1a03000 	mov	r3, r0
    8acc:	e50b3034 	str	r3, [fp, #-52]	; 0xffffffcc
    8ad0:	e51b1034 	ldr	r1, [fp, #-52]	; 0xffffffcc
    8ad4:	e30a00e0 	movw	r0, #41184	; 0xa0e0
    8ad8:	e3400000 	movt	r0, #0
    8adc:	ebfffede 	bl	865c <printk>
    8ae0:	e30a00e4 	movw	r0, #41188	; 0xa0e4
    8ae4:	e3400000 	movt	r0, #0
    8ae8:	ebfffedb 	bl	865c <printk>
    8aec:	eb000073 	bl	8cc0 <uart_get_byte>
    8af0:	e1a03000 	mov	r3, r0
    8af4:	e54b3035 	strb	r3, [fp, #-53]	; 0xffffffcb
    8af8:	e55b3035 	ldrb	r3, [fp, #-53]	; 0xffffffcb
    8afc:	e1a01003 	mov	r1, r3
    8b00:	e30a0120 	movw	r0, #41248	; 0xa120
    8b04:	e3400000 	movt	r0, #0
    8b08:	ebfffed3 	bl	865c <printk>
    8b0c:	e30a0124 	movw	r0, #41252	; 0xa124
    8b10:	e3400000 	movt	r0, #0
    8b14:	ebfffed0 	bl	865c <printk>
    8b18:	e30a0128 	movw	r0, #41256	; 0xa128
    8b1c:	e3400000 	movt	r0, #0
    8b20:	ebfffecd 	bl	865c <printk>
    8b24:	e51b1008 	ldr	r1, [fp, #-8]
    8b28:	e30a013c 	movw	r0, #41276	; 0xa13c
    8b2c:	e3400000 	movt	r0, #0
    8b30:	ebfffec9 	bl	865c <printk>
    8b34:	e51b200c 	ldr	r2, [fp, #-12]
    8b38:	e51b100c 	ldr	r1, [fp, #-12]
    8b3c:	e30a0158 	movw	r0, #41304	; 0xa158
    8b40:	e3400000 	movt	r0, #0
    8b44:	ebfffec4 	bl	865c <printk>
    8b48:	e51b2008 	ldr	r2, [fp, #-8]
    8b4c:	e51b1008 	ldr	r1, [fp, #-8]
    8b50:	e30a0190 	movw	r0, #41360	; 0xa190
    8b54:	e3400000 	movt	r0, #0
    8b58:	ebfffebf 	bl	865c <printk>
    8b5c:	e51b1010 	ldr	r1, [fp, #-16]
    8b60:	e30a01c8 	movw	r0, #41416	; 0xa1c8
    8b64:	e3400000 	movt	r0, #0
    8b68:	ebfffebb 	bl	865c <printk>
    8b6c:	e51b1014 	ldr	r1, [fp, #-20]	; 0xffffffec
    8b70:	e30a01f4 	movw	r0, #41460	; 0xa1f4
    8b74:	e3400000 	movt	r0, #0
    8b78:	ebfffeb7 	bl	865c <printk>
    8b7c:	e51b1018 	ldr	r1, [fp, #-24]	; 0xffffffe8
    8b80:	e30a0224 	movw	r0, #41508	; 0xa224
    8b84:	e3400000 	movt	r0, #0
    8b88:	ebfffeb3 	bl	865c <printk>
    8b8c:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
    8b90:	e30a0250 	movw	r0, #41552	; 0xa250
    8b94:	e3400000 	movt	r0, #0
    8b98:	ebfffeaf 	bl	865c <printk>
    8b9c:	e51b1020 	ldr	r1, [fp, #-32]	; 0xffffffe0
    8ba0:	e30a027c 	movw	r0, #41596	; 0xa27c
    8ba4:	e3400000 	movt	r0, #0
    8ba8:	ebfffeab 	bl	865c <printk>
    8bac:	e51b2024 	ldr	r2, [fp, #-36]	; 0xffffffdc
    8bb0:	e51b1024 	ldr	r1, [fp, #-36]	; 0xffffffdc
    8bb4:	e30a029c 	movw	r0, #41628	; 0xa29c
    8bb8:	e3400000 	movt	r0, #0
    8bbc:	ebfffea6 	bl	865c <printk>
    8bc0:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8bc4:	e51b1028 	ldr	r1, [fp, #-40]	; 0xffffffd8
    8bc8:	e30a02d4 	movw	r0, #41684	; 0xa2d4
    8bcc:	e3400000 	movt	r0, #0
    8bd0:	ebfffea1 	bl	865c <printk>
    8bd4:	e55b302d 	ldrb	r3, [fp, #-45]	; 0xffffffd3
    8bd8:	e55b202e 	ldrb	r2, [fp, #-46]	; 0xffffffd2
    8bdc:	e1a01003 	mov	r1, r3
    8be0:	e30a030c 	movw	r0, #41740	; 0xa30c
    8be4:	e3400000 	movt	r0, #0
    8be8:	ebfffe9b 	bl	865c <printk>
    8bec:	e24b3048 	sub	r3, fp, #72	; 0x48
    8bf0:	e1a01003 	mov	r1, r3
    8bf4:	e30a032c 	movw	r0, #41772	; 0xa32c
    8bf8:	e3400000 	movt	r0, #0
    8bfc:	ebfffe96 	bl	865c <printk>
    8c00:	e51b302c 	ldr	r3, [fp, #-44]	; 0xffffffd4
    8c04:	e5933000 	ldr	r3, [r3]
    8c08:	e1a02003 	mov	r2, r3
    8c0c:	e51b102c 	ldr	r1, [fp, #-44]	; 0xffffffd4
    8c10:	e30a0350 	movw	r0, #41808	; 0xa350
    8c14:	e3400000 	movt	r0, #0
    8c18:	ebfffe8f 	bl	865c <printk>
    8c1c:	e30a0124 	movw	r0, #41252	; 0xa124
    8c20:	e3400000 	movt	r0, #0
    8c24:	ebfffe8c 	bl	865c <printk>
    8c28:	e320f000 	nop	{0}
    8c2c:	e24bd004 	sub	sp, fp, #4
    8c30:	e8bd8800 	pop	{fp, pc}

00008c34 <uart_close>:
    8c34:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8c38:	e28db000 	add	fp, sp, #0
    8c3c:	e3053060 	movw	r3, #20576	; 0x5060
    8c40:	e3433f21 	movt	r3, #16161	; 0x3f21
    8c44:	e3a02003 	mov	r2, #3
    8c48:	e5832000 	str	r2, [r3]
    8c4c:	e3053004 	movw	r3, #20484	; 0x5004
    8c50:	e3433f21 	movt	r3, #16161	; 0x3f21
    8c54:	e3a02000 	mov	r2, #0
    8c58:	e5832000 	str	r2, [r3]
    8c5c:	e320f000 	nop	{0}
    8c60:	e28bd000 	add	sp, fp, #0
    8c64:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8c68:	e12fff1e 	bx	lr

00008c6c <uart_put_byte>:
    8c6c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8c70:	e28db000 	add	fp, sp, #0
    8c74:	e24dd00c 	sub	sp, sp, #12
    8c78:	e1a03000 	mov	r3, r0
    8c7c:	e54b3005 	strb	r3, [fp, #-5]
    8c80:	e3053054 	movw	r3, #20564	; 0x5054
    8c84:	e3433f21 	movt	r3, #16161	; 0x3f21
    8c88:	e5933000 	ldr	r3, [r3]
    8c8c:	e2033020 	and	r3, r3, #32
    8c90:	e3530020 	cmp	r3, #32
    8c94:	0a000000 	beq	8c9c <uart_put_byte+0x30>
    8c98:	eafffff8 	b	8c80 <uart_put_byte+0x14>
    8c9c:	e320f000 	nop	{0}
    8ca0:	e3053040 	movw	r3, #20544	; 0x5040
    8ca4:	e3433f21 	movt	r3, #16161	; 0x3f21
    8ca8:	e55b2005 	ldrb	r2, [fp, #-5]
    8cac:	e5832000 	str	r2, [r3]
    8cb0:	e320f000 	nop	{0}
    8cb4:	e28bd000 	add	sp, fp, #0
    8cb8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8cbc:	e12fff1e 	bx	lr

00008cc0 <uart_get_byte>:
    8cc0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8cc4:	e28db000 	add	fp, sp, #0
    8cc8:	e3053054 	movw	r3, #20564	; 0x5054
    8ccc:	e3433f21 	movt	r3, #16161	; 0x3f21
    8cd0:	e5933000 	ldr	r3, [r3]
    8cd4:	e2033001 	and	r3, r3, #1
    8cd8:	e3530001 	cmp	r3, #1
    8cdc:	0a000000 	beq	8ce4 <uart_get_byte+0x24>
    8ce0:	eafffff8 	b	8cc8 <uart_get_byte+0x8>
    8ce4:	e320f000 	nop	{0}
    8ce8:	e3053040 	movw	r3, #20544	; 0x5040
    8cec:	e3433f21 	movt	r3, #16161	; 0x3f21
    8cf0:	e5933000 	ldr	r3, [r3]
    8cf4:	e6ef3073 	uxtb	r3, r3
    8cf8:	e353002f 	cmp	r3, #47	; 0x2f
    8cfc:	9a00000c 	bls	8d34 <uart_get_byte+0x74>
    8d00:	e3053040 	movw	r3, #20544	; 0x5040
    8d04:	e3433f21 	movt	r3, #16161	; 0x3f21
    8d08:	e5933000 	ldr	r3, [r3]
    8d0c:	e6ef3073 	uxtb	r3, r3
    8d10:	e3530039 	cmp	r3, #57	; 0x39
    8d14:	8a000006 	bhi	8d34 <uart_get_byte+0x74>
    8d18:	e3053040 	movw	r3, #20544	; 0x5040
    8d1c:	e3433f21 	movt	r3, #16161	; 0x3f21
    8d20:	e5933000 	ldr	r3, [r3]
    8d24:	e6ef3073 	uxtb	r3, r3
    8d28:	e2433030 	sub	r3, r3, #48	; 0x30
    8d2c:	e6ef3073 	uxtb	r3, r3
    8d30:	ea000003 	b	8d44 <uart_get_byte+0x84>
    8d34:	e3053040 	movw	r3, #20544	; 0x5040
    8d38:	e3433f21 	movt	r3, #16161	; 0x3f21
    8d3c:	e5933000 	ldr	r3, [r3]
    8d40:	e6ef3073 	uxtb	r3, r3
    8d44:	e1a00003 	mov	r0, r3
    8d48:	e28bd000 	add	sp, fp, #0
    8d4c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8d50:	e12fff1e 	bx	lr

00008d54 <start_countdown>:
    8d54:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8d58:	e28db000 	add	fp, sp, #0
    8d5c:	e3a03b2d 	mov	r3, #46080	; 0xb400
    8d60:	e3433f00 	movt	r3, #16128	; 0x3f00
    8d64:	e3e02000 	mvn	r2, #0
    8d68:	e5832000 	str	r2, [r3]
    8d6c:	e30b3418 	movw	r3, #46104	; 0xb418
    8d70:	e3433f00 	movt	r3, #16128	; 0x3f00
    8d74:	e3e02000 	mvn	r2, #0
    8d78:	e5832000 	str	r2, [r3]
    8d7c:	e30b3408 	movw	r3, #46088	; 0xb408
    8d80:	e3433f00 	movt	r3, #16128	; 0x3f00
    8d84:	e3a02082 	mov	r2, #130	; 0x82
    8d88:	e5832000 	str	r2, [r3]
    8d8c:	e30b341c 	movw	r3, #46108	; 0xb41c
    8d90:	e3433f00 	movt	r3, #16128	; 0x3f00
    8d94:	e3a02001 	mov	r2, #1
    8d98:	e5832000 	str	r2, [r3]
    8d9c:	e320f000 	nop	{0}
    8da0:	e28bd000 	add	sp, fp, #0
    8da4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8da8:	e12fff1e 	bx	lr

00008dac <timer_latch>:
    8dac:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8db0:	e28db000 	add	fp, sp, #0
    8db4:	e3a03b2d 	mov	r3, #46080	; 0xb400
    8db8:	e3433f00 	movt	r3, #16128	; 0x3f00
    8dbc:	e5932000 	ldr	r2, [r3]
    8dc0:	e30b3404 	movw	r3, #46084	; 0xb404
    8dc4:	e3433f00 	movt	r3, #16128	; 0x3f00
    8dc8:	e5933000 	ldr	r3, [r3]
    8dcc:	e0423003 	sub	r3, r2, r3
    8dd0:	e1a00003 	mov	r0, r3
    8dd4:	e28bd000 	add	sp, fp, #0
    8dd8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8ddc:	e12fff1e 	bx	lr

00008de0 <delay_cycles>:
    8de0:	e2500001 	subs	r0, r0, #1
    8de4:	1afffffd 	bne	8de0 <delay_cycles>
    8de8:	e1a0f00e 	mov	pc, lr

00008dec <read_cpsr>:
    8dec:	e10f0000 	mrs	r0, CPSR
    8df0:	e1a0f00e 	mov	pc, lr

00008df4 <write_cpsr>:
    8df4:	e129f000 	msr	CPSR_fc, r0
    8df8:	e1a0f00e 	mov	pc, lr

00008dfc <disable_interrupts>:
    8dfc:	e10f0000 	mrs	r0, CPSR
    8e00:	e3a01d07 	mov	r1, #448	; 0x1c0
    8e04:	e1800001 	orr	r0, r0, r1
    8e08:	e129f000 	msr	CPSR_fc, r0
    8e0c:	e1a0f00e 	mov	pc, lr

00008e10 <enable_interrupts>:
    8e10:	e10f0000 	mrs	r0, CPSR
    8e14:	e3a01d07 	mov	r1, #448	; 0x1c0
    8e18:	e1c00001 	bic	r0, r0, r1
    8e1c:	e129f000 	msr	CPSR_fc, r0
    8e20:	e1a0f00e 	mov	pc, lr

00008e24 <func2>:
    8e24:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8e28:	e28db000 	add	fp, sp, #0
    8e2c:	e24dd00c 	sub	sp, sp, #12
    8e30:	e50b0008 	str	r0, [fp, #-8]
    8e34:	e50b100c 	str	r1, [fp, #-12]
    8e38:	e51b200c 	ldr	r2, [fp, #-12]
    8e3c:	e1a03002 	mov	r3, r2
    8e40:	e1a03103 	lsl	r3, r3, #2
    8e44:	e0833002 	add	r3, r3, r2
    8e48:	e1a02103 	lsl	r2, r3, #2
    8e4c:	e0832002 	add	r2, r3, r2
    8e50:	e51b3008 	ldr	r3, [fp, #-8]
    8e54:	e0823003 	add	r3, r2, r3
    8e58:	e1a00003 	mov	r0, r3
    8e5c:	e24bd000 	sub	sp, fp, #0
    8e60:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8e64:	e12fff1e 	bx	lr

00008e68 <unoptimized>:
    8e68:	e92d4870 	push	{r4, r5, r6, fp, lr}
    8e6c:	e28db010 	add	fp, sp, #16
    8e70:	e24dd01c 	sub	sp, sp, #28
    8e74:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
    8e78:	e3a03000 	mov	r3, #0
    8e7c:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    8e80:	ea000037 	b	8f64 <unoptimized+0xfc>
    8e84:	e3a03011 	mov	r3, #17
    8e88:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    8e8c:	e3a03000 	mov	r3, #0
    8e90:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    8e94:	ea00002c 	b	8f4c <unoptimized+0xe4>
    8e98:	e3a03002 	mov	r3, #2
    8e9c:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8ea0:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8ea4:	e2833001 	add	r3, r3, #1
    8ea8:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8eac:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8eb0:	e2432002 	sub	r2, r3, #2
    8eb4:	e1a03002 	mov	r3, r2
    8eb8:	e1a03083 	lsl	r3, r3, #1
    8ebc:	e0833002 	add	r3, r3, r2
    8ec0:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8ec4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8ec8:	e1a03103 	lsl	r3, r3, #2
    8ecc:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8ed0:	e0824003 	add	r4, r2, r3
    8ed4:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8ed8:	e1a03103 	lsl	r3, r3, #2
    8edc:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8ee0:	e0823003 	add	r3, r2, r3
    8ee4:	e5933000 	ldr	r3, [r3]
    8ee8:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    8eec:	e0030392 	mul	r3, r2, r3
    8ef0:	e2835010 	add	r5, r3, #16
    8ef4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8ef8:	e1a03103 	lsl	r3, r3, #2
    8efc:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8f00:	e0823003 	add	r3, r2, r3
    8f04:	e5936000 	ldr	r6, [r3]
    8f08:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    8f0c:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
    8f10:	ebffffc3 	bl	8e24 <func2>
    8f14:	e1a03000 	mov	r3, r0
    8f18:	e0030396 	mul	r3, r6, r3
    8f1c:	e0852003 	add	r2, r5, r3
    8f20:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8f24:	e0823003 	add	r3, r2, r3
    8f28:	e283200f 	add	r2, r3, #15
    8f2c:	e3530000 	cmp	r3, #0
    8f30:	b1a03002 	movlt	r3, r2
    8f34:	a1a03003 	movge	r3, r3
    8f38:	e1a03243 	asr	r3, r3, #4
    8f3c:	e5843000 	str	r3, [r4]
    8f40:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8f44:	e2833001 	add	r3, r3, #1
    8f48:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    8f4c:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8f50:	e3530f7d 	cmp	r3, #500	; 0x1f4
    8f54:	baffffcf 	blt	8e98 <unoptimized+0x30>
    8f58:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8f5c:	e2833001 	add	r3, r3, #1
    8f60:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    8f64:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8f68:	e3530f7d 	cmp	r3, #500	; 0x1f4
    8f6c:	baffffc4 	blt	8e84 <unoptimized+0x1c>
    8f70:	e24bd010 	sub	sp, fp, #16
    8f74:	e8bd4870 	pop	{r4, r5, r6, fp, lr}
    8f78:	e12fff1e 	bx	lr

00008f7c <func3>:
    8f7c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8f80:	e28db000 	add	fp, sp, #0
    8f84:	e24dd00c 	sub	sp, sp, #12
    8f88:	e50b0008 	str	r0, [fp, #-8]
    8f8c:	e50b100c 	str	r1, [fp, #-12]
    8f90:	e0813101 	add	r3, r1, r1, lsl #2
    8f94:	e0832103 	add	r2, r3, r3, lsl #2
    8f98:	e0823000 	add	r3, r2, r0
    8f9c:	e24bd000 	sub	sp, fp, #0
    8fa0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8fa4:	e12fff1e 	bx	lr

00008fa8 <optimized>:
    8fa8:	e92d4870 	push	{r4, r5, r6, fp, lr}
    8fac:	e28db010 	add	fp, sp, #16
    8fb0:	e24dd01c 	sub	sp, sp, #28
    8fb4:	e3a06000 	mov	r6, #0
    8fb8:	ea000013 	b	900c <optimized+0x64>
    8fbc:	e0804101 	add	r4, r0, r1, lsl #2
    8fc0:	e1a03004 	mov	r3, r4
    8fc4:	e5933000 	ldr	r3, [r3]
    8fc8:	e0833203 	add	r3, r3, r3, lsl #4
    8fcc:	e2835010 	add	r5, r3, #16
    8fd0:	e0803106 	add	r3, r0, r6, lsl #2
    8fd4:	e5933000 	ldr	r3, [r3]
    8fd8:	e0812101 	add	r2, r1, r1, lsl #2
    8fdc:	e0822102 	add	r2, r2, r2, lsl #2
    8fe0:	e0822006 	add	r2, r2, r6
    8fe4:	e0225293 	mla	r2, r3, r2, r5
    8fe8:	e2823003 	add	r3, r2, #3
    8fec:	e3530000 	cmp	r3, #0
    8ff0:	b2823012 	addlt	r3, r2, #18
    8ff4:	e1a03243 	asr	r3, r3, #4
    8ff8:	e5843000 	str	r3, [r4]
    8ffc:	e2811001 	add	r1, r1, #1
    9000:	e3510f7d 	cmp	r1, #500	; 0x1f4
    9004:	baffffec 	blt	8fbc <optimized+0x14>
    9008:	e2866001 	add	r6, r6, #1
    900c:	e3560f7d 	cmp	r6, #500	; 0x1f4
    9010:	ba000002 	blt	9020 <optimized+0x78>
    9014:	e24bd010 	sub	sp, fp, #16
    9018:	e8bd4870 	pop	{r4, r5, r6, fp, lr}
    901c:	e12fff1e 	bx	lr
    9020:	e3a01000 	mov	r1, #0
    9024:	eafffff5 	b	9000 <optimized+0x58>

00009028 <__aeabi_uldivmod>:
    9028:	e3530000 	cmp	r3, #0
    902c:	03520000 	cmpeq	r2, #0
    9030:	1a000004 	bne	9048 <__aeabi_uldivmod+0x20>
    9034:	e3510000 	cmp	r1, #0
    9038:	03500000 	cmpeq	r0, #0
    903c:	13e01000 	mvnne	r1, #0
    9040:	13e00000 	mvnne	r0, #0
    9044:	ea000050 	b	918c <__aeabi_idiv0>
    9048:	e24dd008 	sub	sp, sp, #8
    904c:	e92d6000 	push	{sp, lr}
    9050:	eb000003 	bl	9064 <__udivmoddi4>
    9054:	e59de004 	ldr	lr, [sp, #4]
    9058:	e28dd008 	add	sp, sp, #8
    905c:	e8bd000c 	pop	{r2, r3}
    9060:	e12fff1e 	bx	lr

00009064 <__udivmoddi4>:
    9064:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    9068:	e1a06003 	mov	r6, r3
    906c:	e1500002 	cmp	r0, r2
    9070:	e0d13006 	sbcs	r3, r1, r6
    9074:	e1a04000 	mov	r4, r0
    9078:	33a00000 	movcc	r0, #0
    907c:	e1a05001 	mov	r5, r1
    9080:	e59d7020 	ldr	r7, [sp, #32]
    9084:	31a01000 	movcc	r1, r0
    9088:	3a00003b 	bcc	917c <__udivmoddi4+0x118>
    908c:	e1a01006 	mov	r1, r6
    9090:	e1a00002 	mov	r0, r2
    9094:	e1a08002 	mov	r8, r2
    9098:	eb00003c 	bl	9190 <__clzdi2>
    909c:	e1a01005 	mov	r1, r5
    90a0:	e1a09000 	mov	r9, r0
    90a4:	e1a00004 	mov	r0, r4
    90a8:	eb000038 	bl	9190 <__clzdi2>
    90ac:	e049c000 	sub	ip, r9, r0
    90b0:	e1a03c16 	lsl	r3, r6, ip
    90b4:	e24c6020 	sub	r6, ip, #32
    90b8:	e1833618 	orr	r3, r3, r8, lsl r6
    90bc:	e26ce020 	rsb	lr, ip, #32
    90c0:	e1a02c18 	lsl	r2, r8, ip
    90c4:	e1833e38 	orr	r3, r3, r8, lsr lr
    90c8:	e1540002 	cmp	r4, r2
    90cc:	e0d51003 	sbcs	r1, r5, r3
    90d0:	33a00000 	movcc	r0, #0
    90d4:	31a01000 	movcc	r1, r0
    90d8:	3a000005 	bcc	90f4 <__udivmoddi4+0x90>
    90dc:	e3a00001 	mov	r0, #1
    90e0:	e0544002 	subs	r4, r4, r2
    90e4:	e1a01610 	lsl	r1, r0, r6
    90e8:	e1811e30 	orr	r1, r1, r0, lsr lr
    90ec:	e0c55003 	sbc	r5, r5, r3
    90f0:	e1a00c10 	lsl	r0, r0, ip
    90f4:	e35c0000 	cmp	ip, #0
    90f8:	0a00001f 	beq	917c <__udivmoddi4+0x118>
    90fc:	e1a020a2 	lsr	r2, r2, #1
    9100:	e1822f83 	orr	r2, r2, r3, lsl #31
    9104:	e1a0800c 	mov	r8, ip
    9108:	e1a030a3 	lsr	r3, r3, #1
    910c:	ea000007 	b	9130 <__udivmoddi4+0xcc>
    9110:	e0544002 	subs	r4, r4, r2
    9114:	e0c55003 	sbc	r5, r5, r3
    9118:	e0944004 	adds	r4, r4, r4
    911c:	e0a55005 	adc	r5, r5, r5
    9120:	e2944001 	adds	r4, r4, #1
    9124:	e2a55000 	adc	r5, r5, #0
    9128:	e2588001 	subs	r8, r8, #1
    912c:	0a000006 	beq	914c <__udivmoddi4+0xe8>
    9130:	e1540002 	cmp	r4, r2
    9134:	e0d59003 	sbcs	r9, r5, r3
    9138:	2afffff4 	bcs	9110 <__udivmoddi4+0xac>
    913c:	e0944004 	adds	r4, r4, r4
    9140:	e0a55005 	adc	r5, r5, r5
    9144:	e2588001 	subs	r8, r8, #1
    9148:	1afffff8 	bne	9130 <__udivmoddi4+0xcc>
    914c:	e0900004 	adds	r0, r0, r4
    9150:	e1a04c34 	lsr	r4, r4, ip
    9154:	e1844e15 	orr	r4, r4, r5, lsl lr
    9158:	e1844635 	orr	r4, r4, r5, lsr r6
    915c:	e0a11005 	adc	r1, r1, r5
    9160:	e1a05c35 	lsr	r5, r5, ip
    9164:	e1a03c15 	lsl	r3, r5, ip
    9168:	e1833614 	orr	r3, r3, r4, lsl r6
    916c:	e1a0cc14 	lsl	ip, r4, ip
    9170:	e1833e34 	orr	r3, r3, r4, lsr lr
    9174:	e050000c 	subs	r0, r0, ip
    9178:	e0c11003 	sbc	r1, r1, r3
    917c:	e3570000 	cmp	r7, #0
    9180:	18870030 	stmne	r7, {r4, r5}
    9184:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    9188:	e12fff1e 	bx	lr

0000918c <__aeabi_idiv0>:
    918c:	e12fff1e 	bx	lr

00009190 <__clzdi2>:
    9190:	e92d4010 	push	{r4, lr}
    9194:	e3510000 	cmp	r1, #0
    9198:	1a000002 	bne	91a8 <__clzdi2+0x18>
    919c:	eb000005 	bl	91b8 <__clzsi2>
    91a0:	e2800020 	add	r0, r0, #32
    91a4:	ea000001 	b	91b0 <__clzdi2+0x20>
    91a8:	e1a00001 	mov	r0, r1
    91ac:	eb000001 	bl	91b8 <__clzsi2>
    91b0:	e8bd4010 	pop	{r4, lr}
    91b4:	e12fff1e 	bx	lr

000091b8 <__clzsi2>:
    91b8:	e3a0101c 	mov	r1, #28
    91bc:	e3500801 	cmp	r0, #65536	; 0x10000
    91c0:	21a00820 	lsrcs	r0, r0, #16
    91c4:	22411010 	subcs	r1, r1, #16
    91c8:	e3500c01 	cmp	r0, #256	; 0x100
    91cc:	21a00420 	lsrcs	r0, r0, #8
    91d0:	22411008 	subcs	r1, r1, #8
    91d4:	e3500010 	cmp	r0, #16
    91d8:	21a00220 	lsrcs	r0, r0, #4
    91dc:	22411004 	subcs	r1, r1, #4
    91e0:	e28f2008 	add	r2, pc, #8
    91e4:	e7d20000 	ldrb	r0, [r2, r0]
    91e8:	e0800001 	add	r0, r0, r1
    91ec:	e12fff1e 	bx	lr
    91f0:	02020304 	andeq	r0, r2, #4, 6	; 0x10000000
    91f4:	01010101 	tsteq	r1, r1, lsl #2
	...

Disassembly of section .rodata:

0000a000 <__rodata_start>:
    a000:	2b2b2b2b 	blcs	ad4cb4 <__user_program+0x7d4cb4>
    a004:	4f2b2b2b 	svcmi	0x002b2b2b
    a008:	6d697470 	cfstrdvs	mvd7, [r9, #-448]!	; 0xfffffe40
    a00c:	64657a69 	strbtvs	r7, [r5], #-2665	; 0xfffff597
    a010:	6e754620 	cdpvs	6, 7, cr4, cr5, cr0, {1}
    a014:	6f697463 	svcvs	0x00697463
    a018:	2b2b2b6e 	blcs	ad4dd8 <__user_program+0x7d4dd8>
    a01c:	2b2b2b2b 	blcs	ad4cd0 <__user_program+0x7d4cd0>
    a020:	0000000a 	andeq	r0, r0, sl

0000a024 <.LC1>:
    a024:	000a6425 	andeq	r6, sl, r5, lsr #8

0000a028 <.LC2>:
    a028:	2b2b2b2b 	blcs	ad4cdc <__user_program+0x7d4cdc>
    a02c:	552b2b2b 	strpl	r2, [fp, #-2859]!	; 0xfffff4d5
    a030:	74706f6e 	ldrbtvc	r6, [r0], #-3950	; 0xfffff092
    a034:	7a696d69 	bvc	1a655e0 <__user_program+0x17655e0>
    a038:	46206465 	strtmi	r6, [r0], -r5, ror #8
    a03c:	74636e75 	strbtvc	r6, [r3], #-3701	; 0xfffff18b
    a040:	2b6e6f69 	blcs	1ba5dec <__user_program+0x18a5dec>
    a044:	2b2b2b2b 	blcs	ad4cf8 <__user_program+0x7d4cf8>
    a048:	000a2b2b 	andeq	r2, sl, fp, lsr #22

0000a04c <.LC3>:
    a04c:	65646e69 	strbvs	r6, [r4, #-3689]!	; 0xfffff197
    a050:	25203a78 	strcs	r3, [r0, #-2680]!	; 0xfffff588
    a054:	00000a64 	andeq	r0, r0, r4, ror #20

0000a058 <.LC4>:
    a058:	203a796d 	eorscs	r7, sl, sp, ror #18
    a05c:	0a752520 	beq	1d534e4 <__user_program+0x1a534e4>
    a060:	00000000 	andeq	r0, r0, r0

0000a064 <.LC5>:
    a064:	3a737973 	bcc	1ce8638 <__user_program+0x19e8638>
    a068:	0a752520 	beq	1d534f0 <__user_program+0x1a534f0>
    a06c:	00000000 	andeq	r0, r0, r0

0000a070 <.LC6>:
    a070:	2b2b2b2b 	blcs	ad4d24 <__user_program+0x7d4d24>
    a074:	542b2b2b 	strtpl	r2, [fp], #-2859	; 0xfffff4d5
    a078:	20747365 	rsbscs	r7, r4, r5, ror #6
    a07c:	6c696146 	stfvse	f6, [r9], #-280	; 0xfffffee8
    a080:	2b2b6465 	blcs	ae321c <__user_program+0x7e321c>
    a084:	2b2b2b2b 	blcs	ad4d38 <__user_program+0x7d4d38>
    a088:	00000a2b 	andeq	r0, r0, fp, lsr #20

0000a08c <.LC7>:
    a08c:	2b2b2b2b 	blcs	ad4d40 <__user_program+0x7d4d40>
    a090:	542b2b2b 	strtpl	r2, [fp], #-2859	; 0xfffff4d5
    a094:	20747365 	rsbscs	r7, r4, r5, ror #6
    a098:	73736150 	cmnvc	r3, #80, 2
    a09c:	2b2b6465 	blcs	ae3238 <__user_program+0x7e3238>
    a0a0:	2b2b2b2b 	blcs	ad4d54 <__user_program+0x7d4d54>
    a0a4:	00000a2b 	andeq	r0, r0, fp, lsr #20

0000a0a8 <.LC1>:
    a0a8:	74736554 	ldrbtvc	r6, [r3], #-1364	; 0xfffffaac
    a0ac:	20676e69 	rsbcs	r6, r7, r9, ror #28
    a0b0:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
    a0b4:	7465675f 	strbtvc	r6, [r5], #-1887	; 0xfffff8a1
    a0b8:	7479625f 	ldrbtvc	r6, [r9], #-607	; 0xfffffda1
    a0bc:	50203a65 	eorpl	r3, r0, r5, ror #20
    a0c0:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    a0c4:	6e652065 	cdpvs	0, 6, cr2, cr5, cr5, {3}
    a0c8:	20726574 	rsbscs	r6, r2, r4, ror r5
    a0cc:	756e2061 	strbvc	r2, [lr, #-97]!	; 0xffffff9f
    a0d0:	6972656d 	ldmdbvs	r2!, {r0, r2, r3, r5, r6, r8, sl, sp, lr}^
    a0d4:	206c6163 	rsbcs	r6, ip, r3, ror #2
    a0d8:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    a0dc:	00203a65 	eoreq	r3, r0, r5, ror #20

0000a0e0 <.LC2>:
    a0e0:	00006425 	andeq	r6, r0, r5, lsr #8

0000a0e4 <.LC3>:
    a0e4:	74736554 	ldrbtvc	r6, [r3], #-1364	; 0xfffffaac
    a0e8:	20676e69 	rsbcs	r6, r7, r9, ror #28
    a0ec:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
    a0f0:	7465675f 	strbtvc	r6, [r5], #-1887	; 0xfffff8a1
    a0f4:	7479625f 	ldrbtvc	r6, [r9], #-607	; 0xfffffda1
    a0f8:	50203a65 	eorpl	r3, r0, r5, ror #20
    a0fc:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
    a100:	6e652065 	cdpvs	0, 6, cr2, cr5, cr5, {3}
    a104:	20726574 	rsbscs	r6, r2, r4, ror r5
    a108:	6f6e2061 	svcvs	0x006e2061
    a10c:	756e2d6e 	strbvc	r2, [lr, #-3438]!	; 0xfffff292
    a110:	6972656d 	ldmdbvs	r2!, {r0, r2, r3, r5, r6, r8, sl, sp, lr}^
    a114:	206c6163 	rsbcs	r6, ip, r3, ror #2
    a118:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    a11c:	00203a65 	eoreq	r3, r0, r5, ror #20

0000a120 <.LC4>:
    a120:	00006325 	andeq	r6, r0, r5, lsr #6

0000a124 <.LC5>:
    a124:	00000a0d 	andeq	r0, r0, sp, lsl #20

0000a128 <.LC6>:
    a128:	65540a0d 	ldrbvs	r0, [r4, #-2573]	; 0xfffff5f3
    a12c:	6e697473 	mcrvs	4, 3, r7, cr9, cr3, {3}
    a130:	72502067 	subsvc	r2, r0, #103	; 0x67
    a134:	6b746e69 	blvs	1d25ae0 <__user_program+0x1a25ae0>
    a138:	00000021 	andeq	r0, r0, r1, lsr #32

0000a13c <.LC7>:
    a13c:	65540a0d 	ldrbvs	r0, [r4, #-2573]	; 0xfffff5f3
    a140:	6e697473 	mcrvs	4, 3, r7, cr9, cr3, {3}
    a144:	634f2067 	movtvs	r2, #61543	; 0xf067
    a148:	616e6f74 	smcvs	59124	; 0xe6f4
    a14c:	3330206c 	teqcc	r0, #108	; 0x6c
    a150:	6f252036 	svcvs	0x00252036
    a154:	00000000 	andeq	r0, r0, r0

0000a158 <.LC8>:
    a158:	68540a0d 	ldmdavs	r4, {r0, r2, r3, r9, fp}^
    a15c:	65642065 	strbvs	r2, [r4, #-101]!	; 0xffffff9b
    a160:	616d6963 	cmnvs	sp, r3, ror #18
    a164:	6176206c 	cmnvs	r6, ip, rrx
    a168:	2065756c 	rsbcs	r7, r5, ip, ror #10
    a16c:	69203634 	stmdbvs	r0!, {r2, r4, r5, r9, sl, ip, sp}
    a170:	64252073 	strtvs	r2, [r5], #-115	; 0xffffff8d
    a174:	206e6920 	rsbcs	r6, lr, r0, lsr #18
    a178:	69636564 	stmdbvs	r3!, {r2, r5, r6, r8, sl, sp, lr}^
    a17c:	206c616d 	rsbcs	r6, ip, sp, ror #2
    a180:	20646e61 	rsbcs	r6, r4, r1, ror #28
    a184:	69206f25 	stmdbvs	r0!, {r0, r2, r5, r8, r9, sl, fp, sp, lr}
    a188:	636f206e 	cmnvs	pc, #110	; 0x6e
    a18c:	006c6174 	rsbeq	r6, ip, r4, ror r1

0000a190 <.LC9>:
    a190:	68540a0d 	ldmdavs	r4, {r0, r2, r3, r9, fp}^
    a194:	636f2065 	cmnvs	pc, #101	; 0x65
    a198:	206c6174 	rsbcs	r6, ip, r4, ror r1
    a19c:	756c6176 	strbvc	r6, [ip, #-374]!	; 0xfffffe8a
    a1a0:	33302065 	teqcc	r0, #101	; 0x65
    a1a4:	73692036 	cmnvc	r9, #54	; 0x36
    a1a8:	20642520 	rsbcs	r2, r4, r0, lsr #10
    a1ac:	64206e69 	strtvs	r6, [r0], #-3689	; 0xfffff197
    a1b0:	6d696365 	stclvs	3, cr6, [r9, #-404]!	; 0xfffffe6c
    a1b4:	61206c61 			; <UNDEFINED> instruction: 0x61206c61
    a1b8:	2520646e 	strcs	r6, [r0, #-1134]!	; 0xfffffb92
    a1bc:	6e69206f 	cdpvs	0, 6, cr2, cr9, cr15, {3}
    a1c0:	74636f20 	strbtvc	r6, [r3], #-3872	; 0xfffff0e0
    a1c4:	00006c61 	andeq	r6, r0, r1, ror #24

0000a1c8 <.LC10>:
    a1c8:	65540a0d 	ldrbvs	r0, [r4, #-2573]	; 0xfffff5f3
    a1cc:	6e697473 	mcrvs	4, 3, r7, cr9, cr3, {3}
    a1d0:	6f502067 	svcvs	0x00502067
    a1d4:	69746973 	ldmdbvs	r4!, {r0, r1, r4, r5, r6, r8, fp, sp, lr}^
    a1d8:	55206576 	strpl	r6, [r0, #-1398]!	; 0xfffffa8a
    a1dc:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    a1e0:	2064656e 	rsbcs	r6, r4, lr, ror #10
    a1e4:	69636544 	stmdbvs	r3!, {r2, r6, r8, sl, sp, lr}^
    a1e8:	206c616d 	rsbcs	r6, ip, sp, ror #2
    a1ec:	3a333231 	bcc	cd6ab8 <__user_program+0x9d6ab8>
    a1f0:	00752520 	rsbseq	r2, r5, r0, lsr #10

0000a1f4 <.LC11>:
    a1f4:	65540a0d 	ldrbvs	r0, [r4, #-2573]	; 0xfffff5f3
    a1f8:	6e697473 	mcrvs	4, 3, r7, cr9, cr3, {3}
    a1fc:	654e2067 	strbvs	r2, [lr, #-103]	; 0xffffff99
    a200:	69746167 	ldmdbvs	r4!, {r0, r1, r2, r5, r6, r8, sp, lr}^
    a204:	55206576 	strpl	r6, [r0, #-1398]!	; 0xfffffa8a
    a208:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
    a20c:	2064656e 	rsbcs	r6, r4, lr, ror #10
    a210:	69636544 	stmdbvs	r3!, {r2, r6, r8, sl, sp, lr}^
    a214:	206c616d 	rsbcs	r6, ip, sp, ror #2
    a218:	3332312d 	teqcc	r2, #1073741835	; 0x4000000b
    a21c:	7525203a 	strvc	r2, [r5, #-58]!	; 0xffffffc6
    a220:	00000000 	andeq	r0, r0, r0

0000a224 <.LC12>:
    a224:	65540a0d 	ldrbvs	r0, [r4, #-2573]	; 0xfffff5f3
    a228:	6e697473 	mcrvs	4, 3, r7, cr9, cr3, {3}
    a22c:	6f502067 	svcvs	0x00502067
    a230:	69746973 	ldmdbvs	r4!, {r0, r1, r4, r5, r6, r8, fp, sp, lr}^
    a234:	53206576 			; <UNDEFINED> instruction: 0x53206576
    a238:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    a23c:	65442064 	strbvs	r2, [r4, #-100]	; 0xffffff9c
    a240:	616d6963 	cmnvs	sp, r3, ror #18
    a244:	3131206c 	teqcc	r1, ip, rrx
    a248:	6425203a 	strtvs	r2, [r5], #-58	; 0xffffffc6
    a24c:	00000000 	andeq	r0, r0, r0

0000a250 <.LC13>:
    a250:	65540a0d 	ldrbvs	r0, [r4, #-2573]	; 0xfffff5f3
    a254:	6e697473 	mcrvs	4, 3, r7, cr9, cr3, {3}
    a258:	654e2067 	strbvs	r2, [lr, #-103]	; 0xffffff99
    a25c:	69746167 	ldmdbvs	r4!, {r0, r1, r2, r5, r6, r8, sp, lr}^
    a260:	53206576 			; <UNDEFINED> instruction: 0x53206576
    a264:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
    a268:	65442064 	strbvs	r2, [r4, #-100]	; 0xffffff9c
    a26c:	616d6963 	cmnvs	sp, r3, ror #18
    a270:	312d206c 			; <UNDEFINED> instruction: 0x312d206c
    a274:	25203a31 	strcs	r3, [r0, #-2609]!	; 0xfffff5cf
    a278:	00000064 	andeq	r0, r0, r4, rrx

0000a27c <.LC14>:
    a27c:	65540a0d 	ldrbvs	r0, [r4, #-2573]	; 0xfffff5f3
    a280:	6e697473 	mcrvs	4, 3, r7, cr9, cr3, {3}
    a284:	65482067 	strbvs	r2, [r8, #-103]	; 0xffffff99
    a288:	65646178 	strbvs	r6, [r4, #-376]!	; 0xfffffe88
    a28c:	616d6963 	cmnvs	sp, r3, ror #18
    a290:	6361206c 	cmnvs	r1, #108	; 0x6c
    a294:	7825203a 	stmdavc	r5!, {r1, r3, r4, r5, sp}
    a298:	00000000 	andeq	r0, r0, r0

0000a29c <.LC15>:
    a29c:	68540a0d 	ldmdavs	r4, {r0, r2, r3, r9, fp}^
    a2a0:	65642065 	strbvs	r2, [r4, #-101]!	; 0xffffff9b
    a2a4:	616d6963 	cmnvs	sp, r3, ror #18
    a2a8:	6176206c 	cmnvs	r6, ip, rrx
    a2ac:	2065756c 	rsbcs	r7, r5, ip, ror #10
    a2b0:	20333433 	eorscs	r3, r3, r3, lsr r4
    a2b4:	25207369 	strcs	r7, [r0, #-873]!	; 0xfffffc97
    a2b8:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
    a2bc:	63656420 	cmnvs	r5, #32, 8	; 0x20000000
    a2c0:	6c616d69 	stclvs	13, cr6, [r1], #-420	; 0xfffffe5c
    a2c4:	646e6120 	strbtvs	r6, [lr], #-288	; 0xfffffee0
    a2c8:	20782520 	rsbscs	r2, r8, r0, lsr #10
    a2cc:	68206e69 	stmdavs	r0!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}
    a2d0:	00007865 	andeq	r7, r0, r5, ror #16

0000a2d4 <.LC16>:
    a2d4:	68540a0d 	ldmdavs	r4, {r0, r2, r3, r9, fp}^
    a2d8:	65682065 	strbvs	r2, [r8, #-101]!	; 0xffffff9b
    a2dc:	61762078 	cmnvs	r6, r8, ror r0
    a2e0:	2065756c 	rsbcs	r7, r5, ip, ror #10
    a2e4:	35317830 	ldrcc	r7, [r1, #-2096]!	; 0xfffff7d0
    a2e8:	73692037 	cmnvc	r9, #55	; 0x37
    a2ec:	20642520 	rsbcs	r2, r4, r0, lsr #10
    a2f0:	64206e69 	strtvs	r6, [r0], #-3689	; 0xfffff197
    a2f4:	6d696365 	stclvs	3, cr6, [r9, #-404]!	; 0xfffffe6c
    a2f8:	61206c61 			; <UNDEFINED> instruction: 0x61206c61
    a2fc:	2520646e 	strcs	r6, [r0, #-1134]!	; 0xfffffb92
    a300:	6e692078 	mcrvs	0, 3, r2, cr9, cr8, {3}
    a304:	78656820 	stmdavc	r5!, {r5, fp, sp, lr}^
    a308:	00000000 	andeq	r0, r0, r0

0000a30c <.LC17>:
    a30c:	65540a0d 	ldrbvs	r0, [r4, #-2573]	; 0xfffff5f3
    a310:	6e697473 	mcrvs	4, 3, r7, cr9, cr3, {3}
    a314:	68432067 	stmdavs	r3, {r0, r1, r2, r5, r6, sp}^
    a318:	55207261 	strpl	r7, [r0, #-609]!	; 0xfffffd9f
    a31c:	646e6120 	strbtvs	r6, [lr], #-288	; 0xfffffee0
    a320:	203a7520 	eorscs	r7, sl, r0, lsr #10
    a324:	25206325 	strcs	r6, [r0, #-805]!	; 0xfffffcdb
    a328:	00000063 	andeq	r0, r0, r3, rrx

0000a32c <.LC18>:
    a32c:	65540a0d 	ldrbvs	r0, [r4, #-2573]	; 0xfffff5f3
    a330:	6e697473 	mcrvs	4, 3, r7, cr9, cr3, {3}
    a334:	74532067 	ldrbvc	r2, [r3], #-103	; 0xffffff99
    a338:	676e6972 			; <UNDEFINED> instruction: 0x676e6972
    a33c:	6c654820 	stclvs	8, cr4, [r5], #-128	; 0xffffff80
    a340:	57206f6c 	strpl	r6, [r0, -ip, ror #30]!
    a344:	646c726f 	strbtvs	r7, [ip], #-623	; 0xfffffd91
    a348:	7325203a 			; <UNDEFINED> instruction: 0x7325203a
    a34c:	00000000 	andeq	r0, r0, r0

0000a350 <.LC19>:
    a350:	68540a0d 	ldmdavs	r4, {r0, r2, r3, r9, fp}^
    a354:	64612065 	strbtvs	r2, [r1], #-101	; 0xffffff9b
    a358:	73657264 	cmnvc	r5, #100, 4	; 0x40000006
    a35c:	70252073 	eorvc	r2, r5, r3, ror r0
    a360:	6f747320 	svcvs	0x00747320
    a364:	20736572 	rsbscs	r6, r3, r2, ror r5
    a368:	002e7825 	eoreq	r7, lr, r5, lsr #16

0000a36c <.LC0>:
    a36c:	6c6c6548 	cfstr64vs	mvdx6, [ip], #-288	; 0xfffffee0
    a370:	6f57206f 	svcvs	0x0057206f
    a374:	00646c72 	rsbeq	r6, r4, r2, ror ip

Disassembly of section .ARM.exidx:

0000a378 <.ARM.exidx>:
    a378:	7fffecec 	svcvc	0x00ffecec
    a37c:	00000001 	andeq	r0, r0, r1

Disassembly of section .data:

0000b000 <gpio>:
    b000:	3f200000 	svccc	0x00200000

0000b004 <digits>:
    b004:	33323130 	teqcc	r2, #48, 2
    b008:	37363534 			; <UNDEFINED> instruction: 0x37363534
    b00c:	62613938 	rsbvs	r3, r1, #56, 18	; 0xe0000
    b010:	66656463 	strbtvs	r6, [r5], -r3, ror #8
	...

Disassembly of section .bss:

0000c000 <array1>:
	...

0000c7d0 <array2>:
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000016e 	andeq	r0, r0, lr, ror #2
   4:	00000004 	andeq	r0, r0, r4
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	00000033 	andeq	r0, r0, r3, lsr r0
  10:	0000950c 	andeq	r9, r0, ip, lsl #10
  14:	0000e500 	andeq	lr, r0, r0, lsl #10
  18:	00805400 	addeq	r5, r0, r0, lsl #8
  1c:	00032800 	andeq	r2, r3, r0, lsl #16
  20:	00000000 	andeq	r0, r0, r0
  24:	08010200 	stmdaeq	r1, {r9}
  28:	000000e0 	andeq	r0, r0, r0, ror #1
  2c:	64050202 	strvs	r0, [r5], #-514	; 0xfffffdfe
  30:	03000001 	movweq	r0, #1
  34:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
  38:	08020074 	stmdaeq	r2, {r2, r4, r5, r6}
  3c:	00000005 	andeq	r0, r0, r5
  40:	00cf0400 	sbceq	r0, pc, r0, lsl #8
  44:	16020000 	strne	r0, [r2], -r0
  48:	00004d1d 	andeq	r4, r0, sp, lsl sp
  4c:	08010200 	stmdaeq	r1, {r9}
  50:	000000d7 	ldrdeq	r0, [r0], -r7
  54:	3f070202 	svccc	0x00070202
  58:	04000001 	streq	r0, [r0], #-1
  5c:	0000001c 	andeq	r0, r0, ip, lsl r0
  60:	6c1d1a02 			; <UNDEFINED> instruction: 0x6c1d1a02
  64:	05000000 	streq	r0, [r0, #-0]
  68:	0000005b 	andeq	r0, r0, fp, asr r0
  6c:	b2070402 	andlt	r0, r7, #33554432	; 0x2000000
  70:	02000000 	andeq	r0, r0, #0
  74:	00a80708 	adceq	r0, r8, r8, lsl #14
  78:	25060000 	strcs	r0, [r6, #-0]
  7c:	01000000 	mrseq	r0, (UNDEF: 0)
  80:	008c1b52 	addeq	r1, ip, r2, asr fp
  84:	03050000 	movweq	r0, #20480	; 0x5000
  88:	0000b000 	andeq	fp, r0, r0
  8c:	00670407 	rsbeq	r0, r7, r7, lsl #8
  90:	0e080000 	cdpeq	0, 0, cr0, cr8, cr0, {0}
  94:	01000000 	mrseq	r0, (UNDEF: 0)
  98:	8280067d 	addhi	r0, r0, #131072000	; 0x7d00000
  9c:	00fc0000 	rscseq	r0, ip, r0
  a0:	9c010000 	stcls	0, cr0, [r1], {-0}
  a4:	000000c7 	andeq	r0, r0, r7, asr #1
  a8:	6e697009 	cdpvs	0, 6, cr7, cr9, cr9, {0}
  ac:	1c7d0100 	ldfnee	f0, [sp], #-0
  b0:	00000041 	andeq	r0, r0, r1, asr #32
  b4:	0a779102 	beq	1de44c4 <__user_program+0x1ae44c4>
  b8:	00000152 	andeq	r0, r0, r2, asr r1
  bc:	41297d01 			; <UNDEFINED> instruction: 0x41297d01
  c0:	02000000 	andeq	r0, r0, #0
  c4:	0b007691 	bleq	1db10 <__bss_end+0x10b10>
  c8:	000000bf 	strheq	r0, [r0], -pc	; <UNPREDICTABLE>
  cc:	f8067101 			; <UNDEFINED> instruction: 0xf8067101
  d0:	88000081 	stmdahi	r0, {r0, r7}
  d4:	01000000 	mrseq	r0, (UNDEF: 0)
  d8:	0000ed9c 	muleq	r0, ip, sp
  dc:	69700900 	ldmdbvs	r0!, {r8, fp}^
  e0:	7101006e 	tstvc	r1, lr, rrx
  e4:	00004117 	andeq	r4, r0, r7, lsl r1
  e8:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
  ec:	002a0b00 	eoreq	r0, sl, r0, lsl #22
  f0:	65010000 	strvs	r0, [r1, #-0]
  f4:	00817006 	addeq	r7, r1, r6
  f8:	00008800 	andeq	r8, r0, r0, lsl #16
  fc:	139c0100 	orrsne	r0, ip, #0, 2
 100:	09000001 	stmdbeq	r0, {r0}
 104:	006e6970 	rsbeq	r6, lr, r0, ror r9
 108:	41176501 	tstmi	r7, r1, lsl #10
 10c:	02000000 	andeq	r0, r0, #0
 110:	0c007791 	stceq	7, cr7, [r0], {145}	; 0x91
 114:	00000158 	andeq	r0, r0, r8, asr r1
 118:	54065501 	strpl	r5, [r6], #-1281	; 0xfffffaff
 11c:	1c000080 	stcne	0, cr0, [r0], {128}	; 0x80
 120:	01000001 	tsteq	r0, r1
 124:	6970099c 	ldmdbvs	r0!, {r2, r3, r4, r7, r8, fp}^
 128:	5501006e 	strpl	r0, [r1, #-110]	; 0xffffff92
 12c:	0000411a 	andeq	r4, r0, sl, lsl r1
 130:	67910200 	ldrvs	r0, [r1, r0, lsl #4]
 134:	6e756609 	cdpvs	6, 7, cr6, cr5, cr9, {0}
 138:	27550100 	ldrbcs	r0, [r5, -r0, lsl #2]
 13c:	00000041 	andeq	r0, r0, r1, asr #32
 140:	0d669102 	stfeqp	f1, [r6, #-8]!
 144:	00676572 	rsbeq	r6, r7, r2, ror r5
 148:	5b0c5a01 	blpl	316954 <__user_program+0x16954>
 14c:	02000000 	andeq	r0, r0, #0
 150:	5d067491 	cfstrspl	mvf7, [r6, #-580]	; 0xfffffdbc
 154:	01000001 	tsteq	r0, r1
 158:	005b0c5c 	subseq	r0, fp, ip, asr ip
 15c:	91020000 	mrsls	r0, (UNDEF: 2)
 160:	00c80670 	sbceq	r0, r8, r0, ror r6
 164:	5e010000 	cdppl	0, 0, cr0, cr1, cr0, {0}
 168:	00005b0c 	andeq	r5, r0, ip, lsl #22
 16c:	6c910200 	lfmvs	f0, 4, [r1], {0}
 170:	00db0000 	sbcseq	r0, fp, r0
 174:	00040000 	andeq	r0, r4, r0
 178:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
 17c:	00330104 	eorseq	r0, r3, r4, lsl #2
 180:	7c0c0000 	stcvc	0, cr0, [ip], {-0}
 184:	9f000001 	svcls	0x00000001
 188:	7c000001 	stcvc	0, cr0, [r0], {1}
 18c:	a8000083 	stmdage	r0, {r0, r1, r7}
 190:	2f000001 	svccs	0x00000001
 194:	02000001 	andeq	r0, r0, #1
 198:	00e00801 	rsceq	r0, r0, r1, lsl #16
 19c:	02020000 	andeq	r0, r2, #0
 1a0:	00016405 	andeq	r6, r1, r5, lsl #8
 1a4:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
 1a8:	00746e69 	rsbseq	r6, r4, r9, ror #28
 1ac:	00050802 	andeq	r0, r5, r2, lsl #16
 1b0:	02000000 	andeq	r0, r0, #0
 1b4:	00d70801 	sbcseq	r0, r7, r1, lsl #16
 1b8:	02020000 	andeq	r0, r2, #0
 1bc:	00013f07 	andeq	r3, r1, r7, lsl #30
 1c0:	001c0400 	andseq	r0, ip, r0, lsl #8
 1c4:	1a020000 	bne	801cc <__bss_end+0x731cc>
 1c8:	00005b1d 	andeq	r5, r0, sp, lsl fp
 1cc:	07040200 	streq	r0, [r4, -r0, lsl #4]
 1d0:	000000b2 	strheq	r0, [r0], -r2
 1d4:	a8070802 	stmdage	r7, {r1, fp}
 1d8:	05000000 	streq	r0, [r0, #-0]
 1dc:	00000033 	andeq	r0, r0, r3, lsr r0
 1e0:	0000007a 	andeq	r0, r0, sl, ror r0
 1e4:	00005b06 	andeq	r5, r0, r6, lsl #22
 1e8:	0001f300 	andeq	pc, r1, r0, lsl #6
 1ec:	00016e07 	andeq	r6, r1, r7, lsl #28
 1f0:	05120100 	ldreq	r0, [r2, #-256]	; 0xffffff00
 1f4:	00000069 	andeq	r0, r0, r9, rrx
 1f8:	c0000305 	andgt	r0, r0, r5, lsl #6
 1fc:	75070000 	strvc	r0, [r7, #-0]
 200:	01000001 	tsteq	r0, r1
 204:	00691212 	rsbeq	r1, r9, r2, lsl r2
 208:	03050000 	movweq	r0, #20480	; 0x5000
 20c:	0000c7d0 	ldrdeq	ip, [r0], -r0
 210:	0001b508 	andeq	fp, r1, r8, lsl #10
 214:	06170100 	ldreq	r0, [r7], -r0, lsl #2
 218:	0000837c 	andeq	r8, r0, ip, ror r3
 21c:	000001a8 	andeq	r0, r0, r8, lsr #3
 220:	99099c01 	stmdbls	r9, {r0, sl, fp, ip, pc}
 224:	01000001 	tsteq	r0, r1
 228:	00330719 	eorseq	r0, r3, r9, lsl r7
 22c:	91020000 	mrsls	r0, (UNDEF: 2)
 230:	01c10974 	biceq	r0, r1, r4, ror r9
 234:	1a010000 	bne	4023c <__bss_end+0x3323c>
 238:	00003307 	andeq	r3, r0, r7, lsl #6
 23c:	70910200 	addsvc	r0, r1, r0, lsl #4
 240:	00018d09 	andeq	r8, r1, r9, lsl #26
 244:	0c1b0100 	ldfeqs	f0, [fp], {-0}
 248:	0000004f 	andeq	r0, r0, pc, asr #32
 24c:	006c9102 	rsbeq	r9, ip, r2, lsl #2
 250:	00024a00 	andeq	r4, r2, r0, lsl #20
 254:	68000400 	stmdavs	r0, {sl}
 258:	04000001 	streq	r0, [r0], #-1
 25c:	00003301 	andeq	r3, r0, r1, lsl #6
 260:	02220c00 	eoreq	r0, r2, #0, 24
 264:	01d40000 	bicseq	r0, r4, r0
 268:	85240000 	strhi	r0, [r4, #-0]!
 26c:	03f80000 	mvnseq	r0, #0
 270:	01fe0000 	mvnseq	r0, r0
 274:	01020000 	mrseq	r0, (UNDEF: 2)
 278:	0000e008 	andeq	lr, r0, r8
 27c:	00250300 	eoreq	r0, r5, r0, lsl #6
 280:	02020000 	andeq	r0, r2, #0
 284:	00016405 	andeq	r6, r1, r5, lsl #8
 288:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
 28c:	00746e69 	rsbseq	r6, r4, r9, ror #28
 290:	00050802 	andeq	r0, r5, r2, lsl #16
 294:	05000000 	streq	r0, [r0, #-0]
 298:	000000cf 	andeq	r0, r0, pc, asr #1
 29c:	521d1602 	andspl	r1, sp, #2097152	; 0x200000
 2a0:	02000000 	andeq	r0, r0, #0
 2a4:	00d70801 	sbcseq	r0, r7, r1, lsl #16
 2a8:	02020000 	andeq	r0, r2, #0
 2ac:	00013f07 	andeq	r3, r1, r7, lsl #30
 2b0:	07040200 	streq	r0, [r4, -r0, lsl #4]
 2b4:	000000b2 	strheq	r0, [r0], -r2
 2b8:	0001c605 	andeq	ip, r1, r5, lsl #12
 2bc:	1d1c0200 	lfmne	f0, 4, [ip, #-0]
 2c0:	00000073 	andeq	r0, r0, r3, ror r0
 2c4:	a8070802 	stmdage	r7, {r1, fp}
 2c8:	05000000 	streq	r0, [r0, #-0]
 2cc:	00000207 	andeq	r0, r0, r7, lsl #4
 2d0:	861d1303 	ldrhi	r1, [sp], -r3, lsl #6
 2d4:	06000000 	streq	r0, [r0], -r0
 2d8:	00000205 	andeq	r0, r0, r5, lsl #4
 2dc:	9d000404 	cfstrsls	mvf0, [r0, #-16]
 2e0:	07000000 	streq	r0, [r0, -r0]
 2e4:	0000024c 	andeq	r0, r0, ip, asr #4
 2e8:	0000009d 	muleq	r0, sp, r0
 2ec:	04080000 	streq	r0, [r8], #-0
 2f0:	00002509 	andeq	r2, r0, r9, lsl #10
 2f4:	0000af00 	andeq	sl, r0, r0, lsl #30
 2f8:	00600a00 	rsbeq	r0, r0, r0, lsl #20
 2fc:	00100000 	andseq	r0, r0, r0
 300:	0002330b 	andeq	r3, r2, fp, lsl #6
 304:	0e180100 	mufeqe	f0, f0, f0
 308:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
 30c:	b0040305 	andlt	r0, r4, r5, lsl #6
 310:	400c0000 	andmi	r0, ip, r0
 314:	01000002 	tsteq	r0, r2
 318:	0038053f 	eorseq	r0, r8, pc, lsr r5
 31c:	865c0000 	ldrbhi	r0, [ip], -r0
 320:	02c00000 	sbceq	r0, r0, #0
 324:	9c010000 	stcls	0, cr0, [r1], {-0}
 328:	000001ac 	andeq	r0, r0, ip, lsr #3
 32c:	746d660d 	strbtvc	r6, [sp], #-1549	; 0xfffff9f3
 330:	183f0100 	ldmdane	pc!, {r8}	; <UNPREDICTABLE>
 334:	000001ac 	andeq	r0, r0, ip, lsr #3
 338:	0e709102 	expeqs	f1, f2
 33c:	7274730f 	rsbsvc	r7, r4, #1006632960	; 0x3c000000
 340:	08420100 	stmdaeq	r2, {r8}^
 344:	000001b2 			; <UNDEFINED> instruction: 0x000001b2
 348:	0b4c9102 	bleq	1324758 <__user_program+0x1024758>
 34c:	00000247 	andeq	r0, r0, r7, asr #4
 350:	7a0a4501 	bvc	29175c <__end+0x16375c>
 354:	03000000 	movweq	r0, #0
 358:	107fb091 			; <UNDEFINED> instruction: 0x107fb091
 35c:	000086a4 	andeq	r8, r0, r4, lsr #13
 360:	0000003c 	andeq	r0, r0, ip, lsr r0
 364:	00000126 	andeq	r0, r0, r6, lsr #2
 368:	01006f0f 	tsteq	r0, pc, lsl #30
 36c:	00380951 	eorseq	r0, r8, r1, asr r9
 370:	91030000 	mrsls	r0, (UNDEF: 3)
 374:	10007fb4 			; <UNDEFINED> instruction: 0x10007fb4
 378:	000086f4 	strdeq	r8, [r0], -r4
 37c:	00000054 	andeq	r0, r0, r4, asr r0
 380:	00000141 	andeq	r0, r0, r1, asr #2
 384:	0100640f 	tsteq	r0, pc, lsl #8
 388:	00380958 	eorseq	r0, r8, r8, asr r9
 38c:	91020000 	mrsls	r0, (UNDEF: 2)
 390:	5c100048 	ldcpl	0, cr0, [r0], {72}	; 0x48
 394:	34000087 	strcc	r0, [r0], #-135	; 0xffffff79
 398:	5d000000 	stcpl	0, cr0, [r0, #-0]
 39c:	0f000001 	svceq	0x00000001
 3a0:	62010075 	andvs	r0, r1, #117	; 0x75
 3a4:	00003809 	andeq	r3, r0, r9, lsl #16
 3a8:	b8910300 	ldmlt	r1, {r8, r9}
 3ac:	a410007f 	ldrge	r0, [r0], #-127	; 0xffffff81
 3b0:	40000087 	andmi	r0, r0, r7, lsl #1
 3b4:	79000000 	stmdbvc	r0, {}	; <UNPREDICTABLE>
 3b8:	0f000001 	svceq	0x00000001
 3bc:	67010078 	smlsdxvs	r1, r8, r0, r0
 3c0:	00003809 	andeq	r3, r0, r9, lsl #16
 3c4:	bc910300 	ldclt	3, cr0, [r1], {0}
 3c8:	f810007f 			; <UNDEFINED> instruction: 0xf810007f
 3cc:	24000087 	strcs	r0, [r0], #-135	; 0xffffff79
 3d0:	94000000 	strls	r0, [r0], #-0
 3d4:	0f000001 	svceq	0x00000001
 3d8:	6f010063 	svcvs	0x00010063
 3dc:	00003809 	andeq	r3, r0, r9, lsl #16
 3e0:	40910200 	addsmi	r0, r1, r0, lsl #4
 3e4:	88881100 	stmhi	r8, {r8, ip}
 3e8:	00400000 	subeq	r0, r0, r0
 3ec:	700f0000 	andvc	r0, pc, r0
 3f0:	097d0100 	ldmdbeq	sp!, {r8}^
 3f4:	00000038 	andeq	r0, r0, r8, lsr r0
 3f8:	00449102 	subeq	r9, r4, r2, lsl #2
 3fc:	2c041200 	sfmcs	f1, 4, [r4], {-0}
 400:	12000000 	andne	r0, r0, #0
 404:	00002504 	andeq	r2, r0, r4, lsl #10
 408:	02181300 	andseq	r1, r8, #0, 6
 40c:	21010000 	mrscs	r0, (UNDEF: 1)
 410:	0085240e 	addeq	r2, r5, lr, lsl #8
 414:	00013800 	andeq	r3, r1, r0, lsl #16
 418:	419c0100 	orrsmi	r0, ip, r0, lsl #2
 41c:	14000002 	strne	r0, [r0], #-2
 420:	000001cf 	andeq	r0, r0, pc, asr #3
 424:	46202101 	strtmi	r2, [r0], -r1, lsl #2
 428:	03000000 	movweq	r0, #0
 42c:	0d7f9791 	ldcleq	7, cr9, [pc, #-580]!	; 1f0 <__start-0x7e10>
 430:	006d756e 	rsbeq	r7, sp, lr, ror #10
 434:	672f2101 	strvs	r2, [pc, -r1, lsl #2]!
 438:	03000000 	movweq	r0, #0
 43c:	0f7f8891 	svceq	0x007f8891
 440:	24010069 	strcs	r0, [r1], #-105	; 0xffffff97
 444:	00003807 	andeq	r3, r0, r7, lsl #16
 448:	64910200 	ldrvs	r0, [r1], #512	; 0x200
 44c:	00023a0b 	andeq	r3, r2, fp, lsl #20
 450:	07250100 	streq	r0, [r5, -r0, lsl #2]!
 454:	00000038 	andeq	r0, r0, r8, lsr r0
 458:	0f5c9102 	svceq	0x005c9102
 45c:	00727473 	rsbseq	r7, r2, r3, ror r4
 460:	41082601 	tstmi	r8, r1, lsl #12
 464:	03000002 	movweq	r0, #2
 468:	0b7f9891 	bleq	1fe66b4 <__user_program+0x1ce66b4>
 46c:	0000020f 	andeq	r0, r0, pc, lsl #4
 470:	25082701 	strcs	r2, [r8, #-1793]	; 0xfffff8ff
 474:	02000000 	andeq	r0, r0, #0
 478:	fc115b91 	ldc2	11, cr5, [r1], {145}	; 0x91	; <UNPREDICTABLE>
 47c:	54000085 	strpl	r0, [r0], #-133	; 0xffffff7b
 480:	0f000000 	svceq	0x00000000
 484:	3801006a 	stmdacc	r1, {r1, r3, r5, r6}
 488:	0000380d 	andeq	r3, r0, sp, lsl #16
 48c:	60910200 	addsvs	r0, r1, r0, lsl #4
 490:	25150000 	ldrcs	r0, [r5, #-0]
 494:	0a000000 	beq	49c <__start-0x7b64>
 498:	00000060 	andeq	r0, r0, r0, rrx
 49c:	da00003f 	ble	5a0 <__start-0x7a60>
 4a0:	04000001 	streq	r0, [r0], #-1
 4a4:	00028200 	andeq	r8, r2, r0, lsl #4
 4a8:	33010400 	movwcc	r0, #5120	; 0x1400
 4ac:	0c000000 	stceq	0, cr0, [r0], {-0}
 4b0:	00000276 	andeq	r0, r0, r6, ror r2
 4b4:	000001d4 	ldrdeq	r0, [r0], -r4
 4b8:	0000891c 	andeq	r8, r0, ip, lsl r9
 4bc:	00000438 	andeq	r0, r0, r8, lsr r4
 4c0:	0000036e 	andeq	r0, r0, lr, ror #6
 4c4:	e0080102 	and	r0, r8, r2, lsl #2
 4c8:	02000000 	andeq	r0, r0, #0
 4cc:	01640502 	cmneq	r4, r2, lsl #10
 4d0:	04030000 	streq	r0, [r3], #-0
 4d4:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
 4d8:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
 4dc:	00000000 	andeq	r0, r0, r0
 4e0:	0000cf04 	andeq	ip, r0, r4, lsl #30
 4e4:	1d160200 	lfmne	f0, 4, [r6, #-0]
 4e8:	0000004d 	andeq	r0, r0, sp, asr #32
 4ec:	d7080102 	strle	r0, [r8, -r2, lsl #2]
 4f0:	02000000 	andeq	r0, r0, #0
 4f4:	013f0702 	teqeq	pc, r2, lsl #14
 4f8:	1c040000 	stcne	0, cr0, [r4], {-0}
 4fc:	02000000 	andeq	r0, r0, #0
 500:	00671d1a 	rsbeq	r1, r7, sl, lsl sp
 504:	04020000 	streq	r0, [r2], #-0
 508:	0000b207 	andeq	fp, r0, r7, lsl #4
 50c:	07080200 	streq	r0, [r8, -r0, lsl #4]
 510:	000000a8 	andeq	r0, r0, r8, lsr #1
 514:	00025105 	andeq	r5, r2, r5, lsl #2
 518:	09a20100 	stmibeq	r2!, {r8}
 51c:	00000041 	andeq	r0, r0, r1, asr #32
 520:	00008cc0 	andeq	r8, r0, r0, asr #25
 524:	00000094 	muleq	r0, r4, r0
 528:	ac069c01 	stcge	12, cr9, [r6], {1}
 52c:	01000002 	tsteq	r0, r2
 530:	8c6c0691 	stclhi	6, cr0, [ip], #-580	; 0xfffffdbc
 534:	00540000 	subseq	r0, r4, r0
 538:	9c010000 	stcls	0, cr0, [r1], {-0}
 53c:	000000b1 	strheq	r0, [r0], -r1
 540:	00025a07 	andeq	r5, r2, r7, lsl #20
 544:	1c910100 	ldfnes	f0, [r1], {0}
 548:	00000041 	andeq	r0, r0, r1, asr #32
 54c:	00779102 	rsbseq	r9, r7, r2, lsl #2
 550:	0002f708 	andeq	pc, r2, r8, lsl #14
 554:	06850100 	streq	r0, [r5], r0, lsl #2
 558:	00008c34 	andeq	r8, r0, r4, lsr ip
 55c:	00000038 	andeq	r0, r0, r8, lsr r0
 560:	a2099c01 	andge	r9, r9, #256	; 0x100
 564:	01000002 	tsteq	r0, r2
 568:	891c0623 	ldmdbhi	ip, {r0, r1, r5, r9, sl}
 56c:	03180000 	tsteq	r8, #0
 570:	9c010000 	stcls	0, cr0, [r1], {-0}
 574:	000001cb 	andeq	r0, r0, fp, asr #3
 578:	0002da0a 	andeq	sp, r2, sl, lsl #20
 57c:	09340100 	ldmdbeq	r4!, {r8}
 580:	00000033 	andeq	r0, r0, r3, lsr r0
 584:	0a489102 	beq	1224994 <__user_program+0xf24994>
 588:	0000028c 	andeq	r0, r0, ip, lsl #5
 58c:	250a3501 	strcs	r3, [sl, #-1281]	; 0xfffffaff
 590:	02000000 	andeq	r0, r0, #0
 594:	c10a4791 			; <UNDEFINED> instruction: 0xc10a4791
 598:	01000002 	tsteq	r0, r2
 59c:	00330938 	eorseq	r0, r3, r8, lsr r9
 5a0:	91020000 	mrsls	r0, (UNDEF: 2)
 5a4:	02f00a74 	rscseq	r0, r0, #116, 20	; 0x74000
 5a8:	39010000 	stmdbcc	r1, {}	; <UNPREDICTABLE>
 5ac:	00003309 	andeq	r3, r0, r9, lsl #6
 5b0:	70910200 	addsvc	r0, r1, r0, lsl #4
 5b4:	0002cd0a 	andeq	ip, r2, sl, lsl #26
 5b8:	093a0100 	ldmdbeq	sl!, {r8}
 5bc:	00000033 	andeq	r0, r0, r3, lsr r0
 5c0:	0a6c9102 	beq	1b249d0 <__user_program+0x18249d0>
 5c4:	00000266 	andeq	r0, r0, r6, ror #4
 5c8:	33093b01 	movwcc	r3, #39681	; 0x9b01
 5cc:	02000000 	andeq	r0, r0, #0
 5d0:	9c0a6891 	stcls	8, cr6, [sl], {145}	; 0x91
 5d4:	01000002 	tsteq	r0, r2
 5d8:	0033093c 	eorseq	r0, r3, ip, lsr r9
 5dc:	91020000 	mrsls	r0, (UNDEF: 2)
 5e0:	02e90a64 	rsceq	r0, r9, #100, 20	; 0x64000
 5e4:	3d010000 	stccc	0, cr0, [r1, #-0]
 5e8:	00003309 	andeq	r3, r0, r9, lsl #6
 5ec:	60910200 	addsvs	r0, r1, r0, lsl #4
 5f0:	0002e30a 	andeq	lr, r2, sl, lsl #6
 5f4:	093e0100 	ldmdbeq	lr!, {r8}
 5f8:	00000033 	andeq	r0, r0, r3, lsr r0
 5fc:	0a5c9102 	beq	1724a0c <__user_program+0x1424a0c>
 600:	0000025f 	andeq	r0, r0, pc, asr r2
 604:	33093f01 	movwcc	r3, #40705	; 0x9f01
 608:	02000000 	andeq	r0, r0, #0
 60c:	d30a5891 	movwle	r5, #43153	; 0xa891
 610:	01000002 	tsteq	r0, r2
 614:	00330940 	eorseq	r0, r3, r0, asr #18
 618:	91020000 	mrsls	r0, (UNDEF: 2)
 61c:	026d0a54 	rsbeq	r0, sp, #84, 20	; 0x54000
 620:	41010000 	mrsmi	r0, (UNDEF: 1)
 624:	00003309 	andeq	r3, r0, r9, lsl #6
 628:	40910200 	addsmi	r0, r1, r0, lsl #4
 62c:	0002960a 	andeq	r9, r2, sl, lsl #12
 630:	0a420100 	beq	1080a38 <__user_program+0xd80a38>
 634:	000001cb 	andeq	r0, r0, fp, asr #3
 638:	0a509102 	beq	1424a48 <__user_program+0x1124a48>
 63c:	000002ba 			; <UNDEFINED> instruction: 0x000002ba
 640:	250a4301 	strcs	r4, [sl, #-769]	; 0xfffffcff
 644:	02000000 	andeq	r0, r0, #0
 648:	850a4f91 	strhi	r4, [sl, #-3985]	; 0xfffff06f
 64c:	01000002 	tsteq	r0, r2
 650:	00250a44 	eoreq	r0, r5, r4, asr #20
 654:	91020000 	mrsls	r0, (UNDEF: 2)
 658:	02c70a4e 	sbceq	r0, r7, #319488	; 0x4e000
 65c:	45010000 	strmi	r0, [r1, #-0]
 660:	0001d10a 	andeq	sp, r1, sl, lsl #2
 664:	b4910300 	ldrlt	r0, [r1], #768	; 0x300
 668:	040b007f 	streq	r0, [fp], #-127	; 0xffffff81
 66c:	00000033 	andeq	r0, r0, r3, lsr r0
 670:	0000250c 	andeq	r2, r0, ip, lsl #10
 674:	00670d00 	rsbeq	r0, r7, r0, lsl #26
 678:	000b0000 	andeq	r0, fp, r0
 67c:	00008e00 	andeq	r8, r0, r0, lsl #28
 680:	64000400 	strvs	r0, [r0], #-1024	; 0xfffffc00
 684:	04000003 	streq	r0, [r0], #-3
 688:	00003301 	andeq	r3, r0, r1, lsl #6
 68c:	031e0c00 	tsteq	lr, #0, 24
 690:	01d40000 	bicseq	r0, r4, r0
 694:	8d540000 	ldclhi	0, cr0, [r4, #-0]
 698:	008c0000 	addeq	r0, ip, r0
 69c:	04a20000 	strteq	r0, [r2], #0
 6a0:	01020000 	mrseq	r0, (UNDEF: 2)
 6a4:	0000e008 	andeq	lr, r0, r8
 6a8:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
 6ac:	00000164 	andeq	r0, r0, r4, ror #2
 6b0:	69050403 	stmdbvs	r5, {r0, r1, sl}
 6b4:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
 6b8:	00000508 	andeq	r0, r0, r8, lsl #10
 6bc:	01020000 	mrseq	r0, (UNDEF: 2)
 6c0:	0000d708 	andeq	sp, r0, r8, lsl #14
 6c4:	07020200 	streq	r0, [r2, -r0, lsl #4]
 6c8:	0000013f 	andeq	r0, r0, pc, lsr r1
 6cc:	00001c04 	andeq	r1, r0, r4, lsl #24
 6d0:	1d1a0200 	lfmne	f0, 4, [sl, #-0]
 6d4:	0000005b 	andeq	r0, r0, fp, asr r0
 6d8:	b2070402 	andlt	r0, r7, #33554432	; 0x2000000
 6dc:	02000000 	andeq	r0, r0, #0
 6e0:	00a80708 	adceq	r0, r8, r8, lsl #14
 6e4:	12050000 	andne	r0, r5, #0
 6e8:	01000003 	tsteq	r0, r3
 6ec:	004f0a1d 	subeq	r0, pc, sp, lsl sl	; <UNPREDICTABLE>
 6f0:	8dac0000 	stchi	0, cr0, [ip]
 6f4:	00340000 	eorseq	r0, r4, r0
 6f8:	9c010000 	stcls	0, cr0, [r1], {-0}
 6fc:	00030206 	andeq	r0, r3, r6, lsl #4
 700:	06160100 	ldreq	r0, [r6], -r0, lsl #2
 704:	00008d54 	andeq	r8, r0, r4, asr sp
 708:	00000058 	andeq	r0, r0, r8, asr r0
 70c:	22009c01 	andcs	r9, r0, #256	; 0x100
 710:	02000000 	andeq	r0, r0, #0
 714:	0003d300 	andeq	sp, r3, r0, lsl #6
 718:	30010400 	andcc	r0, r1, r0, lsl #8
 71c:	00000005 	andeq	r0, r0, r5
 720:	54000080 	strpl	r0, [r0], #-128	; 0xffffff80
 724:	34000080 	strcc	r0, [r0], #-128	; 0xffffff80
 728:	e5000003 	str	r0, [r0, #-3]
 72c:	47000000 	strmi	r0, [r0, -r0]
 730:	01000003 	tsteq	r0, r3
 734:	00002280 	andeq	r2, r0, r0, lsl #5
 738:	e7000200 	str	r0, [r0, -r0, lsl #4]
 73c:	04000003 	streq	r0, [r0], #-3
 740:	00058801 	andeq	r8, r5, r1, lsl #16
 744:	008de000 	addeq	lr, sp, r0
 748:	008e2400 	addeq	r2, lr, r0, lsl #8
 74c:	00035500 	andeq	r5, r3, r0, lsl #10
 750:	0000e500 	andeq	lr, r0, r0, lsl #10
 754:	00034700 	andeq	r4, r3, r0, lsl #14
 758:	22800100 	addcs	r0, r0, #0, 2
 75c:	02000000 	andeq	r0, r0, #0
 760:	0003fb00 	andeq	pc, r3, r0, lsl #22
 764:	d9010400 	stmdble	r1, {sl}
 768:	24000005 	strcs	r0, [r0], #-5
 76c:	7c00008e 	stcvc	0, cr0, [r0], {142}	; 0x8e
 770:	6700008f 	strvs	r0, [r0, -pc, lsl #1]
 774:	e5000003 	str	r0, [r0, #-3]
 778:	47000000 	strmi	r0, [r0, -r0]
 77c:	01000003 	tsteq	r0, r3
 780:	00002280 	andeq	r2, r0, r0, lsl #5
 784:	0f000200 	svceq	0x00000200
 788:	04000004 	streq	r0, [r0], #-4
 78c:	00066d01 	andeq	r6, r6, r1, lsl #26
 790:	008f7c00 	addeq	r7, pc, r0, lsl #24
 794:	00902800 	addseq	r2, r0, r0, lsl #16
 798:	00036900 	andeq	r6, r3, r0, lsl #18
 79c:	0000e500 	andeq	lr, r0, r0, lsl #10
 7a0:	00034700 	andeq	r4, r3, r0, lsl #14
 7a4:	Address 0x00000000000007a4 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10061201 	andne	r1, r6, r1, lsl #4
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <__end+0x1920ac>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	24030000 	strcs	r0, [r3], #-0
  20:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  24:	0008030b 	andeq	r0, r8, fp, lsl #6
  28:	00160400 	andseq	r0, r6, r0, lsl #8
  2c:	0b3a0e03 	bleq	e83840 <__user_program+0xb83840>
  30:	0b390b3b 	bleq	e42d24 <__user_program+0xb42d24>
  34:	00001349 	andeq	r1, r0, r9, asr #6
  38:	49003505 	stmdbmi	r0, {r0, r2, r8, sl, ip, sp}
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
  44:	0b3b0b3a 	bleq	ec2d34 <__user_program+0xbc2d34>
  48:	13490b39 	movtne	r0, #39737	; 0x9b39
  4c:	00001802 	andeq	r1, r0, r2, lsl #16
  50:	0b000f07 	bleq	3c74 <__start-0x438c>
  54:	0013490b 	andseq	r4, r3, fp, lsl #18
  58:	012e0800 			; <UNDEFINED> instruction: 0x012e0800
  5c:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
  60:	0b3b0b3a 	bleq	ec2d50 <__user_program+0xbc2d50>
  64:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
  68:	06120111 			; <UNDEFINED> instruction: 0x06120111
  6c:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
  70:	00130119 	andseq	r0, r3, r9, lsl r1
  74:	00050900 	andeq	r0, r5, r0, lsl #18
  78:	0b3a0803 	bleq	e8208c <__user_program+0xb8208c>
  7c:	0b390b3b 	bleq	e42d70 <__user_program+0xb42d70>
  80:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  84:	050a0000 	streq	r0, [sl, #-0]
  88:	3a0e0300 	bcc	380c90 <__user_program+0x80c90>
  8c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  90:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  94:	0b000018 	bleq	fc <__start-0x7f04>
  98:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
  9c:	0b3a0e03 	bleq	e838b0 <__user_program+0xb838b0>
  a0:	0b390b3b 	bleq	e42d94 <__user_program+0xb42d94>
  a4:	01111927 	tsteq	r1, r7, lsr #18
  a8:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
  ac:	01194297 			; <UNDEFINED> instruction: 0x01194297
  b0:	0c000013 	stceq	0, cr0, [r0], {19}
  b4:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
  b8:	0b3a0e03 	bleq	e838cc <__user_program+0xb838cc>
  bc:	0b390b3b 	bleq	e42db0 <__user_program+0xb42db0>
  c0:	01111927 	tsteq	r1, r7, lsr #18
  c4:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
  c8:	00194297 	mulseq	r9, r7, r2
  cc:	00340d00 	eorseq	r0, r4, r0, lsl #26
  d0:	0b3a0803 	bleq	e820e4 <__user_program+0xb820e4>
  d4:	0b390b3b 	bleq	e42dc8 <__user_program+0xb42dc8>
  d8:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  dc:	01000000 	mrseq	r0, (UNDEF: 0)
  e0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  e4:	0e030b13 	vmoveq.32	d3[0], r0
  e8:	01110e1b 	tsteq	r1, fp, lsl lr
  ec:	17100612 			; <UNDEFINED> instruction: 0x17100612
  f0:	24020000 	strcs	r0, [r2], #-0
  f4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  f8:	000e030b 	andeq	r0, lr, fp, lsl #6
  fc:	00240300 	eoreq	r0, r4, r0, lsl #6
 100:	0b3e0b0b 	bleq	f82d34 <__user_program+0xc82d34>
 104:	00000803 	andeq	r0, r0, r3, lsl #16
 108:	03001604 	movweq	r1, #1540	; 0x604
 10c:	3b0b3a0e 	blcc	2ce94c <__end+0x1a094c>
 110:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 114:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 118:	13490101 	movtne	r0, #37121	; 0x9101
 11c:	00001301 	andeq	r1, r0, r1, lsl #6
 120:	49002106 	stmdbmi	r0, {r1, r2, r8, sp}
 124:	00052f13 	andeq	r2, r5, r3, lsl pc
 128:	00340700 	eorseq	r0, r4, r0, lsl #14
 12c:	0b3a0e03 	bleq	e83940 <__user_program+0xb83940>
 130:	0b390b3b 	bleq	e42e24 <__user_program+0xb42e24>
 134:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
 138:	00001802 	andeq	r1, r0, r2, lsl #16
 13c:	3f012e08 	svccc	0x00012e08
 140:	3a0e0319 	bcc	380dac <__user_program+0x80dac>
 144:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 148:	1119270b 	tstne	r9, fp, lsl #14
 14c:	40061201 	andmi	r1, r6, r1, lsl #4
 150:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 154:	34090000 	strcc	r0, [r9], #-0
 158:	3a0e0300 	bcc	380d60 <__user_program+0x80d60>
 15c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 160:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 164:	00000018 	andeq	r0, r0, r8, lsl r0
 168:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 16c:	030b130e 	movweq	r1, #45838	; 0xb30e
 170:	110e1b0e 	tstne	lr, lr, lsl #22
 174:	10061201 	andne	r1, r6, r1, lsl #4
 178:	02000017 	andeq	r0, r0, #23
 17c:	0b0b0024 	bleq	2c0214 <__end+0x192214>
 180:	0e030b3e 	vmoveq.16	d3[0], r0
 184:	26030000 	strcs	r0, [r3], -r0
 188:	00134900 	andseq	r4, r3, r0, lsl #18
 18c:	00240400 	eoreq	r0, r4, r0, lsl #8
 190:	0b3e0b0b 	bleq	f82dc4 <__user_program+0xc82dc4>
 194:	00000803 	andeq	r0, r0, r3, lsl #16
 198:	03001605 	movweq	r1, #1541	; 0x605
 19c:	3b0b3a0e 	blcc	2ce9dc <__end+0x1a09dc>
 1a0:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 1a4:	06000013 			; <UNDEFINED> instruction: 0x06000013
 1a8:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
 1ac:	0b3a0b0b 	bleq	e82de0 <__user_program+0xb82de0>
 1b0:	13010b3b 	movwne	r0, #6971	; 0x1b3b
 1b4:	0d070000 	stceq	0, cr0, [r7, #-0]
 1b8:	490e0300 	stmdbmi	lr, {r8, r9}
 1bc:	340b3813 	strcc	r3, [fp], #-2067	; 0xfffff7ed
 1c0:	08000019 	stmdaeq	r0, {r0, r3, r4}
 1c4:	0b0b000f 	bleq	2c0208 <__end+0x192208>
 1c8:	01090000 	mrseq	r0, (UNDEF: 9)
 1cc:	01134901 	tsteq	r3, r1, lsl #18
 1d0:	0a000013 	beq	224 <__start-0x7ddc>
 1d4:	13490021 	movtne	r0, #36897	; 0x9021
 1d8:	00000b2f 	andeq	r0, r0, pc, lsr #22
 1dc:	0300340b 	movweq	r3, #1035	; 0x40b
 1e0:	3b0b3a0e 	blcc	2cea20 <__end+0x1a0a20>
 1e4:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 1e8:	00180213 	andseq	r0, r8, r3, lsl r2
 1ec:	012e0c00 			; <UNDEFINED> instruction: 0x012e0c00
 1f0:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
 1f4:	0b3b0b3a 	bleq	ec2ee4 <__user_program+0xbc2ee4>
 1f8:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
 1fc:	01111349 	tsteq	r1, r9, asr #6
 200:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 204:	01194296 			; <UNDEFINED> instruction: 0x01194296
 208:	0d000013 	stceq	0, cr0, [r0, #-76]	; 0xffffffb4
 20c:	08030005 	stmdaeq	r3, {r0, r2}
 210:	0b3b0b3a 	bleq	ec2f00 <__user_program+0xbc2f00>
 214:	13490b39 	movtne	r0, #39737	; 0x9b39
 218:	00001802 	andeq	r1, r0, r2, lsl #16
 21c:	0000180e 	andeq	r1, r0, lr, lsl #16
 220:	00340f00 	eorseq	r0, r4, r0, lsl #30
 224:	0b3a0803 	bleq	e82238 <__user_program+0xb82238>
 228:	0b390b3b 	bleq	e42f1c <__user_program+0xb42f1c>
 22c:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 230:	0b100000 	bleq	400238 <__user_program+0x100238>
 234:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 238:	00130106 	andseq	r0, r3, r6, lsl #2
 23c:	010b1100 	mrseq	r1, (UNDEF: 27)
 240:	06120111 			; <UNDEFINED> instruction: 0x06120111
 244:	0f120000 	svceq	0x00120000
 248:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 24c:	13000013 	movwne	r0, #19
 250:	0e03012e 	adfeqsp	f0, f3, #0.5
 254:	0b3b0b3a 	bleq	ec2f44 <__user_program+0xbc2f44>
 258:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
 25c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 260:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 264:	00130119 	andseq	r0, r3, r9, lsl r1
 268:	00051400 	andeq	r1, r5, r0, lsl #8
 26c:	0b3a0e03 	bleq	e83a80 <__user_program+0xb83a80>
 270:	0b390b3b 	bleq	e42f64 <__user_program+0xb42f64>
 274:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 278:	01150000 	tsteq	r5, r0
 27c:	00134901 	andseq	r4, r3, r1, lsl #18
 280:	11010000 	mrsne	r0, (UNDEF: 1)
 284:	130e2501 	movwne	r2, #58625	; 0xe501
 288:	1b0e030b 	blne	380ebc <__user_program+0x80ebc>
 28c:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 290:	00171006 	andseq	r1, r7, r6
 294:	00240200 	eoreq	r0, r4, r0, lsl #4
 298:	0b3e0b0b 	bleq	f82ecc <__user_program+0xc82ecc>
 29c:	00000e03 	andeq	r0, r0, r3, lsl #28
 2a0:	0b002403 	bleq	92b4 <__clzsi2+0xfc>
 2a4:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 2a8:	04000008 	streq	r0, [r0], #-8
 2ac:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 2b0:	0b3b0b3a 	bleq	ec2fa0 <__user_program+0xbc2fa0>
 2b4:	13490b39 	movtne	r0, #39737	; 0x9b39
 2b8:	2e050000 	cdpcs	0, 0, cr0, cr5, cr0, {0}
 2bc:	03193f00 	tsteq	r9, #0, 30
 2c0:	3b0b3a0e 	blcc	2ceb00 <__end+0x1a0b00>
 2c4:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
 2c8:	11134919 	tstne	r3, r9, lsl r9
 2cc:	40061201 	andmi	r1, r6, r1, lsl #4
 2d0:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 2d4:	2e060000 	cdpcs	0, 0, cr0, cr6, cr0, {0}
 2d8:	03193f01 	tsteq	r9, #1, 30
 2dc:	3b0b3a0e 	blcc	2ceb1c <__end+0x1a0b1c>
 2e0:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
 2e4:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 2e8:	97184006 	ldrls	r4, [r8, -r6]
 2ec:	13011942 	movwne	r1, #6466	; 0x1942
 2f0:	05070000 	streq	r0, [r7, #-0]
 2f4:	3a0e0300 	bcc	380efc <__user_program+0x80efc>
 2f8:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 2fc:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 300:	08000018 	stmdaeq	r0, {r3, r4}
 304:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
 308:	0b3a0e03 	bleq	e83b1c <__user_program+0xb83b1c>
 30c:	0b390b3b 	bleq	e43000 <__user_program+0xb43000>
 310:	01111927 	tsteq	r1, r7, lsr #18
 314:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 318:	00194297 	mulseq	r9, r7, r2
 31c:	012e0900 			; <UNDEFINED> instruction: 0x012e0900
 320:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
 324:	0b3b0b3a 	bleq	ec3014 <__user_program+0xbc3014>
 328:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
 32c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 330:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 334:	00130119 	andseq	r0, r3, r9, lsl r1
 338:	00340a00 	eorseq	r0, r4, r0, lsl #20
 33c:	0b3a0e03 	bleq	e83b50 <__user_program+0xb83b50>
 340:	0b390b3b 	bleq	e43034 <__user_program+0xb43034>
 344:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 348:	0f0b0000 	svceq	0x000b0000
 34c:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 350:	0c000013 	stceq	0, cr0, [r0], {19}
 354:	13490101 	movtne	r0, #37121	; 0x9101
 358:	210d0000 	mrscs	r0, (UNDEF: 13)
 35c:	2f134900 	svccs	0x00134900
 360:	0000000b 	andeq	r0, r0, fp
 364:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 368:	030b130e 	movweq	r1, #45838	; 0xb30e
 36c:	110e1b0e 	tstne	lr, lr, lsl #22
 370:	10061201 	andne	r1, r6, r1, lsl #4
 374:	02000017 	andeq	r0, r0, #23
 378:	0b0b0024 	bleq	2c0410 <__end+0x192410>
 37c:	0e030b3e 	vmoveq.16	d3[0], r0
 380:	24030000 	strcs	r0, [r3], #-0
 384:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 388:	0008030b 	andeq	r0, r8, fp, lsl #6
 38c:	00160400 	andseq	r0, r6, r0, lsl #8
 390:	0b3a0e03 	bleq	e83ba4 <__user_program+0xb83ba4>
 394:	0b390b3b 	bleq	e43088 <__user_program+0xb43088>
 398:	00001349 	andeq	r1, r0, r9, asr #6
 39c:	3f002e05 	svccc	0x00002e05
 3a0:	3a0e0319 	bcc	38100c <__user_program+0x8100c>
 3a4:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 3a8:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 3ac:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 3b0:	97184006 	ldrls	r4, [r8, -r6]
 3b4:	00001942 	andeq	r1, r0, r2, asr #18
 3b8:	3f002e06 	svccc	0x00002e06
 3bc:	3a0e0319 	bcc	381028 <__user_program+0x81028>
 3c0:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 3c4:	1119270b 	tstne	r9, fp, lsl #14
 3c8:	40061201 	andmi	r1, r6, r1, lsl #4
 3cc:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 3d0:	01000000 	mrseq	r0, (UNDEF: 0)
 3d4:	06100011 			; <UNDEFINED> instruction: 0x06100011
 3d8:	01120111 	tsteq	r2, r1, lsl r1
 3dc:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 3e0:	05130e25 	ldreq	r0, [r3, #-3621]	; 0xfffff1db
 3e4:	01000000 	mrseq	r0, (UNDEF: 0)
 3e8:	06100011 			; <UNDEFINED> instruction: 0x06100011
 3ec:	01120111 	tsteq	r2, r1, lsl r1
 3f0:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 3f4:	05130e25 	ldreq	r0, [r3, #-3621]	; 0xfffff1db
 3f8:	01000000 	mrseq	r0, (UNDEF: 0)
 3fc:	06100011 			; <UNDEFINED> instruction: 0x06100011
 400:	01120111 	tsteq	r2, r1, lsl r1
 404:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 408:	05130e25 	ldreq	r0, [r3, #-3621]	; 0xfffff1db
 40c:	01000000 	mrseq	r0, (UNDEF: 0)
 410:	06100011 			; <UNDEFINED> instruction: 0x06100011
 414:	01120111 	tsteq	r2, r1, lsl r1
 418:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
 41c:	05130e25 	ldreq	r0, [r3, #-3621]	; 0xfffff1db
 420:	Address 0x0000000000000420 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	00008054 	andeq	r8, r0, r4, asr r0
  14:	00000328 	andeq	r0, r0, r8, lsr #6
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01720002 	cmneq	r2, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	0000837c 	andeq	r8, r0, ip, ror r3
  34:	000001a8 	andeq	r0, r0, r8, lsr #3
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	02510002 	subseq	r0, r1, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	00008524 	andeq	r8, r0, r4, lsr #10
  54:	000003f8 	strdeq	r0, [r0], -r8
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	049f0002 	ldreq	r0, [pc], #2	; 6c <__start-0x7f94>
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	0000891c 	andeq	r8, r0, ip, lsl r9
  74:	00000438 	andeq	r0, r0, r8, lsr r4
	...
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	067d0002 	ldrbteq	r0, [sp], -r2
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	00008d54 	andeq	r8, r0, r4, asr sp
  94:	0000008c 	andeq	r0, r0, ip, lsl #1
	...
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	070f0002 	streq	r0, [pc, -r2]
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	00008000 	andeq	r8, r0, r0
  b4:	00000054 	andeq	r0, r0, r4, asr r0
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	07350002 	ldreq	r0, [r5, -r2]!
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	00008de0 	andeq	r8, r0, r0, ror #27
  d4:	00000044 	andeq	r0, r0, r4, asr #32
	...
  e0:	0000001c 	andeq	r0, r0, ip, lsl r0
  e4:	075b0002 	ldrbeq	r0, [fp, -r2]
  e8:	00040000 	andeq	r0, r4, r0
  ec:	00000000 	andeq	r0, r0, r0
  f0:	00008e24 	andeq	r8, r0, r4, lsr #28
  f4:	00000158 	andeq	r0, r0, r8, asr r1
	...
 100:	0000001c 	andeq	r0, r0, ip, lsl r0
 104:	07810002 	streq	r0, [r1, r2]
 108:	00040000 	andeq	r0, r4, r0
 10c:	00000000 	andeq	r0, r0, r0
 110:	00008f7c 	andeq	r8, r0, ip, ror pc
 114:	000000ac 	andeq	r0, r0, ip, lsr #1
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	0000012b 	andeq	r0, r0, fp, lsr #2
   4:	00460003 	subeq	r0, r6, r3
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	34010000 	strcc	r0, [r1], #-0
  1c:	696c3233 	stmdbvs	ip!, {r0, r1, r4, r5, r9, ip, sp}^
  20:	732f6b62 			; <UNDEFINED> instruction: 0x732f6b62
  24:	34006372 	strcc	r6, [r0], #-882	; 0xfffffc8e
  28:	696c3233 	stmdbvs	ip!, {r0, r1, r4, r5, r9, ip, sp}^
  2c:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
  30:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
  34:	00006564 	andeq	r6, r0, r4, ror #10
  38:	6f697067 	svcvs	0x00697067
  3c:	0100632e 	tsteq	r0, lr, lsr #6
  40:	736b0000 	cmnvc	fp, #0
  44:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
  48:	00682e74 	rsbeq	r2, r8, r4, ror lr
  4c:	00000002 	andeq	r0, r0, r2
  50:	05002c05 	streq	r2, [r0, #-3077]	; 0xfffff3fb
  54:	00805402 	addeq	r5, r0, r2, lsl #8
  58:	00d40300 	sbcseq	r0, r4, r0, lsl #6
  5c:	f3060501 	vrshl.u8	d0, d1, d6
  60:	02001205 	andeq	r1, r0, #1342177280	; 0x50000000
  64:	05660104 	strbeq	r0, [r6, #-260]!	; 0xfffffefc
  68:	0c056a16 			; <UNDEFINED> instruction: 0x0c056a16
  6c:	301905ba 			; <UNDEFINED> instruction: 0x301905ba
  70:	05ba0c05 	ldreq	r0, [sl, #3077]!	; 0xc05
  74:	20054c1a 	andcs	r4, r5, sl, lsl ip
  78:	0c053c08 	stceq	12, cr3, [r5], {8}
  7c:	2f130566 	svccs	0x00130566
  80:	05660d05 	strbeq	r0, [r6, #-3333]!	; 0xfffff2fb
  84:	12054a0a 	andne	r4, r5, #40960	; 0xa000
  88:	820a0567 	andhi	r0, sl, #432013312	; 0x19c00000
  8c:	05670705 	strbeq	r0, [r7, #-1797]!	; 0xfffff8fb
  90:	0505ba0d 	streq	fp, [r5, #-2573]	; 0xfffff5f3
  94:	05667603 	strbeq	r7, [r6, #-1539]!	; 0xfffff9fd
  98:	2e0b0301 	cdpcs	3, 0, cr0, cr11, cr1, {0}
  9c:	05691c05 	strbeq	r1, [r9, #-3077]!	; 0xfffff3fb
  a0:	05699f06 	strbeq	r9, [r9, #-3846]!	; 0xfffff0fa
  a4:	20056728 	andcs	r6, r5, r8, lsr #14
  a8:	4a09054a 	bmi	2415d8 <__end+0x1135d8>
  ac:	05821b05 	streq	r1, [r2, #2821]	; 0xb05
  b0:	09054c20 	stmdbeq	r5, {r5, sl, fp, lr}
  b4:	821b0566 	andshi	r0, fp, #427819008	; 0x19800000
  b8:	05450505 	strbeq	r0, [r5, #-1285]	; 0xfffffafb
  bc:	1c053501 	cfstr32ne	mvfx3, [r5], {1}
  c0:	9f060569 	svcls	0x00060569
  c4:	67280569 	strvs	r0, [r8, -r9, ror #10]!
  c8:	054a2005 	strbeq	r2, [sl, #-5]
  cc:	1b054a09 	blne	1528f8 <__end+0x248f8>
  d0:	4c200582 	cfstr32mi	mvfx0, [r0], #-520	; 0xfffffdf8
  d4:	05660905 	strbeq	r0, [r6, #-2309]!	; 0xfffff6fb
  d8:	0505821b 	streq	r8, [r5, #-539]	; 0xfffffde5
  dc:	35010545 	strcc	r0, [r1, #-1349]	; 0xfffffabb
  e0:	05693005 	strbeq	r3, [r9, #-5]!
  e4:	1205f306 	andne	pc, r5, #402653184	; 0x18000000
  e8:	01040200 	mrseq	r0, R12_usr
  ec:	6a070566 	bvs	1c168c <__end+0x9368c>
  f0:	05821805 	streq	r1, [r2, #2053]	; 0x805
  f4:	06054b03 	streq	r4, [r5], -r3, lsl #22
  f8:	672b054b 	strvs	r0, [fp, -fp, asr #10]!
  fc:	054a2305 	strbeq	r2, [sl, #-773]	; 0xfffffcfb
 100:	1e054a09 	vmlane.f32	s8, s10, s18
 104:	2f050582 	svccs	0x00050582
 108:	054b0905 	strbeq	r0, [fp, #-2309]	; 0xfffff6fb
 10c:	2305821e 	movwcs	r8, #21022	; 0x521e
 110:	66090568 	strvs	r0, [r9], -r8, ror #10
 114:	05821e05 	streq	r1, [r2, #3589]	; 0xe05
 118:	09052f05 	stmdbeq	r5, {r0, r2, r8, r9, sl, fp, sp}
 11c:	821e054b 	andshi	r0, lr, #314572800	; 0x12c00000
 120:	74030505 	strvc	r0, [r3], #-1285	; 0xfffffafb
 124:	03010566 	movweq	r0, #5478	; 0x1566
 128:	04022e0e 	streq	r2, [r2], #-3598	; 0xfffff1f2
 12c:	cb010100 	blgt	40534 <__bss_end+0x33534>
 130:	03000000 	movweq	r0, #0
 134:	00004400 	andeq	r4, r0, r0, lsl #8
 138:	fb010200 	blx	40942 <__bss_end+0x33942>
 13c:	01000d0e 	tsteq	r0, lr, lsl #26
 140:	00010101 	andeq	r0, r1, r1, lsl #2
 144:	00010000 	andeq	r0, r1, r0
 148:	706f0100 	rsbvc	r0, pc, r0, lsl #2
 14c:	72732f74 	rsbsvc	r2, r3, #116, 30	; 0x1d0
 150:	33340063 	teqcc	r4, #99	; 0x63
 154:	62696c32 	rsbvs	r6, r9, #12800	; 0x3200
 158:	6e692f6b 	cdpvs	15, 6, cr2, cr9, cr11, {3}
 15c:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 160:	6b000065 	blvs	2fc <__start-0x7d04>
 164:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 168:	00632e6c 	rsbeq	r2, r3, ip, ror #28
 16c:	6b000001 	blvs	178 <__start-0x7e88>
 170:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 174:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 178:	00000200 	andeq	r0, r0, r0, lsl #4
 17c:	00180500 	andseq	r0, r8, r0, lsl #10
 180:	837c0205 	cmnhi	ip, #1342177280	; 0x50000000
 184:	16030000 	strne	r0, [r3], -r0
 188:	69070501 	stmdbvs	r7, {r0, r8, sl}
 18c:	054d0305 	strbeq	r0, [sp, #-773]	; 0xfffffcfb
 190:	0305300e 	movweq	r3, #20494	; 0x500e
 194:	0013054a 	andseq	r0, r3, sl, asr #10
 198:	2f030402 	svccs	0x00030402
 19c:	03040200 	movweq	r0, #16896	; 0x4200
 1a0:	0021059f 	mlaeq	r1, pc, r5, r0	; <UNPREDICTABLE>
 1a4:	9c030402 	cfstrsls	mvf0, [r3], {2}
 1a8:	02000305 	andeq	r0, r0, #335544320	; 0x14000000
 1ac:	6c660104 	stfvse	f0, [r6], #-16
 1b0:	11052f67 	tstne	r5, r7, ror #30
 1b4:	4b030567 	blmi	c1758 <__bss_end+0xb4758>
 1b8:	052f6785 	streq	r6, [pc, #-1925]!	; fffffa3b <__user_program+0xffcffa3b>
 1bc:	03056711 	movweq	r6, #22289	; 0x5711
 1c0:	850e054b 	strhi	r0, [lr, #-1355]	; 0xfffffab5
 1c4:	054a0305 	strbeq	r0, [sl, #-773]	; 0xfffffcfb
 1c8:	20052f0f 	andcs	r2, r5, pc, lsl #30
 1cc:	82080582 	andhi	r0, r8, #545259520	; 0x20800000
 1d0:	834c0705 	movthi	r0, #50949	; 0xc705
 1d4:	0c05f3f3 	stceq	3, cr15, [r5], {243}	; 0xf3
 1d8:	4b070567 	blmi	1c177c <__end+0x9377c>
 1dc:	02002105 	andeq	r2, r0, #1073741825	; 0x40000001
 1e0:	78030204 	stmdavc	r3, {r2, r9}
 1e4:	0003052e 	andeq	r0, r3, lr, lsr #10
 1e8:	66010402 	strvs	r0, [r1], -r2, lsl #8
 1ec:	0c030605 	stceq	6, cr0, [r3], {5}
 1f0:	68050566 	stmdavs	r5, {r1, r2, r5, r6, r8, sl}
 1f4:	01040200 	mrseq	r0, R12_usr
 1f8:	0008026a 	andeq	r0, r8, sl, ror #4
 1fc:	016c0101 	cmneq	ip, r1, lsl #2
 200:	00030000 	andeq	r0, r3, r0
 204:	0000005f 	andeq	r0, r0, pc, asr r0
 208:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 20c:	0101000d 	tsteq	r1, sp
 210:	00000101 	andeq	r0, r0, r1, lsl #2
 214:	00000100 	andeq	r0, r0, r0, lsl #2
 218:	74706f01 	ldrbtvc	r6, [r0], #-3841	; 0xfffff0ff
 21c:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 220:	32333400 	eorscc	r3, r3, #0, 8
 224:	6b62696c 	blvs	189a7dc <__user_program+0x159a7dc>
 228:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 22c:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 230:	72700000 	rsbsvc	r0, r0, #0
 234:	6b746e69 	blvs	1d1bbe0 <__user_program+0x1a1bbe0>
 238:	0100632e 	tsteq	r0, lr, lsr #6
 23c:	736b0000 	cmnvc	fp, #0
 240:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 244:	00682e74 	rsbeq	r2, r8, r4, ror lr
 248:	6b000002 	blvs	258 <__start-0x7da8>
 24c:	61647473 	smcvs	18243	; 0x4743
 250:	682e6772 	stmdavs	lr!, {r1, r4, r5, r6, r8, r9, sl, sp, lr}
 254:	00000200 	andeq	r0, r0, r0, lsl #4
 258:	6975623c 	ldmdbvs	r5!, {r2, r3, r4, r5, r9, sp, lr}^
 25c:	692d746c 	pushvs	{r2, r3, r5, r6, sl, ip, sp, lr}
 260:	00003e6e 	andeq	r3, r0, lr, ror #28
 264:	05000000 	streq	r0, [r0, #-0]
 268:	02050034 	andeq	r0, r5, #52	; 0x34
 26c:	00008524 	andeq	r8, r0, r4, lsr #10
 270:	05012003 	streq	r2, [r1, #-3]
 274:	054bd907 	strbeq	sp, [fp, #-2311]	; 0xfffff6f9
 278:	04054f06 	streq	r4, [r5], #-3846	; 0xfffff0fa
 27c:	03020567 	movweq	r0, #9575	; 0x2567
 280:	11054a12 	tstne	r5, r2, lsl sl
 284:	052e7403 	streq	r7, [lr, #-1027]!	; 0xfffffbfd
 288:	1405f20b 	strne	pc, [r5], #-523	; 0xfffffdf5
 28c:	9e0c054b 	cfsh32ls	mvfx0, mvfx12, #43
 290:	059f0f05 	ldreq	r0, [pc, #3845]	; 119d <__start-0x6e63>
 294:	06058209 	streq	r8, [r5], -r9, lsl #4
 298:	620a05d7 	andvs	r0, sl, #901775360	; 0x35c00000
 29c:	056e0d05 	strbeq	r0, [lr, #-3333]!	; 0xfffff2fb
 2a0:	16054a04 	strne	r4, [r5], -r4, lsl #20
 2a4:	03040200 	movweq	r0, #16896	; 0x4200
 2a8:	001a052f 	andseq	r0, sl, pc, lsr #10
 2ac:	4a030402 	bmi	c12bc <__bss_end+0xb42bc>
 2b0:	02000e05 	andeq	r0, r0, #5, 28	; 0x50
 2b4:	054a0304 	strbeq	r0, [sl, #-772]	; 0xfffffcfc
 2b8:	04020005 	streq	r0, [r2], #-5
 2bc:	1c058303 	stcne	3, cr8, [r5], {3}
 2c0:	03040200 	movweq	r0, #16896	; 0x4200
 2c4:	00040564 	andeq	r0, r4, r4, ror #10
 2c8:	66010402 	strvs	r0, [r1], -r2, lsl #8
 2cc:	05870205 	streq	r0, [r7, #517]	; 0x205
 2d0:	02056822 	andeq	r6, r5, #2228224	; 0x220000
 2d4:	4d080589 	cfstr32mi	mvfx0, [r8, #-548]	; 0xfffffddc
 2d8:	05310705 	ldreq	r0, [r1, #-1797]!	; 0xfffff8fb
 2dc:	04054a06 	streq	r4, [r5], #-2566	; 0xfffff5fa
 2e0:	6908054b 	stmdbvs	r8, {r0, r1, r3, r6, r8, sl}
 2e4:	054a0705 	strbeq	r0, [sl, #-1797]	; 0xfffff8fb
 2e8:	05054b09 	streq	r4, [r5, #-2825]	; 0xfffff4f7
 2ec:	0d054ba0 	vstreq	d4, [r5, #-640]	; 0xfffffd80
 2f0:	0c052308 	stceq	3, cr2, [r5], {8}
 2f4:	4b09054a 	blmi	241824 <__end+0x113824>
 2f8:	05a00805 	streq	r0, [r0, #2053]!	; 0x805
 2fc:	08056709 	stmdaeq	r5, {r0, r3, r8, r9, sl, sp, lr}
 300:	6805054b 	stmdavs	r5, {r0, r1, r3, r6, r8, sl}
 304:	23080d05 	movwcs	r0, #36101	; 0x8d05
 308:	054a0c05 	strbeq	r0, [sl, #-3077]	; 0xfffff3fb
 30c:	05054b09 	streq	r4, [r5, #-2825]	; 0xfffff4f7
 310:	080d059f 	stmdaeq	sp, {r0, r1, r2, r3, r4, r7, r8, sl}
 314:	4a0c0523 	bmi	3017a8 <__user_program+0x17a8>
 318:	054b0905 	strbeq	r0, [fp, #-2309]	; 0xfffff6fb
 31c:	4b4ba005 	blmi	12e8338 <__user_program+0xfe8338>
 320:	05f50d05 	ldrbeq	r0, [r5, #3333]!	; 0xd05
 324:	09054a0c 	stmdbeq	r5, {r2, r3, r9, fp, lr}
 328:	9f05054b 	svcls	0x0005054b
 32c:	05a10d05 	streq	r0, [r1, #3333]!	; 0xd05
 330:	09054a0c 	stmdbeq	r5, {r2, r3, r9, fp, lr}
 334:	a00a054b 	andge	r0, sl, fp, asr #10
 338:	832f0605 			; <UNDEFINED> instruction: 0x832f0605
 33c:	05640b05 	strbeq	r0, [r4, #-2821]!	; 0xfffff4fb
 340:	0d054a0a 	vstreq	s8, [r5, #-40]	; 0xffffffd8
 344:	4a0c056c 	bmi	3018fc <__user_program+0x18fc>
 348:	054b0905 	strbeq	r0, [fp, #-2309]	; 0xfffff6fb
 34c:	4b4ba005 	blmi	12e8368 <__user_program+0xfe8368>
 350:	6b0405f6 	blvs	101b30 <__bss_end+0xf4b30>
 354:	05850305 	streq	r0, [r5, #773]	; 0x305
 358:	7fbc0309 	svcvc	0x00bc0309
 35c:	4a080566 	bmi	2018fc <__end+0xd38fc>
 360:	c9030a05 	stmdbgt	r3, {r0, r2, r9, fp}
 364:	01054a00 	tsteq	r5, r0, lsl #20
 368:	000a022f 	andeq	r0, sl, pc, lsr #4
 36c:	01300101 	teqeq	r0, r1, lsl #2
 370:	00030000 	andeq	r0, r3, r0
 374:	00000042 	andeq	r0, r0, r2, asr #32
 378:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 37c:	0101000d 	tsteq	r1, sp
 380:	00000101 	andeq	r0, r0, r1, lsl #2
 384:	00000100 	andeq	r0, r0, r0, lsl #2
 388:	74706f01 	ldrbtvc	r6, [r0], #-3841	; 0xfffff0ff
 38c:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 390:	32333400 	eorscc	r3, r3, #0, 8
 394:	6b62696c 	blvs	189a94c <__user_program+0x159a94c>
 398:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 39c:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 3a0:	61750000 	cmnvs	r5, r0
 3a4:	632e7472 			; <UNDEFINED> instruction: 0x632e7472
 3a8:	00000100 	andeq	r0, r0, r0, lsl #2
 3ac:	6474736b 	ldrbtvs	r7, [r4], #-875	; 0xfffffc95
 3b0:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 3b4:	00020068 	andeq	r0, r2, r8, rrx
 3b8:	16050000 	strne	r0, [r5], -r0
 3bc:	1c020500 	cfstr32ne	mvfx0, [r2], {-0}
 3c0:	03000089 	movweq	r0, #137	; 0x89
 3c4:	05050122 	streq	r0, [r5, #-290]	; 0xfffffede
 3c8:	67686768 	strbvs	r6, [r8, -r8, ror #14]!
 3cc:	4a0d0569 	bmi	341978 <__user_program+0x41978>
 3d0:	054b0505 	strbeq	r0, [fp, #-1285]	; 0xfffffafb
 3d4:	05054a16 	streq	r4, [r5, #-2582]	; 0xfffff5ea
 3d8:	4a15054b 	bmi	54190c <__user_program+0x24190c>
 3dc:	054b0505 	strbeq	r0, [fp, #-1285]	; 0xfffffafb
 3e0:	05054a15 	streq	r4, [r5, #-2581]	; 0xfffff5eb
 3e4:	4a12054b 	bmi	481918 <__user_program+0x181918>
 3e8:	054b0505 	strbeq	r0, [fp, #-1285]	; 0xfffffafb
 3ec:	09054a16 	stmdbeq	r5, {r1, r2, r4, r9, fp, lr}
 3f0:	4b4b4b51 	blmi	12d313c <__user_program+0xfd313c>
 3f4:	4b4b4b4b 	blmi	12d3128 <__user_program+0xfd3128>
 3f8:	0a054b4b 	beq	15312c <__end+0x2512c>
 3fc:	4b4b4b67 	blmi	12d31a0 <__user_program+0xfd31a0>
 400:	4ba10505 	blmi	fe84181c <__user_program+0xfe54181c>
 404:	4b4b4b4b 	blmi	12d3138 <__user_program+0xfd3138>
 408:	4b4b4b4b 	blmi	12d313c <__user_program+0xfd313c>
 40c:	4b4b4b4b 	blmi	12d3140 <__user_program+0xfd3140>
 410:	054d4b4e 	strbeq	r4, [sp, #-2894]	; 0xfffff4b2
 414:	0e056710 	mcreq	7, 0, r6, cr5, cr0, {0}
 418:	2f05054a 	svccs	0x0005054a
 41c:	67110583 	ldrvs	r0, [r1, -r3, lsl #11]
 420:	a1670505 	cmnge	r7, r5, lsl #10
 424:	9f846868 	svcls	0x00846868
 428:	838483a0 	orrhi	r8, r4, #160, 6	; 0x80000002
 42c:	a09f8484 	addsge	r8, pc, r4, lsl #9
 430:	05d7a0bc 	ldrbeq	sl, [r7, #188]	; 0xbc
 434:	17056801 	strne	r6, [r5, -r1, lsl #16]
 438:	4c03056b 	cfstr32mi	mvfx0, [r3], {107}	; 0x6b
 43c:	054a1405 	strbeq	r1, [sl, #-1029]	; 0xfffffbfb
 440:	0b054b03 	bleq	153054 <__end+0x25054>
 444:	4c01054a 	cfstr32mi	mvfx0, [r1], {74}	; 0x4a
 448:	05892205 	streq	r2, [r9, #517]	; 0x205
 44c:	1905a209 	stmdbne	r5, {r0, r3, r9, sp, pc}
 450:	2e070566 	cfsh32cs	mvfx0, mvfx7, #54
 454:	31030568 	tstcc	r3, r8, ror #10
 458:	054a1205 	strbeq	r1, [sl, #-517]	; 0xfffffdfb
 45c:	1d054b01 	vstrne	d4, [r5, #-4]
 460:	4d0c0589 	cfstr32mi	mvfx0, [ip, #-548]	; 0xfffffddc
 464:	05661c05 	strbeq	r1, [r6, #-3077]!	; 0xfffff3fb
 468:	0b052e0a 	bleq	14bc98 <__end+0x1dc98>
 46c:	310a0567 	tstcc	sl, r7, ror #10
 470:	05661905 	strbeq	r1, [r6, #-2309]!	; 0xfffff6fb
 474:	25052e05 	strcs	r2, [r5, #-3589]	; 0xfffff1fb
 478:	01040200 	mrseq	r0, R12_usr
 47c:	0034054a 	eorseq	r0, r4, sl, asr #10
 480:	66010402 	strvs	r0, [r1], -r2, lsl #8
 484:	02002105 	andeq	r2, r0, #1073741825	; 0x40000001
 488:	052e0104 	streq	r0, [lr, #-260]!	; 0xfffffefc
 48c:	2b054b15 	blcs	1530e8 <__end+0x250e8>
 490:	2e0e0566 	cfsh32cs	mvfx0, mvfx14, #54
 494:	05690d05 	strbeq	r0, [r9, #-3333]!	; 0xfffff2fb
 498:	0105661c 	tsteq	r5, ip, lsl r6
 49c:	00080230 	andeq	r0, r8, r0, lsr r2
 4a0:	008a0101 	addeq	r0, sl, r1, lsl #2
 4a4:	00030000 	andeq	r0, r3, r0
 4a8:	00000049 	andeq	r0, r0, r9, asr #32
 4ac:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 4b0:	0101000d 	tsteq	r1, sp
 4b4:	00000101 	andeq	r0, r0, r1, lsl #2
 4b8:	00000100 	andeq	r0, r0, r0, lsl #2
 4bc:	74706f01 	ldrbtvc	r6, [r0], #-3841	; 0xfffff0ff
 4c0:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 4c4:	32333400 	eorscc	r3, r3, #0, 8
 4c8:	6b62696c 	blvs	189aa80 <__user_program+0x159aa80>
 4cc:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 4d0:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 4d4:	61620000 	cmnvs	r2, r0
 4d8:	5f636973 	svcpl	0x00636973
 4dc:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
 4e0:	00632e72 	rsbeq	r2, r3, r2, ror lr
 4e4:	6b000001 	blvs	4f0 <__start-0x7b10>
 4e8:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 4ec:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 4f0:	00000200 	andeq	r0, r0, r0, lsl #4
 4f4:	001c0500 	andseq	r0, ip, r0, lsl #10
 4f8:	8d540205 	lfmhi	f0, 2, [r4, #-20]	; 0xffffffec
 4fc:	15030000 	strne	r0, [r3, #-0]
 500:	4b030501 	blmi	c190c <__bss_end+0xb490c>
 504:	054a0f05 	strbeq	r0, [sl, #-3845]	; 0xfffff0fb
 508:	11054b03 	tstne	r5, r3, lsl #22
 50c:	4b03054a 	blmi	c1a3c <__bss_end+0xb4a3c>
 510:	054a1205 	strbeq	r1, [sl, #-517]	; 0xfffffdfb
 514:	16054b03 	strne	r4, [r5], -r3, lsl #22
 518:	4b01054a 	blmi	41a48 <__bss_end+0x34a48>
 51c:	05841c05 	streq	r1, [r4, #3077]	; 0xc05
 520:	18054b0a 	stmdane	r5, {r1, r3, r8, r9, fp, lr}
 524:	66160566 	ldrvs	r0, [r6], -r6, ror #10
 528:	022f0105 	eoreq	r0, pc, #1073741825	; 0x40000001
 52c:	01010008 	tsteq	r1, r8
 530:	00000054 	andeq	r0, r0, r4, asr r0
 534:	00290003 	eoreq	r0, r9, r3
 538:	01020000 	mrseq	r0, (UNDEF: 2)
 53c:	000d0efb 	strdeq	r0, [sp], -fp
 540:	01010101 	tsteq	r1, r1, lsl #2
 544:	01000000 	mrseq	r0, (UNDEF: 0)
 548:	34010000 	strcc	r0, [r1], #-0
 54c:	696c3233 	stmdbvs	ip!, {r0, r1, r4, r5, r9, ip, sp}^
 550:	732f6b62 			; <UNDEFINED> instruction: 0x732f6b62
 554:	00006372 	andeq	r6, r0, r2, ror r3
 558:	746f6f62 	strbtvc	r6, [pc], #-3938	; 560 <__start-0x7aa0>
 55c:	0100532e 	tsteq	r0, lr, lsr #6
 560:	00000000 	andeq	r0, r0, r0
 564:	80000205 	andhi	r0, r0, r5, lsl #4
 568:	1b030000 	blne	c0570 <__bss_end+0xb3570>
 56c:	2f2f2f01 	svccs	0x002f2f01
 570:	2f2f2f30 	svccs	0x002f2f30
 574:	312f2f2f 			; <UNDEFINED> instruction: 0x312f2f2f
 578:	33312f2f 	teqcc	r1, #47, 30	; 0xbc
 57c:	2e69032f 	cdpcs	3, 6, cr0, cr9, cr15, {1}
 580:	022f2f31 	eoreq	r2, pc, #49, 30	; 0xc4
 584:	01010002 	tsteq	r1, r2
 588:	0000004d 	andeq	r0, r0, sp, asr #32
 58c:	00280003 	eoreq	r0, r8, r3
 590:	01020000 	mrseq	r0, (UNDEF: 2)
 594:	000d0efb 	strdeq	r0, [sp], -fp
 598:	01010101 	tsteq	r1, r1, lsl #2
 59c:	01000000 	mrseq	r0, (UNDEF: 0)
 5a0:	34010000 	strcc	r0, [r1], #-0
 5a4:	696c3233 	stmdbvs	ip!, {r0, r1, r4, r5, r9, ip, sp}^
 5a8:	732f6b62 			; <UNDEFINED> instruction: 0x732f6b62
 5ac:	00006372 	andeq	r6, r0, r2, ror r3
 5b0:	2e6d7261 	cdpcs	2, 6, cr7, cr13, cr1, {3}
 5b4:	00010053 	andeq	r0, r1, r3, asr r0
 5b8:	05000000 	streq	r0, [r0, #-0]
 5bc:	008de002 	addeq	lr, sp, r2
 5c0:	01100300 	tsteq	r0, r0, lsl #6
 5c4:	2f332f2f 	svccs	0x00332f2f
 5c8:	2f332f33 	svccs	0x00332f33
 5cc:	332f2f2f 			; <UNDEFINED> instruction: 0x332f2f2f
 5d0:	2f2f2f2f 	svccs	0x002f2f2f
 5d4:	01000202 	tsteq	r0, r2, lsl #4
 5d8:	00009001 	andeq	r9, r0, r1
 5dc:	24000300 	strcs	r0, [r0], #-768	; 0xfffffd00
 5e0:	02000000 	andeq	r0, r0, #0
 5e4:	0d0efb01 	vstreq	d15, [lr, #-4]
 5e8:	01010100 	mrseq	r0, (UNDEF: 17)
 5ec:	00000001 	andeq	r0, r0, r1
 5f0:	01000001 	tsteq	r0, r1
 5f4:	6f6e7500 	svcvs	0x006e7500
 5f8:	6d697470 	cfstrdvs	mvd7, [r9, #-448]!	; 0xfffffe40
 5fc:	64657a69 	strbtvs	r7, [r5], #-2665	; 0xfffff597
 600:	0000632e 	andeq	r6, r0, lr, lsr #6
 604:	00000000 	andeq	r0, r0, r0
 608:	8e240205 	cdphi	2, 2, cr0, cr4, cr5, {0}
 60c:	15030000 	strne	r0, [r3, #-0]
 610:	2f2f2f01 	svccs	0x002f2f01
 614:	2f2f2f2f 	svccs	0x002f2f2f
 618:	2f2f2f2f 	svccs	0x002f2f2f
 61c:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 620:	2e09032f 	cdpcs	3, 0, cr0, cr9, cr15, {1}
 624:	2f2f2f2f 	svccs	0x002f2f2f
 628:	2f302f2f 	svccs	0x00302f2f
 62c:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 630:	2f2f2f2f 	svccs	0x002f2f2f
 634:	2f2f2f2f 	svccs	0x002f2f2f
 638:	2f2f2f2f 	svccs	0x002f2f2f
 63c:	2f2f2f2f 	svccs	0x002f2f2f
 640:	2f2f2f2f 	svccs	0x002f2f2f
 644:	2f2f2f2f 	svccs	0x002f2f2f
 648:	2f2f2f2f 	svccs	0x002f2f2f
 64c:	2f2f2f2f 	svccs	0x002f2f2f
 650:	2f2f2f2f 	svccs	0x002f2f2f
 654:	2f2f2f2f 	svccs	0x002f2f2f
 658:	2f2f2f2f 	svccs	0x002f2f2f
 65c:	2f2f2f30 	svccs	0x002f2f30
 660:	2f302f2f 	svccs	0x00302f2f
 664:	2f302f2f 	svccs	0x00302f2f
 668:	01000202 	tsteq	r0, r2, lsl #4
 66c:	00006301 	andeq	r6, r0, r1, lsl #6
 670:	22000300 	andcs	r0, r0, #0, 6
 674:	02000000 	andeq	r0, r0, #0
 678:	0d0efb01 	vstreq	d15, [lr, #-4]
 67c:	01010100 	mrseq	r0, (UNDEF: 17)
 680:	00000001 	andeq	r0, r0, r1
 684:	01000001 	tsteq	r0, r1
 688:	74706f00 	ldrbtvc	r6, [r0], #-3840	; 0xfffff100
 68c:	7a696d69 	bvc	1a5bc38 <__user_program+0x175bc38>
 690:	632e6465 			; <UNDEFINED> instruction: 0x632e6465
 694:	00000000 	andeq	r0, r0, r0
 698:	02050000 	andeq	r0, r5, #0
 69c:	00008f7c 	andeq	r8, r0, ip, ror pc
 6a0:	2f011503 	svccs	0x00011503
 6a4:	2f2f312f 	svccs	0x002f312f
 6a8:	30312f2f 	eorscc	r2, r1, pc, lsr #30
 6ac:	2e09032f 	cdpcs	3, 0, cr0, cr9, cr15, {1}
 6b0:	2f2f2f2f 	svccs	0x002f2f2f
 6b4:	302f2f31 	eorcc	r2, pc, r1, lsr pc	; <UNPREDICTABLE>
 6b8:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 6bc:	30302f2f 	eorscc	r2, r0, pc, lsr #30
 6c0:	2f302f30 	svccs	0x00302f30
 6c4:	2f2f3130 	svccs	0x002f3130
 6c8:	302f2f30 	eorcc	r2, pc, r0, lsr pc	; <UNPREDICTABLE>
 6cc:	022f322f 	eoreq	r3, pc, #-268435454	; 0xf0000002
 6d0:	01010002 	tsteq	r1, r2

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	70670074 	rsbvc	r0, r7, r4, ror r0
  10:	735f6f69 	cmpvc	pc, #420	; 0x1a4
  14:	705f7465 	subsvc	r7, pc, r5, ror #8
  18:	006c6c75 	rsbeq	r6, ip, r5, ror ip
  1c:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
  20:	745f3233 	ldrbvc	r3, [pc], #-563	; 28 <__start-0x7fd8>
  24:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
  28:	7067006f 	rsbvc	r0, r7, pc, rrx
  2c:	735f6f69 	cmpvc	pc, #420	; 0x1a4
  30:	47007465 	strmi	r7, [r0, -r5, ror #8]
  34:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
  38:	31203731 			; <UNDEFINED> instruction: 0x31203731
  3c:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
  40:	30322031 	eorscc	r2, r2, r1, lsr r0
  44:	38303132 	ldmdacc	r0!, {r1, r4, r5, r8, ip, sp}
  48:	28203432 	stmdacs	r0!, {r1, r4, r5, sl, ip, sp}
  4c:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  50:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  54:	666d2d20 	strbtvs	r2, [sp], -r0, lsr #26
  58:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
  5c:	6962612d 	stmdbvs	r2!, {r0, r2, r3, r5, r8, sp, lr}^
  60:	666f733d 			; <UNDEFINED> instruction: 0x666f733d
  64:	6d2d2074 	stcvs	0, cr2, [sp, #-464]!	; 0xfffffe30
  68:	206d7261 	rsbcs	r7, sp, r1, ror #4
  6c:	72616d2d 	rsbvc	r6, r1, #2880	; 0xb40
  70:	613d6863 	teqvs	sp, r3, ror #16
  74:	37766d72 			; <UNDEFINED> instruction: 0x37766d72
  78:	2d20612d 	stfcss	f6, [r0, #-180]!	; 0xffffff4c
  7c:	4f2d2067 	svcmi	0x002d2067
  80:	4f2d2031 	svcmi	0x002d2031
  84:	662d2030 			; <UNDEFINED> instruction: 0x662d2030
  88:	65657266 	strbvs	r7, [r5, #-614]!	; 0xfffffd9a
  8c:	6e617473 	mcrvs	4, 3, r7, cr1, cr3, {3}
  90:	676e6964 	strbvs	r6, [lr, -r4, ror #18]!
  94:	32333400 	eorscc	r3, r3, #0, 8
  98:	6b62696c 	blvs	189a650 <__user_program+0x159a650>
  9c:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
  a0:	6970672f 	ldmdbvs	r0!, {r0, r1, r2, r3, r5, r8, r9, sl, sp, lr}^
  a4:	00632e6f 	rsbeq	r2, r3, pc, ror #28
  a8:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  ac:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  b0:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  b4:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  b8:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  bc:	6700746e 	strvs	r7, [r0, -lr, ror #8]
  c0:	5f6f6970 	svcpl	0x006f6970
  c4:	00726c63 	rsbseq	r6, r2, r3, ror #24
  c8:	7366666f 	cmnvc	r6, #116391936	; 0x6f00000
  cc:	75007465 	strvc	r7, [r0, #-1125]	; 0xfffffb9b
  d0:	38746e69 	ldmdacc	r4!, {r0, r3, r5, r6, r9, sl, fp, sp, lr}^
  d4:	7500745f 	strvc	r7, [r0, #-1119]	; 0xfffffba1
  d8:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  dc:	2064656e 	rsbcs	r6, r4, lr, ror #10
  e0:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
  e4:	73552f00 	cmpvc	r5, #0, 30
  e8:	2f737265 	svccs	0x00737265
  ec:	61707261 	cmnvs	r0, r1, ror #4
  f0:	2f67626e 	svccs	0x0067626e
  f4:	706f7244 	rsbvc	r7, pc, r4, asr #4
  f8:	2f786f62 	svccs	0x00786f62
  fc:	63616574 	cmnvs	r1, #116, 10	; 0x1d000000
 100:	676e6968 	strbvs	r6, [lr, -r8, ror #18]!
 104:	6165722f 	cmnvs	r5, pc, lsr #4
 108:	69742d6c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sl, fp, sp}^
 10c:	732d656d 			; <UNDEFINED> instruction: 0x732d656d
 110:	6d657479 	cfstrdvs	mvd7, [r5, #-484]!	; 0xfffffe1c
 114:	7365642d 	cmnvc	r5, #754974720	; 0x2d000000
 118:	2f6e6769 	svccs	0x006e6769
 11c:	756c6f73 	strbvc	r6, [ip, #-3955]!	; 0xfffff08d
 120:	6e6f6974 			; <UNDEFINED> instruction: 0x6e6f6974
 124:	70632f73 	rsbvc	r2, r3, r3, ror pc
 128:	33346e65 	teqcc	r4, #1616	; 0x650
 12c:	31327732 	teqcc	r2, r2, lsr r7
 130:	3161702d 	cmncc	r1, sp, lsr #32
 134:	2f33672d 	svccs	0x0033672d
 138:	72756f73 	rsbsvc	r6, r5, #460	; 0x1cc
 13c:	73006563 	movwvc	r6, #1379	; 0x563
 140:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 144:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 148:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 14c:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 150:	74730074 	ldrbtvc	r0, [r3], #-116	; 0xffffff8c
 154:	00657461 	rsbeq	r7, r5, r1, ror #8
 158:	6f697067 	svcvs	0x00697067
 15c:	6e6f635f 	mcrvs	3, 3, r6, cr15, cr15, {2}
 160:	00676966 	rsbeq	r6, r7, r6, ror #18
 164:	726f6873 	rsbvc	r6, pc, #7536640	; 0x730000
 168:	6e692074 	mcrvs	0, 3, r2, cr9, cr4, {3}
 16c:	72610074 	rsbvc	r0, r1, #116	; 0x74
 170:	31796172 	cmncc	r9, r2, ror r1
 174:	72726100 	rsbsvc	r6, r2, #0, 2
 178:	00327961 	eorseq	r7, r2, r1, ror #18
 17c:	2f74706f 	svccs	0x0074706f
 180:	2f637273 	svccs	0x00637273
 184:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 188:	632e6c65 			; <UNDEFINED> instruction: 0x632e6c65
 18c:	6d697400 	cfstrdvs	mvd7, [r9, #-0]
 190:	765f7265 	ldrbvc	r7, [pc], -r5, ror #4
 194:	65756c61 	ldrbvs	r6, [r5, #-3169]!	; 0xfffff39f
 198:	646e6900 	strbtvs	r6, [lr], #-2304	; 0xfffff700
 19c:	2f007865 	svccs	0x00007865
 1a0:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xfffff098
 1a4:	6573752f 	ldrbvs	r7, [r3, #-1327]!	; 0xfffffad1
 1a8:	672f3172 			; <UNDEFINED> instruction: 0x672f3172
 1ac:	6f732f34 	svcvs	0x00732f34
 1b0:	65637275 	strbvs	r7, [r3, #-629]!	; 0xfffffd8b
 1b4:	72656b00 	rsbvc	r6, r5, #0, 22
 1b8:	5f6c656e 	svcpl	0x006c656e
 1bc:	6e69616d 	powvsez	f6, f1, #5.0
 1c0:	6f6f6700 	svcvs	0x006f6700
 1c4:	69750064 	ldmdbvs	r5!, {r2, r5, r6}^
 1c8:	3436746e 	ldrtcc	r7, [r6], #-1134	; 0xfffffb92
 1cc:	6200745f 	andvs	r7, r0, #1593835520	; 0x5f000000
 1d0:	00657361 	rsbeq	r7, r5, r1, ror #6
 1d4:	6573552f 	ldrbvs	r5, [r3, #-1327]!	; 0xfffffad1
 1d8:	6a2f7372 	bvs	bdcfa8 <__user_program+0x8dcfa8>
 1dc:	73656d61 	cmnvc	r5, #6208	; 0x1840
 1e0:	776f7262 	strbvc	r7, [pc, -r2, ror #4]!
 1e4:	6f442f6e 	svcvs	0x00442f6e
 1e8:	656d7563 	strbvs	r7, [sp, #-1379]!	; 0xfffffa9d
 1ec:	2f73746e 	svccs	0x0073746e
 1f0:	4e455043 	cdpmi	0, 4, cr5, cr5, cr3, {2}
 1f4:	2f323334 	svccs	0x00323334
 1f8:	672f314c 	strvs	r3, [pc, -ip, asr #2]!
 1fc:	6f732f34 	svcvs	0x00732f34
 200:	65637275 	strbvs	r7, [r3, #-629]!	; 0xfffffd8b
 204:	765f5f00 	ldrbvc	r5, [pc], -r0, lsl #30
 208:	696c5f61 	stmdbvs	ip!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
 20c:	63007473 	movwvs	r7, #1139	; 0x473
 210:	5f726168 	svcpl	0x00726168
 214:	0074756f 	rsbseq	r7, r4, pc, ror #10
 218:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 21c:	6d756e74 	ldclvs	14, cr6, [r5, #-464]!	; 0xfffffe30
 220:	706f006b 	rsbvc	r0, pc, fp, rrx
 224:	72732f74 	rsbsvc	r2, r3, #116, 30	; 0x1d0
 228:	72702f63 	rsbsvc	r2, r0, #396	; 0x18c
 22c:	6b746e69 	blvs	1d1bbd8 <__user_program+0x1a1bbd8>
 230:	6400632e 	strvs	r6, [r0], #-814	; 0xfffffcd2
 234:	74696769 	strbtvc	r6, [r9], #-1897	; 0xfffff897
 238:	69640073 	stmdbvs	r4!, {r0, r1, r4, r5, r6}^
 23c:	00746967 	rsbseq	r6, r4, r7, ror #18
 240:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 244:	61006b74 	tstvs	r0, r4, ror fp
 248:	00736772 	rsbseq	r6, r3, r2, ror r7
 24c:	70615f5f 	rsbvc	r5, r1, pc, asr pc
 250:	72617500 	rsbvc	r7, r1, #0, 10
 254:	65675f74 	strbvs	r5, [r7, #-3956]!	; 0xfffff08c
 258:	79625f74 	stmdbvc	r2!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
 25c:	74006574 	strvc	r6, [r0], #-1396	; 0xfffffa8c
 260:	64747365 	ldrbtvs	r7, [r4], #-869	; 0xfffffc9b
 264:	65740078 	ldrbvs	r0, [r4, #-120]!	; 0xffffff88
 268:	756e7473 	strbvc	r7, [lr, #-1139]!	; 0xfffffb8d
 26c:	73657400 	cmnvc	r5, #0, 8
 270:	64646174 	strbtvs	r6, [r4], #-372	; 0xfffffe8c
 274:	706f0072 	rsbvc	r0, pc, r2, ror r0	; <UNPREDICTABLE>
 278:	72732f74 	rsbsvc	r2, r3, #116, 30	; 0x1d0
 27c:	61752f63 	cmnvs	r5, r3, ror #30
 280:	632e7472 			; <UNDEFINED> instruction: 0x632e7472
 284:	73657400 	cmnvc	r5, #0, 8
 288:	00326374 	eorseq	r6, r2, r4, ror r3
 28c:	62746567 	rsbsvs	r6, r4, #432013312	; 0x19c00000
 290:	74736574 	ldrbtvc	r6, [r3], #-1396	; 0xfffffa8c
 294:	65740063 	ldrbvs	r0, [r4, #-99]!	; 0xffffff9d
 298:	00707473 	rsbseq	r7, r0, r3, ror r4
 29c:	74736574 	ldrbtvc	r6, [r3], #-1396	; 0xfffffa8c
 2a0:	61750064 	cmnvs	r5, r4, rrx
 2a4:	695f7472 	ldmdbvs	pc, {r1, r4, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
 2a8:	0074696e 	rsbseq	r6, r4, lr, ror #18
 2ac:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
 2b0:	7475705f 	ldrbtvc	r7, [r5], #-95	; 0xffffffa1
 2b4:	7479625f 	ldrbtvc	r6, [r9], #-607	; 0xfffffda1
 2b8:	65740065 	ldrbvs	r0, [r4, #-101]!	; 0xffffff9b
 2bc:	31637473 	smccc	14147	; 0x3743
 2c0:	73657400 	cmnvc	r5, #0, 8
 2c4:	74006f74 	strvc	r6, [r0], #-3956	; 0xfffff08c
 2c8:	73747365 	cmnvc	r4, #-1811939327	; 0x94000001
 2cc:	73657400 	cmnvc	r5, #0, 8
 2d0:	74007574 	strvc	r7, [r0], #-1396	; 0xfffffa8c
 2d4:	78747365 	ldmdavc	r4!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}^
 2d8:	65670064 	strbvs	r0, [r7, #-100]!	; 0xffffff9c
 2dc:	65746274 	ldrbvs	r6, [r4, #-628]!	; 0xfffffd8c
 2e0:	74007473 	strvc	r7, [r0], #-1139	; 0xfffffb8d
 2e4:	78747365 	ldmdavc	r4!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}^
 2e8:	73657400 	cmnvc	r5, #0, 8
 2ec:	00646e74 	rsbeq	r6, r4, r4, ror lr
 2f0:	74736574 	ldrbtvc	r6, [r3], #-1396	; 0xfffffa8c
 2f4:	7500646f 	strvc	r6, [r0, #-1135]	; 0xfffffb91
 2f8:	5f747261 	svcpl	0x00747261
 2fc:	736f6c63 	cmnvc	pc, #25344	; 0x6300
 300:	74730065 	ldrbtvc	r0, [r3], #-101	; 0xffffff9b
 304:	5f747261 	svcpl	0x00747261
 308:	6e756f63 	cdpvs	15, 7, cr6, cr5, cr3, {3}
 30c:	776f6474 			; <UNDEFINED> instruction: 0x776f6474
 310:	6974006e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6}^
 314:	5f72656d 	svcpl	0x0072656d
 318:	6374616c 	cmnvs	r4, #108, 2
 31c:	706f0068 	rsbvc	r0, pc, r8, rrx
 320:	72732f74 	rsbsvc	r2, r3, #116, 30	; 0x1d0
 324:	61622f63 	cmnvs	r2, r3, ror #30
 328:	5f636973 	svcpl	0x00636973
 32c:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
 330:	00632e72 	rsbeq	r2, r3, r2, ror lr
 334:	6c323334 	ldcvs	3, cr3, [r2], #-208	; 0xffffff30
 338:	2f6b6269 	svccs	0x006b6269
 33c:	2f637273 	svccs	0x00637273
 340:	746f6f62 	strbtvc	r6, [pc], #-3938	; 348 <__start-0x7cb8>
 344:	4700532e 	strmi	r5, [r0, -lr, lsr #6]
 348:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
 34c:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
 350:	312e3633 			; <UNDEFINED> instruction: 0x312e3633
 354:	32333400 	eorscc	r3, r3, #0, 8
 358:	6b62696c 	blvs	189a910 <__user_program+0x159a910>
 35c:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 360:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 364:	7500532e 	strvc	r5, [r0, #-814]	; 0xfffffcd2
 368:	74706f6e 	ldrbtvc	r6, [r0], #-3950	; 0xfffff092
 36c:	7a696d69 	bvc	1a5b918 <__user_program+0x175b918>
 370:	632e6465 			; <UNDEFINED> instruction: 0x632e6465
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__user_program+0xdd0d24>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	72412055 	subvc	r2, r1, #85	; 0x55
   c:	6d45206d 	stclvs	0, cr2, [r5, #-436]	; 0xfffffe4c
  10:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  14:	54206465 	strtpl	r6, [r0], #-1125	; 0xfffffb9b
  18:	636c6f6f 	cmnvs	ip, #444	; 0x1bc
  1c:	6e696168 	powvsez	f6, f1, #0.0
  20:	2e303120 	rsfcssp	f3, f0, f0
  24:	30322d33 	eorscc	r2, r2, r3, lsr sp
  28:	312e3132 			; <UNDEFINED> instruction: 0x312e3132
  2c:	31202930 			; <UNDEFINED> instruction: 0x31202930
  30:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
  34:	30322031 	eorscc	r2, r2, r1, lsr r0
  38:	38303132 	ldmdacc	r0!, {r1, r4, r5, r8, ip, sp}
  3c:	28203432 	stmdacs	r0!, {r1, r4, r5, sl, ip, sp}
  40:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  44:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  48:	43434700 	movtmi	r4, #14080	; 0x3700
  4c:	4728203a 			; <UNDEFINED> instruction: 0x4728203a
  50:	5420554e 	strtpl	r5, [r0], #-1358	; 0xfffffab2
  54:	736c6f6f 	cmnvc	ip, #444	; 0x1bc
  58:	726f6620 	rsbvc	r6, pc, #32, 12	; 0x2000000
  5c:	4d524120 	ldfmie	f4, [r2, #-128]	; 0xffffff80
  60:	626d4520 	rsbvs	r4, sp, #32, 10	; 0x8000000
  64:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  68:	72502064 	subsvc	r2, r0, #100	; 0x64
  6c:	7365636f 	cmnvc	r5, #-1140850687	; 0xbc000001
  70:	73726f73 	cmnvc	r2, #460	; 0x1cc
  74:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  78:	20332e39 	eorscs	r2, r3, r9, lsr lr
  7c:	35313032 	ldrcc	r3, [r1, #-50]!	; 0xffffffce
  80:	39323530 	ldmdbcc	r2!, {r4, r5, r8, sl, ip, sp}
  84:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  88:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  8c:	5b202965 	blpl	80a628 <__user_program+0x50a628>
  90:	2f4d5241 	svccs	0x004d5241
  94:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  98:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  9c:	395f342d 	ldmdbcc	pc, {r0, r2, r3, r5, sl, ip, sp}^	; <UNPREDICTABLE>
  a0:	6172622d 	cmnvs	r2, sp, lsr #4
  a4:	2068636e 	rsbcs	r6, r8, lr, ror #6
  a8:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  ac:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  b0:	34323220 	ldrtcc	r3, [r2], #-544	; 0xfffffde0
  b4:	5d383832 	ldcpl	8, cr3, [r8, #-200]!	; 0xffffff38
	...

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002c41 	andeq	r2, r0, r1, asr #24
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000022 	andeq	r0, r0, r2, lsr #32
  10:	412d3705 			; <UNDEFINED> instruction: 0x412d3705
  14:	070a0600 	streq	r0, [sl, -r0, lsl #12]
  18:	09010841 	stmdbeq	r1, {r0, r6, fp}
  1c:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  20:	17011501 	strne	r1, [r1, -r1, lsl #10]
  24:	1a011803 	bne	46038 <__bss_end+0x39038>
  28:	22061e01 	andcs	r1, r6, #1, 28
  2c:	Address 0x000000000000002c is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	0000001c 	andeq	r0, r0, ip, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	00008054 	andeq	r8, r0, r4, asr r0
  1c:	0000011c 	andeq	r0, r0, ip, lsl r1
  20:	8b040e42 	blhi	103930 <__bss_end+0xf6930>
  24:	0b0d4201 	bleq	350830 <__user_program+0x50830>
  28:	0d0d8602 	stceq	6, cr8, [sp, #-8]
  2c:	000ecb42 	andeq	ip, lr, r2, asr #22
  30:	0000001c 	andeq	r0, r0, ip, lsl r0
  34:	00000000 	andeq	r0, r0, r0
  38:	00008170 	andeq	r8, r0, r0, ror r1
  3c:	00000088 	andeq	r0, r0, r8, lsl #1
  40:	8b040e42 	blhi	103950 <__bss_end+0xf6950>
  44:	0b0d4201 	bleq	350850 <__user_program+0x50850>
  48:	420d0d7c 	andmi	r0, sp, #124, 26	; 0x1f00
  4c:	00000ecb 	andeq	r0, r0, fp, asr #29
  50:	0000001c 	andeq	r0, r0, ip, lsl r0
  54:	00000000 	andeq	r0, r0, r0
  58:	000081f8 	strdeq	r8, [r0], -r8	; <UNPREDICTABLE>
  5c:	00000088 	andeq	r0, r0, r8, lsl #1
  60:	8b040e42 	blhi	103970 <__bss_end+0xf6970>
  64:	0b0d4201 	bleq	350870 <__user_program+0x50870>
  68:	420d0d7c 	andmi	r0, sp, #124, 26	; 0x1f00
  6c:	00000ecb 	andeq	r0, r0, fp, asr #29
  70:	0000001c 	andeq	r0, r0, ip, lsl r0
  74:	00000000 	andeq	r0, r0, r0
  78:	00008280 	andeq	r8, r0, r0, lsl #5
  7c:	000000fc 	strdeq	r0, [r0], -ip
  80:	8b080e42 	blhi	203990 <__end+0xd5990>
  84:	42018e02 	andmi	r8, r1, #2, 28
  88:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
  8c:	080d0c78 	stmdaeq	sp, {r3, r4, r5, r6, sl, fp}
  90:	0000000c 	andeq	r0, r0, ip
  94:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  98:	7c020001 	stcvc	0, cr0, [r2], {1}
  9c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  a0:	00000018 	andeq	r0, r0, r8, lsl r0
  a4:	00000090 	muleq	r0, r0, r0
  a8:	0000837c 	andeq	r8, r0, ip, ror r3
  ac:	000001a8 	andeq	r0, r0, r8, lsr #3
  b0:	8b080e42 	blhi	2039c0 <__end+0xd59c0>
  b4:	42018e02 	andmi	r8, r1, #2, 28
  b8:	00040b0c 	andeq	r0, r4, ip, lsl #22
  bc:	0000000c 	andeq	r0, r0, ip
  c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  c4:	7c020001 	stcvc	0, cr0, [r2], {1}
  c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  cc:	00000024 	andeq	r0, r0, r4, lsr #32
  d0:	000000bc 	strheq	r0, [r0], -ip
  d4:	00008524 	andeq	r8, r0, r4, lsr #10
  d8:	00000138 	andeq	r0, r0, r8, lsr r1
  dc:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
  e0:	86058506 	strhi	r8, [r5], -r6, lsl #10
  e4:	8b038704 	blhi	e1cfc <__bss_end+0xd4cfc>
  e8:	42018e02 	andmi	r8, r1, #2, 28
  ec:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
  f0:	180d0c96 	stmdane	sp, {r1, r2, r4, r7, sl, fp}
  f4:	00000048 	andeq	r0, r0, r8, asr #32
  f8:	000000bc 	strheq	r0, [r0], -ip
  fc:	0000865c 	andeq	r8, r0, ip, asr r6
 100:	000002c0 	andeq	r0, r0, r0, asr #5
 104:	80100e42 	andshi	r0, r0, r2, asr #28
 108:	82038104 	andhi	r8, r3, #4, 2
 10c:	42018302 	andmi	r8, r1, #134217728	; 0x8000000
 110:	0c84300e 	stceq	0, cr3, [r4], {14}
 114:	0a860b85 	beq	fe182f30 <__user_program+0xfde82f30>
 118:	08880987 	stmeq	r8, {r0, r1, r2, r7, r8, fp}
 11c:	068b0789 	streq	r0, [fp], r9, lsl #15
 120:	0c42058e 	cfstr64eq	mvdx0, [r2], {142}	; 0x8e
 124:	5403140b 	strpl	r1, [r3], #-1035	; 0xfffffbf5
 128:	300d0c01 	andcc	r0, sp, r1, lsl #24
 12c:	c9cbce42 	stmibgt	fp, {r1, r6, r9, sl, fp, lr, pc}^
 130:	c5c6c7c8 	strbgt	ip, [r6, #1992]	; 0x7c8
 134:	42100ec4 	andsmi	r0, r0, #196, 28	; 0xc40
 138:	c0c1c2c3 	sbcgt	ip, r1, r3, asr #5
 13c:	0000000e 	andeq	r0, r0, lr
 140:	0000000c 	andeq	r0, r0, ip
 144:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 148:	7c020001 	stcvc	0, cr0, [r2], {1}
 14c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 150:	00000020 	andeq	r0, r0, r0, lsr #32
 154:	00000140 	andeq	r0, r0, r0, asr #2
 158:	0000891c 	andeq	r8, r0, ip, lsl r9
 15c:	00000318 	andeq	r0, r0, r8, lsl r3
 160:	8b080e42 	blhi	203a70 <__end+0xd5a70>
 164:	42018e02 	andmi	r8, r1, #2, 28
 168:	03040b0c 	movweq	r0, #19212	; 0x4b0c
 16c:	0d0c0186 	stfeqs	f0, [ip, #-536]	; 0xfffffde8
 170:	00000008 	andeq	r0, r0, r8
 174:	0000001c 	andeq	r0, r0, ip, lsl r0
 178:	00000140 	andeq	r0, r0, r0, asr #2
 17c:	00008c34 	andeq	r8, r0, r4, lsr ip
 180:	00000038 	andeq	r0, r0, r8, lsr r0
 184:	8b040e42 	blhi	103a94 <__bss_end+0xf6a94>
 188:	0b0d4201 	bleq	350994 <__user_program+0x50994>
 18c:	420d0d54 	andmi	r0, sp, #84, 26	; 0x1500
 190:	00000ecb 	andeq	r0, r0, fp, asr #29
 194:	0000001c 	andeq	r0, r0, ip, lsl r0
 198:	00000140 	andeq	r0, r0, r0, asr #2
 19c:	00008c6c 	andeq	r8, r0, ip, ror #24
 1a0:	00000054 	andeq	r0, r0, r4, asr r0
 1a4:	8b040e42 	blhi	103ab4 <__bss_end+0xf6ab4>
 1a8:	0b0d4201 	bleq	3509b4 <__user_program+0x509b4>
 1ac:	420d0d62 	andmi	r0, sp, #6272	; 0x1880
 1b0:	00000ecb 	andeq	r0, r0, fp, asr #29
 1b4:	0000001c 	andeq	r0, r0, ip, lsl r0
 1b8:	00000140 	andeq	r0, r0, r0, asr #2
 1bc:	00008cc0 	andeq	r8, r0, r0, asr #25
 1c0:	00000094 	muleq	r0, r4, r0
 1c4:	8b040e42 	blhi	103ad4 <__bss_end+0xf6ad4>
 1c8:	0b0d4201 	bleq	3509d4 <__user_program+0x509d4>
 1cc:	0d0d4202 	sfmeq	f4, 4, [sp, #-8]
 1d0:	000ecb42 	andeq	ip, lr, r2, asr #22
 1d4:	0000000c 	andeq	r0, r0, ip
 1d8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 1dc:	7c020001 	stcvc	0, cr0, [r2], {1}
 1e0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1e4:	0000001c 	andeq	r0, r0, ip, lsl r0
 1e8:	000001d4 	ldrdeq	r0, [r0], -r4
 1ec:	00008d54 	andeq	r8, r0, r4, asr sp
 1f0:	00000058 	andeq	r0, r0, r8, asr r0
 1f4:	8b040e42 	blhi	103b04 <__bss_end+0xf6b04>
 1f8:	0b0d4201 	bleq	350a04 <__user_program+0x50a04>
 1fc:	420d0d64 	andmi	r0, sp, #100, 26	; 0x1900
 200:	00000ecb 	andeq	r0, r0, fp, asr #29
 204:	0000001c 	andeq	r0, r0, ip, lsl r0
 208:	000001d4 	ldrdeq	r0, [r0], -r4
 20c:	00008dac 	andeq	r8, r0, ip, lsr #27
 210:	00000034 	andeq	r0, r0, r4, lsr r0
 214:	8b040e42 	blhi	103b24 <__bss_end+0xf6b24>
 218:	0b0d4201 	bleq	350a24 <__user_program+0x50a24>
 21c:	420d0d52 	andmi	r0, sp, #5248	; 0x1480
 220:	00000ecb 	andeq	r0, r0, fp, asr #29
 224:	0000000c 	andeq	r0, r0, ip
 228:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 22c:	7c020001 	stcvc	0, cr0, [r2], {1}
 230:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 234:	00000018 	andeq	r0, r0, r8, lsl r0
 238:	00000224 	andeq	r0, r0, r4, lsr #4
 23c:	00009028 	andeq	r9, r0, r8, lsr #32
 240:	0000003c 	andeq	r0, r0, ip, lsr r0
 244:	8e100e54 	mrchi	14, 0, r0, cr0, cr4, {2}
 248:	0ece4803 	cdpeq	8, 12, cr4, cr14, cr3, {0}
 24c:	00000010 	andeq	r0, r0, r0, lsl r0
 250:	0000000c 	andeq	r0, r0, ip
 254:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 258:	7c020001 	stcvc	0, cr0, [r2], {1}
 25c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 260:	0000002c 	andeq	r0, r0, ip, lsr #32
 264:	00000250 	andeq	r0, r0, r0, asr r2
 268:	00009064 	andeq	r9, r0, r4, rrx
 26c:	00000128 	andeq	r0, r0, r8, lsr #2
 270:	84200e42 	strthi	r0, [r0], #-3650	; 0xfffff1be
 274:	86078508 	strhi	r8, [r7], -r8, lsl #10
 278:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 27c:	8a038904 	bhi	e2694 <__bss_end+0xd5694>
 280:	02018e02 	andeq	r8, r1, #2, 28
 284:	c9cace90 	stmibgt	sl, {r4, r7, r9, sl, fp, lr, pc}^
 288:	c5c6c7c8 	strbgt	ip, [r6, #1992]	; 0x7c8
 28c:	00000ec4 	andeq	r0, r0, r4, asr #29
