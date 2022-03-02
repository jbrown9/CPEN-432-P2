
kernel/kernel.elf:     file format elf32-littlearm


Disassembly of section .text:

00008000 <__start>:
    8000:	e8a0003c 	stmia	r0!, {r2, r3, r4, r5}
    8004:	e1500001 	cmp	r0, r1
    8008:	3afffffc 	bcc	8000 <__start>
    800c:	eb0000cb 	bl	8340 <kernel_main>

00008010 <hang>:
    8010:	e320f003 	wfi
    8014:	eafffffd 	b	8010 <hang>

00008018 <gpio_config>:
    8018:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    801c:	e28db000 	add	fp, sp, #0
    8020:	e24dd01c 	sub	sp, sp, #28
    8024:	e1a03000 	mov	r3, r0
    8028:	e1a02001 	mov	r2, r1
    802c:	e54b3015 	strb	r3, [fp, #-21]	; 0xffffffeb
    8030:	e1a03002 	mov	r3, r2
    8034:	e54b3016 	strb	r3, [fp, #-22]	; 0xffffffea
    8038:	e55b3015 	ldrb	r3, [fp, #-21]	; 0xffffffeb
    803c:	e3530035 	cmp	r3, #53	; 0x35
    8040:	8a000037 	bhi	8124 <gpio_config+0x10c>
    8044:	e55b3016 	ldrb	r3, [fp, #-22]	; 0xffffffea
    8048:	e3530007 	cmp	r3, #7
    804c:	8a000034 	bhi	8124 <gpio_config+0x10c>
    8050:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    8054:	e30c3ccd 	movw	r3, #52429	; 0xcccd
    8058:	e34c3ccc 	movt	r3, #52428	; 0xcccc
    805c:	e0832293 	umull	r2, r3, r3, r2
    8060:	e1a031a3 	lsr	r3, r3, #3
    8064:	e6ef3073 	uxtb	r3, r3
    8068:	e50b3008 	str	r3, [fp, #-8]
    806c:	e30b3000 	movw	r3, #45056	; 0xb000
    8070:	e3403000 	movt	r3, #0
    8074:	e5932000 	ldr	r2, [r3]
    8078:	e51b3008 	ldr	r3, [fp, #-8]
    807c:	e1a03103 	lsl	r3, r3, #2
    8080:	e0823003 	add	r3, r2, r3
    8084:	e5933000 	ldr	r3, [r3]
    8088:	e50b300c 	str	r3, [fp, #-12]
    808c:	e55b2015 	ldrb	r2, [fp, #-21]	; 0xffffffeb
    8090:	e30c3ccd 	movw	r3, #52429	; 0xcccd
    8094:	e34c3ccc 	movt	r3, #52428	; 0xcccc
    8098:	e0831293 	umull	r1, r3, r3, r2
    809c:	e1a031a3 	lsr	r3, r3, #3
    80a0:	e3a0100a 	mov	r1, #10
    80a4:	e0030391 	mul	r3, r1, r3
    80a8:	e0423003 	sub	r3, r2, r3
    80ac:	e6ef3073 	uxtb	r3, r3
    80b0:	e1a02003 	mov	r2, r3
    80b4:	e1a03002 	mov	r3, r2
    80b8:	e1a03083 	lsl	r3, r3, #1
    80bc:	e0833002 	add	r3, r3, r2
    80c0:	e50b3010 	str	r3, [fp, #-16]
    80c4:	e3a02007 	mov	r2, #7
    80c8:	e51b3010 	ldr	r3, [fp, #-16]
    80cc:	e1a03312 	lsl	r3, r2, r3
    80d0:	e1e03003 	mvn	r3, r3
    80d4:	e1a02003 	mov	r2, r3
    80d8:	e51b300c 	ldr	r3, [fp, #-12]
    80dc:	e0033002 	and	r3, r3, r2
    80e0:	e50b300c 	str	r3, [fp, #-12]
    80e4:	e55b2016 	ldrb	r2, [fp, #-22]	; 0xffffffea
    80e8:	e51b3010 	ldr	r3, [fp, #-16]
    80ec:	e1a03312 	lsl	r3, r2, r3
    80f0:	e1a02003 	mov	r2, r3
    80f4:	e51b300c 	ldr	r3, [fp, #-12]
    80f8:	e1833002 	orr	r3, r3, r2
    80fc:	e50b300c 	str	r3, [fp, #-12]
    8100:	e30b3000 	movw	r3, #45056	; 0xb000
    8104:	e3403000 	movt	r3, #0
    8108:	e5932000 	ldr	r2, [r3]
    810c:	e51b3008 	ldr	r3, [fp, #-8]
    8110:	e1a03103 	lsl	r3, r3, #2
    8114:	e0823003 	add	r3, r2, r3
    8118:	e51b200c 	ldr	r2, [fp, #-12]
    811c:	e5832000 	str	r2, [r3]
    8120:	ea000000 	b	8128 <gpio_config+0x110>
    8124:	e320f000 	nop	{0}
    8128:	e28bd000 	add	sp, fp, #0
    812c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8130:	e12fff1e 	bx	lr

00008134 <gpio_set>:
    8134:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8138:	e28db000 	add	fp, sp, #0
    813c:	e24dd00c 	sub	sp, sp, #12
    8140:	e1a03000 	mov	r3, r0
    8144:	e54b3005 	strb	r3, [fp, #-5]
    8148:	e55b3005 	ldrb	r3, [fp, #-5]
    814c:	e3530035 	cmp	r3, #53	; 0x35
    8150:	8a000015 	bhi	81ac <gpio_set+0x78>
    8154:	e55b3005 	ldrb	r3, [fp, #-5]
    8158:	e353001f 	cmp	r3, #31
    815c:	9a000009 	bls	8188 <gpio_set+0x54>
    8160:	e55b3005 	ldrb	r3, [fp, #-5]
    8164:	e2433020 	sub	r3, r3, #32
    8168:	e3a02001 	mov	r2, #1
    816c:	e1a02312 	lsl	r2, r2, r3
    8170:	e30b3000 	movw	r3, #45056	; 0xb000
    8174:	e3403000 	movt	r3, #0
    8178:	e5933000 	ldr	r3, [r3]
    817c:	e2833020 	add	r3, r3, #32
    8180:	e5832000 	str	r2, [r3]
    8184:	ea000009 	b	81b0 <gpio_set+0x7c>
    8188:	e55b3005 	ldrb	r3, [fp, #-5]
    818c:	e3a02001 	mov	r2, #1
    8190:	e1a02312 	lsl	r2, r2, r3
    8194:	e30b3000 	movw	r3, #45056	; 0xb000
    8198:	e3403000 	movt	r3, #0
    819c:	e5933000 	ldr	r3, [r3]
    81a0:	e283301c 	add	r3, r3, #28
    81a4:	e5832000 	str	r2, [r3]
    81a8:	ea000000 	b	81b0 <gpio_set+0x7c>
    81ac:	e320f000 	nop	{0}
    81b0:	e28bd000 	add	sp, fp, #0
    81b4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    81b8:	e12fff1e 	bx	lr

000081bc <gpio_clr>:
    81bc:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    81c0:	e28db000 	add	fp, sp, #0
    81c4:	e24dd00c 	sub	sp, sp, #12
    81c8:	e1a03000 	mov	r3, r0
    81cc:	e54b3005 	strb	r3, [fp, #-5]
    81d0:	e55b3005 	ldrb	r3, [fp, #-5]
    81d4:	e3530035 	cmp	r3, #53	; 0x35
    81d8:	8a000015 	bhi	8234 <gpio_clr+0x78>
    81dc:	e55b3005 	ldrb	r3, [fp, #-5]
    81e0:	e353001f 	cmp	r3, #31
    81e4:	9a000009 	bls	8210 <gpio_clr+0x54>
    81e8:	e55b3005 	ldrb	r3, [fp, #-5]
    81ec:	e2433020 	sub	r3, r3, #32
    81f0:	e3a02001 	mov	r2, #1
    81f4:	e1a02312 	lsl	r2, r2, r3
    81f8:	e30b3000 	movw	r3, #45056	; 0xb000
    81fc:	e3403000 	movt	r3, #0
    8200:	e5933000 	ldr	r3, [r3]
    8204:	e283302c 	add	r3, r3, #44	; 0x2c
    8208:	e5832000 	str	r2, [r3]
    820c:	ea000009 	b	8238 <gpio_clr+0x7c>
    8210:	e55b3005 	ldrb	r3, [fp, #-5]
    8214:	e3a02001 	mov	r2, #1
    8218:	e1a02312 	lsl	r2, r2, r3
    821c:	e30b3000 	movw	r3, #45056	; 0xb000
    8220:	e3403000 	movt	r3, #0
    8224:	e5933000 	ldr	r3, [r3]
    8228:	e2833028 	add	r3, r3, #40	; 0x28
    822c:	e5832000 	str	r2, [r3]
    8230:	ea000000 	b	8238 <gpio_clr+0x7c>
    8234:	e320f000 	nop	{0}
    8238:	e28bd000 	add	sp, fp, #0
    823c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8240:	e12fff1e 	bx	lr

00008244 <gpio_set_pull>:
    8244:	e92d4800 	push	{fp, lr}
    8248:	e28db004 	add	fp, sp, #4
    824c:	e24dd008 	sub	sp, sp, #8
    8250:	e1a03000 	mov	r3, r0
    8254:	e1a02001 	mov	r2, r1
    8258:	e54b3005 	strb	r3, [fp, #-5]
    825c:	e1a03002 	mov	r3, r2
    8260:	e54b3006 	strb	r3, [fp, #-6]
    8264:	e55b3005 	ldrb	r3, [fp, #-5]
    8268:	e3530035 	cmp	r3, #53	; 0x35
    826c:	8a000030 	bhi	8334 <gpio_set_pull+0xf0>
    8270:	e55b3006 	ldrb	r3, [fp, #-6]
    8274:	e3530002 	cmp	r3, #2
    8278:	8a00002d 	bhi	8334 <gpio_set_pull+0xf0>
    827c:	e30b3000 	movw	r3, #45056	; 0xb000
    8280:	e3403000 	movt	r3, #0
    8284:	e5933000 	ldr	r3, [r3]
    8288:	e2833094 	add	r3, r3, #148	; 0x94
    828c:	e55b2006 	ldrb	r2, [fp, #-6]
    8290:	e5832000 	str	r2, [r3]
    8294:	e3a00096 	mov	r0, #150	; 0x96
    8298:	eb000299 	bl	8d04 <delay_cycles>
    829c:	e55b3005 	ldrb	r3, [fp, #-5]
    82a0:	e353001f 	cmp	r3, #31
    82a4:	9a000011 	bls	82f0 <gpio_set_pull+0xac>
    82a8:	e55b3005 	ldrb	r3, [fp, #-5]
    82ac:	e2433020 	sub	r3, r3, #32
    82b0:	e3a02001 	mov	r2, #1
    82b4:	e1a02312 	lsl	r2, r2, r3
    82b8:	e30b3000 	movw	r3, #45056	; 0xb000
    82bc:	e3403000 	movt	r3, #0
    82c0:	e5933000 	ldr	r3, [r3]
    82c4:	e283309c 	add	r3, r3, #156	; 0x9c
    82c8:	e5832000 	str	r2, [r3]
    82cc:	e3a00096 	mov	r0, #150	; 0x96
    82d0:	eb00028b 	bl	8d04 <delay_cycles>
    82d4:	e30b3000 	movw	r3, #45056	; 0xb000
    82d8:	e3403000 	movt	r3, #0
    82dc:	e5933000 	ldr	r3, [r3]
    82e0:	e283309c 	add	r3, r3, #156	; 0x9c
    82e4:	e3a02000 	mov	r2, #0
    82e8:	e5832000 	str	r2, [r3]
    82ec:	ea000011 	b	8338 <gpio_set_pull+0xf4>
    82f0:	e55b3005 	ldrb	r3, [fp, #-5]
    82f4:	e3a02001 	mov	r2, #1
    82f8:	e1a02312 	lsl	r2, r2, r3
    82fc:	e30b3000 	movw	r3, #45056	; 0xb000
    8300:	e3403000 	movt	r3, #0
    8304:	e5933000 	ldr	r3, [r3]
    8308:	e2833098 	add	r3, r3, #152	; 0x98
    830c:	e5832000 	str	r2, [r3]
    8310:	e3a00096 	mov	r0, #150	; 0x96
    8314:	eb00027a 	bl	8d04 <delay_cycles>
    8318:	e30b3000 	movw	r3, #45056	; 0xb000
    831c:	e3403000 	movt	r3, #0
    8320:	e5933000 	ldr	r3, [r3]
    8324:	e2833098 	add	r3, r3, #152	; 0x98
    8328:	e3a02000 	mov	r2, #0
    832c:	e5832000 	str	r2, [r3]
    8330:	ea000000 	b	8338 <gpio_set_pull+0xf4>
    8334:	e320f000 	nop	{0}
    8338:	e24bd004 	sub	sp, fp, #4
    833c:	e8bd8800 	pop	{fp, pc}

00008340 <kernel_main>:
    8340:	e92d4800 	push	{fp, lr}
    8344:	e28db004 	add	fp, sp, #4
    8348:	e24dd010 	sub	sp, sp, #16
    834c:	e3a03001 	mov	r3, #1
    8350:	e50b300c 	str	r3, [fp, #-12]
    8354:	eb00016e 	bl	8914 <uart_init>
    8358:	e3a03000 	mov	r3, #0
    835c:	e50b3008 	str	r3, [fp, #-8]
    8360:	ea00000c 	b	8398 <kernel_main+0x58>
    8364:	e30c37d0 	movw	r3, #51152	; 0xc7d0
    8368:	e3403000 	movt	r3, #0
    836c:	e51b2008 	ldr	r2, [fp, #-8]
    8370:	e51b1008 	ldr	r1, [fp, #-8]
    8374:	e7831102 	str	r1, [r3, r2, lsl #2]
    8378:	e30c3000 	movw	r3, #49152	; 0xc000
    837c:	e3403000 	movt	r3, #0
    8380:	e51b2008 	ldr	r2, [fp, #-8]
    8384:	e51b1008 	ldr	r1, [fp, #-8]
    8388:	e7831102 	str	r1, [r3, r2, lsl #2]
    838c:	e51b3008 	ldr	r3, [fp, #-8]
    8390:	e2833001 	add	r3, r3, #1
    8394:	e50b3008 	str	r3, [fp, #-8]
    8398:	e51b3008 	ldr	r3, [fp, #-8]
    839c:	e3530f7d 	cmp	r3, #500	; 0x1f4
    83a0:	baffffef 	blt	8364 <kernel_main+0x24>
    83a4:	e30a0000 	movw	r0, #40960	; 0xa000
    83a8:	e3400000 	movt	r0, #0
    83ac:	eb0000b5 	bl	8688 <printk>
    83b0:	eb0001b4 	bl	8a88 <start_countdown>
    83b4:	e30c07d0 	movw	r0, #51152	; 0xc7d0
    83b8:	e3400000 	movt	r0, #0
    83bc:	eb0002c8 	bl	8ee4 <optimized>
    83c0:	eb0001c6 	bl	8ae0 <timer_latch>
    83c4:	e50b0010 	str	r0, [fp, #-16]
    83c8:	e51b1010 	ldr	r1, [fp, #-16]
    83cc:	e30a0024 	movw	r0, #40996	; 0xa024
    83d0:	e3400000 	movt	r0, #0
    83d4:	eb0000ab 	bl	8688 <printk>
    83d8:	e30a002c 	movw	r0, #41004	; 0xa02c
    83dc:	e3400000 	movt	r0, #0
    83e0:	eb0000a8 	bl	8688 <printk>
    83e4:	eb0001a7 	bl	8a88 <start_countdown>
    83e8:	e30c0000 	movw	r0, #49152	; 0xc000
    83ec:	e3400000 	movt	r0, #0
    83f0:	eb000265 	bl	8d8c <unoptimized>
    83f4:	eb0001b9 	bl	8ae0 <timer_latch>
    83f8:	e50b0010 	str	r0, [fp, #-16]
    83fc:	e51b1010 	ldr	r1, [fp, #-16]
    8400:	e30a0024 	movw	r0, #40996	; 0xa024
    8404:	e3400000 	movt	r0, #0
    8408:	eb00009e 	bl	8688 <printk>
    840c:	e3a03000 	mov	r3, #0
    8410:	e50b3008 	str	r3, [fp, #-8]
    8414:	ea000026 	b	84b4 <kernel_main+0x174>
    8418:	e30c37d0 	movw	r3, #51152	; 0xc7d0
    841c:	e3403000 	movt	r3, #0
    8420:	e51b2008 	ldr	r2, [fp, #-8]
    8424:	e7932102 	ldr	r2, [r3, r2, lsl #2]
    8428:	e30c3000 	movw	r3, #49152	; 0xc000
    842c:	e3403000 	movt	r3, #0
    8430:	e51b1008 	ldr	r1, [fp, #-8]
    8434:	e7933101 	ldr	r3, [r3, r1, lsl #2]
    8438:	e1520003 	cmp	r2, r3
    843c:	0a000019 	beq	84a8 <kernel_main+0x168>
    8440:	e51b1008 	ldr	r1, [fp, #-8]
    8444:	e30a0054 	movw	r0, #41044	; 0xa054
    8448:	e3400000 	movt	r0, #0
    844c:	eb00008d 	bl	8688 <printk>
    8450:	e30c37d0 	movw	r3, #51152	; 0xc7d0
    8454:	e3403000 	movt	r3, #0
    8458:	e51b2008 	ldr	r2, [fp, #-8]
    845c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    8460:	e1a01003 	mov	r1, r3
    8464:	e30a0060 	movw	r0, #41056	; 0xa060
    8468:	e3400000 	movt	r0, #0
    846c:	eb000085 	bl	8688 <printk>
    8470:	e30c3000 	movw	r3, #49152	; 0xc000
    8474:	e3403000 	movt	r3, #0
    8478:	e51b2008 	ldr	r2, [fp, #-8]
    847c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
    8480:	e1a01003 	mov	r1, r3
    8484:	e30a006c 	movw	r0, #41068	; 0xa06c
    8488:	e3400000 	movt	r0, #0
    848c:	eb00007d 	bl	8688 <printk>
    8490:	e30a0078 	movw	r0, #41080	; 0xa078
    8494:	e3400000 	movt	r0, #0
    8498:	eb00007a 	bl	8688 <printk>
    849c:	e3a03000 	mov	r3, #0
    84a0:	e50b300c 	str	r3, [fp, #-12]
    84a4:	ea000005 	b	84c0 <kernel_main+0x180>
    84a8:	e51b3008 	ldr	r3, [fp, #-8]
    84ac:	e2833001 	add	r3, r3, #1
    84b0:	e50b3008 	str	r3, [fp, #-8]
    84b4:	e51b3008 	ldr	r3, [fp, #-8]
    84b8:	e3530f7d 	cmp	r3, #500	; 0x1f4
    84bc:	baffffd5 	blt	8418 <kernel_main+0xd8>
    84c0:	e51b300c 	ldr	r3, [fp, #-12]
    84c4:	e3530000 	cmp	r3, #0
    84c8:	0a000002 	beq	84d8 <kernel_main+0x198>
    84cc:	e30a0094 	movw	r0, #41108	; 0xa094
    84d0:	e3400000 	movt	r0, #0
    84d4:	eb00006b 	bl	8688 <printk>
    84d8:	eb000215 	bl	8d34 <enable_interrupts>
    84dc:	eb000200 	bl	8ce4 <RPI_EnableARMTimerInterrupt>
    84e0:	e3a00000 	mov	r0, #0
    84e4:	eb00018a 	bl	8b14 <timer_start>
    84e8:	eb0001ac 	bl	8ba0 <timer_is_pending>
    84ec:	e1a03000 	mov	r3, r0
    84f0:	e3530001 	cmp	r3, #1
    84f4:	1afffffb 	bne	84e8 <kernel_main+0x1a8>
    84f8:	e30b3408 	movw	r3, #46088	; 0xb408
    84fc:	e3433f00 	movt	r3, #16128	; 0x3f00
    8500:	e5933000 	ldr	r3, [r3]
    8504:	e1a01003 	mov	r1, r3
    8508:	e30a00b0 	movw	r0, #41136	; 0xa0b0
    850c:	e3400000 	movt	r0, #0
    8510:	eb00005c 	bl	8688 <printk>
    8514:	e30b3404 	movw	r3, #46084	; 0xb404
    8518:	e3433f00 	movt	r3, #16128	; 0x3f00
    851c:	e5933000 	ldr	r3, [r3]
    8520:	e1a01003 	mov	r1, r3
    8524:	e30a00cc 	movw	r0, #41164	; 0xa0cc
    8528:	e3400000 	movt	r0, #0
    852c:	eb000055 	bl	8688 <printk>
    8530:	eb00019a 	bl	8ba0 <timer_is_pending>
    8534:	e1a03000 	mov	r3, r0
    8538:	e1a01003 	mov	r1, r3
    853c:	e30a00e0 	movw	r0, #41184	; 0xa0e0
    8540:	e3400000 	movt	r0, #0
    8544:	eb00004f 	bl	8688 <printk>
    8548:	e3a03cb2 	mov	r3, #45568	; 0xb200
    854c:	e3433f00 	movt	r3, #16128	; 0x3f00
    8550:	e5933000 	ldr	r3, [r3]
    8554:	e1a01003 	mov	r1, r3
    8558:	e30a00f4 	movw	r0, #41204	; 0xa0f4
    855c:	e3400000 	movt	r0, #0
    8560:	eb000048 	bl	8688 <printk>
    8564:	e3a00064 	mov	r0, #100	; 0x64
    8568:	eb0001e5 	bl	8d04 <delay_cycles>
    856c:	eaffffdd 	b	84e8 <kernel_main+0x1a8>

00008570 <printnumk>:
    8570:	e92d4800 	push	{fp, lr}
    8574:	e28db004 	add	fp, sp, #4
    8578:	e24dd060 	sub	sp, sp, #96	; 0x60
    857c:	e1a01000 	mov	r1, r0
    8580:	e14b26f4 	strd	r2, [fp, #-100]	; 0xffffff9c
    8584:	e1a03001 	mov	r3, r1
    8588:	e54b3055 	strb	r3, [fp, #-85]	; 0xffffffab
    858c:	e3a03000 	mov	r3, #0
    8590:	e50b3008 	str	r3, [fp, #-8]
    8594:	e3a03000 	mov	r3, #0
    8598:	e50b3010 	str	r3, [fp, #-16]
    859c:	e14b26d4 	ldrd	r2, [fp, #-100]	; 0xffffff9c
    85a0:	e1923003 	orrs	r3, r2, r3
    85a4:	1a00001c 	bne	861c <printnumk+0xac>
    85a8:	e3a00030 	mov	r0, #48	; 0x30
    85ac:	eb00010e 	bl	89ec <uart_put_byte>
    85b0:	ea000031 	b	867c <printnumk+0x10c>
    85b4:	e55b2055 	ldrb	r2, [fp, #-85]	; 0xffffffab
    85b8:	e3a03000 	mov	r3, #0
    85bc:	e14b06d4 	ldrd	r0, [fp, #-100]	; 0xffffff9c
    85c0:	eb0002df 	bl	9144 <__aeabi_uldivmod>
    85c4:	e1a03002 	mov	r3, r2
    85c8:	e50b3010 	str	r3, [fp, #-16]
    85cc:	e30b3004 	movw	r3, #45060	; 0xb004
    85d0:	e3403000 	movt	r3, #0
    85d4:	e51b2010 	ldr	r2, [fp, #-16]
    85d8:	e0833002 	add	r3, r3, r2
    85dc:	e5d31000 	ldrb	r1, [r3]
    85e0:	e24b2054 	sub	r2, fp, #84	; 0x54
    85e4:	e51b3008 	ldr	r3, [fp, #-8]
    85e8:	e0823003 	add	r3, r2, r3
    85ec:	e1a02001 	mov	r2, r1
    85f0:	e5c32000 	strb	r2, [r3]
    85f4:	e55b2055 	ldrb	r2, [fp, #-85]	; 0xffffffab
    85f8:	e3a03000 	mov	r3, #0
    85fc:	e14b06d4 	ldrd	r0, [fp, #-100]	; 0xffffff9c
    8600:	eb0002cf 	bl	9144 <__aeabi_uldivmod>
    8604:	e1a02000 	mov	r2, r0
    8608:	e1a03001 	mov	r3, r1
    860c:	e14b26f4 	strd	r2, [fp, #-100]	; 0xffffff9c
    8610:	e51b3008 	ldr	r3, [fp, #-8]
    8614:	e2833001 	add	r3, r3, #1
    8618:	e50b3008 	str	r3, [fp, #-8]
    861c:	e14b26d4 	ldrd	r2, [fp, #-100]	; 0xffffff9c
    8620:	e1923003 	orrs	r3, r2, r3
    8624:	1affffe2 	bne	85b4 <printnumk+0x44>
    8628:	e3a03000 	mov	r3, #0
    862c:	e50b300c 	str	r3, [fp, #-12]
    8630:	ea00000d 	b	866c <printnumk+0xfc>
    8634:	e51b3008 	ldr	r3, [fp, #-8]
    8638:	e2432001 	sub	r2, r3, #1
    863c:	e51b300c 	ldr	r3, [fp, #-12]
    8640:	e0423003 	sub	r3, r2, r3
    8644:	e24b2004 	sub	r2, fp, #4
    8648:	e0823003 	add	r3, r2, r3
    864c:	e5533050 	ldrb	r3, [r3, #-80]	; 0xffffffb0
    8650:	e54b3011 	strb	r3, [fp, #-17]	; 0xffffffef
    8654:	e55b3011 	ldrb	r3, [fp, #-17]	; 0xffffffef
    8658:	e1a00003 	mov	r0, r3
    865c:	eb0000e2 	bl	89ec <uart_put_byte>
    8660:	e51b300c 	ldr	r3, [fp, #-12]
    8664:	e2833001 	add	r3, r3, #1
    8668:	e50b300c 	str	r3, [fp, #-12]
    866c:	e51b200c 	ldr	r2, [fp, #-12]
    8670:	e51b3008 	ldr	r3, [fp, #-8]
    8674:	e1520003 	cmp	r2, r3
    8678:	baffffed 	blt	8634 <printnumk+0xc4>
    867c:	e320f000 	nop	{0}
    8680:	e24bd004 	sub	sp, fp, #4
    8684:	e8bd8800 	pop	{fp, pc}

00008688 <printk>:
    8688:	e92d000f 	push	{r0, r1, r2, r3}
    868c:	e92d4800 	push	{fp, lr}
    8690:	e28db004 	add	fp, sp, #4
    8694:	e24dd020 	sub	sp, sp, #32
    8698:	e28b3008 	add	r3, fp, #8
    869c:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    86a0:	ea000091 	b	88ec <printk+0x264>
    86a4:	e59b3004 	ldr	r3, [fp, #4]
    86a8:	e5d33000 	ldrb	r3, [r3]
    86ac:	e3530025 	cmp	r3, #37	; 0x25
    86b0:	1a000086 	bne	88d0 <printk+0x248>
    86b4:	e59b3004 	ldr	r3, [fp, #4]
    86b8:	e2833001 	add	r3, r3, #1
    86bc:	e58b3004 	str	r3, [fp, #4]
    86c0:	e59b3004 	ldr	r3, [fp, #4]
    86c4:	e5d33000 	ldrb	r3, [r3]
    86c8:	e353006f 	cmp	r3, #111	; 0x6f
    86cc:	1a00000c 	bne	8704 <printk+0x7c>
    86d0:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    86d4:	e2832004 	add	r2, r3, #4
    86d8:	e50b2024 	str	r2, [fp, #-36]	; 0xffffffdc
    86dc:	e5933000 	ldr	r3, [r3]
    86e0:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    86e4:	e3a00030 	mov	r0, #48	; 0x30
    86e8:	eb0000bf 	bl	89ec <uart_put_byte>
    86ec:	e51b3020 	ldr	r3, [fp, #-32]	; 0xffffffe0
    86f0:	e1a02003 	mov	r2, r3
    86f4:	e1a03fc2 	asr	r3, r2, #31
    86f8:	e3a00008 	mov	r0, #8
    86fc:	ebffff9b 	bl	8570 <printnumk>
    8700:	ea000076 	b	88e0 <printk+0x258>
    8704:	e59b3004 	ldr	r3, [fp, #4]
    8708:	e5d33000 	ldrb	r3, [r3]
    870c:	e3530064 	cmp	r3, #100	; 0x64
    8710:	1a000012 	bne	8760 <printk+0xd8>
    8714:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8718:	e2832004 	add	r2, r3, #4
    871c:	e50b2024 	str	r2, [fp, #-36]	; 0xffffffdc
    8720:	e5933000 	ldr	r3, [r3]
    8724:	e50b300c 	str	r3, [fp, #-12]
    8728:	e51b300c 	ldr	r3, [fp, #-12]
    872c:	e3530000 	cmp	r3, #0
    8730:	aa000004 	bge	8748 <printk+0xc0>
    8734:	e3a0002d 	mov	r0, #45	; 0x2d
    8738:	eb0000ab 	bl	89ec <uart_put_byte>
    873c:	e51b300c 	ldr	r3, [fp, #-12]
    8740:	e2633000 	rsb	r3, r3, #0
    8744:	e50b300c 	str	r3, [fp, #-12]
    8748:	e51b300c 	ldr	r3, [fp, #-12]
    874c:	e1a02003 	mov	r2, r3
    8750:	e1a03fc2 	asr	r3, r2, #31
    8754:	e3a0000a 	mov	r0, #10
    8758:	ebffff84 	bl	8570 <printnumk>
    875c:	ea00005f 	b	88e0 <printk+0x258>
    8760:	e59b3004 	ldr	r3, [fp, #4]
    8764:	e5d33000 	ldrb	r3, [r3]
    8768:	e3530075 	cmp	r3, #117	; 0x75
    876c:	1a00000a 	bne	879c <printk+0x114>
    8770:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8774:	e2832004 	add	r2, r3, #4
    8778:	e50b2024 	str	r2, [fp, #-36]	; 0xffffffdc
    877c:	e5933000 	ldr	r3, [r3]
    8780:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    8784:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8788:	e1a02003 	mov	r2, r3
    878c:	e1a03fc2 	asr	r3, r2, #31
    8790:	e3a0000a 	mov	r0, #10
    8794:	ebffff75 	bl	8570 <printnumk>
    8798:	ea000050 	b	88e0 <printk+0x258>
    879c:	e59b3004 	ldr	r3, [fp, #4]
    87a0:	e5d33000 	ldrb	r3, [r3]
    87a4:	e3530078 	cmp	r3, #120	; 0x78
    87a8:	1a00000e 	bne	87e8 <printk+0x160>
    87ac:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    87b0:	e2832004 	add	r2, r3, #4
    87b4:	e50b2024 	str	r2, [fp, #-36]	; 0xffffffdc
    87b8:	e5933000 	ldr	r3, [r3]
    87bc:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    87c0:	e3a00030 	mov	r0, #48	; 0x30
    87c4:	eb000088 	bl	89ec <uart_put_byte>
    87c8:	e3a00078 	mov	r0, #120	; 0x78
    87cc:	eb000086 	bl	89ec <uart_put_byte>
    87d0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    87d4:	e1a02003 	mov	r2, r3
    87d8:	e1a03fc2 	asr	r3, r2, #31
    87dc:	e3a00010 	mov	r0, #16
    87e0:	ebffff62 	bl	8570 <printnumk>
    87e4:	ea00003d 	b	88e0 <printk+0x258>
    87e8:	e59b3004 	ldr	r3, [fp, #4]
    87ec:	e5d33000 	ldrb	r3, [r3]
    87f0:	e3530063 	cmp	r3, #99	; 0x63
    87f4:	1a000009 	bne	8820 <printk+0x198>
    87f8:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    87fc:	e2832004 	add	r2, r3, #4
    8800:	e50b2024 	str	r2, [fp, #-36]	; 0xffffffdc
    8804:	e5933000 	ldr	r3, [r3]
    8808:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
    880c:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
    8810:	e6ef3073 	uxtb	r3, r3
    8814:	e1a00003 	mov	r0, r3
    8818:	eb000073 	bl	89ec <uart_put_byte>
    881c:	ea00002f 	b	88e0 <printk+0x258>
    8820:	e59b3004 	ldr	r3, [fp, #4]
    8824:	e5d33000 	ldrb	r3, [r3]
    8828:	e3530073 	cmp	r3, #115	; 0x73
    882c:	1a000011 	bne	8878 <printk+0x1f0>
    8830:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8834:	e2832004 	add	r2, r3, #4
    8838:	e50b2024 	str	r2, [fp, #-36]	; 0xffffffdc
    883c:	e5933000 	ldr	r3, [r3]
    8840:	e50b3008 	str	r3, [fp, #-8]
    8844:	ea000006 	b	8864 <printk+0x1dc>
    8848:	e51b3008 	ldr	r3, [fp, #-8]
    884c:	e5d33000 	ldrb	r3, [r3]
    8850:	e1a00003 	mov	r0, r3
    8854:	eb000064 	bl	89ec <uart_put_byte>
    8858:	e51b3008 	ldr	r3, [fp, #-8]
    885c:	e2833001 	add	r3, r3, #1
    8860:	e50b3008 	str	r3, [fp, #-8]
    8864:	e51b3008 	ldr	r3, [fp, #-8]
    8868:	e5d33000 	ldrb	r3, [r3]
    886c:	e3530000 	cmp	r3, #0
    8870:	1afffff4 	bne	8848 <printk+0x1c0>
    8874:	ea000019 	b	88e0 <printk+0x258>
    8878:	e59b3004 	ldr	r3, [fp, #4]
    887c:	e5d33000 	ldrb	r3, [r3]
    8880:	e3530070 	cmp	r3, #112	; 0x70
    8884:	1a00000e 	bne	88c4 <printk+0x23c>
    8888:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    888c:	e2832004 	add	r2, r3, #4
    8890:	e50b2024 	str	r2, [fp, #-36]	; 0xffffffdc
    8894:	e5933000 	ldr	r3, [r3]
    8898:	e50b3010 	str	r3, [fp, #-16]
    889c:	e3a00030 	mov	r0, #48	; 0x30
    88a0:	eb000051 	bl	89ec <uart_put_byte>
    88a4:	e3a00078 	mov	r0, #120	; 0x78
    88a8:	eb00004f 	bl	89ec <uart_put_byte>
    88ac:	e51b3010 	ldr	r3, [fp, #-16]
    88b0:	e1a02003 	mov	r2, r3
    88b4:	e1a03fc2 	asr	r3, r2, #31
    88b8:	e3a00010 	mov	r0, #16
    88bc:	ebffff2b 	bl	8570 <printnumk>
    88c0:	ea000006 	b	88e0 <printk+0x258>
    88c4:	e3a00025 	mov	r0, #37	; 0x25
    88c8:	eb000047 	bl	89ec <uart_put_byte>
    88cc:	ea000003 	b	88e0 <printk+0x258>
    88d0:	e59b3004 	ldr	r3, [fp, #4]
    88d4:	e5d33000 	ldrb	r3, [r3]
    88d8:	e1a00003 	mov	r0, r3
    88dc:	eb000042 	bl	89ec <uart_put_byte>
    88e0:	e59b3004 	ldr	r3, [fp, #4]
    88e4:	e2833001 	add	r3, r3, #1
    88e8:	e58b3004 	str	r3, [fp, #4]
    88ec:	e59b3004 	ldr	r3, [fp, #4]
    88f0:	e5d33000 	ldrb	r3, [r3]
    88f4:	e3530000 	cmp	r3, #0
    88f8:	1affff69 	bne	86a4 <printk+0x1c>
    88fc:	e3a03000 	mov	r3, #0
    8900:	e1a00003 	mov	r0, r3
    8904:	e24bd004 	sub	sp, fp, #4
    8908:	e8bd4800 	pop	{fp, lr}
    890c:	e28dd010 	add	sp, sp, #16
    8910:	e12fff1e 	bx	lr

00008914 <uart_init>:
    8914:	e92d4800 	push	{fp, lr}
    8918:	e28db004 	add	fp, sp, #4
    891c:	e3a01002 	mov	r1, #2
    8920:	e3a0000f 	mov	r0, #15
    8924:	ebfffdbb 	bl	8018 <gpio_config>
    8928:	e3a01002 	mov	r1, #2
    892c:	e3a0000e 	mov	r0, #14
    8930:	ebfffdb8 	bl	8018 <gpio_config>
    8934:	e3a01000 	mov	r1, #0
    8938:	e3a0000f 	mov	r0, #15
    893c:	ebfffe40 	bl	8244 <gpio_set_pull>
    8940:	e3a01000 	mov	r1, #0
    8944:	e3a0000e 	mov	r0, #14
    8948:	ebfffe3d 	bl	8244 <gpio_set_pull>
    894c:	e3053004 	movw	r3, #20484	; 0x5004
    8950:	e3433f21 	movt	r3, #16161	; 0x3f21
    8954:	e3a02001 	mov	r2, #1
    8958:	e5832000 	str	r2, [r3]
    895c:	e3053060 	movw	r3, #20576	; 0x5060
    8960:	e3433f21 	movt	r3, #16161	; 0x3f21
    8964:	e3a02000 	mov	r2, #0
    8968:	e5832000 	str	r2, [r3]
    896c:	e3053044 	movw	r3, #20548	; 0x5044
    8970:	e3433f21 	movt	r3, #16161	; 0x3f21
    8974:	e3a02000 	mov	r2, #0
    8978:	e5832000 	str	r2, [r3]
    897c:	e305304c 	movw	r3, #20556	; 0x504c
    8980:	e3433f21 	movt	r3, #16161	; 0x3f21
    8984:	e3a02003 	mov	r2, #3
    8988:	e5832000 	str	r2, [r3]
    898c:	e3053068 	movw	r3, #20584	; 0x5068
    8990:	e3433f21 	movt	r3, #16161	; 0x3f21
    8994:	e300210e 	movw	r2, #270	; 0x10e
    8998:	e5832000 	str	r2, [r3]
    899c:	e3053060 	movw	r3, #20576	; 0x5060
    89a0:	e3433f21 	movt	r3, #16161	; 0x3f21
    89a4:	e3a02003 	mov	r2, #3
    89a8:	e5832000 	str	r2, [r3]
    89ac:	e320f000 	nop	{0}
    89b0:	e8bd8800 	pop	{fp, pc}

000089b4 <uart_close>:
    89b4:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    89b8:	e28db000 	add	fp, sp, #0
    89bc:	e3053060 	movw	r3, #20576	; 0x5060
    89c0:	e3433f21 	movt	r3, #16161	; 0x3f21
    89c4:	e3a02003 	mov	r2, #3
    89c8:	e5832000 	str	r2, [r3]
    89cc:	e3053004 	movw	r3, #20484	; 0x5004
    89d0:	e3433f21 	movt	r3, #16161	; 0x3f21
    89d4:	e3a02000 	mov	r2, #0
    89d8:	e5832000 	str	r2, [r3]
    89dc:	e320f000 	nop	{0}
    89e0:	e28bd000 	add	sp, fp, #0
    89e4:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    89e8:	e12fff1e 	bx	lr

000089ec <uart_put_byte>:
    89ec:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    89f0:	e28db000 	add	fp, sp, #0
    89f4:	e24dd00c 	sub	sp, sp, #12
    89f8:	e1a03000 	mov	r3, r0
    89fc:	e54b3005 	strb	r3, [fp, #-5]
    8a00:	e3053054 	movw	r3, #20564	; 0x5054
    8a04:	e3433f21 	movt	r3, #16161	; 0x3f21
    8a08:	e5933000 	ldr	r3, [r3]
    8a0c:	e2033020 	and	r3, r3, #32
    8a10:	e3530020 	cmp	r3, #32
    8a14:	0a000000 	beq	8a1c <uart_put_byte+0x30>
    8a18:	eafffff8 	b	8a00 <uart_put_byte+0x14>
    8a1c:	e320f000 	nop	{0}
    8a20:	e3053040 	movw	r3, #20544	; 0x5040
    8a24:	e3433f21 	movt	r3, #16161	; 0x3f21
    8a28:	e55b2005 	ldrb	r2, [fp, #-5]
    8a2c:	e5832000 	str	r2, [r3]
    8a30:	e320f000 	nop	{0}
    8a34:	e28bd000 	add	sp, fp, #0
    8a38:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8a3c:	e12fff1e 	bx	lr

00008a40 <uart_get_byte>:
    8a40:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8a44:	e28db000 	add	fp, sp, #0
    8a48:	e3053054 	movw	r3, #20564	; 0x5054
    8a4c:	e3433f21 	movt	r3, #16161	; 0x3f21
    8a50:	e5933000 	ldr	r3, [r3]
    8a54:	e2033001 	and	r3, r3, #1
    8a58:	e3530001 	cmp	r3, #1
    8a5c:	0a000000 	beq	8a64 <uart_get_byte+0x24>
    8a60:	eafffff8 	b	8a48 <uart_get_byte+0x8>
    8a64:	e320f000 	nop	{0}
    8a68:	e3053040 	movw	r3, #20544	; 0x5040
    8a6c:	e3433f21 	movt	r3, #16161	; 0x3f21
    8a70:	e5933000 	ldr	r3, [r3]
    8a74:	e6ef3073 	uxtb	r3, r3
    8a78:	e1a00003 	mov	r0, r3
    8a7c:	e28bd000 	add	sp, fp, #0
    8a80:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8a84:	e12fff1e 	bx	lr

00008a88 <start_countdown>:
    8a88:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8a8c:	e28db000 	add	fp, sp, #0
    8a90:	e3a03b2d 	mov	r3, #46080	; 0xb400
    8a94:	e3433f00 	movt	r3, #16128	; 0x3f00
    8a98:	e3e02000 	mvn	r2, #0
    8a9c:	e5832000 	str	r2, [r3]
    8aa0:	e30b3418 	movw	r3, #46104	; 0xb418
    8aa4:	e3433f00 	movt	r3, #16128	; 0x3f00
    8aa8:	e3e02000 	mvn	r2, #0
    8aac:	e5832000 	str	r2, [r3]
    8ab0:	e30b3408 	movw	r3, #46088	; 0xb408
    8ab4:	e3433f00 	movt	r3, #16128	; 0x3f00
    8ab8:	e3a02082 	mov	r2, #130	; 0x82
    8abc:	e5832000 	str	r2, [r3]
    8ac0:	e30b341c 	movw	r3, #46108	; 0xb41c
    8ac4:	e3433f00 	movt	r3, #16128	; 0x3f00
    8ac8:	e3a02001 	mov	r2, #1
    8acc:	e5832000 	str	r2, [r3]
    8ad0:	e320f000 	nop	{0}
    8ad4:	e28bd000 	add	sp, fp, #0
    8ad8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8adc:	e12fff1e 	bx	lr

00008ae0 <timer_latch>:
    8ae0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8ae4:	e28db000 	add	fp, sp, #0
    8ae8:	e3a03b2d 	mov	r3, #46080	; 0xb400
    8aec:	e3433f00 	movt	r3, #16128	; 0x3f00
    8af0:	e5932000 	ldr	r2, [r3]
    8af4:	e30b3404 	movw	r3, #46084	; 0xb404
    8af8:	e3433f00 	movt	r3, #16128	; 0x3f00
    8afc:	e5933000 	ldr	r3, [r3]
    8b00:	e0423003 	sub	r3, r2, r3
    8b04:	e1a00003 	mov	r0, r3
    8b08:	e28bd000 	add	sp, fp, #0
    8b0c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8b10:	e12fff1e 	bx	lr

00008b14 <timer_start>:
    8b14:	e92d4800 	push	{fp, lr}
    8b18:	e28db004 	add	fp, sp, #4
    8b1c:	e24dd010 	sub	sp, sp, #16
    8b20:	e50b0010 	str	r0, [fp, #-16]
    8b24:	e51b1010 	ldr	r1, [fp, #-16]
    8b28:	e30b0280 	movw	r0, #45696	; 0xb280
    8b2c:	e3400ee6 	movt	r0, #3814	; 0xee6
    8b30:	eb000130 	bl	8ff8 <__divsi3>
    8b34:	e1a03000 	mov	r3, r0
    8b38:	e50b3008 	str	r3, [fp, #-8]
    8b3c:	e3a03b2d 	mov	r3, #46080	; 0xb400
    8b40:	e3433f00 	movt	r3, #16128	; 0x3f00
    8b44:	e51b2008 	ldr	r2, [fp, #-8]
    8b48:	e5832000 	str	r2, [r3]
    8b4c:	e51b1008 	ldr	r1, [fp, #-8]
    8b50:	e30a0114 	movw	r0, #41236	; 0xa114
    8b54:	e3400000 	movt	r0, #0
    8b58:	ebfffeca 	bl	8688 <printk>
    8b5c:	e30b3408 	movw	r3, #46088	; 0xb408
    8b60:	e3433f00 	movt	r3, #16128	; 0x3f00
    8b64:	e3a020a2 	mov	r2, #162	; 0xa2
    8b68:	e5832000 	str	r2, [r3]
    8b6c:	e320f000 	nop	{0}
    8b70:	e24bd004 	sub	sp, fp, #4
    8b74:	e8bd8800 	pop	{fp, pc}

00008b78 <timer_stop>:
    8b78:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8b7c:	e28db000 	add	fp, sp, #0
    8b80:	e30b3408 	movw	r3, #46088	; 0xb408
    8b84:	e3433f00 	movt	r3, #16128	; 0x3f00
    8b88:	e3a02000 	mov	r2, #0
    8b8c:	e5832000 	str	r2, [r3]
    8b90:	e320f000 	nop	{0}
    8b94:	e28bd000 	add	sp, fp, #0
    8b98:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8b9c:	e12fff1e 	bx	lr

00008ba0 <timer_is_pending>:
    8ba0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8ba4:	e28db000 	add	fp, sp, #0
    8ba8:	e30b3414 	movw	r3, #46100	; 0xb414
    8bac:	e3433f00 	movt	r3, #16128	; 0x3f00
    8bb0:	e5933000 	ldr	r3, [r3]
    8bb4:	e2033001 	and	r3, r3, #1
    8bb8:	e1a00003 	mov	r0, r3
    8bbc:	e28bd000 	add	sp, fp, #0
    8bc0:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8bc4:	e12fff1e 	bx	lr

00008bc8 <timer_clear_pending>:
    8bc8:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8bcc:	e28db000 	add	fp, sp, #0
    8bd0:	e30b340c 	movw	r3, #46092	; 0xb40c
    8bd4:	e3433f00 	movt	r3, #16128	; 0x3f00
    8bd8:	e3a02000 	mov	r2, #0
    8bdc:	e5832000 	str	r2, [r3]
    8be0:	e320f000 	nop	{0}
    8be4:	e28bd000 	add	sp, fp, #0
    8be8:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8bec:	e12fff1e 	bx	lr

00008bf0 <timer_value>:
    8bf0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8bf4:	e28db000 	add	fp, sp, #0
    8bf8:	e3a03b2d 	mov	r3, #46080	; 0xb400
    8bfc:	e3433f00 	movt	r3, #16128	; 0x3f00
    8c00:	e5933000 	ldr	r3, [r3]
    8c04:	e1a00003 	mov	r0, r3
    8c08:	e28bd000 	add	sp, fp, #0
    8c0c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8c10:	e12fff1e 	bx	lr

00008c14 <reset_vector>:
    8c14:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8c18:	e28db000 	add	fp, sp, #0
    8c1c:	e320f000 	nop	{0}
    8c20:	e28bd000 	add	sp, fp, #0
    8c24:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8c28:	e25ef004 	subs	pc, lr, #4

00008c2c <undefined_instruction_vector>:
    8c2c:	e92d581f 	push	{r0, r1, r2, r3, r4, fp, ip, lr}
    8c30:	e28db01c 	add	fp, sp, #28
    8c34:	e30a0128 	movw	r0, #41256	; 0xa128
    8c38:	e3400000 	movt	r0, #0
    8c3c:	ebfffe91 	bl	8688 <printk>
    8c40:	eafffffb 	b	8c34 <undefined_instruction_vector+0x8>

00008c44 <software_interrupt_vector>:
    8c44:	e92d581f 	push	{r0, r1, r2, r3, r4, fp, ip, lr}
    8c48:	e28db01c 	add	fp, sp, #28
    8c4c:	e30a0148 	movw	r0, #41288	; 0xa148
    8c50:	e3400000 	movt	r0, #0
    8c54:	ebfffe8b 	bl	8688 <printk>
    8c58:	eafffffb 	b	8c4c <software_interrupt_vector+0x8>

00008c5c <prefetch_abort_vector>:
    8c5c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8c60:	e28db000 	add	fp, sp, #0
    8c64:	e320f000 	nop	{0}
    8c68:	e28bd000 	add	sp, fp, #0
    8c6c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8c70:	e25ef004 	subs	pc, lr, #4

00008c74 <data_abort_vector>:
    8c74:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8c78:	e28db000 	add	fp, sp, #0
    8c7c:	e320f000 	nop	{0}
    8c80:	e28bd000 	add	sp, fp, #0
    8c84:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8c88:	e25ef004 	subs	pc, lr, #4

00008c8c <irq_asm_handler>:
    8c8c:	e24ee004 	sub	lr, lr, #4
    8c90:	e92d581f 	push	{r0, r1, r2, r3, r4, fp, ip, lr}
    8c94:	e28db01c 	add	fp, sp, #28
    8c98:	e30a0164 	movw	r0, #41316	; 0xa164
    8c9c:	e3400000 	movt	r0, #0
    8ca0:	ebfffe78 	bl	8688 <printk>
    8ca4:	e320f000 	nop	{0}
    8ca8:	e24bd01c 	sub	sp, fp, #28
    8cac:	e8fd981f 	ldm	sp!, {r0, r1, r2, r3, r4, fp, ip, pc}^

00008cb0 <fast_interrupt_vector>:
    8cb0:	e24db004 	sub	fp, sp, #4
    8cb4:	e320f000 	nop	{0}
    8cb8:	e28bd004 	add	sp, fp, #4
    8cbc:	e25ef004 	subs	pc, lr, #4

00008cc0 <RPI_GetIrqController>:
    8cc0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8cc4:	e28db000 	add	fp, sp, #0
    8cc8:	e30b3018 	movw	r3, #45080	; 0xb018
    8ccc:	e3403000 	movt	r3, #0
    8cd0:	e5933000 	ldr	r3, [r3]
    8cd4:	e1a00003 	mov	r0, r3
    8cd8:	e28bd000 	add	sp, fp, #0
    8cdc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8ce0:	e12fff1e 	bx	lr

00008ce4 <RPI_EnableARMTimerInterrupt>:
    8ce4:	e92d4800 	push	{fp, lr}
    8ce8:	e28db004 	add	fp, sp, #4
    8cec:	ebfffff3 	bl	8cc0 <RPI_GetIrqController>
    8cf0:	e1a03000 	mov	r3, r0
    8cf4:	e3a02001 	mov	r2, #1
    8cf8:	e5832018 	str	r2, [r3, #24]
    8cfc:	e320f000 	nop	{0}
    8d00:	e8bd8800 	pop	{fp, pc}

00008d04 <delay_cycles>:
    8d04:	e2500001 	subs	r0, r0, #1
    8d08:	1afffffd 	bne	8d04 <delay_cycles>
    8d0c:	e1a0f00e 	mov	pc, lr

00008d10 <read_cpsr>:
    8d10:	e10f0000 	mrs	r0, CPSR
    8d14:	e1a0f00e 	mov	pc, lr

00008d18 <write_cpsr>:
    8d18:	e129f000 	msr	CPSR_fc, r0
    8d1c:	e1a0f00e 	mov	pc, lr

00008d20 <disable_interrupts>:
    8d20:	e10f0000 	mrs	r0, CPSR
    8d24:	e3a01d07 	mov	r1, #448	; 0x1c0
    8d28:	e1800001 	orr	r0, r0, r1
    8d2c:	e129f000 	msr	CPSR_fc, r0
    8d30:	e1a0f00e 	mov	pc, lr

00008d34 <enable_interrupts>:
    8d34:	e10f0000 	mrs	r0, CPSR
    8d38:	e3a01d07 	mov	r1, #448	; 0x1c0
    8d3c:	e1c00001 	bic	r0, r0, r1
    8d40:	e129f000 	msr	CPSR_fc, r0
    8d44:	e1a0f00e 	mov	pc, lr

00008d48 <func2>:
    8d48:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8d4c:	e28db000 	add	fp, sp, #0
    8d50:	e24dd00c 	sub	sp, sp, #12
    8d54:	e50b0008 	str	r0, [fp, #-8]
    8d58:	e50b100c 	str	r1, [fp, #-12]
    8d5c:	e51b200c 	ldr	r2, [fp, #-12]
    8d60:	e1a03002 	mov	r3, r2
    8d64:	e1a03103 	lsl	r3, r3, #2
    8d68:	e0833002 	add	r3, r3, r2
    8d6c:	e1a02103 	lsl	r2, r3, #2
    8d70:	e0832002 	add	r2, r3, r2
    8d74:	e51b3008 	ldr	r3, [fp, #-8]
    8d78:	e0823003 	add	r3, r2, r3
    8d7c:	e1a00003 	mov	r0, r3
    8d80:	e24bd000 	sub	sp, fp, #0
    8d84:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8d88:	e12fff1e 	bx	lr

00008d8c <unoptimized>:
    8d8c:	e92d4870 	push	{r4, r5, r6, fp, lr}
    8d90:	e28db010 	add	fp, sp, #16
    8d94:	e24dd01c 	sub	sp, sp, #28
    8d98:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
    8d9c:	e3a03000 	mov	r3, #0
    8da0:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    8da4:	ea000037 	b	8e88 <unoptimized+0xfc>
    8da8:	e3a03011 	mov	r3, #17
    8dac:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    8db0:	e3a03000 	mov	r3, #0
    8db4:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    8db8:	ea00002c 	b	8e70 <unoptimized+0xe4>
    8dbc:	e3a03002 	mov	r3, #2
    8dc0:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8dc4:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8dc8:	e2833001 	add	r3, r3, #1
    8dcc:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8dd0:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8dd4:	e2432002 	sub	r2, r3, #2
    8dd8:	e1a03002 	mov	r3, r2
    8ddc:	e1a03083 	lsl	r3, r3, #1
    8de0:	e0833002 	add	r3, r3, r2
    8de4:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8de8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8dec:	e1a03103 	lsl	r3, r3, #2
    8df0:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8df4:	e0824003 	add	r4, r2, r3
    8df8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8dfc:	e1a03103 	lsl	r3, r3, #2
    8e00:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8e04:	e0823003 	add	r3, r2, r3
    8e08:	e5933000 	ldr	r3, [r3]
    8e0c:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    8e10:	e0030392 	mul	r3, r2, r3
    8e14:	e2835010 	add	r5, r3, #16
    8e18:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8e1c:	e1a03103 	lsl	r3, r3, #2
    8e20:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8e24:	e0823003 	add	r3, r2, r3
    8e28:	e5936000 	ldr	r6, [r3]
    8e2c:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    8e30:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
    8e34:	ebffffc3 	bl	8d48 <func2>
    8e38:	e1a03000 	mov	r3, r0
    8e3c:	e0030396 	mul	r3, r6, r3
    8e40:	e0852003 	add	r2, r5, r3
    8e44:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8e48:	e0823003 	add	r3, r2, r3
    8e4c:	e283200f 	add	r2, r3, #15
    8e50:	e3530000 	cmp	r3, #0
    8e54:	b1a03002 	movlt	r3, r2
    8e58:	a1a03003 	movge	r3, r3
    8e5c:	e1a03243 	asr	r3, r3, #4
    8e60:	e5843000 	str	r3, [r4]
    8e64:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8e68:	e2833001 	add	r3, r3, #1
    8e6c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    8e70:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8e74:	e3530f7d 	cmp	r3, #500	; 0x1f4
    8e78:	baffffcf 	blt	8dbc <unoptimized+0x30>
    8e7c:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8e80:	e2833001 	add	r3, r3, #1
    8e84:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    8e88:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8e8c:	e3530f7d 	cmp	r3, #500	; 0x1f4
    8e90:	baffffc4 	blt	8da8 <unoptimized+0x1c>
    8e94:	e24bd010 	sub	sp, fp, #16
    8e98:	e8bd4870 	pop	{r4, r5, r6, fp, lr}
    8e9c:	e12fff1e 	bx	lr

00008ea0 <func3>:
    8ea0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8ea4:	e28db000 	add	fp, sp, #0
    8ea8:	e24dd00c 	sub	sp, sp, #12
    8eac:	e50b0008 	str	r0, [fp, #-8]
    8eb0:	e50b100c 	str	r1, [fp, #-12]
    8eb4:	e51b200c 	ldr	r2, [fp, #-12]
    8eb8:	e1a03002 	mov	r3, r2
    8ebc:	e1a03103 	lsl	r3, r3, #2
    8ec0:	e0833002 	add	r3, r3, r2
    8ec4:	e1a02103 	lsl	r2, r3, #2
    8ec8:	e0832002 	add	r2, r3, r2
    8ecc:	e51b3008 	ldr	r3, [fp, #-8]
    8ed0:	e0823003 	add	r3, r2, r3
    8ed4:	e1a00003 	mov	r0, r3
    8ed8:	e24bd000 	sub	sp, fp, #0
    8edc:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8ee0:	e12fff1e 	bx	lr

00008ee4 <optimized>:
    8ee4:	e92d4870 	push	{r4, r5, r6, fp, lr}
    8ee8:	e28db010 	add	fp, sp, #16
    8eec:	e24dd01c 	sub	sp, sp, #28
    8ef0:	e50b0028 	str	r0, [fp, #-40]	; 0xffffffd8
    8ef4:	e3a03000 	mov	r3, #0
    8ef8:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    8efc:	ea000037 	b	8fe0 <optimized+0xfc>
    8f00:	e3a03011 	mov	r3, #17
    8f04:	e50b3020 	str	r3, [fp, #-32]	; 0xffffffe0
    8f08:	e3a03000 	mov	r3, #0
    8f0c:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    8f10:	ea00002c 	b	8fc8 <optimized+0xe4>
    8f14:	e3a03002 	mov	r3, #2
    8f18:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8f1c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8f20:	e2833001 	add	r3, r3, #1
    8f24:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8f28:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8f2c:	e2432002 	sub	r2, r3, #2
    8f30:	e1a03002 	mov	r3, r2
    8f34:	e1a03083 	lsl	r3, r3, #1
    8f38:	e0833002 	add	r3, r3, r2
    8f3c:	e50b3024 	str	r3, [fp, #-36]	; 0xffffffdc
    8f40:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8f44:	e1a03103 	lsl	r3, r3, #2
    8f48:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8f4c:	e0824003 	add	r4, r2, r3
    8f50:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8f54:	e1a03103 	lsl	r3, r3, #2
    8f58:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8f5c:	e0823003 	add	r3, r2, r3
    8f60:	e5933000 	ldr	r3, [r3]
    8f64:	e51b2020 	ldr	r2, [fp, #-32]	; 0xffffffe0
    8f68:	e0030392 	mul	r3, r2, r3
    8f6c:	e2835010 	add	r5, r3, #16
    8f70:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8f74:	e1a03103 	lsl	r3, r3, #2
    8f78:	e51b2028 	ldr	r2, [fp, #-40]	; 0xffffffd8
    8f7c:	e0823003 	add	r3, r2, r3
    8f80:	e5936000 	ldr	r6, [r3]
    8f84:	e51b0018 	ldr	r0, [fp, #-24]	; 0xffffffe8
    8f88:	e51b101c 	ldr	r1, [fp, #-28]	; 0xffffffe4
    8f8c:	ebffffc3 	bl	8ea0 <func3>
    8f90:	e1a03000 	mov	r3, r0
    8f94:	e0030396 	mul	r3, r6, r3
    8f98:	e0852003 	add	r2, r5, r3
    8f9c:	e51b3024 	ldr	r3, [fp, #-36]	; 0xffffffdc
    8fa0:	e0823003 	add	r3, r2, r3
    8fa4:	e283200f 	add	r2, r3, #15
    8fa8:	e3530000 	cmp	r3, #0
    8fac:	b1a03002 	movlt	r3, r2
    8fb0:	a1a03003 	movge	r3, r3
    8fb4:	e1a03243 	asr	r3, r3, #4
    8fb8:	e5843000 	str	r3, [r4]
    8fbc:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8fc0:	e2833001 	add	r3, r3, #1
    8fc4:	e50b301c 	str	r3, [fp, #-28]	; 0xffffffe4
    8fc8:	e51b301c 	ldr	r3, [fp, #-28]	; 0xffffffe4
    8fcc:	e3530f7d 	cmp	r3, #500	; 0x1f4
    8fd0:	baffffcf 	blt	8f14 <optimized+0x30>
    8fd4:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8fd8:	e2833001 	add	r3, r3, #1
    8fdc:	e50b3018 	str	r3, [fp, #-24]	; 0xffffffe8
    8fe0:	e51b3018 	ldr	r3, [fp, #-24]	; 0xffffffe8
    8fe4:	e3530f7d 	cmp	r3, #500	; 0x1f4
    8fe8:	baffffc4 	blt	8f00 <optimized+0x1c>
    8fec:	e24bd010 	sub	sp, fp, #16
    8ff0:	e8bd4870 	pop	{r4, r5, r6, fp, lr}
    8ff4:	e12fff1e 	bx	lr

00008ff8 <__divsi3>:
    8ff8:	e3510000 	cmp	r1, #0
    8ffc:	0a000043 	beq	9110 <.divsi3_skip_div0_test+0x110>

00009000 <.divsi3_skip_div0_test>:
    9000:	e020c001 	eor	ip, r0, r1
    9004:	42611000 	rsbmi	r1, r1, #0
    9008:	e2512001 	subs	r2, r1, #1
    900c:	0a000027 	beq	90b0 <.divsi3_skip_div0_test+0xb0>
    9010:	e1b03000 	movs	r3, r0
    9014:	42603000 	rsbmi	r3, r0, #0
    9018:	e1530001 	cmp	r3, r1
    901c:	9a000026 	bls	90bc <.divsi3_skip_div0_test+0xbc>
    9020:	e1110002 	tst	r1, r2
    9024:	0a000028 	beq	90cc <.divsi3_skip_div0_test+0xcc>
    9028:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    902c:	01a01181 	lsleq	r1, r1, #3
    9030:	03a02008 	moveq	r2, #8
    9034:	13a02001 	movne	r2, #1
    9038:	e3510201 	cmp	r1, #268435456	; 0x10000000
    903c:	31510003 	cmpcc	r1, r3
    9040:	31a01201 	lslcc	r1, r1, #4
    9044:	31a02202 	lslcc	r2, r2, #4
    9048:	3afffffa 	bcc	9038 <.divsi3_skip_div0_test+0x38>
    904c:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    9050:	31510003 	cmpcc	r1, r3
    9054:	31a01081 	lslcc	r1, r1, #1
    9058:	31a02082 	lslcc	r2, r2, #1
    905c:	3afffffa 	bcc	904c <.divsi3_skip_div0_test+0x4c>
    9060:	e3a00000 	mov	r0, #0
    9064:	e1530001 	cmp	r3, r1
    9068:	20433001 	subcs	r3, r3, r1
    906c:	21800002 	orrcs	r0, r0, r2
    9070:	e15300a1 	cmp	r3, r1, lsr #1
    9074:	204330a1 	subcs	r3, r3, r1, lsr #1
    9078:	218000a2 	orrcs	r0, r0, r2, lsr #1
    907c:	e1530121 	cmp	r3, r1, lsr #2
    9080:	20433121 	subcs	r3, r3, r1, lsr #2
    9084:	21800122 	orrcs	r0, r0, r2, lsr #2
    9088:	e15301a1 	cmp	r3, r1, lsr #3
    908c:	204331a1 	subcs	r3, r3, r1, lsr #3
    9090:	218001a2 	orrcs	r0, r0, r2, lsr #3
    9094:	e3530000 	cmp	r3, #0
    9098:	11b02222 	lsrsne	r2, r2, #4
    909c:	11a01221 	lsrne	r1, r1, #4
    90a0:	1affffef 	bne	9064 <.divsi3_skip_div0_test+0x64>
    90a4:	e35c0000 	cmp	ip, #0
    90a8:	42600000 	rsbmi	r0, r0, #0
    90ac:	e12fff1e 	bx	lr
    90b0:	e13c0000 	teq	ip, r0
    90b4:	42600000 	rsbmi	r0, r0, #0
    90b8:	e12fff1e 	bx	lr
    90bc:	33a00000 	movcc	r0, #0
    90c0:	01a00fcc 	asreq	r0, ip, #31
    90c4:	03800001 	orreq	r0, r0, #1
    90c8:	e12fff1e 	bx	lr
    90cc:	e3510801 	cmp	r1, #65536	; 0x10000
    90d0:	21a01821 	lsrcs	r1, r1, #16
    90d4:	23a02010 	movcs	r2, #16
    90d8:	33a02000 	movcc	r2, #0
    90dc:	e3510c01 	cmp	r1, #256	; 0x100
    90e0:	21a01421 	lsrcs	r1, r1, #8
    90e4:	22822008 	addcs	r2, r2, #8
    90e8:	e3510010 	cmp	r1, #16
    90ec:	21a01221 	lsrcs	r1, r1, #4
    90f0:	22822004 	addcs	r2, r2, #4
    90f4:	e3510004 	cmp	r1, #4
    90f8:	82822003 	addhi	r2, r2, #3
    90fc:	908220a1 	addls	r2, r2, r1, lsr #1
    9100:	e35c0000 	cmp	ip, #0
    9104:	e1a00233 	lsr	r0, r3, r2
    9108:	42600000 	rsbmi	r0, r0, #0
    910c:	e12fff1e 	bx	lr
    9110:	e3500000 	cmp	r0, #0
    9114:	c3e00102 	mvngt	r0, #-2147483648	; 0x80000000
    9118:	b3a00102 	movlt	r0, #-2147483648	; 0x80000000
    911c:	ea000007 	b	9140 <__aeabi_idiv0>

00009120 <__aeabi_idivmod>:
    9120:	e3510000 	cmp	r1, #0
    9124:	0afffff9 	beq	9110 <.divsi3_skip_div0_test+0x110>
    9128:	e92d4003 	push	{r0, r1, lr}
    912c:	ebffffb3 	bl	9000 <.divsi3_skip_div0_test>
    9130:	e8bd4006 	pop	{r1, r2, lr}
    9134:	e0030092 	mul	r3, r2, r0
    9138:	e0411003 	sub	r1, r1, r3
    913c:	e12fff1e 	bx	lr

00009140 <__aeabi_idiv0>:
    9140:	e12fff1e 	bx	lr

00009144 <__aeabi_uldivmod>:
    9144:	e3530000 	cmp	r3, #0
    9148:	03520000 	cmpeq	r2, #0
    914c:	1a000004 	bne	9164 <__aeabi_uldivmod+0x20>
    9150:	e3510000 	cmp	r1, #0
    9154:	03500000 	cmpeq	r0, #0
    9158:	13e01000 	mvnne	r1, #0
    915c:	13e00000 	mvnne	r0, #0
    9160:	eafffff6 	b	9140 <__aeabi_idiv0>
    9164:	e24dd008 	sub	sp, sp, #8
    9168:	e92d6000 	push	{sp, lr}
    916c:	eb000003 	bl	9180 <__udivmoddi4>
    9170:	e59de004 	ldr	lr, [sp, #4]
    9174:	e28dd008 	add	sp, sp, #8
    9178:	e8bd000c 	pop	{r2, r3}
    917c:	e12fff1e 	bx	lr

00009180 <__udivmoddi4>:
    9180:	e1510003 	cmp	r1, r3
    9184:	01500002 	cmpeq	r0, r2
    9188:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    918c:	e1a04000 	mov	r4, r0
    9190:	33a00000 	movcc	r0, #0
    9194:	e1a05001 	mov	r5, r1
    9198:	e59d8020 	ldr	r8, [sp, #32]
    919c:	31a01000 	movcc	r1, r0
    91a0:	3a00003e 	bcc	92a0 <__udivmoddi4+0x120>
    91a4:	e1a01003 	mov	r1, r3
    91a8:	e1a00002 	mov	r0, r2
    91ac:	e1a06002 	mov	r6, r2
    91b0:	e1a07003 	mov	r7, r3
    91b4:	eb00003d 	bl	92b0 <__clzdi2>
    91b8:	e1a01005 	mov	r1, r5
    91bc:	e1a09000 	mov	r9, r0
    91c0:	e1a00004 	mov	r0, r4
    91c4:	eb000039 	bl	92b0 <__clzdi2>
    91c8:	e049c000 	sub	ip, r9, r0
    91cc:	e24c9020 	sub	r9, ip, #32
    91d0:	e1a03c17 	lsl	r3, r7, ip
    91d4:	e1833916 	orr	r3, r3, r6, lsl r9
    91d8:	e26ca020 	rsb	sl, ip, #32
    91dc:	e1833a36 	orr	r3, r3, r6, lsr sl
    91e0:	e1550003 	cmp	r5, r3
    91e4:	e1a02c16 	lsl	r2, r6, ip
    91e8:	01540002 	cmpeq	r4, r2
    91ec:	33a00000 	movcc	r0, #0
    91f0:	31a01000 	movcc	r1, r0
    91f4:	3a000005 	bcc	9210 <__udivmoddi4+0x90>
    91f8:	e3a00001 	mov	r0, #1
    91fc:	e0544002 	subs	r4, r4, r2
    9200:	e1a01910 	lsl	r1, r0, r9
    9204:	e1811a30 	orr	r1, r1, r0, lsr sl
    9208:	e0c55003 	sbc	r5, r5, r3
    920c:	e1a00c10 	lsl	r0, r0, ip
    9210:	e35c0000 	cmp	ip, #0
    9214:	0a000021 	beq	92a0 <__udivmoddi4+0x120>
    9218:	e1a060a2 	lsr	r6, r2, #1
    921c:	e1a0e00c 	mov	lr, ip
    9220:	e1866f83 	orr	r6, r6, r3, lsl #31
    9224:	e1a070a3 	lsr	r7, r3, #1
    9228:	ea000007 	b	924c <__udivmoddi4+0xcc>
    922c:	e0543006 	subs	r3, r4, r6
    9230:	e0c52007 	sbc	r2, r5, r7
    9234:	e0933003 	adds	r3, r3, r3
    9238:	e0a22002 	adc	r2, r2, r2
    923c:	e2934001 	adds	r4, r3, #1
    9240:	e2a25000 	adc	r5, r2, #0
    9244:	e25ee001 	subs	lr, lr, #1
    9248:	0a000006 	beq	9268 <__udivmoddi4+0xe8>
    924c:	e1550007 	cmp	r5, r7
    9250:	01540006 	cmpeq	r4, r6
    9254:	2afffff4 	bcs	922c <__udivmoddi4+0xac>
    9258:	e0944004 	adds	r4, r4, r4
    925c:	e0a55005 	adc	r5, r5, r5
    9260:	e25ee001 	subs	lr, lr, #1
    9264:	1afffff8 	bne	924c <__udivmoddi4+0xcc>
    9268:	e1a03c34 	lsr	r3, r4, ip
    926c:	e1833a15 	orr	r3, r3, r5, lsl sl
    9270:	e1833935 	orr	r3, r3, r5, lsr r9
    9274:	e0900004 	adds	r0, r0, r4
    9278:	e1a04003 	mov	r4, r3
    927c:	e1a02c35 	lsr	r2, r5, ip
    9280:	e0a11005 	adc	r1, r1, r5
    9284:	e1a05002 	mov	r5, r2
    9288:	e1a03c12 	lsl	r3, r2, ip
    928c:	e1833914 	orr	r3, r3, r4, lsl r9
    9290:	e1a0cc14 	lsl	ip, r4, ip
    9294:	e050000c 	subs	r0, r0, ip
    9298:	e1833a34 	orr	r3, r3, r4, lsr sl
    929c:	e0c11003 	sbc	r1, r1, r3
    92a0:	e3580000 	cmp	r8, #0
    92a4:	18880030 	stmne	r8, {r4, r5}
    92a8:	e8bd47f0 	pop	{r4, r5, r6, r7, r8, r9, sl, lr}
    92ac:	e12fff1e 	bx	lr

000092b0 <__clzdi2>:
    92b0:	e92d4010 	push	{r4, lr}
    92b4:	e3510000 	cmp	r1, #0
    92b8:	1a000002 	bne	92c8 <__clzdi2+0x18>
    92bc:	eb000005 	bl	92d8 <__clzsi2>
    92c0:	e2800020 	add	r0, r0, #32
    92c4:	ea000001 	b	92d0 <__clzdi2+0x20>
    92c8:	e1a00001 	mov	r0, r1
    92cc:	eb000001 	bl	92d8 <__clzsi2>
    92d0:	e8bd4010 	pop	{r4, lr}
    92d4:	e12fff1e 	bx	lr

000092d8 <__clzsi2>:
    92d8:	e3a0101c 	mov	r1, #28
    92dc:	e3500801 	cmp	r0, #65536	; 0x10000
    92e0:	21a00820 	lsrcs	r0, r0, #16
    92e4:	22411010 	subcs	r1, r1, #16
    92e8:	e3500c01 	cmp	r0, #256	; 0x100
    92ec:	21a00420 	lsrcs	r0, r0, #8
    92f0:	22411008 	subcs	r1, r1, #8
    92f4:	e3500010 	cmp	r0, #16
    92f8:	21a00220 	lsrcs	r0, r0, #4
    92fc:	22411004 	subcs	r1, r1, #4
    9300:	e28f2008 	add	r2, pc, #8
    9304:	e7d20000 	ldrb	r0, [r2, r0]
    9308:	e0800001 	add	r0, r0, r1
    930c:	e12fff1e 	bx	lr
    9310:	02020304 	andeq	r0, r2, #4, 6	; 0x10000000
    9314:	01010101 	tsteq	r1, r1, lsl #2
	...

Disassembly of section .text.startup:

00009320 <_start>:
    9320:	e59ff018 	ldr	pc, [pc, #24]	; 9340 <_reset_h>
    9324:	e59ff018 	ldr	pc, [pc, #24]	; 9344 <_undefined_instruction_vector_h>
    9328:	e59ff018 	ldr	pc, [pc, #24]	; 9348 <_software_interrupt_vector_h>
    932c:	e59ff018 	ldr	pc, [pc, #24]	; 934c <_prefetch_abort_vector_h>
    9330:	e59ff018 	ldr	pc, [pc, #24]	; 9350 <_data_abort_vector_h>
    9334:	e59ff018 	ldr	pc, [pc, #24]	; 9354 <_unused_handler_h>
    9338:	e59ff018 	ldr	pc, [pc, #24]	; 9358 <_irq_asm_handler_h>
    933c:	e59ff018 	ldr	pc, [pc, #24]	; 935c <_fast_interrupt_vector_h>

00009340 <_reset_h>:
    9340:	00009360 	andeq	r9, r0, r0, ror #6

00009344 <_undefined_instruction_vector_h>:
    9344:	00008c2c 	andeq	r8, r0, ip, lsr #24

00009348 <_software_interrupt_vector_h>:
    9348:	00008c44 	andeq	r8, r0, r4, asr #24

0000934c <_prefetch_abort_vector_h>:
    934c:	00008c5c 	andeq	r8, r0, ip, asr ip

00009350 <_data_abort_vector_h>:
    9350:	00008c74 	andeq	r8, r0, r4, ror ip

00009354 <_unused_handler_h>:
    9354:	00009360 	andeq	r9, r0, r0, ror #6

00009358 <_irq_asm_handler_h>:
    9358:	000093e8 	andeq	r9, r0, r8, ror #7

0000935c <_fast_interrupt_vector_h>:
    935c:	00008cb0 			; <UNDEFINED> instruction: 0x00008cb0

00009360 <_reset_>:
    9360:	e10fc000 	mrs	ip, CPSR
    9364:	e20cc01f 	and	ip, ip, #31
    9368:	e59fb0b0 	ldr	fp, [pc, #176]	; 9420 <_enable_interrupts+0x14>
    936c:	e58bc000 	str	ip, [fp]
    9370:	ee10bf10 	mrc	15, 0, fp, cr0, cr0, {0}
    9374:	e59fa0a8 	ldr	sl, [pc, #168]	; 9424 <_enable_interrupts+0x18>
    9378:	e15b000a 	cmp	fp, sl
    937c:	0a00000b 	beq	93b0 <_setup_interrupt_table>
    9380:	e35c001a 	cmp	ip, #26
    9384:	1a000006 	bne	93a4 <_multicore_park>
    9388:	e10fc000 	mrs	ip, CPSR
    938c:	e3ccc01f 	bic	ip, ip, #31
    9390:	e38cc0d3 	orr	ip, ip, #211	; 0xd3
    9394:	e16ff00c 	msr	SPSR_fsxc, ip
    9398:	e28fe004 	add	lr, pc, #4
    939c:	e12ef30e 	msr	ELR_hyp, lr
    93a0:	e160006e 	eret

000093a4 <_multicore_park>:
    93a4:	ee10cfb0 	mrc	15, 0, ip, cr0, cr0, {5}
    93a8:	e21cc003 	ands	ip, ip, #3
    93ac:	1a00000c 	bne	93e4 <_inf_loop>

000093b0 <_setup_interrupt_table>:
    93b0:	e3a00902 	mov	r0, #32768	; 0x8000
    93b4:	e3a01000 	mov	r1, #0
    93b8:	e8b003fc 	ldm	r0!, {r2, r3, r4, r5, r6, r7, r8, r9}
    93bc:	e8a103fc 	stmia	r1!, {r2, r3, r4, r5, r6, r7, r8, r9}
    93c0:	e8b003fc 	ldm	r0!, {r2, r3, r4, r5, r6, r7, r8, r9}
    93c4:	e8a103fc 	stmia	r1!, {r2, r3, r4, r5, r6, r7, r8, r9}
    93c8:	e3a000d2 	mov	r0, #210	; 0xd2
    93cc:	e121f000 	msr	CPSR_c, r0
    93d0:	e3a0da07 	mov	sp, #28672	; 0x7000
    93d4:	e3a000d3 	mov	r0, #211	; 0xd3
    93d8:	e121f000 	msr	CPSR_c, r0
    93dc:	e3a0d902 	mov	sp, #32768	; 0x8000
    93e0:	ebfffbd6 	bl	8340 <kernel_main>

000093e4 <_inf_loop>:
    93e4:	eafffffe 	b	93e4 <_inf_loop>

000093e8 <irq_asm_handler>:
    93e8:	eafffffe 	b	93e8 <irq_asm_handler>

000093ec <reset_asm_handler>:
    93ec:	eaffffcb 	b	9320 <_start>

000093f0 <_cpsr_startup_mode>:
    93f0:	00000000 	andeq	r0, r0, r0

000093f4 <_osc>:
    93f4:	0337f980 	teqeq	r7, #128, 18	; 0x200000	; <UNPREDICTABLE>

000093f8 <_value>:
    93f8:	00063fff 	strdeq	r3, [r6], -pc	; <UNPREDICTABLE>

000093fc <_mbox>:
    93fc:	ff8000cc 			; <UNDEFINED> instruction: 0xff8000cc

00009400 <_get_stack_pointer>:
    9400:	e58dd000 	str	sp, [sp]
    9404:	e59d0000 	ldr	r0, [sp]
    9408:	e1a0f00e 	mov	pc, lr

0000940c <_enable_interrupts>:
    940c:	e10f0000 	mrs	r0, CPSR
    9410:	e3c00080 	bic	r0, r0, #128	; 0x80
    9414:	e121f000 	msr	CPSR_c, r0
    9418:	f1080080 	cpsie	i
    941c:	e1a0f00e 	mov	pc, lr
    9420:	000093f0 	strdeq	r9, [r0], -r0
    9424:	410fb767 	tstmi	pc, r7, ror #14

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
    a020:	00000a0d 	andeq	r0, r0, sp, lsl #20

0000a024 <.LC1>:
    a024:	0a0d6425 	beq	3630c0 <__user_program+0x630c0>
    a028:	00000000 	andeq	r0, r0, r0

0000a02c <.LC2>:
    a02c:	2b2b2b2b 	blcs	ad4ce0 <__user_program+0x7d4ce0>
    a030:	552b2b2b 	strpl	r2, [fp, #-2859]!	; 0xfffff4d5
    a034:	74706f6e 	ldrbtvc	r6, [r0], #-3950	; 0xfffff092
    a038:	7a696d69 	bvc	1a655e4 <__user_program+0x17655e4>
    a03c:	46206465 	strtmi	r6, [r0], -r5, ror #8
    a040:	74636e75 	strbtvc	r6, [r3], #-3701	; 0xfffff18b
    a044:	2b6e6f69 	blcs	1ba5df0 <__user_program+0x18a5df0>
    a048:	2b2b2b2b 	blcs	ad4cfc <__user_program+0x7d4cfc>
    a04c:	0a0d2b2b 	beq	354d00 <__user_program+0x54d00>
    a050:	00000000 	andeq	r0, r0, r0

0000a054 <.LC3>:
    a054:	65646e69 	strbvs	r6, [r4, #-3689]!	; 0xfffff197
    a058:	25203a78 	strcs	r3, [r0, #-2680]!	; 0xfffff588
    a05c:	00000a64 	andeq	r0, r0, r4, ror #20

0000a060 <.LC4>:
    a060:	203a796d 	eorscs	r7, sl, sp, ror #18
    a064:	0a752520 	beq	1d534ec <__user_program+0x1a534ec>
    a068:	00000000 	andeq	r0, r0, r0

0000a06c <.LC5>:
    a06c:	3a737973 	bcc	1ce8640 <__user_program+0x19e8640>
    a070:	0a752520 	beq	1d534f8 <__user_program+0x1a534f8>
    a074:	00000000 	andeq	r0, r0, r0

0000a078 <.LC6>:
    a078:	2b2b2b2b 	blcs	ad4d2c <__user_program+0x7d4d2c>
    a07c:	542b2b2b 	strtpl	r2, [fp], #-2859	; 0xfffff4d5
    a080:	20747365 	rsbscs	r7, r4, r5, ror #6
    a084:	6c696146 	stfvse	f6, [r9], #-280	; 0xfffffee8
    a088:	2b2b6465 	blcs	ae3224 <__user_program+0x7e3224>
    a08c:	2b2b2b2b 	blcs	ad4d40 <__user_program+0x7d4d40>
    a090:	000a0d2b 	andeq	r0, sl, fp, lsr #26

0000a094 <.LC7>:
    a094:	2b2b2b2b 	blcs	ad4d48 <__user_program+0x7d4d48>
    a098:	542b2b2b 	strtpl	r2, [fp], #-2859	; 0xfffff4d5
    a09c:	20747365 	rsbscs	r7, r4, r5, ror #6
    a0a0:	73736150 	cmnvc	r3, #80, 2
    a0a4:	2b2b6465 	blcs	ae3240 <__user_program+0x7e3240>
    a0a8:	2b2b2b2b 	blcs	ad4d5c <__user_program+0x7d4d5c>
    a0ac:	000a0d2b 	andeq	r0, sl, fp, lsr #26

0000a0b0 <.LC8>:
    a0b0:	6f430a0d 	svcvs	0x00430a0d
    a0b4:	6f72746e 	svcvs	0x0072746e
    a0b8:	6552206c 	ldrbvs	r2, [r2, #-108]	; 0xffffff94
    a0bc:	61562067 	cmpvs	r6, r7, rrx
    a0c0:	2065756c 	rsbcs	r7, r5, ip, ror #10
    a0c4:	0a0d7825 	beq	368160 <__user_program+0x68160>
    a0c8:	00000000 	andeq	r0, r0, r0

0000a0cc <.LC9>:
    a0cc:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
    a0d0:	61762072 	cmnvs	r6, r2, ror r0
    a0d4:	2065756c 	rsbcs	r7, r5, ip, ror #10
    a0d8:	0a0d7525 	beq	367574 <__user_program+0x67574>
    a0dc:	00000000 	andeq	r0, r0, r0

0000a0e0 <.LC10>:
    a0e0:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
    a0e4:	65702072 	ldrbvs	r2, [r0, #-114]!	; 0xffffff8e
    a0e8:	6e69646e 	cdpvs	4, 6, cr6, cr9, cr14, {3}
    a0ec:	64252067 	strtvs	r2, [r5], #-103	; 0xffffff99
    a0f0:	00000a0d 	andeq	r0, r0, sp, lsl #20

0000a0f4 <.LC11>:
    a0f4:	65746e49 	ldrbvs	r6, [r4, #-3657]!	; 0xfffff1b7
    a0f8:	70757272 	rsbsvc	r7, r5, r2, ror r2
    a0fc:	69542074 	ldmdbvs	r4, {r2, r4, r5, r6, sp}^
    a100:	2072656d 	rsbscs	r6, r2, sp, ror #10
    a104:	646e6550 	strbtvs	r6, [lr], #-1360	; 0xfffffab0
    a108:	20676e69 	rsbcs	r6, r7, r9, ror #28
    a10c:	0a0d7825 	beq	3681a8 <__user_program+0x681a8>
    a110:	00000000 	andeq	r0, r0, r0

0000a114 <.LC0>:
    a114:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
    a118:	61762072 	cmnvs	r6, r2, ror r0
    a11c:	2065756c 	rsbcs	r7, r5, ip, ror #10
    a120:	7525203d 	strvc	r2, [r5, #-61]!	; 0xffffffc3
    a124:	00000000 	andeq	r0, r0, r0

0000a128 <.LC0>:
    a128:	65646e75 	strbvs	r6, [r4, #-3701]!	; 0xfffff18b
    a12c:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
    a130:	6e695f64 	cdpvs	15, 6, cr5, cr9, cr4, {3}
    a134:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
    a138:	6f697463 	svcvs	0x00697463
    a13c:	65765f6e 	ldrbvs	r5, [r6, #-3950]!	; 0xfffff092
    a140:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
    a144:	00000000 	andeq	r0, r0, r0

0000a148 <.LC1>:
    a148:	74666f73 	strbtvc	r6, [r6], #-3955	; 0xfffff08d
    a14c:	65726177 	ldrbvs	r6, [r2, #-375]!	; 0xfffffe89
    a150:	746e4920 	strbtvc	r4, [lr], #-2336	; 0xfffff6e0
    a154:	75727265 	ldrbvc	r7, [r2, #-613]!	; 0xfffffd9b
    a158:	76207470 			; <UNDEFINED> instruction: 0x76207470
    a15c:	6f746365 	svcvs	0x00746365
    a160:	00000072 	andeq	r0, r0, r2, ror r0

0000a164 <.LC2>:
    a164:	52490a0d 	subpl	r0, r9, #53248	; 0xd000
    a168:	49482051 	stmdbmi	r8, {r0, r4, r6, sp}^
    a16c:	21212154 			; <UNDEFINED> instruction: 0x21212154
    a170:	000a0d21 	andeq	r0, sl, r1, lsr #26

Disassembly of section .ARM.exidx:

0000a174 <.ARM.exidx>:
    a174:	7ffff00c 	svcvc	0x00fff00c
    a178:	00000001 	andeq	r0, r0, r1

Disassembly of section .data:

0000b000 <gpio>:
    b000:	3f200000 	svccc	0x00200000

0000b004 <digits>:
    b004:	33323130 	teqcc	r2, #48, 2
    b008:	37363534 			; <UNDEFINED> instruction: 0x37363534
    b00c:	62613938 	rsbvs	r3, r1, #56, 18	; 0xe0000
    b010:	66656463 	strbtvs	r6, [r5], -r3, ror #8
    b014:	00000000 	andeq	r0, r0, r0

0000b018 <rpiIRQController>:
    b018:	3f00b200 	svccc	0x0000b200

Disassembly of section .bss:

0000c000 <array2>:
	...

0000c7d0 <array1>:
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	0000016e 	andeq	r0, r0, lr, ror #2
       4:	00000004 	andeq	r0, r0, r4
       8:	01040000 	mrseq	r0, (UNDEF: 4)
       c:	00000083 	andeq	r0, r0, r3, lsl #1
      10:	00002a0c 	andeq	r2, r0, ip, lsl #20
      14:	00013000 	andeq	r3, r1, r0
      18:	00801800 	addeq	r1, r0, r0, lsl #16
      1c:	00032800 	andeq	r2, r3, r0, lsl #16
      20:	00000000 	andeq	r0, r0, r0
      24:	08010200 	stmdaeq	r1, {r9}
      28:	00000075 	andeq	r0, r0, r5, ror r0
      2c:	26050202 	strcs	r0, [r5], -r2, lsl #4
      30:	03000001 	movweq	r0, #1
      34:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
      38:	08020074 	stmdaeq	r2, {r2, r4, r5, r6}
      3c:	00000005 	andeq	r0, r0, r5
      40:	00640400 	rsbeq	r0, r4, r0, lsl #8
      44:	16020000 	strne	r0, [r2], -r0
      48:	00004d1d 	andeq	r4, r0, sp, lsl sp
      4c:	08010200 	stmdaeq	r1, {r9}
      50:	0000006c 	andeq	r0, r0, ip, rrx
      54:	07070202 	streq	r0, [r7, -r2, lsl #4]
      58:	04000001 	streq	r0, [r0], #-1
      5c:	0000007a 	andeq	r0, r0, sl, ror r0
      60:	6c1d1a02 			; <UNDEFINED> instruction: 0x6c1d1a02
      64:	05000000 	streq	r0, [r0, #-0]
      68:	0000005b 	andeq	r0, r0, fp, asr r0
      6c:	47070402 	strmi	r0, [r7, -r2, lsl #8]
      70:	02000000 	andeq	r0, r0, #0
      74:	003d0708 	eorseq	r0, sp, r8, lsl #14
      78:	1c060000 	stcne	0, cr0, [r6], {-0}
      7c:	01000000 	mrseq	r0, (UNDEF: 0)
      80:	008c1b52 	addeq	r1, ip, r2, asr fp
      84:	03050000 	movweq	r0, #20480	; 0x5000
      88:	0000b000 	andeq	fp, r0, r0
      8c:	00670407 	rsbeq	r0, r7, r7, lsl #8
      90:	0e080000 	cdpeq	0, 0, cr0, cr8, cr0, {0}
      94:	01000000 	mrseq	r0, (UNDEF: 0)
      98:	8244067d 	subhi	r0, r4, #131072000	; 0x7d00000
      9c:	00fc0000 	rscseq	r0, ip, r0
      a0:	9c010000 	stcls	0, cr0, [r1], {-0}
      a4:	000000c7 	andeq	r0, r0, r7, asr #1
      a8:	6e697009 	cdpvs	0, 6, cr7, cr9, cr9, {0}
      ac:	1c7d0100 	ldfnee	f0, [sp], #-0
      b0:	00000041 	andeq	r0, r0, r1, asr #32
      b4:	0a779102 	beq	1de44c4 <__user_program+0x1ae44c4>
      b8:	0000072a 	andeq	r0, r0, sl, lsr #14
      bc:	41297d01 			; <UNDEFINED> instruction: 0x41297d01
      c0:	02000000 	andeq	r0, r0, #0
      c4:	0b007691 	bleq	1db10 <__bss_end+0x10b10>
      c8:	00000054 	andeq	r0, r0, r4, asr r0
      cc:	bc067101 	stflts	f7, [r6], {1}
      d0:	88000081 	stmdahi	r0, {r0, r7}
      d4:	01000000 	mrseq	r0, (UNDEF: 0)
      d8:	0000ed9c 	muleq	r0, ip, sp
      dc:	69700900 	ldmdbvs	r0!, {r8, fp}^
      e0:	7101006e 	tstvc	r1, lr, rrx
      e4:	00004117 	andeq	r4, r0, r7, lsl r1
      e8:	77910200 	ldrvc	r0, [r1, r0, lsl #4]
      ec:	00210b00 	eoreq	r0, r1, r0, lsl #22
      f0:	65010000 	strvs	r0, [r1, #-0]
      f4:	00813406 	addeq	r3, r1, r6, lsl #8
      f8:	00008800 	andeq	r8, r0, r0, lsl #16
      fc:	139c0100 	orrsne	r0, ip, #0, 2
     100:	09000001 	stmdbeq	r0, {r0}
     104:	006e6970 	rsbeq	r6, lr, r0, ror r9
     108:	41176501 	tstmi	r7, r1, lsl #10
     10c:	02000000 	andeq	r0, r0, #0
     110:	0c007791 	stceq	7, cr7, [r0], {145}	; 0x91
     114:	0000011a 	andeq	r0, r0, sl, lsl r1
     118:	18065501 	stmdane	r6, {r0, r8, sl, ip, lr}
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
     150:	1f067491 	svcne	0x00067491
     154:	01000001 	tsteq	r0, r1
     158:	005b0c5c 	subseq	r0, fp, ip, asr ip
     15c:	91020000 	mrsls	r0, (UNDEF: 2)
     160:	005d0670 	subseq	r0, sp, r0, ror r6
     164:	5e010000 	cdppl	0, 0, cr0, cr1, cr0, {0}
     168:	00005b0c 	andeq	r5, r0, ip, lsl #22
     16c:	6c910200 	lfmvs	f0, 4, [r1], {0}
     170:	00db0000 	sbcseq	r0, fp, r0
     174:	00040000 	andeq	r0, r4, r0
     178:	000000df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
     17c:	00830104 	addeq	r0, r3, r4, lsl #2
     180:	640c0000 	strvs	r0, [ip], #-0
     184:	30000001 	andcc	r0, r0, r1
     188:	40000001 	andmi	r0, r0, r1
     18c:	30000083 	andcc	r0, r0, r3, lsl #1
     190:	2f000002 	svccs	0x00000002
     194:	02000001 	andeq	r0, r0, #1
     198:	00750801 	rsbseq	r0, r5, r1, lsl #16
     19c:	02020000 	andeq	r0, r2, #0
     1a0:	00012605 	andeq	r2, r1, r5, lsl #12
     1a4:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
     1a8:	00746e69 	rsbseq	r6, r4, r9, ror #28
     1ac:	00050802 	andeq	r0, r5, r2, lsl #16
     1b0:	02000000 	andeq	r0, r0, #0
     1b4:	006c0801 	rsbeq	r0, ip, r1, lsl #16
     1b8:	02020000 	andeq	r0, r2, #0
     1bc:	00010707 	andeq	r0, r1, r7, lsl #14
     1c0:	007a0400 	rsbseq	r0, sl, r0, lsl #8
     1c4:	1a020000 	bne	801cc <__bss_end+0x731cc>
     1c8:	00005b1d 	andeq	r5, r0, sp, lsl fp
     1cc:	07040200 	streq	r0, [r4, -r0, lsl #4]
     1d0:	00000047 	andeq	r0, r0, r7, asr #32
     1d4:	3d070802 	stccc	8, cr0, [r7, #-8]
     1d8:	05000000 	streq	r0, [r0, #-0]
     1dc:	00000033 	andeq	r0, r0, r3, lsr r0
     1e0:	0000007a 	andeq	r0, r0, sl, ror r0
     1e4:	00005b06 	andeq	r5, r0, r6, lsl #22
     1e8:	0001f300 	andeq	pc, r1, r0, lsl #6
     1ec:	00015607 	andeq	r5, r1, r7, lsl #12
     1f0:	05180100 	ldreq	r0, [r8, #-256]	; 0xffffff00
     1f4:	00000069 	andeq	r0, r0, r9, rrx
     1f8:	c7d00305 	ldrbgt	r0, [r0, r5, lsl #6]
     1fc:	5d070000 	stcpl	0, cr0, [r7, #-0]
     200:	01000001 	tsteq	r0, r1
     204:	00691218 	rsbeq	r1, r9, r8, lsl r2
     208:	03050000 	movweq	r0, #20480	; 0x5000
     20c:	0000c000 	andeq	ip, r0, r0
     210:	00018a08 	andeq	r8, r1, r8, lsl #20
     214:	061e0100 	ldreq	r0, [lr], -r0, lsl #2
     218:	00008340 	andeq	r8, r0, r0, asr #6
     21c:	00000230 	andeq	r0, r0, r0, lsr r2
     220:	84099c01 	strhi	r9, [r9], #-3073	; 0xfffff3ff
     224:	01000001 	tsteq	r0, r1
     228:	00330720 	eorseq	r0, r3, r0, lsr #14
     22c:	91020000 	mrsls	r0, (UNDEF: 2)
     230:	01960974 	orrseq	r0, r6, r4, ror r9
     234:	21010000 	mrscs	r0, (UNDEF: 1)
     238:	00003307 	andeq	r3, r0, r7, lsl #6
     23c:	70910200 	addsvc	r0, r1, r0, lsl #4
     240:	00017809 	andeq	r7, r1, r9, lsl #16
     244:	0c220100 	stfeqs	f0, [r2], #-0
     248:	0000004f 	andeq	r0, r0, pc, asr #32
     24c:	006c9102 	rsbeq	r9, ip, r2, lsl #2
     250:	00024600 	andeq	r4, r2, r0, lsl #12
     254:	68000400 	stmdavs	r0, {sl}
     258:	04000001 	streq	r0, [r0], #-1
     25c:	00008301 	andeq	r8, r0, r1, lsl #6
     260:	01b30c00 			; <UNDEFINED> instruction: 0x01b30c00
     264:	01300000 	teqeq	r0, r0
     268:	85700000 	ldrbhi	r0, [r0, #-0]!
     26c:	03a40000 			; <UNDEFINED> instruction: 0x03a40000
     270:	02110000 	andseq	r0, r1, #0
     274:	01020000 	mrseq	r0, (UNDEF: 2)
     278:	00007508 	andeq	r7, r0, r8, lsl #10
     27c:	00250300 	eoreq	r0, r5, r0, lsl #6
     280:	02020000 	andeq	r0, r2, #0
     284:	00012605 	andeq	r2, r1, r5, lsl #12
     288:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
     28c:	00746e69 	rsbseq	r6, r4, r9, ror #28
     290:	00050802 	andeq	r0, r5, r2, lsl #16
     294:	05000000 	streq	r0, [r0, #-0]
     298:	00000064 	andeq	r0, r0, r4, rrx
     29c:	521d1602 	andspl	r1, sp, #2097152	; 0x200000
     2a0:	02000000 	andeq	r0, r0, #0
     2a4:	006c0801 	rsbeq	r0, ip, r1, lsl #16
     2a8:	02020000 	andeq	r0, r2, #0
     2ac:	00010707 	andeq	r0, r1, r7, lsl #14
     2b0:	07040200 	streq	r0, [r4, -r0, lsl #4]
     2b4:	00000047 	andeq	r0, r0, r7, asr #32
     2b8:	0001a505 	andeq	sl, r1, r5, lsl #10
     2bc:	1d1c0200 	lfmne	f0, 4, [ip, #-0]
     2c0:	00000073 	andeq	r0, r0, r3, ror r0
     2c4:	3d070802 	stccc	8, cr0, [r7, #-8]
     2c8:	05000000 	streq	r0, [r0, #-0]
     2cc:	000001c9 	andeq	r0, r0, r9, asr #3
     2d0:	861d1303 	ldrhi	r1, [sp], -r3, lsl #6
     2d4:	06000000 	streq	r0, [r0], -r0
     2d8:	000001c7 	andeq	r0, r0, r7, asr #3
     2dc:	9d000404 	cfstrsls	mvf0, [r0, #-16]
     2e0:	07000000 	streq	r0, [r0, -r0]
     2e4:	000001f3 	strdeq	r0, [r0], -r3
     2e8:	0000009d 	muleq	r0, sp, r0
     2ec:	04080000 	streq	r0, [r8], #-0
     2f0:	00002509 	andeq	r2, r0, r9, lsl #10
     2f4:	0000af00 	andeq	sl, r0, r0, lsl #30
     2f8:	00600a00 	rsbeq	r0, r0, r0, lsl #20
     2fc:	00100000 	andseq	r0, r0, r0
     300:	0001da0b 	andeq	sp, r1, fp, lsl #20
     304:	0e180100 	mufeqe	f0, f0, f0
     308:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     30c:	b0040305 	andlt	r0, r4, r5, lsl #6
     310:	e70c0000 	str	r0, [ip, -r0]
     314:	01000001 	tsteq	r0, r1
     318:	0038053f 	eorseq	r0, r8, pc, lsr r5
     31c:	86880000 	strhi	r0, [r8], r0
     320:	028c0000 	addeq	r0, ip, #0
     324:	9c010000 	stcls	0, cr0, [r1], {-0}
     328:	000001a8 	andeq	r0, r0, r8, lsr #3
     32c:	746d660d 	strbtvc	r6, [sp], #-1549	; 0xfffff9f3
     330:	183f0100 	ldmdane	pc!, {r8}	; <UNPREDICTABLE>
     334:	000001a8 	andeq	r0, r0, r8, lsr #3
     338:	0e709102 	expeqs	f1, f2
     33c:	7274730f 	rsbsvc	r7, r4, #1006632960	; 0x3c000000
     340:	08420100 	stmdaeq	r2, {r8}^
     344:	000001ae 	andeq	r0, r0, lr, lsr #3
     348:	0b649102 	bleq	1924758 <__user_program+0x1624758>
     34c:	000001ee 	andeq	r0, r0, lr, ror #3
     350:	7a0a4501 	bvc	29175c <__end+0x16375c>
     354:	02000000 	andeq	r0, r0, #0
     358:	d0104891 	mulsle	r0, r1, r8
     35c:	30000086 	andcc	r0, r0, r6, lsl #1
     360:	24000000 	strcs	r0, [r0], #-0
     364:	0f000001 	svceq	0x00000001
     368:	5101006f 	tstpl	r1, pc, rrx
     36c:	00003809 	andeq	r3, r0, r9, lsl #16
     370:	4c910200 	lfmmi	f0, 4, [r1], {0}
     374:	87141000 	ldrhi	r1, [r4, -r0]
     378:	00480000 	subeq	r0, r8, r0
     37c:	013f0000 	teqeq	pc, r0
     380:	640f0000 	strvs	r0, [pc], #-0	; 388 <CPSR_IRQ_INHIBIT+0x308>
     384:	09580100 	ldmdbeq	r8, {r8}^
     388:	00000038 	andeq	r0, r0, r8, lsr r0
     38c:	00609102 	rsbeq	r9, r0, r2, lsl #2
     390:	00877010 	addeq	r7, r7, r0, lsl r0
     394:	00002800 	andeq	r2, r0, r0, lsl #16
     398:	00015a00 	andeq	r5, r1, r0, lsl #20
     39c:	00750f00 	rsbseq	r0, r5, r0, lsl #30
     3a0:	38096201 	stmdacc	r9, {r0, r9, sp, lr}
     3a4:	02000000 	andeq	r0, r0, #0
     3a8:	10005091 	mulne	r0, r1, r0
     3ac:	000087ac 	andeq	r8, r0, ip, lsr #15
     3b0:	00000038 	andeq	r0, r0, r8, lsr r0
     3b4:	00000175 	andeq	r0, r0, r5, ror r1
     3b8:	0100780f 	tsteq	r0, pc, lsl #16
     3bc:	00380967 	eorseq	r0, r8, r7, ror #18
     3c0:	91020000 	mrsls	r0, (UNDEF: 2)
     3c4:	f8100054 			; <UNDEFINED> instruction: 0xf8100054
     3c8:	24000087 	strcs	r0, [r0], #-135	; 0xffffff79
     3cc:	90000000 	andls	r0, r0, r0
     3d0:	0f000001 	svceq	0x00000001
     3d4:	6f010063 	svcvs	0x00010063
     3d8:	00003809 	andeq	r3, r0, r9, lsl #16
     3dc:	58910200 	ldmpl	r1, {r9}
     3e0:	88881100 	stmhi	r8, {r8, ip}
     3e4:	00380000 	eorseq	r0, r8, r0
     3e8:	700f0000 	andvc	r0, pc, r0
     3ec:	097d0100 	ldmdbeq	sp!, {r8}^
     3f0:	00000038 	andeq	r0, r0, r8, lsr r0
     3f4:	005c9102 	subseq	r9, ip, r2, lsl #2
     3f8:	2c041200 	sfmcs	f1, 4, [r4], {-0}
     3fc:	12000000 	andne	r0, r0, #0
     400:	00002504 	andeq	r2, r0, r4, lsl #10
     404:	019b1300 	orrseq	r1, fp, r0, lsl #6
     408:	21010000 	mrscs	r0, (UNDEF: 1)
     40c:	0085700e 	addeq	r7, r5, lr
     410:	00011800 	andeq	r1, r1, r0, lsl #16
     414:	3d9c0100 	ldfccs	f0, [ip]
     418:	14000002 	strne	r0, [r0], #-2
     41c:	000001ae 	andeq	r0, r0, lr, lsr #3
     420:	46202101 	strtmi	r2, [r0], -r1, lsl #2
     424:	03000000 	movweq	r0, #0
     428:	0d7fa791 	ldcleq	7, cr10, [pc, #-580]!	; 1ec <CPSR_IRQ_INHIBIT+0x16c>
     42c:	006d756e 	rsbeq	r7, sp, lr, ror #10
     430:	672f2101 	strvs	r2, [pc, -r1, lsl #2]!
     434:	03000000 	movweq	r0, #0
     438:	0f7f9891 	svceq	0x007f9891
     43c:	24010069 	strcs	r0, [r1], #-105	; 0xffffff97
     440:	00003807 	andeq	r3, r0, r7, lsl #16
     444:	74910200 	ldrvc	r0, [r1], #512	; 0x200
     448:	0001e10b 	andeq	lr, r1, fp, lsl #2
     44c:	07250100 	streq	r0, [r5, -r0, lsl #2]!
     450:	00000038 	andeq	r0, r0, r8, lsr r0
     454:	0f6c9102 	svceq	0x006c9102
     458:	00727473 	rsbseq	r7, r2, r3, ror r4
     45c:	3d082601 	stccc	6, cr2, [r8, #-4]
     460:	03000002 	movweq	r0, #2
     464:	0b7fa891 	bleq	1fea6b0 <__user_program+0x1cea6b0>
     468:	000001d1 	ldrdeq	r0, [r0], -r1
     46c:	25082701 	strcs	r2, [r8, #-1793]	; 0xfffff8ff
     470:	02000000 	andeq	r0, r0, #0
     474:	28116b91 	ldmdacs	r1, {r0, r4, r7, r8, r9, fp, sp, lr}
     478:	54000086 	strpl	r0, [r0], #-134	; 0xffffff7a
     47c:	0f000000 	svceq	0x00000000
     480:	3801006a 	stmdacc	r1, {r1, r3, r5, r6}
     484:	0000380d 	andeq	r3, r0, sp, lsl #16
     488:	70910200 	addsvc	r0, r1, r0, lsl #4
     48c:	25150000 	ldrcs	r0, [r5, #-0]
     490:	0a000000 	beq	498 <CPSR_IRQ_INHIBIT+0x418>
     494:	00000060 	andeq	r0, r0, r0, rrx
     498:	d200003f 	andle	r0, r0, #63	; 0x3f
     49c:	04000000 	streq	r0, [r0], #-0
     4a0:	00028200 	andeq	r8, r2, r0, lsl #4
     4a4:	83010400 	movwhi	r0, #5120	; 0x1400
     4a8:	0c000000 	stceq	0, cr0, [r0], {-0}
     4ac:	00000214 	andeq	r0, r0, r4, lsl r2
     4b0:	00000130 	andeq	r0, r0, r0, lsr r1
     4b4:	00008914 	andeq	r8, r0, r4, lsl r9
     4b8:	00000174 	andeq	r0, r0, r4, ror r1
     4bc:	00000381 	andeq	r0, r0, r1, lsl #7
     4c0:	75080102 	strvc	r0, [r8, #-258]	; 0xfffffefe
     4c4:	02000000 	andeq	r0, r0, #0
     4c8:	01260502 			; <UNDEFINED> instruction: 0x01260502
     4cc:	04030000 	streq	r0, [r3], #-0
     4d0:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
     4d4:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
     4d8:	00000000 	andeq	r0, r0, r0
     4dc:	00006404 	andeq	r6, r0, r4, lsl #8
     4e0:	1d160200 	lfmne	f0, 4, [r6, #-0]
     4e4:	0000004d 	andeq	r0, r0, sp, asr #32
     4e8:	6c080102 	stfvss	f0, [r8], {2}
     4ec:	02000000 	andeq	r0, r0, #0
     4f0:	01070702 	tsteq	r7, r2, lsl #14
     4f4:	7a040000 	bvc	1004fc <__bss_end+0xf34fc>
     4f8:	02000000 	andeq	r0, r0, #0
     4fc:	00671d1a 	rsbeq	r1, r7, sl, lsl sp
     500:	04020000 	streq	r0, [r2], #-0
     504:	00004707 	andeq	r4, r0, r7, lsl #14
     508:	07080200 	streq	r0, [r8, -r0, lsl #4]
     50c:	0000003d 	andeq	r0, r0, sp, lsr r0
     510:	0001f805 	andeq	pc, r1, r5, lsl #16
     514:	09560100 	ldmdbeq	r6, {r8}^
     518:	00000041 	andeq	r0, r0, r1, asr #32
     51c:	00008a40 	andeq	r8, r0, r0, asr #20
     520:	00000048 	andeq	r0, r0, r8, asr #32
     524:	06069c01 	streq	r9, [r6], -r1, lsl #24
     528:	01000002 	tsteq	r0, r2
     52c:	89ec0645 	stmibhi	ip!, {r0, r2, r6, r9, sl}^
     530:	00540000 	subseq	r0, r4, r0
     534:	9c010000 	stcls	0, cr0, [r1], {-0}
     538:	000000b1 	strheq	r0, [r0], -r1
     53c:	00020107 	andeq	r0, r2, r7, lsl #2
     540:	1c450100 	stfnee	f0, [r5], {-0}
     544:	00000041 	andeq	r0, r0, r1, asr #32
     548:	00779102 	rsbseq	r9, r7, r2, lsl #2
     54c:	00023008 	andeq	r3, r2, r8
     550:	06390100 	ldrteq	r0, [r9], -r0, lsl #2
     554:	000089b4 			; <UNDEFINED> instruction: 0x000089b4
     558:	00000038 	andeq	r0, r0, r8, lsr r0
     55c:	26099c01 	strcs	r9, [r9], -r1, lsl #24
     560:	01000002 	tsteq	r0, r2
     564:	89140624 	ldmdbhi	r4, {r2, r5, r9, sl}
     568:	00a00000 	adceq	r0, r0, r0
     56c:	9c010000 	stcls	0, cr0, [r1], {-0}
     570:	00008e00 	andeq	r8, r0, r0, lsl #28
     574:	38000400 	stmdacc	r0, {sl}
     578:	04000003 	streq	r0, [r0], #-3
     57c:	00008301 	andeq	r8, r0, r1, lsl #6
     580:	023b0c00 	eorseq	r0, fp, #0, 24
     584:	01300000 	teqeq	r0, r0
     588:	8a880000 	bhi	fe200590 <GIC_DISTB+0xfe9bf590>
     58c:	008c0000 	addeq	r0, ip, r0
     590:	044c0000 	strbeq	r0, [ip], #-0
     594:	01020000 	mrseq	r0, (UNDEF: 2)
     598:	00007508 	andeq	r7, r0, r8, lsl #10
     59c:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
     5a0:	00000126 	andeq	r0, r0, r6, lsr #2
     5a4:	69050403 	stmdbvs	r5, {r0, r1, sl}
     5a8:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
     5ac:	00000508 	andeq	r0, r0, r8, lsl #10
     5b0:	01020000 	mrseq	r0, (UNDEF: 2)
     5b4:	00006c08 	andeq	r6, r0, r8, lsl #24
     5b8:	07020200 	streq	r0, [r2, -r0, lsl #4]
     5bc:	00000107 	andeq	r0, r0, r7, lsl #2
     5c0:	00007a04 	andeq	r7, r0, r4, lsl #20
     5c4:	1d1a0200 	lfmne	f0, 4, [sl, #-0]
     5c8:	0000005b 	andeq	r0, r0, fp, asr r0
     5cc:	47070402 	strmi	r0, [r7, -r2, lsl #8]
     5d0:	02000000 	andeq	r0, r0, #0
     5d4:	003d0708 	eorseq	r0, sp, r8, lsl #14
     5d8:	64050000 	strvs	r0, [r5], #-0
     5dc:	01000002 	tsteq	r0, r2
     5e0:	004f0a13 	subeq	r0, pc, r3, lsl sl	; <UNPREDICTABLE>
     5e4:	8ae00000 	bhi	ff8005ec <GIC_DISTB+0xfffbf5ec>
     5e8:	00340000 	eorseq	r0, r4, r0
     5ec:	9c010000 	stcls	0, cr0, [r1], {-0}
     5f0:	00025406 	andeq	r5, r2, r6, lsl #8
     5f4:	060c0100 	streq	r0, [ip], -r0, lsl #2
     5f8:	00008a88 	andeq	r8, r0, r8, lsl #21
     5fc:	00000058 	andeq	r0, r0, r8, asr r0
     600:	e7009c01 	str	r9, [r0, -r1, lsl #24]
     604:	04000000 	streq	r0, [r0], #-0
     608:	0003a700 	andeq	sl, r3, r0, lsl #14
     60c:	83010400 	movwhi	r0, #5120	; 0x1400
     610:	0c000000 	stceq	0, cr0, [r0], {-0}
     614:	00000270 	andeq	r0, r0, r0, ror r2
     618:	00000130 	andeq	r0, r0, r0, lsr r1
     61c:	00008b14 	andeq	r8, r0, r4, lsl fp
     620:	00000100 	andeq	r0, r0, r0, lsl #2
     624:	000004dd 	ldrdeq	r0, [r0], -sp
     628:	75080102 	strvc	r0, [r8, #-258]	; 0xfffffefe
     62c:	02000000 	andeq	r0, r0, #0
     630:	01260502 			; <UNDEFINED> instruction: 0x01260502
     634:	04030000 	streq	r0, [r3], #-0
     638:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
     63c:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
     640:	00000000 	andeq	r0, r0, r0
     644:	6c080102 	stfvss	f0, [r8], {2}
     648:	02000000 	andeq	r0, r0, #0
     64c:	01070702 	tsteq	r7, r2, lsl #14
     650:	7a040000 	bvc	100658 <__bss_end+0xf3658>
     654:	02000000 	andeq	r0, r0, #0
     658:	005b1d1a 	subseq	r1, fp, sl, lsl sp
     65c:	04020000 	streq	r0, [r2], #-0
     660:	00004707 	andeq	r4, r0, r7, lsl #14
     664:	07080200 	streq	r0, [r8, -r0, lsl #4]
     668:	0000003d 	andeq	r0, r0, sp, lsr r0
     66c:	00017805 	andeq	r7, r1, r5, lsl #16
     670:	05310100 	ldreq	r0, [r1, #-256]!	; 0xffffff00
     674:	00000033 	andeq	r0, r0, r3, lsr r0
     678:	00008bf0 	strdeq	r8, [r0], -r0
     67c:	00000024 	andeq	r0, r0, r4, lsr #32
     680:	83069c01 	movwhi	r9, #27649	; 0x6c01
     684:	01000002 	tsteq	r0, r2
     688:	8bc8062c 	blhi	ff201f40 <GIC_DISTB+0xff9c0f40>
     68c:	00280000 	eoreq	r0, r8, r0
     690:	9c010000 	stcls	0, cr0, [r1], {-0}
     694:	00029c05 	andeq	r9, r2, r5, lsl #24
     698:	05260100 	streq	r0, [r6, #-256]!	; 0xffffff00
     69c:	00000033 	andeq	r0, r0, r3, lsr r0
     6a0:	00008ba0 	andeq	r8, r0, r0, lsr #23
     6a4:	00000028 	andeq	r0, r0, r8, lsr #32
     6a8:	b9069c01 	stmdblt	r6, {r0, sl, fp, ip, pc}
     6ac:	01000002 	tsteq	r0, r2
     6b0:	8b780620 	blhi	1e01f38 <__user_program+0x1b01f38>
     6b4:	00280000 	eoreq	r0, r8, r0
     6b8:	9c010000 	stcls	0, cr0, [r1], {-0}
     6bc:	0002ad07 	andeq	sl, r2, r7, lsl #26
     6c0:	06130100 	ldreq	r0, [r3], -r0, lsl #2
     6c4:	00008b14 	andeq	r8, r0, r4, lsl fp
     6c8:	00000064 	andeq	r0, r0, r4, rrx
     6cc:	97089c01 	strls	r9, [r8, -r1, lsl #24]
     6d0:	01000002 	tsteq	r0, r2
     6d4:	00331613 	eorseq	r1, r3, r3, lsl r6
     6d8:	91020000 	mrsls	r0, (UNDEF: 2)
     6dc:	0178096c 	cmneq	r8, ip, ror #18
     6e0:	15010000 	strne	r0, [r1, #-0]
     6e4:	00004f0e 	andeq	r4, r0, lr, lsl #30
     6e8:	74910200 	ldrvc	r0, [r1], #512	; 0x200
     6ec:	01c60000 	biceq	r0, r6, r0
     6f0:	00040000 	andeq	r0, r4, r0
     6f4:	00000452 	andeq	r0, r0, r2, asr r4
     6f8:	00830104 	addeq	r0, r3, r4, lsl #2
     6fc:	460c0000 	strmi	r0, [ip], -r0
     700:	30000004 	andcc	r0, r0, r4
     704:	14000001 	strne	r0, [r0], #-1
     708:	f000008c 			; <UNDEFINED> instruction: 0xf000008c
     70c:	79000000 	stmdbvc	r0, {}	; <UNPREDICTABLE>
     710:	02000005 	andeq	r0, r0, #5
     714:	00750801 	rsbseq	r0, r5, r1, lsl #16
     718:	02020000 	andeq	r0, r2, #0
     71c:	00012605 	andeq	r2, r1, r5, lsl #12
     720:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
     724:	00746e69 	rsbseq	r6, r4, r9, ror #28
     728:	00003304 	andeq	r3, r0, r4, lsl #6
     72c:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
     730:	00000000 	andeq	r0, r0, r0
     734:	6c080102 	stfvss	f0, [r8], {2}
     738:	02000000 	andeq	r0, r0, #0
     73c:	01070702 	tsteq	r7, r2, lsl #14
     740:	7a050000 	bvc	140748 <__end+0x12748>
     744:	02000000 	andeq	r0, r0, #0
     748:	00651d1a 	rsbeq	r1, r5, sl, lsl sp
     74c:	54040000 	strpl	r0, [r4], #-0
     750:	02000000 	andeq	r0, r0, #0
     754:	00470704 	subeq	r0, r7, r4, lsl #14
     758:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     75c:	00003d07 	andeq	r3, r0, r7, lsl #26
     760:	01280600 			; <UNDEFINED> instruction: 0x01280600
     764:	00ff0927 	rscseq	r0, pc, r7, lsr #18
     768:	e2070000 	and	r0, r7, #0
     76c:	01000002 	tsteq	r0, r2
     770:	00601728 	rsbeq	r1, r0, r8, lsr #14
     774:	07000000 	streq	r0, [r0, -r0]
     778:	00000321 	andeq	r0, r0, r1, lsr #6
     77c:	60172901 	andsvs	r2, r7, r1, lsl #18
     780:	04000000 	streq	r0, [r0], #-0
     784:	00032f07 	andeq	r2, r3, r7, lsl #30
     788:	172a0100 	strne	r0, [sl, -r0, lsl #2]!
     78c:	00000060 	andeq	r0, r0, r0, rrx
     790:	02d60708 	sbcseq	r0, r6, #8, 14	; 0x200000
     794:	2b010000 	blcs	4079c <__bss_end+0x3379c>
     798:	00006017 	andeq	r6, r0, r7, lsl r0
     79c:	38070c00 	stmdacc	r7, {sl, fp}
     7a0:	01000004 	tsteq	r0, r4
     7a4:	0060172c 	rsbeq	r1, r0, ip, lsr #14
     7a8:	07100000 	ldreq	r0, [r0, -r0]
     7ac:	00000406 	andeq	r0, r0, r6, lsl #8
     7b0:	60172d01 	andsvs	r2, r7, r1, lsl #26
     7b4:	14000000 	strne	r0, [r0], #-0
     7b8:	0002c407 	andeq	ip, r2, r7, lsl #8
     7bc:	122e0100 	eorne	r0, lr, #0, 2
     7c0:	0000003a 	andeq	r0, r0, sl, lsr r0
     7c4:	04290718 	strteq	r0, [r9], #-1816	; 0xfffff8e8
     7c8:	2f010000 	svccs	0x00010000
     7cc:	00006017 	andeq	r6, r0, r7, lsl r0
     7d0:	d8071c00 	stmdale	r7, {sl, fp, ip}
     7d4:	01000003 	tsteq	r0, r3
     7d8:	00601730 	rsbeq	r1, r0, r0, lsr r7
     7dc:	07200000 	streq	r0, [r0, -r0]!
     7e0:	0000033d 	andeq	r0, r0, sp, lsr r3
     7e4:	60173101 	andsvs	r3, r7, r1, lsl #2
     7e8:	24000000 	strcs	r0, [r0], #-0
     7ec:	037b0500 	cmneq	fp, #0, 10
     7f0:	32010000 	andcc	r0, r1, #0
     7f4:	00007303 	andeq	r7, r0, r3, lsl #6
     7f8:	036a0800 	cmneq	sl, #0, 16
     7fc:	bd010000 	stclt	0, cr0, [r1, #-0]
     800:	00011d1e 	andeq	r1, r1, lr, lsl sp
     804:	18030500 	stmdane	r3, {r8, sl}
     808:	090000b0 	stmdbeq	r0, {r4, r5, r7}
     80c:	0000ff04 	andeq	pc, r0, r4, lsl #30
     810:	03bc0a00 			; <UNDEFINED> instruction: 0x03bc0a00
     814:	c9010000 	stmdbgt	r1, {}	; <UNPREDICTABLE>
     818:	008ce406 	addeq	lr, ip, r6, lsl #8
     81c:	00002000 	andeq	r2, r0, r0
     820:	0b9c0100 	bleq	fe700c28 <GIC_DISTB+0xfeebfc28>
     824:	00000414 	andeq	r0, r0, r4, lsl r4
     828:	1d1ec301 	ldcne	3, cr12, [lr, #-4]
     82c:	c0000001 	andgt	r0, r0, r1
     830:	2400008c 	strcs	r0, [r0], #-140	; 0xffffff74
     834:	01000000 	mrseq	r0, (UNDEF: 0)
     838:	03900c9c 	orrseq	r0, r0, #156, 24	; 0x9c00
     83c:	b4010000 	strlt	r0, [r1], #-0
     840:	008cb028 	addeq	fp, ip, r8, lsr #32
     844:	00001000 	andeq	r1, r0, r0
     848:	0a9c0100 	beq	fe700c50 <GIC_DISTB+0xfeebfc50>
     84c:	000002f4 	strdeq	r0, [r0], -r4
     850:	8c288101 	stfhid	f0, [r8], #-4
     854:	2400008c 	strcs	r0, [r0], #-140	; 0xffffff74
     858:	01000000 	mrseq	r0, (UNDEF: 0)
     85c:	03f40c9c 	mvnseq	r0, #156, 24	; 0x9c00
     860:	73010000 	movwvc	r0, #4096	; 0x1000
     864:	008c742a 	addeq	r7, ip, sl, lsr #8
     868:	00001800 	andeq	r1, r0, r0, lsl #16
     86c:	0c9c0100 	ldfeqs	f0, [ip], {0}
     870:	000003a6 	andeq	r0, r0, r6, lsr #7
     874:	5c2a6701 	stcpl	7, cr6, [sl], #-4
     878:	1800008c 	stmdane	r0, {r2, r3, r7}
     87c:	01000000 	mrseq	r0, (UNDEF: 0)
     880:	03500a9c 	cmpeq	r0, #156, 20	; 0x9c000
     884:	57010000 	strpl	r0, [r1, -r0]
     888:	008c4428 	addeq	r4, ip, r8, lsr #8
     88c:	00001800 	andeq	r1, r0, r0, lsl #16
     890:	0a9c0100 	beq	fe700c98 <GIC_DISTB+0xfeebfc98>
     894:	00000304 	andeq	r0, r0, r4, lsl #6
     898:	2c2a4701 	stccs	7, cr4, [sl], #-4
     89c:	1800008c 	stmdane	r0, {r2, r3, r7}
     8a0:	01000000 	mrseq	r0, (UNDEF: 0)
     8a4:	03e70c9c 	mvneq	r0, #156, 24	; 0x9c00
     8a8:	3b010000 	blcc	408b0 <__bss_end+0x338b0>
     8ac:	008c142a 	addeq	r1, ip, sl, lsr #8
     8b0:	00001800 	andeq	r1, r0, r0, lsl #16
     8b4:	009c0100 	addseq	r0, ip, r0, lsl #2
     8b8:	00000022 	andeq	r0, r0, r2, lsr #32
     8bc:	051a0002 	ldreq	r0, [sl, #-2]
     8c0:	01040000 	mrseq	r0, (UNDEF: 4)
     8c4:	00000622 	andeq	r0, r0, r2, lsr #12
     8c8:	00008000 	andeq	r8, r0, r0
     8cc:	00008018 	andeq	r8, r0, r8, lsl r0
     8d0:	0000045e 	andeq	r0, r0, lr, asr r4
     8d4:	00000130 	andeq	r0, r0, r0, lsr r1
     8d8:	00000471 	andeq	r0, r0, r1, ror r4
     8dc:	00228001 	eoreq	r8, r2, r1
     8e0:	00020000 	andeq	r0, r2, r0
     8e4:	0000052e 	andeq	r0, r0, lr, lsr #10
     8e8:	06690104 	strbteq	r0, [r9], -r4, lsl #2
     8ec:	8d040000 	stchi	0, cr0, [r4, #-0]
     8f0:	8d480000 	stclhi	0, cr0, [r8, #-0]
     8f4:	047d0000 	ldrbteq	r0, [sp], #-0
     8f8:	01300000 	teqeq	r0, r0
     8fc:	04710000 	ldrbteq	r0, [r1], #-0
     900:	80010000 	andhi	r0, r1, r0
     904:	00000022 	andeq	r0, r0, r2, lsr #32
     908:	05420002 	strbeq	r0, [r2, #-2]
     90c:	01040000 	mrseq	r0, (UNDEF: 4)
     910:	000006ba 			; <UNDEFINED> instruction: 0x000006ba
     914:	00008d48 	andeq	r8, r0, r8, asr #26
     918:	00008ea0 	andeq	r8, r0, r0, lsr #29
     91c:	0000048f 	andeq	r0, r0, pc, lsl #9
     920:	00000130 	andeq	r0, r0, r0, lsr r1
     924:	00000471 	andeq	r0, r0, r1, ror r4
     928:	00228001 	eoreq	r8, r2, r1
     92c:	00020000 	andeq	r0, r2, r0
     930:	00000556 	andeq	r0, r0, r6, asr r5
     934:	074e0104 	strbeq	r0, [lr, -r4, lsl #2]
     938:	8ea00000 	cdphi	0, 10, cr0, cr0, cr0, {0}
     93c:	8ff80000 	svchi	0x00f80000
     940:	04910000 	ldreq	r0, [r1], #0
     944:	01300000 	teqeq	r0, r0
     948:	04710000 	ldrbteq	r0, [r1], #-0
     94c:	80010000 	andhi	r0, r1, r0
     950:	00000022 	andeq	r0, r0, r2, lsr #32
     954:	056a0002 	strbeq	r0, [sl, #-2]!
     958:	01040000 	mrseq	r0, (UNDEF: 4)
     95c:	000007e0 	andeq	r0, r0, r0, ror #15
     960:	00009320 	andeq	r9, r0, r0, lsr #6
     964:	00009428 	andeq	r9, r0, r8, lsr #8
     968:	0000049d 	muleq	r0, sp, r4
     96c:	00000130 	andeq	r0, r0, r0, lsr r1
     970:	00000471 	andeq	r0, r0, r1, ror r4
     974:	00228001 	eoreq	r8, r2, r1
     978:	00020000 	andeq	r0, r2, r0
     97c:	0000057e 	andeq	r0, r0, lr, ror r5
     980:	08670104 	stmdaeq	r7!, {r2, r8}^
     984:	8ff80000 	svchi	0x00f80000
     988:	91400000 	mrsls	r0, (UNDEF: 64)
     98c:	04b50000 	ldrteq	r0, [r5], #0
     990:	04dc0000 	ldrbeq	r0, [ip], #0
     994:	04710000 	ldrbteq	r0, [r1], #-0
     998:	80010000 	andhi	r0, r1, r0
     99c:	00000022 	andeq	r0, r0, r2, lsr #32
     9a0:	05920002 	ldreq	r0, [r2, #2]
     9a4:	01040000 	mrseq	r0, (UNDEF: 4)
     9a8:	000008e7 	andeq	r0, r0, r7, ror #17
     9ac:	00009140 	andeq	r9, r0, r0, asr #2
     9b0:	00009144 	andeq	r9, r0, r4, asr #2
     9b4:	000004b5 			; <UNDEFINED> instruction: 0x000004b5
     9b8:	000004dc 	ldrdeq	r0, [r0], -ip
     9bc:	00000471 	andeq	r0, r0, r1, ror r4
     9c0:	00228001 	eoreq	r8, r2, r1
     9c4:	00020000 	andeq	r0, r2, r0
     9c8:	000005a6 	andeq	r0, r0, r6, lsr #11
     9cc:	093e0104 	ldmdbeq	lr!, {r2, r8}
     9d0:	91440000 	mrsls	r0, (UNDEF: 68)
     9d4:	91800000 	orrls	r0, r0, r0
     9d8:	05330000 	ldreq	r0, [r3, #-0]!
     9dc:	04dc0000 	ldrbeq	r0, [ip], #0
     9e0:	04710000 	ldrbteq	r0, [r1], #-0
     9e4:	80010000 	andhi	r0, r1, r0
     9e8:	000009e5 	andeq	r0, r0, r5, ror #19
     9ec:	05ba0004 	ldreq	r0, [sl, #4]!
     9f0:	01040000 	mrseq	r0, (UNDEF: 4)
     9f4:	00001168 	andeq	r1, r0, r8, ror #2
     9f8:	00151f0c 	andseq	r1, r5, ip, lsl #30
     9fc:	0004dc00 	andeq	sp, r4, r0, lsl #24
     a00:	00918000 	addseq	r8, r1, r0
     a04:	00013000 	andeq	r3, r1, r0
     a08:	00099500 	andeq	r9, r9, r0, lsl #10
     a0c:	07080200 	streq	r0, [r8, -r0, lsl #4]
     a10:	0000003d 	andeq	r0, r0, sp, lsr r0
     a14:	69050403 	stmdbvs	r5, {r0, r1, sl}
     a18:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
     a1c:	00470704 	subeq	r0, r7, r4, lsl #14
     a20:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     a24:	00000005 	andeq	r0, r0, r5
     a28:	04080200 	streq	r0, [r8], #-512	; 0xfffffe00
     a2c:	00000fe5 	andeq	r0, r0, r5, ror #31
     a30:	00084004 	andeq	r4, r8, r4
     a34:	162a0200 	strtne	r0, [sl], -r0, lsl #4
     a38:	00000033 	andeq	r0, r0, r3, lsr r0
     a3c:	000c1704 	andeq	r1, ip, r4, lsl #14
     a40:	152f0200 	strne	r0, [pc, #-512]!	; 848 <CPSR_IRQ_INHIBIT+0x7c8>
     a44:	00000060 	andeq	r0, r0, r0, rrx
     a48:	00660405 	rsbeq	r0, r6, r5, lsl #8
     a4c:	48060000 	stmdami	r6, {}	; <UNPREDICTABLE>
     a50:	75000000 	strvc	r0, [r0, #-0]
     a54:	07000000 	streq	r0, [r0, -r0]
     a58:	00000075 	andeq	r0, r0, r5, ror r0
     a5c:	7b040500 	blvc	101e64 <__bss_end+0xf4e64>
     a60:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     a64:	00140404 	andseq	r0, r4, r4, lsl #8
     a68:	0f360200 	svceq	0x00360200
     a6c:	00000088 	andeq	r0, r0, r8, lsl #1
     a70:	008e0405 	addeq	r0, lr, r5, lsl #8
     a74:	2c060000 	stccs	0, cr0, [r6], {-0}
     a78:	a2000000 	andge	r0, r0, #0
     a7c:	07000000 	streq	r0, [r0, -r0]
     a80:	00000075 	andeq	r0, r0, r5, ror r0
     a84:	00007507 	andeq	r7, r0, r7, lsl #10
     a88:	01020000 	mrseq	r0, (UNDEF: 2)
     a8c:	00006c08 	andeq	r6, r0, r8, lsl #24
     a90:	0e3f0900 	vaddeq.f16	s0, s30, s0	; <UNPREDICTABLE>
     a94:	bb020000 	bllt	80a9c <__bss_end+0x73a9c>
     a98:	00005412 	andeq	r5, r0, r2, lsl r4
     a9c:	14320900 	ldrtne	r0, [r2], #-2304	; 0xfffff700
     aa0:	be020000 	cdplt	0, 0, cr0, cr2, cr0, {0}
     aa4:	00007c10 	andeq	r7, r0, r0, lsl ip
     aa8:	06010200 	streq	r0, [r1], -r0, lsl #4
     aac:	0000006e 	andeq	r0, r0, lr, rrx
     ab0:	000b370a 	andeq	r3, fp, sl, lsl #14
     ab4:	a2010700 	andge	r0, r1, #0, 14
     ab8:	03000000 	movweq	r0, #0
     abc:	01f50617 	mvnseq	r0, r7, lsl r6
     ac0:	cf0b0000 	svcgt	0x000b0000
     ac4:	00000006 	andeq	r0, r0, r6
     ac8:	000a360b 	andeq	r3, sl, fp, lsl #12
     acc:	0a0b0100 	beq	2c0ed4 <__end+0x192ed4>
     ad0:	0200000f 	andeq	r0, r0, #15
     ad4:	00134f0b 	andseq	r4, r3, fp, lsl #30
     ad8:	ae0b0300 	cdpge	3, 0, cr0, cr11, cr0, {0}
     adc:	0400000e 	streq	r0, [r0], #-14
     ae0:	0012580b 	andseq	r5, r2, fp, lsl #16
     ae4:	db0b0500 	blle	2c1eec <__end+0x193eec>
     ae8:	06000010 			; <UNDEFINED> instruction: 0x06000010
     aec:	000d190b 	andeq	r1, sp, fp, lsl #18
     af0:	6d0b0700 	stcvs	7, cr0, [fp, #-0]
     af4:	08000012 	stmdaeq	r0, {r1, r4}
     af8:	00127b0b 	andseq	r7, r2, fp, lsl #22
     afc:	420b0900 	andmi	r0, fp, #0, 18
     b00:	0a000013 	beq	b54 <CPSR_IRQ_INHIBIT+0xad4>
     b04:	000e050b 	andeq	r0, lr, fp, lsl #10
     b08:	810b0b00 	tsthi	fp, r0, lsl #22
     b0c:	0c000008 	stceq	0, cr0, [r0], {8}
     b10:	0008950b 	andeq	r9, r8, fp, lsl #10
     b14:	7b0b0d00 	blvc	2c3f1c <__end+0x195f1c>
     b18:	0e00000b 	cdpeq	0, 0, cr0, cr0, cr11, {0}
     b1c:	000b910b 	andeq	r9, fp, fp, lsl #2
     b20:	700b0f00 	andvc	r0, fp, r0, lsl #30
     b24:	1000000a 	andne	r0, r0, sl
     b28:	000e920b 	andeq	r9, lr, fp, lsl #4
     b2c:	fa0b1100 	blx	2c4f34 <__end+0x196f34>
     b30:	1200000a 	andne	r0, r0, #10
     b34:	0015e50b 	andseq	lr, r5, fp, lsl #10
     b38:	4b0b1300 	blmi	2c5740 <__end+0x197740>
     b3c:	14000007 	strne	r0, [r0], #-7
     b40:	000b1e0b 	andeq	r1, fp, fp, lsl #28
     b44:	8e0b1500 	cfsh32hi	mvfx1, mvfx11, #0
     b48:	16000006 	strne	r0, [r0], -r6
     b4c:	0013720b 	andseq	r7, r3, fp, lsl #4
     b50:	8b0b1700 	blhi	2c6758 <__end+0x198758>
     b54:	18000014 	stmdane	r0, {r2, r4}
     b58:	000b430b 	andeq	r4, fp, fp, lsl #6
     b5c:	7c0b1900 			; <UNDEFINED> instruction: 0x7c0b1900
     b60:	1a00000f 	bne	ba4 <CPSR_IRQ_INHIBIT+0xb24>
     b64:	0013800b 	andseq	r8, r3, fp
     b68:	a80b1b00 	stmdage	fp, {r8, r9, fp, ip}
     b6c:	1c000005 	stcne	0, cr0, [r0], {5}
     b70:	00138e0b 	andseq	r8, r3, fp, lsl #28
     b74:	9c0b1d00 	stcls	13, cr1, [fp], {-0}
     b78:	1e000013 	mcrne	0, 0, r0, cr0, cr3, {0}
     b7c:	0005560b 	andeq	r5, r5, fp, lsl #12
     b80:	c60b1f00 	strgt	r1, [fp], -r0, lsl #30
     b84:	20000013 	andcs	r0, r0, r3, lsl r0
     b88:	0009300b 	andeq	r3, r9, fp
     b8c:	640b2100 	strvs	r2, [fp], #-256	; 0xffffff00
     b90:	2200000e 	andcs	r0, r0, #14
     b94:	0013650b 	andseq	r6, r3, fp, lsl #10
     b98:	860b2300 	strhi	r2, [fp], -r0, lsl #6
     b9c:	2400000d 	strcs	r0, [r0], #-13
     ba0:	000c7a0b 	andeq	r7, ip, fp, lsl #20
     ba4:	590b2500 	stmdbpl	fp, {r8, sl, sp}
     ba8:	26000009 	strcs	r0, [r0], -r9
     bac:	000c980b 	andeq	r9, ip, fp, lsl #16
     bb0:	120b2700 	andne	r2, fp, #0, 14
     bb4:	2800000a 	stmdacs	r0, {r1, r3}
     bb8:	000ca80b 	andeq	sl, ip, fp, lsl #16
     bbc:	b80b2900 	stmdalt	fp, {r8, fp, sp}
     bc0:	2a00000c 	bcs	bf8 <CPSR_IRQ_INHIBIT+0xb78>
     bc4:	000deb0b 	andeq	lr, sp, fp, lsl #22
     bc8:	210b2b00 	tstcs	fp, r0, lsl #22
     bcc:	2c00000c 	stccs	0, cr0, [r0], {12}
     bd0:	0010290b 	andseq	r2, r0, fp, lsl #18
     bd4:	b70b2d00 	strlt	r2, [fp, -r0, lsl #26]
     bd8:	2e000009 	cdpcs	0, 0, cr0, cr0, cr9, {0}
     bdc:	0bb30a00 	bleq	fecc33e4 <GIC_DISTB+0xff4823e4>
     be0:	01070000 	mrseq	r0, (UNDEF: 7)
     be4:	000000a2 	andeq	r0, r0, r2, lsr #1
     be8:	d6061704 	strle	r1, [r6], -r4, lsl #14
     bec:	0b000003 	bleq	c00 <CPSR_IRQ_INHIBIT+0xb80>
     bf0:	000008b7 			; <UNDEFINED> instruction: 0x000008b7
     bf4:	05fb0b00 	ldrbeq	r0, [fp, #2816]!	; 0xb00
     bf8:	0b010000 	bleq	40c00 <__bss_end+0x33c00>
     bfc:	00001593 	muleq	r0, r3, r5
     c00:	140c0b02 	strne	r0, [ip], #-2818	; 0xfffff4fe
     c04:	0b030000 	bleq	c0c0c <__bss_end+0xb3c0c>
     c08:	000008d7 	ldrdeq	r0, [r0], -r7
     c0c:	06bb0b04 	ldrteq	r0, [fp], r4, lsl #22
     c10:	0b050000 	bleq	140c18 <__end+0x12c18>
     c14:	00000993 	muleq	r0, r3, r9
     c18:	08c70b06 	stmiaeq	r7, {r1, r2, r8, r9, fp}^
     c1c:	0b070000 	bleq	1c0c24 <__end+0x92c24>
     c20:	000012a9 	andeq	r1, r0, r9, lsr #5
     c24:	13f10b08 	mvnsne	r0, #8, 22	; 0x2000
     c28:	0b090000 	bleq	240c30 <__end+0x112c30>
     c2c:	000010ff 	strdeq	r1, [r0], -pc	; <UNPREDICTABLE>
     c30:	07000b0a 	streq	r0, [r0, -sl, lsl #22]
     c34:	0b0b0000 	bleq	2c0c3c <__end+0x192c3c>
     c38:	0000090a 	andeq	r0, r0, sl, lsl #18
     c3c:	067c0b0c 	ldrbteq	r0, [ip], -ip, lsl #22
     c40:	0b0d0000 	bleq	340c48 <__user_program+0x40c48>
     c44:	000015c8 	andeq	r1, r0, r8, asr #11
     c48:	0dd80b0e 	vldreq	d16, [r8, #56]	; 0x38
     c4c:	0b0f0000 	bleq	3c0c54 <__user_program+0xc0c54>
     c50:	00000ac5 	andeq	r0, r0, r5, asr #21
     c54:	0e150b10 	vmoveq.32	r0, d5[0]
     c58:	0b110000 	bleq	440c60 <__user_program+0x140c60>
     c5c:	000014cd 	andeq	r1, r0, sp, asr #9
     c60:	07c30b12 	bfieq	r0, r2, (invalid: 22:3)
     c64:	0b130000 	bleq	4c0c6c <__user_program+0x1c0c6c>
     c68:	00000ad8 	ldrdeq	r0, [r0], -r8
     c6c:	0d490b14 	vstreq	d16, [r9, #-80]	; 0xffffffb0
     c70:	0b150000 	bleq	540c78 <__user_program+0x240c78>
     c74:	000008a2 	andeq	r0, r0, r2, lsr #17
     c78:	0d950b16 	vldreq	d0, [r5, #88]	; 0x58
     c7c:	0b170000 	bleq	5c0c84 <__user_program+0x2c0c84>
     c80:	00000b9d 	muleq	r0, sp, fp
     c84:	06d90b18 			; <UNDEFINED> instruction: 0x06d90b18
     c88:	0b190000 	bleq	640c90 <__user_program+0x340c90>
     c8c:	00001474 	andeq	r1, r0, r4, ror r4
     c90:	0d070b1a 	vstreq	d0, [r7, #-104]	; 0xffffff98
     c94:	0b1b0000 	bleq	6c0c9c <__user_program+0x3c0c9c>
     c98:	00000a91 	muleq	r0, r1, sl
     c9c:	05910b1c 	ldreq	r0, [r1, #2844]	; 0xb1c
     ca0:	0b1d0000 	bleq	740ca8 <__user_program+0x440ca8>
     ca4:	00000c52 	andeq	r0, r0, r2, asr ip
     ca8:	0c3e0b1e 			; <UNDEFINED> instruction: 0x0c3e0b1e
     cac:	0b1f0000 	bleq	7c0cb4 <__user_program+0x4c0cb4>
     cb0:	000010bc 	strheq	r1, [r0], -ip
     cb4:	11470b20 	cmpne	r7, r0, lsr #22
     cb8:	0b210000 	bleq	840cc0 <__user_program+0x540cc0>
     cbc:	00001453 	andeq	r1, r0, r3, asr r4
     cc0:	09c40b22 	stmibeq	r4, {r1, r5, r8, r9, fp}^
     cc4:	0b230000 	bleq	8c0ccc <__user_program+0x5c0ccc>
     cc8:	00000f2c 	andeq	r0, r0, ip, lsr #30
     ccc:	11140b24 	tstne	r4, r4, lsr #22
     cd0:	0b250000 	bleq	940cd8 <__user_program+0x640cd8>
     cd4:	00001038 	andeq	r1, r0, r8, lsr r0
     cd8:	104c0b26 	subne	r0, ip, r6, lsr #22
     cdc:	0b270000 	bleq	9c0ce4 <__user_program+0x6c0ce4>
     ce0:	00001060 	andeq	r1, r0, r0, rrx
     ce4:	082b0b28 	stmdaeq	fp!, {r3, r5, r8, r9, fp}
     ce8:	0b290000 	bleq	a40cf0 <__user_program+0x740cf0>
     cec:	000007ae 	andeq	r0, r0, lr, lsr #15
     cf0:	07d60b2a 	ldrbeq	r0, [r6, sl, lsr #22]
     cf4:	0b2b0000 	bleq	ac0cfc <__user_program+0x7c0cfc>
     cf8:	000012f2 	strdeq	r1, [r0], -r2
     cfc:	08080b2c 	stmdaeq	r8, {r2, r3, r5, r8, r9, fp}
     d00:	0b2d0000 	bleq	b40d08 <__user_program+0x840d08>
     d04:	00001306 	andeq	r1, r0, r6, lsl #6
     d08:	131a0b2e 	tstne	sl, #47104	; 0xb800
     d0c:	0b2f0000 	bleq	bc0d14 <__user_program+0x8c0d14>
     d10:	0000132e 	andeq	r1, r0, lr, lsr #6
     d14:	091c0b30 	ldmdbeq	ip, {r4, r5, r8, r9, fp}
     d18:	0b310000 	bleq	c40d20 <__user_program+0x940d20>
     d1c:	000008f6 	strdeq	r0, [r0], -r6
     d20:	0c660b32 			; <UNDEFINED> instruction: 0x0c660b32
     d24:	0b330000 	bleq	cc0d2c <__user_program+0x9c0d2c>
     d28:	00000e28 	andeq	r0, r0, r8, lsr #28
     d2c:	15020b34 	strne	r0, [r2, #-2868]	; 0xfffff4cc
     d30:	0b350000 	bleq	d40d38 <__user_program+0xa40d38>
     d34:	00000976 	andeq	r0, r0, r6, ror r9
     d38:	0a460b36 	beq	1183a18 <__user_program+0xe83a18>
     d3c:	0b370000 	bleq	dc0d44 <__user_program+0xac0d44>
     d40:	00000a5b 	andeq	r0, r0, fp, asr sl
     d44:	0cc80b38 	vstmiaeq	r8, {d16-<overflow reg d43>}
     d48:	0b390000 	bleq	e40d50 <__user_program+0xb40d50>
     d4c:	00000cf2 	strdeq	r0, [r0], -r2
     d50:	15450b3a 	strbne	r0, [r5, #-2874]	; 0xfffff4c6
     d54:	0b3b0000 	bleq	ec0d5c <__user_program+0xbc0d5c>
     d58:	00000f17 	andeq	r0, r0, r7, lsl pc
     d5c:	09e90b3c 	stmibeq	r9!, {r2, r3, r4, r5, r8, r9, fp}^
     d60:	0b3d0000 	bleq	f40d68 <__user_program+0xc40d68>
     d64:	0000060d 	andeq	r0, r0, sp, lsl #12
     d68:	05be0b3e 	ldreq	r0, [lr, #2878]!	; 0xb3e
     d6c:	0b3f0000 	bleq	fc0d74 <__user_program+0xcc0d74>
     d70:	00000e74 	andeq	r0, r0, r4, ror lr
     d74:	0f980b40 	svceq	0x00980b40
     d78:	0b410000 	bleq	1040d80 <__user_program+0xd40d80>
     d7c:	0000109e 	muleq	r0, lr, r0
     d80:	0cdd0b42 	vldmiaeq	sp, {d16-<overflow reg d48>}
     d84:	0b430000 	bleq	10c0d8c <__user_program+0xdc0d8c>
     d88:	0000157e 	andeq	r1, r0, lr, ror r5
     d8c:	0f420b44 	svceq	0x00420b44
     d90:	0b450000 	bleq	1140d98 <__user_program+0xe40d98>
     d94:	000007f2 	strdeq	r0, [r0], -r2
     d98:	0aa70b46 	beq	fe9c3ab8 <GIC_DISTB+0xff182ab8>
     d9c:	0b470000 	bleq	11c0da4 <__user_program+0xec0da4>
     da0:	00000beb 	andeq	r0, r0, fp, ror #23
     da4:	05750b48 	ldrbeq	r0, [r5, #-2888]!	; 0xfffff4b8
     da8:	0b490000 	bleq	1240db0 <__user_program+0xf40db0>
     dac:	0000069e 	muleq	r0, lr, r6
     db0:	09fd0b4a 	ldmibeq	sp!, {r1, r3, r6, r8, r9, fp}^
     db4:	0b4b0000 	bleq	12c0dbc <__user_program+0xfc0dbc>
     db8:	00000d27 	andeq	r0, r0, r7, lsr #26
     dbc:	0202004c 	andeq	r0, r2, #76	; 0x4c
     dc0:	00010707 	andeq	r0, r1, r7, lsl #14
     dc4:	03f30c00 	mvnseq	r0, #0, 24
     dc8:	03e80000 	mvneq	r0, #0
     dcc:	000d0000 	andeq	r0, sp, r0
     dd0:	0003dd0e 	andeq	sp, r3, lr, lsl #26
     dd4:	ff040500 			; <UNDEFINED> instruction: 0xff040500
     dd8:	0e000003 	cdpeq	0, 0, cr0, cr0, cr3, {0}
     ddc:	000003ed 	andeq	r0, r0, sp, ror #7
     de0:	75080102 	strvc	r0, [r8, #-258]	; 0xfffffefe
     de4:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     de8:	000003f8 	strdeq	r0, [r0], -r8
     dec:	00073c0f 	andeq	r3, r7, pc, lsl #24
     df0:	014c0500 	cmpeq	ip, r0, lsl #10
     df4:	0003e81a 	andeq	lr, r3, sl, lsl r8
     df8:	0a810f00 	beq	fe044a00 <GIC_DISTB+0xfe803a00>
     dfc:	82050000 	andhi	r0, r5, #0
     e00:	03e81a01 	mvneq	r1, #4096	; 0x1000
     e04:	f80c0000 			; <UNDEFINED> instruction: 0xf80c0000
     e08:	29000003 	stmdbcs	r0, {r0, r1}
     e0c:	0d000004 	stceq	0, cr0, [r0, #-16]
     e10:	0c8a0900 			; <UNDEFINED> instruction: 0x0c8a0900
     e14:	2d060000 	stccs	0, cr0, [r6, #-0]
     e18:	00041e0d 	andeq	r1, r4, sp, lsl #28
     e1c:	13d60900 	bicsne	r0, r6, #0, 18
     e20:	38060000 	stmdacc	r6, {}	; <UNPREDICTABLE>
     e24:	0001f51c 	andeq	pc, r1, ip, lsl r5	; <UNPREDICTABLE>
     e28:	093d0a00 	ldmdbeq	sp!, {r9, fp}
     e2c:	01070000 	mrseq	r0, (UNDEF: 7)
     e30:	000000a2 	andeq	r0, r0, r2, lsr #1
     e34:	b40e3a06 	strlt	r3, [lr], #-2566	; 0xfffff5fa
     e38:	0b000004 	bleq	e50 <CPSR_IRQ_INHIBIT+0xdd0>
     e3c:	0000058a 	andeq	r0, r0, sl, lsl #11
     e40:	0b8a0b00 	bleq	fe283a48 <GIC_DISTB+0xfea42a48>
     e44:	0b010000 	bleq	40e4c <__bss_end+0x33e4c>
     e48:	000014df 	ldrdeq	r1, [r0], -pc	; <UNPREDICTABLE>
     e4c:	14a20b02 	strtne	r0, [r2], #2818	; 0xb02
     e50:	0b030000 	bleq	c0e58 <__bss_end+0xb3e58>
     e54:	00000ed1 	ldrdeq	r0, [r0], -r1
     e58:	12660b04 	rsbne	r0, r6, #4, 22	; 0x1000
     e5c:	0b050000 	bleq	140e64 <__end+0x12e64>
     e60:	0000077f 	andeq	r0, r0, pc, ror r7
     e64:	07610b06 	strbeq	r0, [r1, -r6, lsl #22]!
     e68:	0b070000 	bleq	1c0e70 <__end+0x92e70>
     e6c:	0000088e 	andeq	r0, r0, lr, lsl #17
     e70:	0dab0b08 			; <UNDEFINED> instruction: 0x0dab0b08
     e74:	0b090000 	bleq	240e7c <__end+0x112e7c>
     e78:	00000786 	andeq	r0, r0, r6, lsl #15
     e7c:	0db20b0a 			; <UNDEFINED> instruction: 0x0db20b0a
     e80:	0b0b0000 	bleq	2c0e88 <__end+0x192e88>
     e84:	000007eb 	andeq	r0, r0, fp, ror #15
     e88:	07780b0c 	ldrbeq	r0, [r8, -ip, lsl #22]!
     e8c:	0b0d0000 	bleq	340e94 <__user_program+0x40e94>
     e90:	000012bd 			; <UNDEFINED> instruction: 0x000012bd
     e94:	0fb60b0e 	svceq	0x00b60b0e
     e98:	000f0000 	andeq	r0, pc, r0
     e9c:	0010d404 	andseq	sp, r0, r4, lsl #8
     ea0:	013f0600 	teqeq	pc, r0, lsl #12
     ea4:	00000441 	andeq	r0, r0, r1, asr #8
     ea8:	00124909 	andseq	r4, r2, r9, lsl #18
     eac:	0f410600 	svceq	0x00410600
     eb0:	000004b4 			; <UNDEFINED> instruction: 0x000004b4
     eb4:	0012d109 	andseq	sp, r2, r9, lsl #2
     eb8:	0c4a0600 	mcrreq	6, 0, r0, sl, cr0
     ebc:	0000002c 	andeq	r0, r0, ip, lsr #32
     ec0:	00072009 	andeq	r2, r7, r9
     ec4:	0c4b0600 	mcrreq	6, 0, r0, fp, cr0
     ec8:	0000002c 	andeq	r0, r0, ip, lsr #32
     ecc:	0013aa10 	andseq	sl, r3, r0, lsl sl
     ed0:	12e20900 	rscne	r0, r2, #0, 18
     ed4:	4c060000 	stcmi	0, cr0, [r6], {-0}
     ed8:	0004f514 	andeq	pc, r4, r4, lsl r5	; <UNPREDICTABLE>
     edc:	e4040500 	str	r0, [r4], #-1280	; 0xfffffb00
     ee0:	11000004 	tstne	r0, r4
     ee4:	000b5409 	andeq	r5, fp, r9, lsl #8
     ee8:	0f4e0600 	svceq	0x004e0600
     eec:	00000508 	andeq	r0, r0, r8, lsl #10
     ef0:	04fb0405 	ldrbteq	r0, [fp], #1029	; 0x405
     ef4:	ea120000 	b	480efc <__user_program+0x180efc>
     ef8:	09000010 	stmdbeq	r0, {r4}
     efc:	00000ebe 			; <UNDEFINED> instruction: 0x00000ebe
     f00:	1f0d5206 	svcne	0x000d5206
     f04:	05000005 	streq	r0, [r0, #-5]
     f08:	00050e04 	andeq	r0, r5, r4, lsl #28
     f0c:	08741300 	ldmdaeq	r4!, {r8, r9, ip}^
     f10:	06340000 	ldrteq	r0, [r4], -r0
     f14:	50150167 	andspl	r0, r5, r7, ror #2
     f18:	14000005 	strne	r0, [r0], #-5
     f1c:	00000c93 	muleq	r0, r3, ip
     f20:	0f016906 	svceq	0x00016906
     f24:	000003ed 	andeq	r0, r0, sp, ror #7
     f28:	08581400 	ldmdaeq	r8, {sl, ip}^
     f2c:	6a060000 	bvs	180f34 <__end+0x52f34>
     f30:	05551401 	ldrbeq	r1, [r5, #-1025]	; 0xfffffbff
     f34:	00040000 	andeq	r0, r4, r0
     f38:	0005250e 	andeq	r2, r5, lr, lsl #10
     f3c:	00c80c00 	sbceq	r0, r8, r0, lsl #24
     f40:	05650000 	strbeq	r0, [r5, #-0]!
     f44:	33150000 	tstcc	r5, #0
     f48:	2d000000 	stccs	0, cr0, [r0, #-0]
     f4c:	05500c00 	ldrbeq	r0, [r0, #-3072]	; 0xfffff400
     f50:	05700000 	ldrbeq	r0, [r0, #-0]!
     f54:	000d0000 	andeq	r0, sp, r0
     f58:	0005650e 	andeq	r6, r5, lr, lsl #10
     f5c:	0bc20f00 	bleq	ff084b64 <GIC_DISTB+0xff843b64>
     f60:	6b060000 	blvs	180f68 <__end+0x52f68>
     f64:	05700301 	ldrbeq	r0, [r0, #-769]!	; 0xfffffcff
     f68:	f80f0000 			; <UNDEFINED> instruction: 0xf80f0000
     f6c:	0600000d 	streq	r0, [r0], -sp
     f70:	2c0c016e 	stfcss	f0, [ip], {110}	; 0x6e
     f74:	16000000 	strne	r0, [r0], -r0
     f78:	00001128 	andeq	r1, r0, r8, lsr #2
     f7c:	00a20107 	adceq	r0, r2, r7, lsl #2
     f80:	81060000 	mrshi	r0, (UNDEF: 6)
     f84:	06390601 	ldrteq	r0, [r9], -r1, lsl #12
     f88:	340b0000 	strcc	r0, [fp], #-0
     f8c:	00000006 	andeq	r0, r0, r6
     f90:	0006400b 	andeq	r4, r6, fp
     f94:	4c0b0200 	sfmmi	f0, 4, [fp], {-0}
     f98:	03000006 	movweq	r0, #6
     f9c:	0009690b 	andeq	r6, r9, fp, lsl #18
     fa0:	580b0300 	stmdapl	fp, {r8, r9}
     fa4:	04000006 	streq	r0, [r0], #-6
     fa8:	000aed0b 	andeq	lr, sl, fp, lsl #26
     fac:	d30b0400 	movwle	r0, #46080	; 0xb400
     fb0:	0500000b 	streq	r0, [r0, #-11]
     fb4:	000b290b 	andeq	r2, fp, fp, lsl #18
     fb8:	110b0500 	tstne	fp, r0, lsl #10
     fbc:	05000007 	streq	r0, [r0, #-7]
     fc0:	0006640b 	andeq	r6, r6, fp, lsl #8
     fc4:	5f0b0600 	svcpl	0x000b0600
     fc8:	0600000d 	streq	r0, [r0], -sp
     fcc:	00084a0b 	andeq	r4, r8, fp, lsl #20
     fd0:	6c0b0600 	stcvs	6, cr0, [fp], {-0}
     fd4:	0600000d 	streq	r0, [r0], -sp
     fd8:	0012890b 	andseq	r8, r2, fp, lsl #18
     fdc:	790b0600 	stmdbvc	fp, {r9, sl}
     fe0:	0600000d 	streq	r0, [r0], -sp
     fe4:	000db90b 	andeq	fp, sp, fp, lsl #18
     fe8:	700b0600 	andvc	r0, fp, r0, lsl #12
     fec:	07000006 	streq	r0, [r0, -r6]
     ff0:	000ea10b 	andeq	sl, lr, fp, lsl #2
     ff4:	ee0b0700 	cdp	7, 0, cr0, cr11, cr0, {0}
     ff8:	0700000e 	streq	r0, [r0, -lr]
     ffc:	0012c40b 	andseq	ip, r2, fp, lsl #8
    1000:	1d0b0700 	stcne	7, cr0, [fp, #-0]
    1004:	07000008 	streq	r0, [r0, -r8]
    1008:	000f6f0b 	andeq	r6, pc, fp, lsl #30
    100c:	e90b0800 	stmdb	fp, {fp}
    1010:	08000005 	stmdaeq	r0, {r0, r2}
    1014:	0012970b 	andseq	r9, r2, fp, lsl #14
    1018:	8b0b0800 	blhi	2c3020 <__end+0x195020>
    101c:	0800000f 	stmdaeq	r0, {r0, r1, r2, r3}
    1020:	14f40f00 	ldrbtne	r0, [r4], #3840	; 0xf00
    1024:	9f060000 	svcls	0x00060000
    1028:	058f1f01 	streq	r1, [pc, #3841]	; 1f31 <GIC_CPUB_offset+0xf31>
    102c:	bd0f0000 	stclt	0, cr0, [pc, #-0]	; 1034 <GIC_CPUB_offset+0x34>
    1030:	0600000f 	streq	r0, [r0], -pc
    1034:	2c0c01a2 	stfcss	f0, [ip], {162}	; 0xa2
    1038:	0f000000 	svceq	0x00000000
    103c:	00000be0 	andeq	r0, r0, r0, ror #23
    1040:	0c01a506 	cfstr32eq	mvfx10, [r1], {6}
    1044:	0000002c 	andeq	r0, r0, ip, lsr #32
    1048:	0015da0f 	andseq	sp, r5, pc, lsl #20
    104c:	01a80600 			; <UNDEFINED> instruction: 0x01a80600
    1050:	00002c0c 	andeq	r2, r0, ip, lsl #24
    1054:	07300f00 	ldreq	r0, [r0, -r0, lsl #30]!
    1058:	ab060000 	blge	181060 <__end+0x53060>
    105c:	002c0c01 	eoreq	r0, ip, r1, lsl #24
    1060:	c70f0000 	strgt	r0, [pc, -r0]
    1064:	0600000f 	streq	r0, [r0], -pc
    1068:	2c0c01ae 	stfcss	f0, [ip], {174}	; 0xae
    106c:	0f000000 	svceq	0x00000000
    1070:	00000ed8 	ldrdeq	r0, [r0], -r8
    1074:	0c01b106 	stfeqd	f3, [r1], {6}
    1078:	0000002c 	andeq	r0, r0, ip, lsr #32
    107c:	000ee30f 	andeq	lr, lr, pc, lsl #6
    1080:	01b40600 			; <UNDEFINED> instruction: 0x01b40600
    1084:	00002c0c 	andeq	r2, r0, ip, lsl #24
    1088:	0fd10f00 	svceq	0x00d10f00
    108c:	b7060000 	strlt	r0, [r6, -r0]
    1090:	002c0c01 	eoreq	r0, ip, r1, lsl #24
    1094:	3b0f0000 	blcc	3c109c <__user_program+0xc109c>
    1098:	0600000d 	streq	r0, [r0], -sp
    109c:	2c0c01ba 	stfcss	f0, [ip], {186}	; 0xba
    10a0:	0f000000 	svceq	0x00000000
    10a4:	00001539 	andeq	r1, r0, r9, lsr r5
    10a8:	0c01bd06 	stceq	13, cr11, [r1], {6}
    10ac:	0000002c 	andeq	r0, r0, ip, lsr #32
    10b0:	000fdb0f 	andeq	sp, pc, pc, lsl #22
    10b4:	01c00600 	biceq	r0, r0, r0, lsl #12
    10b8:	00002c0c 	andeq	r2, r0, ip, lsl #24
    10bc:	15fd0f00 	ldrbne	r0, [sp, #3840]!	; 0xf00
    10c0:	c3060000 	movwgt	r0, #24576	; 0x6000
    10c4:	002c0c01 	eoreq	r0, ip, r1, lsl #24
    10c8:	a90f0000 	stmdbge	pc, {}	; <UNPREDICTABLE>
    10cc:	06000014 			; <UNDEFINED> instruction: 0x06000014
    10d0:	2c0c01c6 	stfcss	f0, [ip], {198}	; 0xc6
    10d4:	0f000000 	svceq	0x00000000
    10d8:	000014b5 			; <UNDEFINED> instruction: 0x000014b5
    10dc:	0c01c906 			; <UNDEFINED> instruction: 0x0c01c906
    10e0:	0000002c 	andeq	r0, r0, ip, lsr #32
    10e4:	0014c10f 	andseq	ip, r4, pc, lsl #2
    10e8:	01cc0600 	biceq	r0, ip, r0, lsl #12
    10ec:	00002c0c 	andeq	r2, r0, ip, lsl #24
    10f0:	14e60f00 	strbtne	r0, [r6], #3840	; 0xf00
    10f4:	d0060000 	andle	r0, r6, r0
    10f8:	002c0c01 	eoreq	r0, ip, r1, lsl #24
    10fc:	f00f0000 			; <UNDEFINED> instruction: 0xf00f0000
    1100:	06000015 			; <UNDEFINED> instruction: 0x06000015
    1104:	2c0c01d3 	stfcss	f0, [ip], {211}	; 0xd3
    1108:	0f000000 	svceq	0x00000000
    110c:	0000078d 	andeq	r0, r0, sp, lsl #15
    1110:	0c01d606 	stceq	6, cr13, [r1], {6}
    1114:	0000002c 	andeq	r0, r0, ip, lsr #32
    1118:	0005650f 	andeq	r6, r5, pc, lsl #10
    111c:	01d90600 	bicseq	r0, r9, r0, lsl #12
    1120:	00002c0c 	andeq	r2, r0, ip, lsl #24
    1124:	09a60f00 	stmibeq	r6!, {r8, r9, sl, fp}
    1128:	dc060000 	stcle	0, cr0, [r6], {-0}
    112c:	002c0c01 	eoreq	r0, ip, r1, lsl #24
    1130:	680f0000 	stmdavs	pc, {}	; <UNPREDICTABLE>
    1134:	06000007 	streq	r0, [r0], -r7
    1138:	2c0c01df 	stfcss	f0, [ip], {223}	; 0xdf
    113c:	0f000000 	svceq	0x00000000
    1140:	00000ff1 	strdeq	r0, [r0], -r1
    1144:	0c01e206 	sfmeq	f6, 1, [r1], {6}
    1148:	0000002c 	andeq	r0, r0, ip, lsr #32
    114c:	000c090f 	andeq	r0, ip, pc, lsl #18
    1150:	01e50600 	mvneq	r0, r0, lsl #12
    1154:	00002c0c 	andeq	r2, r0, ip, lsl #24
    1158:	0e510f00 	cdpeq	15, 5, cr0, cr1, cr0, {0}
    115c:	e8060000 	stmda	r6, {}	; <UNPREDICTABLE>
    1160:	002c0c01 	eoreq	r0, ip, r1, lsl #24
    1164:	df0f0000 	svcle	0x000f0000
    1168:	06000013 			; <UNDEFINED> instruction: 0x06000013
    116c:	2c0c01ef 	stfcss	f0, [ip], {239}	; 0xef
    1170:	0f000000 	svceq	0x00000000
    1174:	000015a8 	andeq	r1, r0, r8, lsr #11
    1178:	0c01f206 	sfmeq	f7, 1, [r1], {6}
    117c:	0000002c 	andeq	r0, r0, ip, lsr #32
    1180:	0015b80f 	andseq	fp, r5, pc, lsl #16
    1184:	01f50600 	mvnseq	r0, r0, lsl #12
    1188:	00002c0c 	andeq	r2, r0, ip, lsl #24
    118c:	08610f00 	stmdaeq	r1!, {r8, r9, sl, fp}^
    1190:	f8060000 			; <UNDEFINED> instruction: 0xf8060000
    1194:	002c0c01 	eoreq	r0, ip, r1, lsl #24
    1198:	1d0f0000 	stcne	0, cr0, [pc, #-0]	; 11a0 <GIC_CPUB_offset+0x1a0>
    119c:	06000014 			; <UNDEFINED> instruction: 0x06000014
    11a0:	2c0c01fb 	stfcss	f0, [ip], {251}	; 0xfb
    11a4:	0f000000 	svceq	0x00000000
    11a8:	00000f57 	andeq	r0, r0, r7, asr pc
    11ac:	0c01fe06 	stceq	14, cr15, [r1], {6}
    11b0:	0000002c 	andeq	r0, r0, ip, lsr #32
    11b4:	000a1f0f 	andeq	r1, sl, pc, lsl #30
    11b8:	02020600 	andeq	r0, r2, #0, 12
    11bc:	00002c0c 	andeq	r2, r0, ip, lsl #24
    11c0:	113a0f00 	teqne	sl, r0, lsl #30
    11c4:	0a060000 	beq	1811cc <__end+0x531cc>
    11c8:	002c0c02 	eoreq	r0, ip, r2, lsl #24
    11cc:	e80f0000 	stmda	pc, {}	; <UNPREDICTABLE>
    11d0:	06000008 	streq	r0, [r0], -r8
    11d4:	2c0c020d 	sfmcs	f0, 4, [ip], {13}
    11d8:	0c000000 	stceq	0, cr0, [r0], {-0}
    11dc:	0000002c 	andeq	r0, r0, ip, lsr #32
    11e0:	000007fe 	strdeq	r0, [r0], -lr
    11e4:	090f000d 	stmdbeq	pc, {r0, r2, r3}	; <UNPREDICTABLE>
    11e8:	0600000b 	streq	r0, [r0], -fp
    11ec:	f30c03fb 	vcge.u8	q0, q14, <illegal reg q13.5>
    11f0:	0c000007 	stceq	0, cr0, [r0], {7}
    11f4:	000004f5 	strdeq	r0, [r0], -r5
    11f8:	0000081b 	andeq	r0, r0, fp, lsl r8
    11fc:	00003315 	andeq	r3, r0, r5, lsl r3
    1200:	0f000d00 	svceq	0x00000d00
    1204:	00001014 	andeq	r1, r0, r4, lsl r0
    1208:	14058406 	strne	r8, [r5], #-1030	; 0xfffffbfa
    120c:	0000080b 	andeq	r0, r0, fp, lsl #16
    1210:	000bcb16 	andeq	ip, fp, r6, lsl fp
    1214:	a2010700 	andge	r0, r1, #0, 14
    1218:	06000000 	streq	r0, [r0], -r0
    121c:	6606058b 	strvs	r0, [r6], -fp, lsl #11
    1220:	0b000008 	bleq	1248 <GIC_CPUB_offset+0x248>
    1224:	0000094b 	andeq	r0, r0, fp, asr #18
    1228:	0dc60b00 	vstreq	d16, [r6]
    122c:	0b010000 	bleq	41234 <__bss_end+0x34234>
    1230:	0000061f 	andeq	r0, r0, pc, lsl r6
    1234:	156a0b02 	strbne	r0, [sl, #-2818]!	; 0xfffff4fe
    1238:	0b030000 	bleq	c1240 <__bss_end+0xb4240>
    123c:	00001081 	andeq	r1, r0, r1, lsl #1
    1240:	10740b04 	rsbsne	r0, r4, r4, lsl #22
    1244:	0b050000 	bleq	14124c <__end+0x1324c>
    1248:	000006f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    124c:	5a0f0006 	bpl	3c126c <__user_program+0xc126c>
    1250:	06000015 			; <UNDEFINED> instruction: 0x06000015
    1254:	28150598 	ldmdacs	r5, {r3, r4, r7, r8, sl}
    1258:	0f000008 	svceq	0x00000008
    125c:	00001442 	andeq	r1, r0, r2, asr #8
    1260:	11079906 	tstne	r7, r6, lsl #18
    1264:	00000033 	andeq	r0, r0, r3, lsr r0
    1268:	0010010f 	andseq	r0, r0, pc, lsl #2
    126c:	07ae0600 	streq	r0, [lr, r0, lsl #12]!
    1270:	00002c0c 	andeq	r2, r0, ip, lsl #24
    1274:	13be0400 			; <UNDEFINED> instruction: 0x13be0400
    1278:	7b070000 	blvc	1c1280 <__end+0x93280>
    127c:	0000a216 	andeq	sl, r0, r6, lsl r2
    1280:	088d0e00 	stmeq	sp, {r9, sl, fp}
    1284:	02020000 	andeq	r0, r2, #0
    1288:	00012605 	andeq	r2, r1, r5, lsl #12
    128c:	06b30400 	ldrteq	r0, [r3], r0, lsl #8
    1290:	81070000 	mrshi	r0, (UNDEF: 7)
    1294:	00003316 	andeq	r3, r0, r6, lsl r3
    1298:	05b60400 	ldreq	r0, [r6, #1024]!	; 0x400
    129c:	85070000 	strhi	r0, [r7, #-0]
    12a0:	00002516 	andeq	r2, r0, r6, lsl r5
    12a4:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
    12a8:	000007a8 	andeq	r0, r0, r8, lsr #15
    12ac:	a0030802 	andge	r0, r3, r2, lsl #16
    12b0:	02000007 	andeq	r0, r0, #7
    12b4:	0fea0408 	svceq	0x00ea0408
    12b8:	10020000 	andne	r0, r2, r0
    12bc:	00108f03 	andseq	r8, r0, r3, lsl #30
    12c0:	08990c00 	ldmeq	r9, {sl, fp}
    12c4:	08e90000 	stmiaeq	r9!, {}^	; <UNPREDICTABLE>
    12c8:	33150000 	tstcc	r5, #0
    12cc:	ff000000 			; <UNDEFINED> instruction: 0xff000000
    12d0:	08d90e00 	ldmeq	r9, {r9, sl, fp}^
    12d4:	fb0f0000 	blx	3c12de <__user_program+0xc12de>
    12d8:	0700000e 	streq	r0, [r0, -lr]
    12dc:	e91601fc 	ldmdb	r6, {r2, r3, r4, r5, r6, r7, r8}
    12e0:	0f000008 	svceq	0x00000008
    12e4:	00000757 	andeq	r0, r0, r7, asr r7
    12e8:	16020207 	strne	r0, [r2], -r7, lsl #4
    12ec:	000008e9 	andeq	r0, r0, r9, ror #17
    12f0:	0005dc17 	andeq	sp, r5, r7, lsl ip
    12f4:	03b30100 			; <UNDEFINED> instruction: 0x03b30100
    12f8:	0008b101 	andeq	fp, r8, r1, lsl #2
    12fc:	00918000 	addseq	r8, r1, r0
    1300:	00013000 	andeq	r3, r1, r0
    1304:	e29c0100 	adds	r0, ip, #0, 2
    1308:	18000009 	stmdane	r0, {r0, r3}
    130c:	b301006e 	movwlt	r0, #4206	; 0x106e
    1310:	08b11703 	ldmeq	r1!, {r0, r1, r8, r9, sl, ip}
    1314:	00040000 	andeq	r0, r4, r0
    1318:	00000000 	andeq	r0, r0, r0
    131c:	64180000 	ldrvs	r0, [r8], #-0
    1320:	03b30100 			; <UNDEFINED> instruction: 0x03b30100
    1324:	0008b122 	andeq	fp, r8, r2, lsr #2
    1328:	00003000 	andeq	r3, r0, r0
    132c:	00002c00 	andeq	r2, r0, r0, lsl #24
    1330:	70721900 	rsbsvc	r1, r2, r0, lsl #18
    1334:	03b30100 			; <UNDEFINED> instruction: 0x03b30100
    1338:	0009e22e 	andeq	lr, r9, lr, lsr #4
    133c:	00910200 	addseq	r0, r1, r0, lsl #4
    1340:	0100711a 	tsteq	r0, sl, lsl r1
    1344:	b10b03b5 			; <UNDEFINED> instruction: 0xb10b03b5
    1348:	60000008 	andvs	r0, r0, r8
    134c:	58000000 	stmdapl	r0, {}	; <UNPREDICTABLE>
    1350:	1a000000 	bne	1358 <GIC_CPUB_offset+0x358>
    1354:	b5010072 	strlt	r0, [r1, #-114]	; 0xffffff8e
    1358:	08b11203 	ldmeq	r1!, {r0, r1, r9, ip}
    135c:	00b60000 	adcseq	r0, r6, r0
    1360:	00ac0000 	adceq	r0, ip, r0
    1364:	791a0000 	ldmdbvc	sl, {}	; <UNPREDICTABLE>
    1368:	03b50100 			; <UNDEFINED> instruction: 0x03b50100
    136c:	0008b119 	andeq	fp, r8, r9, lsl r1
    1370:	00011200 	andeq	r1, r1, r0, lsl #4
    1374:	00010e00 	andeq	r0, r1, r0, lsl #28
    1378:	7a6c1a00 	bvc	1b07b80 <__user_program+0x1807b80>
    137c:	b6010031 			; <UNDEFINED> instruction: 0xb6010031
    1380:	08a50a03 	stmiaeq	r5!, {r0, r1, r9, fp}
    1384:	013e0000 	teqeq	lr, r0
    1388:	013a0000 	teqeq	sl, r0
    138c:	6c1a0000 	ldcvs	0, cr0, [sl], {-0}
    1390:	0100327a 	tsteq	r0, sl, ror r2
    1394:	a50f03b6 	strge	r0, [pc, #-950]	; fe6 <CPSR_IRQ_INHIBIT+0xf66>
    1398:	5e000008 	cdppl	0, 0, cr0, cr0, cr8, {0}
    139c:	5c000001 	stcpl	0, cr0, [r0], {1}
    13a0:	1a000001 	bne	13ac <GIC_CPUB_offset+0x3ac>
    13a4:	b6010069 	strlt	r0, [r1], -r9, rrx
    13a8:	08a51403 	stmiaeq	r5!, {r0, r1, sl, ip}
    13ac:	017b0000 	cmneq	fp, r0
    13b0:	01710000 	cmneq	r1, r0
    13b4:	6b1a0000 	blvs	6813bc <__user_program+0x3813bc>
    13b8:	03b60100 			; <UNDEFINED> instruction: 0x03b60100
    13bc:	0008a517 	andeq	sl, r8, r7, lsl r5
    13c0:	0001c200 	andeq	ip, r1, r0, lsl #4
    13c4:	0001be00 	andeq	fp, r1, r0, lsl #28
    13c8:	04050000 	streq	r0, [r5], #-0
    13cc:	000008b1 			; <UNDEFINED> instruction: 0x000008b1
    13d0:	00002200 	andeq	r2, r0, r0, lsl #4
    13d4:	1c000200 	sfmne	f0, 4, [r0], {-0}
    13d8:	04000007 	streq	r0, [r0], #-7
    13dc:	000b8201 	andeq	r8, fp, r1, lsl #4
    13e0:	0092b000 	addseq	fp, r2, r0
    13e4:	0092d800 	addseq	sp, r2, r0, lsl #16
    13e8:	0004b500 	andeq	fp, r4, r0, lsl #10
    13ec:	0004dc00 	andeq	sp, r4, r0, lsl #24
    13f0:	00047100 	andeq	r7, r4, r0, lsl #2
    13f4:	22800100 	addcs	r0, r0, #0, 2
    13f8:	02000000 	andeq	r0, r0, #0
    13fc:	00073000 	andeq	r3, r7, r0
    1400:	e3010400 	movw	r0, #5120	; 0x1400
    1404:	d800000b 	stmdale	r0, {r0, r1, r3}
    1408:	20000092 	mulcs	r0, r2, r0
    140c:	b5000093 	strlt	r0, [r0, #-147]	; 0xffffff6d
    1410:	dc000004 	stcle	0, cr0, [r0], {4}
    1414:	71000004 	tstvc	r0, r4
    1418:	01000004 	tsteq	r0, r4
    141c:	Address 0x000000000000141c is out of bounds.


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
  50:	0b000f07 	bleq	3c74 <GIC_CPUB_offset+0x2c74>
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
  94:	0b000018 	bleq	fc <CPSR_IRQ_INHIBIT+0x7c>
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
 1d0:	0a000013 	beq	224 <CPSR_IRQ_INHIBIT+0x1a4>
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
 2a0:	0b002403 	bleq	92b4 <__clzdi2+0x4>
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
 31c:	002e0900 	eoreq	r0, lr, r0, lsl #18
 320:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
 324:	0b3b0b3a 	bleq	ec3014 <__user_program+0xbc3014>
 328:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
 32c:	06120111 			; <UNDEFINED> instruction: 0x06120111
 330:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 334:	00000019 	andeq	r0, r0, r9, lsl r0
 338:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
 33c:	030b130e 	movweq	r1, #45838	; 0xb30e
 340:	110e1b0e 	tstne	lr, lr, lsl #22
 344:	10061201 	andne	r1, r6, r1, lsl #4
 348:	02000017 	andeq	r0, r0, #23
 34c:	0b0b0024 	bleq	2c03e4 <__end+0x1923e4>
 350:	0e030b3e 	vmoveq.16	d3[0], r0
 354:	24030000 	strcs	r0, [r3], #-0
 358:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 35c:	0008030b 	andeq	r0, r8, fp, lsl #6
 360:	00160400 	andseq	r0, r6, r0, lsl #8
 364:	0b3a0e03 	bleq	e83b78 <__user_program+0xb83b78>
 368:	0b390b3b 	bleq	e4305c <__user_program+0xb4305c>
 36c:	00001349 	andeq	r1, r0, r9, asr #6
 370:	3f002e05 	svccc	0x00002e05
 374:	3a0e0319 	bcc	380fe0 <__user_program+0x80fe0>
 378:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 37c:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 380:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 384:	97184006 	ldrls	r4, [r8, -r6]
 388:	00001942 	andeq	r1, r0, r2, asr #18
 38c:	3f002e06 	svccc	0x00002e06
 390:	3a0e0319 	bcc	380ffc <__user_program+0x80ffc>
 394:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 398:	1119270b 	tstne	r9, fp, lsl #14
 39c:	40061201 	andmi	r1, r6, r1, lsl #4
 3a0:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 3a4:	01000000 	mrseq	r0, (UNDEF: 0)
 3a8:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
 3ac:	0e030b13 	vmoveq.32	d3[0], r0
 3b0:	01110e1b 	tsteq	r1, fp, lsl lr
 3b4:	17100612 			; <UNDEFINED> instruction: 0x17100612
 3b8:	24020000 	strcs	r0, [r2], #-0
 3bc:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 3c0:	000e030b 	andeq	r0, lr, fp, lsl #6
 3c4:	00240300 	eoreq	r0, r4, r0, lsl #6
 3c8:	0b3e0b0b 	bleq	f82ffc <__user_program+0xc82ffc>
 3cc:	00000803 	andeq	r0, r0, r3, lsl #16
 3d0:	03001604 	movweq	r1, #1540	; 0x604
 3d4:	3b0b3a0e 	blcc	2cec14 <__end+0x1a0c14>
 3d8:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 3dc:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
 3e0:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
 3e4:	0b3a0e03 	bleq	e83bf8 <__user_program+0xb83bf8>
 3e8:	0b390b3b 	bleq	e430dc <__user_program+0xb430dc>
 3ec:	13491927 	movtne	r1, #39207	; 0x9927
 3f0:	06120111 			; <UNDEFINED> instruction: 0x06120111
 3f4:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 3f8:	06000019 			; <UNDEFINED> instruction: 0x06000019
 3fc:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
 400:	0b3a0e03 	bleq	e83c14 <__user_program+0xb83c14>
 404:	0b390b3b 	bleq	e430f8 <__user_program+0xb430f8>
 408:	01111927 	tsteq	r1, r7, lsr #18
 40c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 410:	00194297 	mulseq	r9, r7, r2
 414:	012e0700 			; <UNDEFINED> instruction: 0x012e0700
 418:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
 41c:	0b3b0b3a 	bleq	ec310c <__user_program+0xbc310c>
 420:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
 424:	06120111 			; <UNDEFINED> instruction: 0x06120111
 428:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
 42c:	08000019 	stmdaeq	r0, {r0, r3, r4}
 430:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 434:	0b3b0b3a 	bleq	ec3124 <__user_program+0xbc3124>
 438:	13490b39 	movtne	r0, #39737	; 0x9b39
 43c:	00001802 	andeq	r1, r0, r2, lsl #16
 440:	03003409 	movweq	r3, #1033	; 0x409
 444:	3b0b3a0e 	blcc	2cec84 <__end+0x1a0c84>
 448:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 44c:	00180213 	andseq	r0, r8, r3, lsl r2
 450:	11010000 	mrsne	r0, (UNDEF: 1)
 454:	130e2501 	movwne	r2, #58625	; 0xe501
 458:	1b0e030b 	blne	38108c <__user_program+0x8108c>
 45c:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 460:	00171006 	andseq	r1, r7, r6
 464:	00240200 	eoreq	r0, r4, r0, lsl #4
 468:	0b3e0b0b 	bleq	f8309c <__user_program+0xc8309c>
 46c:	00000e03 	andeq	r0, r0, r3, lsl #28
 470:	0b002403 	bleq	9484 <_enable_interrupts+0x78>
 474:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 478:	04000008 	streq	r0, [r0], #-8
 47c:	13490035 	movtne	r0, #36917	; 0x9035
 480:	16050000 	strne	r0, [r5], -r0
 484:	3a0e0300 	bcc	38108c <__user_program+0x8108c>
 488:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 48c:	0013490b 	andseq	r4, r3, fp, lsl #18
 490:	01130600 	tsteq	r3, r0, lsl #12
 494:	0b3a0b0b 	bleq	e830c8 <__user_program+0xb830c8>
 498:	0b390b3b 	bleq	e4318c <__user_program+0xb4318c>
 49c:	00001301 	andeq	r1, r0, r1, lsl #6
 4a0:	03000d07 	movweq	r0, #3335	; 0xd07
 4a4:	3b0b3a0e 	blcc	2cece4 <__end+0x1a0ce4>
 4a8:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
 4ac:	000b3813 	andeq	r3, fp, r3, lsl r8
 4b0:	00340800 	eorseq	r0, r4, r0, lsl #16
 4b4:	0b3a0e03 	bleq	e83cc8 <__user_program+0xb83cc8>
 4b8:	0b390b3b 	bleq	e431ac <__user_program+0xb431ac>
 4bc:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 4c0:	0f090000 	svceq	0x00090000
 4c4:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 4c8:	0a000013 	beq	51c <CPSR_IRQ_INHIBIT+0x49c>
 4cc:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
 4d0:	0b3a0e03 	bleq	e83ce4 <__user_program+0xb83ce4>
 4d4:	0b390b3b 	bleq	e431c8 <__user_program+0xb431c8>
 4d8:	01111927 	tsteq	r1, r7, lsr #18
 4dc:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 4e0:	00194296 	mulseq	r9, r6, r2
 4e4:	002e0b00 	eoreq	r0, lr, r0, lsl #22
 4e8:	0b3a0e03 	bleq	e83cfc <__user_program+0xb83cfc>
 4ec:	0b390b3b 	bleq	e431e0 <__user_program+0xb431e0>
 4f0:	13491927 	movtne	r1, #39207	; 0x9927
 4f4:	06120111 			; <UNDEFINED> instruction: 0x06120111
 4f8:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 4fc:	0c000019 	stceq	0, cr0, [r0], {25}
 500:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
 504:	0b3a0e03 	bleq	e83d18 <__user_program+0xb83d18>
 508:	0b390b3b 	bleq	e431fc <__user_program+0xb431fc>
 50c:	01111927 	tsteq	r1, r7, lsr #18
 510:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 514:	00194297 	mulseq	r9, r7, r2
 518:	11010000 	mrsne	r0, (UNDEF: 1)
 51c:	11061000 	mrsne	r1, (UNDEF: 6)
 520:	03011201 	movweq	r1, #4609	; 0x1201
 524:	250e1b0e 	strcs	r1, [lr, #-2830]	; 0xfffff4f2
 528:	0005130e 	andeq	r1, r5, lr, lsl #6
 52c:	11010000 	mrsne	r0, (UNDEF: 1)
 530:	11061000 	mrsne	r1, (UNDEF: 6)
 534:	03011201 	movweq	r1, #4609	; 0x1201
 538:	250e1b0e 	strcs	r1, [lr, #-2830]	; 0xfffff4f2
 53c:	0005130e 	andeq	r1, r5, lr, lsl #6
 540:	11010000 	mrsne	r0, (UNDEF: 1)
 544:	11061000 	mrsne	r1, (UNDEF: 6)
 548:	03011201 	movweq	r1, #4609	; 0x1201
 54c:	250e1b0e 	strcs	r1, [lr, #-2830]	; 0xfffff4f2
 550:	0005130e 	andeq	r1, r5, lr, lsl #6
 554:	11010000 	mrsne	r0, (UNDEF: 1)
 558:	11061000 	mrsne	r1, (UNDEF: 6)
 55c:	03011201 	movweq	r1, #4609	; 0x1201
 560:	250e1b0e 	strcs	r1, [lr, #-2830]	; 0xfffff4f2
 564:	0005130e 	andeq	r1, r5, lr, lsl #6
 568:	11010000 	mrsne	r0, (UNDEF: 1)
 56c:	11061000 	mrsne	r1, (UNDEF: 6)
 570:	03011201 	movweq	r1, #4609	; 0x1201
 574:	250e1b0e 	strcs	r1, [lr, #-2830]	; 0xfffff4f2
 578:	0005130e 	andeq	r1, r5, lr, lsl #6
 57c:	11010000 	mrsne	r0, (UNDEF: 1)
 580:	11061000 	mrsne	r1, (UNDEF: 6)
 584:	03011201 	movweq	r1, #4609	; 0x1201
 588:	250e1b0e 	strcs	r1, [lr, #-2830]	; 0xfffff4f2
 58c:	0005130e 	andeq	r1, r5, lr, lsl #6
 590:	11010000 	mrsne	r0, (UNDEF: 1)
 594:	11061000 	mrsne	r1, (UNDEF: 6)
 598:	03011201 	movweq	r1, #4609	; 0x1201
 59c:	250e1b0e 	strcs	r1, [lr, #-2830]	; 0xfffff4f2
 5a0:	0005130e 	andeq	r1, r5, lr, lsl #6
 5a4:	11010000 	mrsne	r0, (UNDEF: 1)
 5a8:	11061000 	mrsne	r1, (UNDEF: 6)
 5ac:	03011201 	movweq	r1, #4609	; 0x1201
 5b0:	250e1b0e 	strcs	r1, [lr, #-2830]	; 0xfffff4f2
 5b4:	0005130e 	andeq	r1, r5, lr, lsl #6
 5b8:	11010000 	mrsne	r0, (UNDEF: 1)
 5bc:	130e2501 	movwne	r2, #58625	; 0xe501
 5c0:	1b0e030b 	blne	3811f4 <__user_program+0x811f4>
 5c4:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 5c8:	00171006 	andseq	r1, r7, r6
 5cc:	00240200 	eoreq	r0, r4, r0, lsl #4
 5d0:	0b3e0b0b 	bleq	f83204 <__user_program+0xc83204>
 5d4:	00000e03 	andeq	r0, r0, r3, lsl #28
 5d8:	0b002403 	bleq	95ec <_enable_interrupts+0x1e0>
 5dc:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
 5e0:	04000008 	streq	r0, [r0], #-8
 5e4:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 5e8:	0b3b0b3a 	bleq	ec32d8 <__user_program+0xbc32d8>
 5ec:	13490b39 	movtne	r0, #39737	; 0x9b39
 5f0:	0f050000 	svceq	0x00050000
 5f4:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 5f8:	06000013 			; <UNDEFINED> instruction: 0x06000013
 5fc:	19270115 	stmdbne	r7!, {r0, r2, r4, r8}
 600:	13011349 	movwne	r1, #4937	; 0x1349
 604:	05070000 	streq	r0, [r7, #-0]
 608:	00134900 	andseq	r4, r3, r0, lsl #18
 60c:	00260800 	eoreq	r0, r6, r0, lsl #16
 610:	34090000 	strcc	r0, [r9], #-0
 614:	3a0e0300 	bcc	38121c <__user_program+0x8121c>
 618:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 61c:	3f13490b 	svccc	0x0013490b
 620:	00193c19 	andseq	r3, r9, r9, lsl ip
 624:	01040a00 	tsteq	r4, r0, lsl #20
 628:	0b3e0e03 	bleq	f83e3c <__user_program+0xc83e3c>
 62c:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 630:	0b3b0b3a 	bleq	ec3320 <__user_program+0xbc3320>
 634:	13010b39 	movwne	r0, #6969	; 0x1b39
 638:	280b0000 	stmdacs	fp, {}	; <UNPREDICTABLE>
 63c:	1c0e0300 	stcne	3, cr0, [lr], {-0}
 640:	0c00000b 	stceq	0, cr0, [r0], {11}
 644:	13490101 	movtne	r0, #37121	; 0x9101
 648:	00001301 	andeq	r1, r0, r1, lsl #6
 64c:	0000210d 	andeq	r2, r0, sp, lsl #2
 650:	00260e00 	eoreq	r0, r6, r0, lsl #28
 654:	00001349 	andeq	r1, r0, r9, asr #6
 658:	0300340f 	movweq	r3, #1039	; 0x40f
 65c:	3b0b3a0e 	blcc	2cee9c <__end+0x1a0e9c>
 660:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
 664:	3c193f13 	ldccc	15, cr3, [r9], {19}
 668:	10000019 	andne	r0, r0, r9, lsl r0
 66c:	0e030013 	mcreq	0, 0, r0, cr3, cr3, {0}
 670:	0000193c 	andeq	r1, r0, ip, lsr r9
 674:	27001511 	smladcs	r0, r1, r5, r1
 678:	12000019 	andne	r0, r0, #25
 67c:	0e030017 	mcreq	0, 0, r0, cr3, cr7, {0}
 680:	0000193c 	andeq	r1, r0, ip, lsr r9
 684:	03011313 	movweq	r1, #4883	; 0x1313
 688:	3a0b0b0e 	bcc	2c32c8 <__end+0x1952c8>
 68c:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 690:	0013010b 	andseq	r0, r3, fp, lsl #2
 694:	000d1400 	andeq	r1, sp, r0, lsl #8
 698:	0b3a0e03 	bleq	e83eac <__user_program+0xb83eac>
 69c:	0b39053b 	bleq	e41b90 <__user_program+0xb41b90>
 6a0:	0b381349 	bleq	e053cc <__user_program+0xb053cc>
 6a4:	21150000 	tstcs	r5, r0
 6a8:	2f134900 	svccs	0x00134900
 6ac:	1600000b 	strne	r0, [r0], -fp
 6b0:	0e030104 	adfeqs	f0, f3, f4
 6b4:	0b0b0b3e 	bleq	2c33b4 <__end+0x1953b4>
 6b8:	0b3a1349 	bleq	e853e4 <__user_program+0xb853e4>
 6bc:	0b39053b 	bleq	e41bb0 <__user_program+0xb41bb0>
 6c0:	00001301 	andeq	r1, r0, r1, lsl #6
 6c4:	3f012e17 	svccc	0x00012e17
 6c8:	3a0e0319 	bcc	381334 <__user_program+0x81334>
 6cc:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 6d0:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 6d4:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 6d8:	96184006 	ldrls	r4, [r8], -r6
 6dc:	13011942 	movwne	r1, #6466	; 0x1942
 6e0:	05180000 	ldreq	r0, [r8, #-0]
 6e4:	3a080300 	bcc	2012ec <__end+0xd32ec>
 6e8:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 6ec:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 6f0:	1742b717 	smlaldne	fp, r2, r7, r7
 6f4:	05190000 	ldreq	r0, [r9, #-0]
 6f8:	3a080300 	bcc	201300 <__end+0xd3300>
 6fc:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 700:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 704:	1a000018 	bne	76c <CPSR_IRQ_INHIBIT+0x6ec>
 708:	08030034 	stmdaeq	r3, {r2, r4, r5}
 70c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
 710:	13490b39 	movtne	r0, #39737	; 0x9b39
 714:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
 718:	00000017 	andeq	r0, r0, r7, lsl r0
 71c:	10001101 	andne	r1, r0, r1, lsl #2
 720:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
 724:	1b0e0301 	blne	381330 <__user_program+0x81330>
 728:	130e250e 	movwne	r2, #58638	; 0xe50e
 72c:	00000005 	andeq	r0, r0, r5
 730:	10001101 	andne	r1, r0, r1, lsl #2
 734:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
 738:	1b0e0301 	blne	381344 <__user_program+0x81344>
 73c:	130e250e 	movwne	r2, #58638	; 0xe50e
 740:	00000005 	andeq	r0, r0, r5

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	00008018 	andeq	r8, r0, r8, lsl r0
  14:	00000328 	andeq	r0, r0, r8, lsr #6
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01720002 	cmneq	r2, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	00008340 	andeq	r8, r0, r0, asr #6
  34:	00000230 	andeq	r0, r0, r0, lsr r2
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	02510002 	subseq	r0, r1, #2
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	00008570 	andeq	r8, r0, r0, ror r5
  54:	000003a4 	andeq	r0, r0, r4, lsr #7
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	049b0002 	ldreq	r0, [fp], #2
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	00008914 	andeq	r8, r0, r4, lsl r9
  74:	00000174 	andeq	r0, r0, r4, ror r1
	...
  80:	0000001c 	andeq	r0, r0, ip, lsl r0
  84:	05710002 	ldrbeq	r0, [r1, #-2]!
  88:	00040000 	andeq	r0, r4, r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	00008a88 	andeq	r8, r0, r8, lsl #21
  94:	0000008c 	andeq	r0, r0, ip, lsl #1
	...
  a0:	0000001c 	andeq	r0, r0, ip, lsl r0
  a4:	06030002 	streq	r0, [r3], -r2
  a8:	00040000 	andeq	r0, r4, r0
  ac:	00000000 	andeq	r0, r0, r0
  b0:	00008b14 	andeq	r8, r0, r4, lsl fp
  b4:	00000100 	andeq	r0, r0, r0, lsl #2
	...
  c0:	0000001c 	andeq	r0, r0, ip, lsl r0
  c4:	06ee0002 	strbteq	r0, [lr], r2
  c8:	00040000 	andeq	r0, r4, r0
  cc:	00000000 	andeq	r0, r0, r0
  d0:	00008c14 	andeq	r8, r0, r4, lsl ip
  d4:	000000f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
	...
  e0:	0000001c 	andeq	r0, r0, ip, lsl r0
  e4:	08b80002 	ldmeq	r8!, {r1}
  e8:	00040000 	andeq	r0, r4, r0
  ec:	00000000 	andeq	r0, r0, r0
  f0:	00008000 	andeq	r8, r0, r0
  f4:	00000018 	andeq	r0, r0, r8, lsl r0
	...
 100:	0000001c 	andeq	r0, r0, ip, lsl r0
 104:	08de0002 	ldmeq	lr, {r1}^
 108:	00040000 	andeq	r0, r4, r0
 10c:	00000000 	andeq	r0, r0, r0
 110:	00008d04 	andeq	r8, r0, r4, lsl #26
 114:	00000044 	andeq	r0, r0, r4, asr #32
	...
 120:	0000001c 	andeq	r0, r0, ip, lsl r0
 124:	09040002 	stmdbeq	r4, {r1}
 128:	00040000 	andeq	r0, r4, r0
 12c:	00000000 	andeq	r0, r0, r0
 130:	00008d48 	andeq	r8, r0, r8, asr #26
 134:	00000158 	andeq	r0, r0, r8, asr r1
	...
 140:	0000001c 	andeq	r0, r0, ip, lsl r0
 144:	092a0002 	stmdbeq	sl!, {r1}
 148:	00040000 	andeq	r0, r4, r0
 14c:	00000000 	andeq	r0, r0, r0
 150:	00008ea0 	andeq	r8, r0, r0, lsr #29
 154:	00000158 	andeq	r0, r0, r8, asr r1
	...
 160:	0000001c 	andeq	r0, r0, ip, lsl r0
 164:	09500002 	ldmdbeq	r0, {r1}^
 168:	00040000 	andeq	r0, r4, r0
 16c:	00000000 	andeq	r0, r0, r0
 170:	00009320 	andeq	r9, r0, r0, lsr #6
 174:	00000108 	andeq	r0, r0, r8, lsl #2
	...
 180:	0000001c 	andeq	r0, r0, ip, lsl r0
 184:	09760002 	ldmdbeq	r6!, {r1}^
 188:	00040000 	andeq	r0, r4, r0
 18c:	00000000 	andeq	r0, r0, r0
 190:	00008ff8 	strdeq	r8, [r0], -r8	; <UNPREDICTABLE>
 194:	00000148 	andeq	r0, r0, r8, asr #2
	...
 1a0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1a4:	099c0002 	ldmibeq	ip, {r1}
 1a8:	00040000 	andeq	r0, r4, r0
 1ac:	00000000 	andeq	r0, r0, r0
 1b0:	00009140 	andeq	r9, r0, r0, asr #2
 1b4:	00000004 	andeq	r0, r0, r4
	...
 1c0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1c4:	09c20002 	stmibeq	r2, {r1}^
 1c8:	00040000 	andeq	r0, r4, r0
 1cc:	00000000 	andeq	r0, r0, r0
 1d0:	00009144 	andeq	r9, r0, r4, asr #2
 1d4:	0000003c 	andeq	r0, r0, ip, lsr r0
	...
 1e0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1e4:	09e80002 	stmibeq	r8!, {r1}^
 1e8:	00040000 	andeq	r0, r4, r0
 1ec:	00000000 	andeq	r0, r0, r0
 1f0:	00009180 	andeq	r9, r0, r0, lsl #3
 1f4:	00000130 	andeq	r0, r0, r0, lsr r1
	...
 200:	0000001c 	andeq	r0, r0, ip, lsl r0
 204:	13d10002 	bicsne	r0, r1, #2
 208:	00040000 	andeq	r0, r4, r0
 20c:	00000000 	andeq	r0, r0, r0
 210:	000092b0 			; <UNDEFINED> instruction: 0x000092b0
 214:	00000028 	andeq	r0, r0, r8, lsr #32
	...
 220:	0000001c 	andeq	r0, r0, ip, lsl r0
 224:	13f70002 	mvnsne	r0, #2
 228:	00040000 	andeq	r0, r4, r0
 22c:	00000000 	andeq	r0, r0, r0
 230:	000092d8 	ldrdeq	r9, [r0], -r8
 234:	00000048 	andeq	r0, r0, r8, asr #32
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
  54:	00801802 	addeq	r1, r0, r2, lsl #16
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
 12c:	de010100 	adfles	f0, f1, f0
 130:	03000000 	movweq	r0, #0
 134:	00004700 	andeq	r4, r0, r0, lsl #14
 138:	fb010200 	blx	40942 <__bss_end+0x33942>
 13c:	01000d0e 	tsteq	r0, lr, lsl #26
 140:	00010101 	andeq	r0, r1, r1, lsl #2
 144:	00010000 	andeq	r0, r1, r0
 148:	656b0100 	strbvs	r0, [fp, #-256]!	; 0xffffff00
 14c:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 150:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 154:	32333400 	eorscc	r3, r3, #0, 8
 158:	6b62696c 	blvs	189a710 <__user_program+0x159a710>
 15c:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 160:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
 164:	656b0000 	strbvs	r0, [fp, #-0]!
 168:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 16c:	0100632e 	tsteq	r0, lr, lsr #6
 170:	736b0000 	cmnvc	fp, #0
 174:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 178:	00682e74 	rsbeq	r2, r8, r4, ror lr
 17c:	00000002 	andeq	r0, r0, r2
 180:	05001805 	streq	r1, [r0, #-2053]	; 0xfffff7fb
 184:	00834002 	addeq	r4, r3, r2
 188:	011d0300 	tsteq	sp, r0, lsl #6
 18c:	05690705 	strbeq	r0, [r9, #-1797]!	; 0xfffff8fb
 190:	0e054d03 	cdpeq	13, 0, cr4, cr5, cr3, {0}
 194:	4a030530 	bmi	c165c <__bss_end+0xb465c>
 198:	02001305 	andeq	r1, r0, #335544320	; 0x14000000
 19c:	002f0304 	eoreq	r0, pc, r4, lsl #6
 1a0:	9f030402 	svcls	0x00030402
 1a4:	02002105 	andeq	r2, r0, #1073741825	; 0x40000001
 1a8:	059c0304 	ldreq	r0, [ip, #772]	; 0x304
 1ac:	04020003 	streq	r0, [r2], #-3
 1b0:	676c6601 	strbvs	r6, [ip, -r1, lsl #12]!
 1b4:	6711052f 	ldrvs	r0, [r1, -pc, lsr #10]
 1b8:	854b0305 	strbhi	r0, [fp, #-773]	; 0xfffffcfb
 1bc:	11052f67 	tstne	r5, r7, ror #30
 1c0:	4b030567 	blmi	c1764 <__bss_end+0xb4764>
 1c4:	05850e05 	streq	r0, [r5, #3589]	; 0xe05
 1c8:	0f054a03 	svceq	0x00054a03
 1cc:	8220052f 	eorhi	r0, r0, #197132288	; 0xbc00000
 1d0:	05820805 	streq	r0, [r2, #2053]	; 0x805
 1d4:	f3834c07 	vmull.u8	q2, d3, d7
 1d8:	670c05f3 			; <UNDEFINED> instruction: 0x670c05f3
 1dc:	054b0705 	strbeq	r0, [fp, #-1797]	; 0xfffff8fb
 1e0:	04020021 	streq	r0, [r2], #-33	; 0xffffffdf
 1e4:	2e780302 	cdpcs	3, 7, cr0, cr8, cr2, {0}
 1e8:	02000305 	andeq	r0, r0, #335544320	; 0x14000000
 1ec:	05660104 	strbeq	r0, [r6, #-260]!	; 0xfffffefc
 1f0:	660c0306 	strvs	r0, [ip], -r6, lsl #6
 1f4:	05680505 	strbeq	r0, [r8, #-1285]!	; 0xfffffafb
 1f8:	660f0303 	strvs	r0, [pc], -r3, lsl #6
 1fc:	08052f2f 	stmdaeq	r5, {r0, r1, r2, r3, r5, r8, r9, sl, fp, sp}
 200:	4a07054c 	bmi	1c1738 <__end+0x93738>
 204:	bbd7d74c 	bllt	ff5f5f3c <GIC_DISTB+0xffdb4f3c>
 208:	4a7a03d7 	bmi	1e8116c <__user_program+0x1b8116c>
 20c:	01000202 	tsteq	r0, r2, lsl #4
 210:	00016c01 	andeq	r6, r1, r1, lsl #24
 214:	62000300 	andvs	r0, r0, #0, 6
 218:	02000000 	andeq	r0, r0, #0
 21c:	0d0efb01 	vstreq	d15, [lr, #-4]
 220:	01010100 	mrseq	r0, (UNDEF: 17)
 224:	00000001 	andeq	r0, r0, r1
 228:	01000001 	tsteq	r0, r1
 22c:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 230:	732f6c65 			; <UNDEFINED> instruction: 0x732f6c65
 234:	34006372 	strcc	r6, [r0], #-882	; 0xfffffc8e
 238:	696c3233 	stmdbvs	ip!, {r0, r1, r4, r5, r9, ip, sp}^
 23c:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
 240:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 244:	00006564 	andeq	r6, r0, r4, ror #10
 248:	6e697270 	mcrvs	2, 3, r7, cr9, cr0, {3}
 24c:	632e6b74 			; <UNDEFINED> instruction: 0x632e6b74
 250:	00000100 	andeq	r0, r0, r0, lsl #2
 254:	6474736b 	ldrbtvs	r7, [r4], #-875	; 0xfffffc95
 258:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 25c:	00020068 	andeq	r0, r2, r8, rrx
 260:	74736b00 	ldrbtvc	r6, [r3], #-2816	; 0xfffff500
 264:	67726164 	ldrbvs	r6, [r2, -r4, ror #2]!
 268:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
 26c:	623c0000 	eorsvs	r0, ip, #0
 270:	746c6975 	strbtvc	r6, [ip], #-2421	; 0xfffff68b
 274:	3e6e692d 	vmulcc.f16	s13, s28, s27	; <UNPREDICTABLE>
 278:	00000000 	andeq	r0, r0, r0
 27c:	00340500 	eorseq	r0, r4, r0, lsl #10
 280:	85700205 	ldrbhi	r0, [r0, #-517]!	; 0xfffffdfb
 284:	20030000 	andcs	r0, r3, r0
 288:	d9070501 	stmdble	r7, {r0, r8, sl}
 28c:	4f06054b 	svcmi	0x0006054b
 290:	05670405 	strbeq	r0, [r7, #-1029]!	; 0xfffffbfb
 294:	4a120302 	bmi	480ea4 <__user_program+0x180ea4>
 298:	74031105 	strvc	r1, [r3], #-261	; 0xfffffefb
 29c:	820b052e 	andhi	r0, fp, #192937984	; 0xb800000
 2a0:	054b1405 	strbeq	r1, [fp, #-1029]	; 0xfffffbfb
 2a4:	0f059e0c 	svceq	0x00059e0c
 2a8:	4a09059f 	bmi	24192c <__end+0x11392c>
 2ac:	059f0605 	ldreq	r0, [pc, #1541]	; 8b9 <CPSR_IRQ_INHIBIT+0x839>
 2b0:	0d05620a 	sfmeq	f6, 4, [r5, #-40]	; 0xffffffd8
 2b4:	4a04056e 	bmi	101874 <__bss_end+0xf4874>
 2b8:	02001605 	andeq	r1, r0, #5242880	; 0x500000
 2bc:	052f0304 	streq	r0, [pc, #-772]!	; ffffffc0 <GIC_DISTB+0x7befc0>
 2c0:	0402001a 	streq	r0, [r2], #-26	; 0xffffffe6
 2c4:	0e054a03 	vmlaeq.f32	s8, s10, s6
 2c8:	03040200 	movweq	r0, #16896	; 0x4200
 2cc:	0005054a 	andeq	r0, r5, sl, asr #10
 2d0:	83030402 	movwhi	r0, #13314	; 0x3402
 2d4:	02001c05 	andeq	r1, r0, #1280	; 0x500
 2d8:	05640304 	strbeq	r0, [r4, #-772]!	; 0xfffffcfc
 2dc:	04020004 	streq	r0, [r2], #-4
 2e0:	02056601 	andeq	r6, r5, #1048576	; 0x100000
 2e4:	68220587 	stmdavs	r2!, {r0, r1, r2, r7, r8, sl}
 2e8:	05890205 	streq	r0, [r9, #517]	; 0x205
 2ec:	07054d08 	streq	r4, [r5, -r8, lsl #26]
 2f0:	4a060531 	bmi	1817bc <__end+0x537bc>
 2f4:	054b0405 	strbeq	r0, [fp, #-1029]	; 0xfffffbfb
 2f8:	07056908 	streq	r6, [r5, -r8, lsl #18]
 2fc:	4b09054a 	blmi	24182c <__end+0x11382c>
 300:	4ba00505 	blmi	fe80171c <GIC_DISTB+0xfefc071c>
 304:	05bd0d05 	ldreq	r0, [sp, #3333]!	; 0xd05
 308:	09054a0c 	stmdbeq	r5, {r2, r3, r9, fp, lr}
 30c:	a008054b 	andge	r0, r8, fp, asr #10
 310:	05670905 	strbeq	r0, [r7, #-2309]!	; 0xfffff6fb
 314:	05054b08 	streq	r4, [r5, #-2824]	; 0xfffff4f8
 318:	bd0d0568 	cfstr32lt	mvfx0, [sp, #-416]	; 0xfffffe60
 31c:	054a0c05 	strbeq	r0, [sl, #-3077]	; 0xfffff3fb
 320:	05054b09 	streq	r4, [r5, #-2825]	; 0xfffff4f7
 324:	bd0d059f 	cfstr32lt	mvfx0, [sp, #-636]	; 0xfffffd84
 328:	054a0c05 	strbeq	r0, [sl, #-3077]	; 0xfffff3fb
 32c:	05054b09 	streq	r4, [r5, #-2825]	; 0xfffff4f7
 330:	054b4ba0 	strbeq	r4, [fp, #-2976]	; 0xfffff460
 334:	0c05bd0d 	stceq	13, cr11, [r5], {13}
 338:	4b09054a 	blmi	241868 <__end+0x113868>
 33c:	059f0505 	ldreq	r0, [pc, #1285]	; 849 <CPSR_IRQ_INHIBIT+0x7c9>
 340:	0c05a10d 	stfeqd	f2, [r5], {13}
 344:	4b09054a 	blmi	241874 <__end+0x113874>
 348:	05a00a05 	streq	r0, [r0, #2565]!	; 0xa05
 34c:	05832f06 	streq	r2, [r3, #3846]	; 0xf06
 350:	0a05640b 	beq	159384 <__end+0x2b384>
 354:	6c0d054a 	cfstr32vs	mvfx0, [sp], {74}	; 0x4a
 358:	054a0c05 	strbeq	r0, [sl, #-3077]	; 0xfffff3fb
 35c:	05054b09 	streq	r4, [r5, #-2825]	; 0xfffff4f7
 360:	be4b4ba0 	vmlalt.f64	d20, d27, d16
 364:	056b0405 	strbeq	r0, [fp, #-1029]!	; 0xfffffbfb
 368:	09058503 	stmdbeq	r5, {r0, r1, r8, sl, pc}
 36c:	667fbc03 	ldrbtvs	fp, [pc], -r3, lsl #24
 370:	054a0805 	strbeq	r0, [sl, #-2053]	; 0xfffff7fb
 374:	00c9030a 	sbceq	r0, r9, sl, lsl #6
 378:	2f01054a 	svccs	0x0001054a
 37c:	01000a02 	tsteq	r0, r2, lsl #20
 380:	0000c701 	andeq	ip, r0, r1, lsl #14
 384:	45000300 	strmi	r0, [r0, #-768]	; 0xfffffd00
 388:	02000000 	andeq	r0, r0, #0
 38c:	0d0efb01 	vstreq	d15, [lr, #-4]
 390:	01010100 	mrseq	r0, (UNDEF: 17)
 394:	00000001 	andeq	r0, r0, r1
 398:	01000001 	tsteq	r0, r1
 39c:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 3a0:	732f6c65 			; <UNDEFINED> instruction: 0x732f6c65
 3a4:	34006372 	strcc	r6, [r0], #-882	; 0xfffffc8e
 3a8:	696c3233 	stmdbvs	ip!, {r0, r1, r4, r5, r9, ip, sp}^
 3ac:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
 3b0:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 3b4:	00006564 	andeq	r6, r0, r4, ror #10
 3b8:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
 3bc:	0100632e 	tsteq	r0, lr, lsr #6
 3c0:	736b0000 	cmnvc	fp, #0
 3c4:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 3c8:	00682e74 	rsbeq	r2, r8, r4, ror lr
 3cc:	00000002 	andeq	r0, r0, r2
 3d0:	05001605 	streq	r1, [r0, #-1541]	; 0xfffff9fb
 3d4:	00891402 	addeq	r1, r9, r2, lsl #8
 3d8:	01230300 			; <UNDEFINED> instruction: 0x01230300
 3dc:	674c0505 	strbvs	r0, [ip, -r5, lsl #10]
 3e0:	05696768 	strbeq	r6, [r9, #-1896]!	; 0xfffff898
 3e4:	05054a0d 	streq	r4, [r5, #-2573]	; 0xfffff5f3
 3e8:	4a16054b 	bmi	58191c <__user_program+0x28191c>
 3ec:	054b0505 	strbeq	r0, [fp, #-1285]	; 0xfffffafb
 3f0:	05054a15 	streq	r4, [r5, #-2581]	; 0xfffff5eb
 3f4:	4a15054b 	bmi	541928 <__user_program+0x241928>
 3f8:	054b0505 	strbeq	r0, [fp, #-1285]	; 0xfffffafb
 3fc:	05054a12 	streq	r4, [r5, #-2578]	; 0xfffff5ee
 400:	4a16054b 	bmi	581934 <__user_program+0x281934>
 404:	054c0105 	strbeq	r0, [ip, #-261]	; 0xfffffefb
 408:	03054f17 	movweq	r4, #24343	; 0x5f17
 40c:	4a14054c 	bmi	501944 <__user_program+0x201944>
 410:	054b0305 	strbeq	r0, [fp, #-773]	; 0xfffffcfb
 414:	01054a0b 	tsteq	r5, fp, lsl #20
 418:	8922054c 	stmdbhi	r2!, {r2, r3, r6, r8, sl}
 41c:	05a20905 	streq	r0, [r2, #2309]!	; 0x905
 420:	07056619 	smladeq	r5, r9, r6, r6
 424:	0305682e 	movweq	r6, #22574	; 0x582e
 428:	4a120531 	bmi	4818f4 <__user_program+0x1818f4>
 42c:	054b0105 	strbeq	r0, [fp, #-261]	; 0xfffffefb
 430:	0c05891d 			; <UNDEFINED> instruction: 0x0c05891d
 434:	661c054d 	ldrvs	r0, [ip], -sp, asr #10
 438:	052e0a05 	streq	r0, [lr, #-2565]!	; 0xfffff5fb
 43c:	0a05670b 	beq	15a070 <__end+0x2c070>
 440:	66190531 			; <UNDEFINED> instruction: 0x66190531
 444:	022f0105 	eoreq	r0, pc, #1073741825	; 0x40000001
 448:	01010008 	tsteq	r1, r8
 44c:	0000008d 	andeq	r0, r0, sp, lsl #1
 450:	004c0003 	subeq	r0, ip, r3
 454:	01020000 	mrseq	r0, (UNDEF: 2)
 458:	000d0efb 	strdeq	r0, [sp], -fp
 45c:	01010101 	tsteq	r1, r1, lsl #2
 460:	01000000 	mrseq	r0, (UNDEF: 0)
 464:	6b010000 	blvs	4046c <__bss_end+0x3346c>
 468:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 46c:	72732f6c 	rsbsvc	r2, r3, #108, 30	; 0x1b0
 470:	33340063 	teqcc	r4, #99	; 0x63
 474:	62696c32 	rsbvs	r6, r9, #12800	; 0x3200
 478:	6e692f6b 	cdpvs	15, 6, cr2, cr9, cr11, {3}
 47c:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
 480:	62000065 	andvs	r0, r0, #101	; 0x65
 484:	63697361 	cmnvs	r9, #-2080374783	; 0x84000001
 488:	6d69745f 	cfstrdvs	mvd7, [r9, #-380]!	; 0xfffffe84
 48c:	632e7265 			; <UNDEFINED> instruction: 0x632e7265
 490:	00000100 	andeq	r0, r0, r0, lsl #2
 494:	6474736b 	ldrbtvs	r7, [r4], #-875	; 0xfffffc95
 498:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 49c:	00020068 	andeq	r0, r2, r8, rrx
 4a0:	1c050000 	stcne	0, cr0, [r5], {-0}
 4a4:	88020500 	stmdahi	r2, {r8, sl}
 4a8:	0300008a 	movweq	r0, #138	; 0x8a
 4ac:	0305010b 	movweq	r0, #20747	; 0x510b
 4b0:	4a0f054b 	bmi	3c19e4 <__user_program+0xc19e4>
 4b4:	054b0305 	strbeq	r0, [fp, #-773]	; 0xfffffcfb
 4b8:	03054a11 	movweq	r4, #23057	; 0x5a11
 4bc:	4a12054b 	bmi	4819f0 <__user_program+0x1819f0>
 4c0:	054b0305 	strbeq	r0, [fp, #-773]	; 0xfffffcfb
 4c4:	01054a16 	tsteq	r5, r6, lsl sl
 4c8:	841c054b 	ldrhi	r0, [ip], #-1355	; 0xfffffab5
 4cc:	054b0a05 	strbeq	r0, [fp, #-2565]	; 0xfffff5fb
 4d0:	16056618 			; <UNDEFINED> instruction: 0x16056618
 4d4:	2f010566 	svccs	0x00010566
 4d8:	01000802 	tsteq	r0, r2, lsl #16
 4dc:	00009801 	andeq	r9, r0, r1, lsl #16
 4e0:	46000300 	strmi	r0, [r0], -r0, lsl #6
 4e4:	02000000 	andeq	r0, r0, #0
 4e8:	0d0efb01 	vstreq	d15, [lr, #-4]
 4ec:	01010100 	mrseq	r0, (UNDEF: 17)
 4f0:	00000001 	andeq	r0, r0, r1
 4f4:	01000001 	tsteq	r0, r1
 4f8:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 4fc:	732f6c65 			; <UNDEFINED> instruction: 0x732f6c65
 500:	34006372 	strcc	r6, [r0], #-882	; 0xfffffc8e
 504:	696c3233 	stmdbvs	ip!, {r0, r1, r4, r5, r9, ip, sp}^
 508:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
 50c:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 510:	00006564 	andeq	r6, r0, r4, ror #10
 514:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
 518:	00632e72 	rsbeq	r2, r3, r2, ror lr
 51c:	6b000001 	blvs	528 <CPSR_IRQ_INHIBIT+0x4a8>
 520:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 524:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 528:	00000200 	andeq	r0, r0, r0, lsl #4
 52c:	00010500 	andeq	r0, r1, r0, lsl #10
 530:	8b140205 	blhi	500d4c <__user_program+0x200d4c>
 534:	13030000 	movwne	r0, #12288	; 0x3000
 538:	83300501 	teqhi	r0, #4194304	; 0x400000
 53c:	059e0e05 	ldreq	r0, [lr, #3589]	; 0xe05
 540:	19052f05 	stmdbne	r5, {r0, r2, r8, r9, sl, fp, sp}
 544:	4b05054a 	blmi	141a74 <__end+0x13a74>
 548:	4a190584 	bmi	641b60 <__user_program+0x341b60>
 54c:	6a4e0105 	bvs	1380968 <__user_program+0x1080968>
 550:	054b0505 	strbeq	r0, [fp, #-1285]	; 0xfffffafb
 554:	01054a19 	tsteq	r5, r9, lsl sl
 558:	0c05864b 	stceq	6, cr8, [r5], {75}	; 0x4b
 55c:	6622054b 	strtvs	r0, [r2], -fp, asr #10
 560:	862f0105 	strthi	r0, [pc], -r5, lsl #2
 564:	054b0505 	strbeq	r0, [fp, #-1285]	; 0xfffffafb
 568:	01054a18 	tsteq	r5, r8, lsl sl
 56c:	0c05854b 	cfstr32eq	mvfx8, [r5], {75}	; 0x4b
 570:	6701054b 	strvs	r0, [r1, -fp, asr #10]
 574:	01000802 	tsteq	r0, r2, lsl #16
 578:	0000a501 	andeq	sl, r0, r1, lsl #10
 57c:	4b000300 	blmi	1184 <GIC_CPUB_offset+0x184>
 580:	02000000 	andeq	r0, r0, #0
 584:	0d0efb01 	vstreq	d15, [lr, #-4]
 588:	01010100 	mrseq	r0, (UNDEF: 17)
 58c:	00000001 	andeq	r0, r0, r1
 590:	01000001 	tsteq	r0, r1
 594:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 598:	732f6c65 			; <UNDEFINED> instruction: 0x732f6c65
 59c:	34006372 	strcc	r6, [r0], #-882	; 0xfffffc8e
 5a0:	696c3233 	stmdbvs	ip!, {r0, r1, r4, r5, r9, ip, sp}^
 5a4:	692f6b62 	stmdbvs	pc!, {r1, r5, r6, r8, r9, fp, sp, lr}	; <UNPREDICTABLE>
 5a8:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 5ac:	00006564 	andeq	r6, r0, r4, ror #10
 5b0:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
 5b4:	70757272 	rsbsvc	r7, r5, r2, ror r2
 5b8:	632e7374 			; <UNDEFINED> instruction: 0x632e7374
 5bc:	00000100 	andeq	r0, r0, r0, lsl #2
 5c0:	6474736b 	ldrbtvs	r7, [r4], #-875	; 0xfffffc95
 5c4:	2e746e69 	cdpcs	14, 7, cr6, cr4, cr9, {3}
 5c8:	00020068 	andeq	r0, r2, r8, rrx
 5cc:	01050000 	mrseq	r0, (UNDEF: 5)
 5d0:	14020500 	strne	r0, [r2], #-1280	; 0xfffffb00
 5d4:	0300008c 	movweq	r0, #140	; 0x8c
 5d8:	034c013b 	movteq	r0, #49467	; 0xc13b
 5dc:	0905820a 	stmdbeq	r5, {r1, r3, r9, pc}
 5e0:	01040200 	mrseq	r0, R12_usr
 5e4:	0301054d 	movweq	r0, #5453	; 0x154d
 5e8:	0905820d 	stmdbeq	r5, {r0, r2, r3, r9, pc}
 5ec:	01040200 	mrseq	r0, R12_usr
 5f0:	0301054d 	movweq	r0, #5453	; 0x154d
 5f4:	034c820d 	movteq	r8, #49677	; 0xc20d
 5f8:	034c820a 	movteq	r8, #49674	; 0xc20a
 5fc:	0505820c 	streq	r8, [r5, #-524]	; 0xfffffdf4
 600:	03010567 	movweq	r0, #5479	; 0x1567
 604:	1d036615 	stcne	6, cr6, [r3, #-84]	; 0xffffffac
 608:	0d033066 	stceq	0, cr3, [r3, #-408]	; 0xfffffe68
 60c:	4b0c0566 	blmi	301bac <__user_program+0x1bac>
 610:	86670105 	strbthi	r0, [r7], -r5, lsl #2
 614:	054b0505 	strbeq	r0, [fp, #-1285]	; 0xfffffafb
 618:	01054a2f 	tsteq	r5, pc, lsr #20
 61c:	0004024b 	andeq	r0, r4, fp, asr #4
 620:	00430101 	subeq	r0, r3, r1, lsl #2
 624:	00030000 	andeq	r0, r3, r0
 628:	00000029 	andeq	r0, r0, r9, lsr #32
 62c:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 630:	0101000d 	tsteq	r1, sp
 634:	00000101 	andeq	r0, r0, r1, lsl #2
 638:	00000100 	andeq	r0, r0, r0, lsl #2
 63c:	32333401 	eorscc	r3, r3, #16777216	; 0x1000000
 640:	6b62696c 	blvs	189abf8 <__user_program+0x159abf8>
 644:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 648:	6f620000 	svcvs	0x00620000
 64c:	532e746f 			; <UNDEFINED> instruction: 0x532e746f
 650:	00000100 	andeq	r0, r0, r0, lsl #2
 654:	02050000 	andeq	r0, r5, #0
 658:	00008000 	andeq	r8, r0, r0
 65c:	2f012a03 	svccs	0x00012a03
 660:	2f33312f 	svccs	0x0033312f
 664:	01000202 	tsteq	r0, r2, lsl #4
 668:	00004d01 	andeq	r4, r0, r1, lsl #26
 66c:	28000300 	stmdacs	r0, {r8, r9}
 670:	02000000 	andeq	r0, r0, #0
 674:	0d0efb01 	vstreq	d15, [lr, #-4]
 678:	01010100 	mrseq	r0, (UNDEF: 17)
 67c:	00000001 	andeq	r0, r0, r1
 680:	01000001 	tsteq	r0, r1
 684:	6c323334 	ldcvs	3, cr3, [r2], #-208	; 0xffffff30
 688:	2f6b6269 	svccs	0x006b6269
 68c:	00637273 	rsbeq	r7, r3, r3, ror r2
 690:	6d726100 	ldfvse	f6, [r2, #-0]
 694:	0100532e 	tsteq	r0, lr, lsr #6
 698:	00000000 	andeq	r0, r0, r0
 69c:	8d040205 	sfmhi	f0, 4, [r4, #-20]	; 0xffffffec
 6a0:	10030000 	andne	r0, r3, r0
 6a4:	332f2f01 			; <UNDEFINED> instruction: 0x332f2f01
 6a8:	332f332f 			; <UNDEFINED> instruction: 0x332f332f
 6ac:	2f2f2f2f 	svccs	0x002f2f2f
 6b0:	2f2f2f33 	svccs	0x002f2f33
 6b4:	0002022f 	andeq	r0, r2, pc, lsr #4
 6b8:	00900101 	addseq	r0, r0, r1, lsl #2
 6bc:	00030000 	andeq	r0, r3, r0
 6c0:	00000024 	andeq	r0, r0, r4, lsr #32
 6c4:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 6c8:	0101000d 	tsteq	r1, sp
 6cc:	00000101 	andeq	r0, r0, r1, lsl #2
 6d0:	00000100 	andeq	r0, r0, r0, lsl #2
 6d4:	6e750001 	cdpvs	0, 7, cr0, cr5, cr1, {0}
 6d8:	6974706f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, ip, sp, lr}^
 6dc:	657a696d 	ldrbvs	r6, [sl, #-2413]!	; 0xfffff693
 6e0:	00632e64 	rsbeq	r2, r3, r4, ror #28
 6e4:	00000000 	andeq	r0, r0, r0
 6e8:	48020500 	stmdami	r2, {r8, sl}
 6ec:	0300008d 	movweq	r0, #141	; 0x8d
 6f0:	2f2f0115 	svccs	0x002f0115
 6f4:	2f2f2f2f 	svccs	0x002f2f2f
 6f8:	2f2f2f2f 	svccs	0x002f2f2f
 6fc:	2f2f2f2f 	svccs	0x002f2f2f
 700:	09032f30 	stmdbeq	r3, {r4, r5, r8, r9, sl, fp, sp}
 704:	2f2f2f2e 	svccs	0x002f2f2e
 708:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 70c:	2f2f2f2f 	svccs	0x002f2f2f
 710:	2f2f2f30 	svccs	0x002f2f30
 714:	2f2f2f2f 	svccs	0x002f2f2f
 718:	2f2f2f2f 	svccs	0x002f2f2f
 71c:	2f2f2f2f 	svccs	0x002f2f2f
 720:	2f2f2f2f 	svccs	0x002f2f2f
 724:	2f2f2f2f 	svccs	0x002f2f2f
 728:	2f2f2f2f 	svccs	0x002f2f2f
 72c:	2f2f2f2f 	svccs	0x002f2f2f
 730:	2f2f2f2f 	svccs	0x002f2f2f
 734:	2f2f2f2f 	svccs	0x002f2f2f
 738:	2f2f2f2f 	svccs	0x002f2f2f
 73c:	2f2f302f 	svccs	0x002f302f
 740:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 744:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 748:	0002022f 	andeq	r0, r2, pc, lsr #4
 74c:	008e0101 	addeq	r0, lr, r1, lsl #2
 750:	00030000 	andeq	r0, r3, r0
 754:	00000022 	andeq	r0, r0, r2, lsr #32
 758:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 75c:	0101000d 	tsteq	r1, sp
 760:	00000101 	andeq	r0, r0, r1, lsl #2
 764:	00000100 	andeq	r0, r0, r0, lsl #2
 768:	706f0001 	rsbvc	r0, pc, r1
 76c:	696d6974 	stmdbvs	sp!, {r2, r4, r5, r6, r8, fp, sp, lr}^
 770:	2e64657a 	mcrcs	5, 3, r6, cr4, cr10, {3}
 774:	00000063 	andeq	r0, r0, r3, rrx
 778:	05000000 	streq	r0, [r0, #-0]
 77c:	008ea002 	addeq	sl, lr, r2
 780:	01150300 	tsteq	r5, r0, lsl #6
 784:	2f2f2f2f 	svccs	0x002f2f2f
 788:	2f2f2f2f 	svccs	0x002f2f2f
 78c:	2f2f2f2f 	svccs	0x002f2f2f
 790:	2f302f2f 	svccs	0x00302f2f
 794:	2f2e0903 	svccs	0x002e0903
 798:	2f2f2f2f 	svccs	0x002f2f2f
 79c:	2f2f302f 	svccs	0x002f302f
 7a0:	2f302f2f 	svccs	0x00302f2f
 7a4:	2f2f2f2f 	svccs	0x002f2f2f
 7a8:	2f2f2f2f 	svccs	0x002f2f2f
 7ac:	2f2f2f2f 	svccs	0x002f2f2f
 7b0:	2f2f2f2f 	svccs	0x002f2f2f
 7b4:	2f2f2f2f 	svccs	0x002f2f2f
 7b8:	2f2f2f2f 	svccs	0x002f2f2f
 7bc:	2f2f2f2f 	svccs	0x002f2f2f
 7c0:	2f2f2f2f 	svccs	0x002f2f2f
 7c4:	2f2f2f2f 	svccs	0x002f2f2f
 7c8:	2f2f2f2f 	svccs	0x002f2f2f
 7cc:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 7d0:	2f2f2f2f 	svccs	0x002f2f2f
 7d4:	2f2f302f 	svccs	0x002f302f
 7d8:	022f302f 	eoreq	r3, pc, #47	; 0x2f
 7dc:	01010002 	tsteq	r1, r2
 7e0:	00000083 	andeq	r0, r0, r3, lsl #1
 7e4:	002e0003 	eoreq	r0, lr, r3
 7e8:	01020000 	mrseq	r0, (UNDEF: 2)
 7ec:	000d0efb 	strdeq	r0, [sp], -fp
 7f0:	01010101 	tsteq	r1, r1, lsl #2
 7f4:	01000000 	mrseq	r0, (UNDEF: 0)
 7f8:	6b010000 	blvs	40800 <__bss_end+0x33800>
 7fc:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
 800:	72732f6c 	rsbsvc	r2, r3, #108, 30	; 0x1b0
 804:	73000063 	movwvc	r0, #99	; 0x63
 808:	72657075 	rsbvc	r7, r5, #117	; 0x75
 80c:	6f736976 	svcvs	0x00736976
 810:	00532e72 	subseq	r2, r3, r2, ror lr
 814:	00000001 	andeq	r0, r0, r1
 818:	20020500 	andcs	r0, r2, r0, lsl #10
 81c:	03000093 	movweq	r0, #147	; 0x93
 820:	2f0100d5 	svccs	0x000100d5
 824:	2f2f2f2f 	svccs	0x002f2f2f
 828:	10032f2f 	andne	r2, r3, pc, lsr #30
 82c:	312f2008 			; <UNDEFINED> instruction: 0x312f2008
 830:	2e09032f 	cdpcs	3, 0, cr0, cr9, cr15, {1}
 834:	322f2f2f 	eorcc	r2, pc, #47, 30	; 0xbc
 838:	2f2f312f 	svccs	0x002f312f
 83c:	2f6d302f 	svccs	0x006d302f
 840:	2f2f322f 	svccs	0x002f322f
 844:	322f2f2f 	eorcc	r2, pc, #47, 30	; 0xbc
 848:	2f342f2f 	svccs	0x00342f2f
 84c:	3232342f 	eorscc	r3, r2, #788529152	; 0x2f000000
 850:	9e0a0332 	mcrls	3, 0, r0, cr10, cr2, {1}
 854:	2f32312f 	svccs	0x0032312f
 858:	03302f2f 	teqeq	r0, #47, 30	; 0xbc
 85c:	032e7f9d 			; <UNDEFINED> instruction: 0x032e7f9d
 860:	02022e0b 	andeq	r2, r2, #11, 28	; 0xb0
 864:	7c010100 	stfvcs	f0, [r1], {-0}
 868:	03000000 	movweq	r0, #0
 86c:	00003d00 	andeq	r3, r0, r0, lsl #26
 870:	fb010200 	blx	4107a <__bss_end+0x3407a>
 874:	01000d0e 	tsteq	r0, lr, lsl #26
 878:	00010101 	andeq	r0, r1, r1, lsl #2
 87c:	00010000 	andeq	r0, r1, r0
 880:	2e2e0100 	sufcse	f0, f6, f0
 884:	2f2e2e2f 	svccs	0x002e2e2f
 888:	6c2f2e2e 	stcvs	14, cr2, [pc], #-184	; 7d8 <CPSR_IRQ_INHIBIT+0x758>
 88c:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 890:	6f632f63 	svcvs	0x00632f63
 894:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 898:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 89c:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 8a0:	75663162 	strbvc	r3, [r6, #-354]!	; 0xfffffe9e
 8a4:	2e73636e 	cdpcs	3, 7, cr6, cr3, cr14, {3}
 8a8:	00010053 	andeq	r0, r1, r3, asr r0
 8ac:	05000000 	streq	r0, [r0, #-0]
 8b0:	008ff802 	addeq	pc, pc, r2, lsl #16
 8b4:	0a8b0300 	beq	fe2c14bc <GIC_DISTB+0xfea804bc>
 8b8:	30302f01 	eorscc	r2, r0, r1, lsl #30
 8bc:	302f2f2f 	eorcc	r2, pc, pc, lsr #30
 8c0:	2f2f2f2f 	svccs	0x002f2f2f
 8c4:	143e0230 	ldrtne	r0, [lr], #-560	; 0xfffffdd0
 8c8:	30302f30 	eorscc	r2, r0, r0, lsr pc
 8cc:	2f30312f 	svccs	0x0030312f
 8d0:	9208302f 	andls	r3, r8, #47	; 0x2f
 8d4:	322f302f 	eorcc	r3, pc, #47	; 0x2f
 8d8:	2f821f03 	svccs	0x00821f03
 8dc:	2f2f2f2f 	svccs	0x002f2f2f
 8e0:	02022f2f 	andeq	r2, r2, #47, 30	; 0xbc
 8e4:	53010100 	movwpl	r0, #4352	; 0x1100
 8e8:	03000000 	movweq	r0, #0
 8ec:	00003d00 	andeq	r3, r0, r0, lsl #26
 8f0:	fb010200 	blx	410fa <__bss_end+0x340fa>
 8f4:	01000d0e 	tsteq	r0, lr, lsl #26
 8f8:	00010101 	andeq	r0, r1, r1, lsl #2
 8fc:	00010000 	andeq	r0, r1, r0
 900:	2e2e0100 	sufcse	f0, f6, f0
 904:	2f2e2e2f 	svccs	0x002e2e2f
 908:	6c2f2e2e 	stcvs	14, cr2, [pc], #-184	; 858 <CPSR_IRQ_INHIBIT+0x7d8>
 90c:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 910:	6f632f63 	svcvs	0x00632f63
 914:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 918:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 91c:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 920:	75663162 	strbvc	r3, [r6, #-354]!	; 0xfffffe9e
 924:	2e73636e 	cdpcs	3, 7, cr6, cr3, cr14, {3}
 928:	00010053 	andeq	r0, r1, r3, asr r0
 92c:	05000000 	streq	r0, [r0, #-0]
 930:	00914002 	addseq	r4, r1, r2
 934:	0bb40300 	bleq	fed0153c <GIC_DISTB+0xff4c053c>
 938:	00020201 	andeq	r0, r2, r1, lsl #4
 93c:	00530101 	subseq	r0, r3, r1, lsl #2
 940:	00030000 	andeq	r0, r3, r0
 944:	00000039 	andeq	r0, r0, r9, lsr r0
 948:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 94c:	0101000d 	tsteq	r1, sp
 950:	00000101 	andeq	r0, r0, r1, lsl #2
 954:	00000100 	andeq	r0, r0, r0, lsl #2
 958:	2f2e2e01 	svccs	0x002e2e01
 95c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 960:	696c2f2e 	stmdbvs	ip!, {r1, r2, r3, r5, r8, r9, sl, fp, sp}^
 964:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 968:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
 96c:	2f676966 	svccs	0x00676966
 970:	006d7261 	rsbeq	r7, sp, r1, ror #4
 974:	61706200 	cmnvs	r0, r0, lsl #4
 978:	532e6962 			; <UNDEFINED> instruction: 0x532e6962
 97c:	00000100 	andeq	r0, r0, r0, lsl #2
 980:	02050000 	andeq	r0, r5, #0
 984:	00009144 	andeq	r9, r0, r4, asr #2
 988:	0101fd03 	tsteq	r1, r3, lsl #26	; <UNPREDICTABLE>
 98c:	672f4cf4 			; <UNDEFINED> instruction: 0x672f4cf4
 990:	01000202 	tsteq	r0, r2, lsl #4
 994:	0001e901 	andeq	lr, r1, r1, lsl #18
 998:	ca000300 	bgt	15a0 <GIC_CPUB_offset+0x5a0>
 99c:	02000000 	andeq	r0, r0, #0
 9a0:	0d0efb01 	vstreq	d15, [lr, #-4]
 9a4:	01010100 	mrseq	r0, (UNDEF: 17)
 9a8:	00000001 	andeq	r0, r0, r1
 9ac:	01000001 	tsteq	r0, r1
 9b0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 9b4:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 9b8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 9bc:	00636367 	rsbeq	r6, r3, r7, ror #6
 9c0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 9c4:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 9c8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 9cc:	2f636367 	svccs	0x00636367
 9d0:	692f2e2e 	stmdbvs	pc!, {r1, r2, r3, r5, r9, sl, fp, sp}	; <UNPREDICTABLE>
 9d4:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
 9d8:	2e006564 	cfsh32cs	mvfx6, mvfx0, #52
 9dc:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 9e0:	672f2e2f 	strvs	r2, [pc, -pc, lsr #28]!
 9e4:	2e006363 	cdpcs	3, 0, cr6, cr0, cr3, {3}
 9e8:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 9ec:	2f2e2e2f 	svccs	0x002e2e2f
 9f0:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 9f4:	2e2f6363 	cdpcs	3, 2, cr6, cr15, cr3, {3}
 9f8:	63672f2e 	cmnvs	r7, #46, 30	; 0xb8
 9fc:	6f632f63 	svcvs	0x00632f63
 a00:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 a04:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 a08:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 a0c:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 a10:	00632e32 	rsbeq	r2, r3, r2, lsr lr
 a14:	68000001 	stmdavs	r0, {r0}
 a18:	74687361 	strbtvc	r7, [r8], #-865	; 0xfffffc9f
 a1c:	682e6261 	stmdavs	lr!, {r0, r5, r6, r9, sp, lr}
 a20:	00000200 	andeq	r0, r0, r0, lsl #4
 a24:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 a28:	2e617369 	cdpcs	3, 6, cr7, cr1, cr9, {3}
 a2c:	00030068 	andeq	r0, r3, r8, rrx
 a30:	6d726100 	ldfvse	f6, [r2, #-0]
 a34:	7570632d 	ldrbvc	r6, [r0, #-813]!	; 0xfffffcd3
 a38:	0300682e 	movweq	r6, #2094	; 0x82e
 a3c:	6e690000 	cdpvs	0, 6, cr0, cr9, cr0, {0}
 a40:	632d6e73 			; <UNDEFINED> instruction: 0x632d6e73
 a44:	74736e6f 	ldrbtvc	r6, [r3], #-3695	; 0xfffff191
 a48:	73746e61 	cmnvc	r4, #1552	; 0x610
 a4c:	0300682e 	movweq	r6, #2094	; 0x82e
 a50:	72610000 	rsbvc	r0, r1, #0
 a54:	00682e6d 	rsbeq	r2, r8, sp, ror #28
 a58:	6c000004 	stcvs	0, cr0, [r0], {4}
 a5c:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 a60:	682e3263 	stmdavs	lr!, {r0, r1, r5, r6, r9, ip, sp}
 a64:	00000100 	andeq	r0, r0, r0, lsl #2
 a68:	00010500 	andeq	r0, r1, r0, lsl #10
 a6c:	91800205 	orrls	r0, r0, r5, lsl #4
 a70:	b3030000 	movwlt	r0, #12288	; 0x3000
 a74:	03050107 	movweq	r0, #20743	; 0x5107
 a78:	06060513 			; <UNDEFINED> instruction: 0x06060513
 a7c:	05010b03 	streq	r0, [r1, #-2819]	; 0xfffff4fd
 a80:	4a740301 	bmi	1d0168c <__user_program+0x1a0168c>
 a84:	2f0b052e 	svccs	0x000b052e
 a88:	052d0105 	streq	r0, [sp, #-261]!	; 0xfffffefb
 a8c:	03300603 	teqeq	r0, #3145728	; 0x300000
 a90:	0105010a 	tsteq	r5, sl, lsl #2
 a94:	01740306 	cmneq	r4, r6, lsl #6
 a98:	052f0b05 	streq	r0, [pc, #-2821]!	; ffffff9b <GIC_DISTB+0x7bef9b>
 a9c:	2e0b0306 	cdpcs	3, 0, cr0, cr11, cr6, {0}
 aa0:	30060705 	andcc	r0, r6, r5, lsl #14
 aa4:	01060d05 	tsteq	r6, r5, lsl #26
 aa8:	07052d9f 			; <UNDEFINED> instruction: 0x07052d9f
 aac:	0d052f06 	stceq	15, cr2, [r5, #-24]	; 0xffffffe8
 ab0:	052e0106 	streq	r0, [lr, #-262]!	; 0xfffffefa
 ab4:	05300607 	ldreq	r0, [r0, #-1543]!	; 0xfffff9f9
 ab8:	05010609 	streq	r0, [r1, #-1545]	; 0xfffff9f7
 abc:	052f0607 	streq	r0, [pc, #-1543]!	; 4bd <CPSR_IRQ_INHIBIT+0x43d>
 ac0:	2e010609 	cfmadd32cs	mvax0, mvfx0, mvfx1, mvfx9
 ac4:	05890a05 	streq	r0, [r9, #2565]	; 0xa05
 ac8:	2e790309 	cdpcs	3, 7, cr0, cr9, cr9, {0}
 acc:	35060705 	strcc	r0, [r6, #-1797]	; 0xfffff8fb
 ad0:	01060a05 	tsteq	r6, r5, lsl #20
 ad4:	68030b05 	stmdavs	r3, {r0, r2, r8, r9, fp}
 ad8:	0a052e2e 	beq	14c398 <__end+0x1e398>
 adc:	052e1803 	streq	r1, [lr, #-2051]!	; 0xfffff7fd
 ae0:	05300604 	ldreq	r0, [r0, #-1540]!	; 0xfffff9fc
 ae4:	2d130606 	ldccs	6, cr0, [r3, #-24]	; 0xffffffe8
 ae8:	0405492f 	streq	r4, [r5], #-2351	; 0xfffff6d1
 aec:	06052f06 	streq	r2, [r5], -r6, lsl #30
 af0:	07050106 	streq	r0, [r5, -r6, lsl #2]
 af4:	0a053106 	beq	14cf14 <__end+0x1ef14>
 af8:	04050106 	streq	r0, [r5], #-262	; 0xfffffefa
 afc:	06054c06 	streq	r4, [r5], -r6, lsl #24
 b00:	04050106 	streq	r0, [r5], #-262	; 0xfffffefa
 b04:	01068606 	tsteq	r6, r6, lsl #12
 b08:	05320b05 	ldreq	r0, [r2, #-2821]!	; 0xfffff4fb
 b0c:	05054a10 	streq	r4, [r5, #-2576]	; 0xfffff5f0
 b10:	08052e4a 	stmdaeq	r5, {r1, r3, r6, r9, sl, fp, sp}
 b14:	0e053106 	adfeqs	f3, f5, f6
 b18:	06060513 			; <UNDEFINED> instruction: 0x06060513
 b1c:	04052e01 	streq	r2, [r5], #-3585	; 0xfffff1ff
 b20:	2e790306 	cdpcs	3, 7, cr0, cr9, cr6, {0}
 b24:	05140805 	ldreq	r0, [r4, #-2053]	; 0xfffff7fb
 b28:	05141303 	ldreq	r1, [r4, #-771]	; 0xfffffcfd
 b2c:	050f060b 	streq	r0, [pc, #-1547]	; 529 <CPSR_IRQ_INHIBIT+0x4a9>
 b30:	052e6905 	streq	r6, [lr, #-2309]!	; 0xfffff6fb
 b34:	052f0608 	streq	r0, [pc, #-1544]!	; 534 <CPSR_IRQ_INHIBIT+0x4b4>
 b38:	0605130e 	streq	r1, [r5], -lr, lsl #6
 b3c:	052e0106 	streq	r0, [lr, #-262]!	; 0xfffffefa
 b40:	05320604 	ldreq	r0, [r2, #-1540]!	; 0xfffff9fc
 b44:	65130606 	ldrvs	r0, [r3, #-1542]	; 0xfffff9fa
 b48:	052d2e2f 	streq	r2, [sp, #-3631]!	; 0xfffff1d1
 b4c:	052f0604 	streq	r0, [pc, #-1540]!	; 550 <CPSR_IRQ_INHIBIT+0x4d0>
 b50:	05010606 	streq	r0, [r1, #-1542]	; 0xfffff9fa
 b54:	052f0604 	streq	r0, [pc, #-1540]!	; 558 <CPSR_IRQ_INHIBIT+0x4d8>
 b58:	0501060f 	streq	r0, [r1, #-1551]	; 0xfffff9f1
 b5c:	0f056606 	svceq	0x00056606
 b60:	2e06052e 	cfsh32cs	mvfx0, mvfx6, #30
 b64:	32060305 	andcc	r0, r6, #335544320	; 0x14000000
 b68:	01060605 	tsteq	r6, r5, lsl #12
 b6c:	2f060505 	svccs	0x00060505
 b70:	01060905 	tsteq	r6, r5, lsl #18
 b74:	2f060305 	svccs	0x00060305
 b78:	13060105 	movwne	r0, #24837	; 0x6105
 b7c:	0002022e 	andeq	r0, r2, lr, lsr #4
 b80:	005d0101 	subseq	r0, sp, r1, lsl #2
 b84:	00030000 	andeq	r0, r3, r0
 b88:	0000003d 	andeq	r0, r0, sp, lsr r0
 b8c:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 b90:	0101000d 	tsteq	r1, sp
 b94:	00000101 	andeq	r0, r0, r1, lsl #2
 b98:	00000100 	andeq	r0, r0, r0, lsl #2
 b9c:	2f2e2e01 	svccs	0x002e2e01
 ba0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 ba4:	696c2f2e 	stmdbvs	ip!, {r1, r2, r3, r5, r8, r9, sl, fp, sp}^
 ba8:	63636762 	cmnvs	r3, #25690112	; 0x1880000
 bac:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
 bb0:	2f676966 	svccs	0x00676966
 bb4:	006d7261 	rsbeq	r7, sp, r1, ror #4
 bb8:	62696c00 	rsbvs	r6, r9, #0, 24
 bbc:	6e756631 	mrcvs	6, 3, r6, cr5, cr1, {1}
 bc0:	532e7363 			; <UNDEFINED> instruction: 0x532e7363
 bc4:	00000100 	andeq	r0, r0, r0, lsl #2
 bc8:	02050000 	andeq	r0, r5, #0
 bcc:	000092b0 			; <UNDEFINED> instruction: 0x000092b0
 bd0:	010de103 	tsteq	sp, r3, lsl #2
 bd4:	09032f30 	stmdbeq	r3, {r4, r5, r8, r9, sl, fp, sp}
 bd8:	302f2f2e 	eorcc	r2, pc, lr, lsr #30
 bdc:	0402342f 	streq	r3, [r2], #-1071	; 0xfffffbd1
 be0:	60010100 	andvs	r0, r1, r0, lsl #2
 be4:	03000000 	movweq	r0, #0
 be8:	00003d00 	andeq	r3, r0, r0, lsl #26
 bec:	fb010200 	blx	413f6 <__bss_end+0x343f6>
 bf0:	01000d0e 	tsteq	r0, lr, lsl #26
 bf4:	00010101 	andeq	r0, r1, r1, lsl #2
 bf8:	00010000 	andeq	r0, r1, r0
 bfc:	2e2e0100 	sufcse	f0, f6, f0
 c00:	2f2e2e2f 	svccs	0x002e2e2f
 c04:	6c2f2e2e 	stcvs	14, cr2, [pc], #-184	; b54 <CPSR_IRQ_INHIBIT+0xad4>
 c08:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
 c0c:	6f632f63 	svcvs	0x00632f63
 c10:	6769666e 	strbvs	r6, [r9, -lr, ror #12]!
 c14:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 c18:	696c0000 	stmdbvs	ip!, {}^	; <UNPREDICTABLE>
 c1c:	75663162 	strbvc	r3, [r6, #-354]!	; 0xfffffe9e
 c20:	2e73636e 	cdpcs	3, 7, cr6, cr3, cr14, {3}
 c24:	00010053 	andeq	r0, r1, r3, asr r0
 c28:	05000000 	streq	r0, [r0, #-0]
 c2c:	0092d802 	addseq	sp, r2, r2, lsl #16
 c30:	0dc00300 	stcleq	3, cr0, [r0]
 c34:	2f302f01 	svccs	0x00302f01
 c38:	2f2f302f 	svccs	0x002f302f
 c3c:	2f2f2f30 	svccs	0x002f2f30
 c40:	0a022f2f 	beq	8c904 <__bss_end+0x7f904>
 c44:	Address 0x0000000000000c44 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
       0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
       4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
       8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
       c:	70670074 	rsbvc	r0, r7, r4, ror r0
      10:	735f6f69 	cmpvc	pc, #420	; 0x1a4
      14:	705f7465 	subsvc	r7, pc, r5, ror #8
      18:	006c6c75 	rsbeq	r6, ip, r5, ror ip
      1c:	6f697067 	svcvs	0x00697067
      20:	69706700 	ldmdbvs	r0!, {r8, r9, sl, sp, lr}^
      24:	65735f6f 	ldrbvs	r5, [r3, #-3951]!	; 0xfffff091
      28:	33340074 	teqcc	r4, #116	; 0x74
      2c:	62696c32 	rsbvs	r6, r9, #12800	; 0x3200
      30:	72732f6b 	rsbsvc	r2, r3, #428	; 0x1ac
      34:	70672f63 	rsbvc	r2, r7, r3, ror #30
      38:	632e6f69 			; <UNDEFINED> instruction: 0x632e6f69
      3c:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
      40:	6f6c2067 	svcvs	0x006c2067
      44:	7520676e 	strvc	r6, [r0, #-1902]!	; 0xfffff892
      48:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
      4c:	2064656e 	rsbcs	r6, r4, lr, ror #10
      50:	00746e69 	rsbseq	r6, r4, r9, ror #28
      54:	6f697067 	svcvs	0x00697067
      58:	726c635f 	rsbvc	r6, ip, #2080374785	; 0x7c000001
      5c:	66666f00 	strbtvs	r6, [r6], -r0, lsl #30
      60:	00746573 	rsbseq	r6, r4, r3, ror r5
      64:	746e6975 	strbtvc	r6, [lr], #-2421	; 0xfffff68b
      68:	00745f38 	rsbseq	r5, r4, r8, lsr pc
      6c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
      70:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
      74:	61686320 	cmnvs	r8, r0, lsr #6
      78:	69750072 	ldmdbvs	r5!, {r1, r4, r5, r6}^
      7c:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
      80:	4700745f 	smlsdmi	r0, pc, r4, r7	; <UNPREDICTABLE>
      84:	4320554e 			; <UNDEFINED> instruction: 0x4320554e
      88:	39203731 	stmdbcc	r0!, {r0, r4, r5, r8, r9, sl, ip, sp}
      8c:	312e322e 			; <UNDEFINED> instruction: 0x312e322e
      90:	31303220 	teqcc	r0, r0, lsr #4
      94:	32303139 	eorscc	r3, r0, #1073741838	; 0x4000000e
      98:	72282035 	eorvc	r2, r8, #53	; 0x35
      9c:	61656c65 	cmnvs	r5, r5, ror #24
      a0:	20296573 	eorcs	r6, r9, r3, ror r5
      a4:	4d52415b 	ldfmie	f4, [r2, #-364]	; 0xfffffe94
      a8:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
      ac:	622d392d 	eorvs	r3, sp, #737280	; 0xb4000
      b0:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
      b4:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
      b8:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
      bc:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
      c0:	39353737 	ldmdbcc	r5!, {r0, r1, r2, r4, r5, r8, r9, sl, ip, sp}
      c4:	2d205d39 	stccs	13, cr5, [r0, #-228]!	; 0xffffff1c
      c8:	6f6c666d 	svcvs	0x006c666d
      cc:	612d7461 			; <UNDEFINED> instruction: 0x612d7461
      d0:	733d6962 	teqvc	sp, #1605632	; 0x188000
      d4:	2074666f 	rsbscs	r6, r4, pc, ror #12
      d8:	72616d2d 	rsbvc	r6, r1, #2880	; 0xb40
      dc:	6d2d206d 	stcvs	0, cr2, [sp, #-436]!	; 0xfffffe4c
      e0:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
      e4:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
      e8:	612d3776 			; <UNDEFINED> instruction: 0x612d3776
      ec:	20672d20 	rsbcs	r2, r7, r0, lsr #26
      f0:	20314f2d 	eorscs	r4, r1, sp, lsr #30
      f4:	20304f2d 	eorscs	r4, r0, sp, lsr #30
      f8:	7266662d 	rsbvc	r6, r6, #47185920	; 0x2d00000
      fc:	74736565 	ldrbtvc	r6, [r3], #-1381	; 0xfffffa9b
     100:	69646e61 	stmdbvs	r4!, {r0, r5, r6, r9, sl, fp, sp, lr}^
     104:	7300676e 	movwvc	r6, #1902	; 0x76e
     108:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
     10c:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
     110:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
     114:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
     118:	70670074 	rsbvc	r0, r7, r4, ror r0
     11c:	635f6f69 	cmpvs	pc, #420	; 0x1a4
     120:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
     124:	68730067 	ldmdavs	r3!, {r0, r1, r2, r5, r6}^
     128:	2074726f 	rsbscs	r7, r4, pc, ror #4
     12c:	00746e69 	rsbseq	r6, r4, r9, ror #28
     130:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; 7c <CPSR_FIQ_INHIBIT+0x3c>
     134:	776f2f65 	strbvc	r2, [pc, -r5, ror #30]!
     138:	632f6e65 			; <UNDEFINED> instruction: 0x632f6e65
     13c:	346e6570 	strbtcc	r6, [lr], #-1392	; 0xfffffa90
     140:	702f3233 	eorvc	r3, pc, r3, lsr r2	; <UNPREDICTABLE>
     144:	656a6f72 	strbvs	r6, [sl, #-3954]!	; 0xfffff08e
     148:	2f327463 	svccs	0x00327463
     14c:	732f3467 			; <UNDEFINED> instruction: 0x732f3467
     150:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
     154:	72610065 	rsbvc	r0, r1, #101	; 0x65
     158:	31796172 	cmncc	r9, r2, ror r1
     15c:	72726100 	rsbsvc	r6, r2, #0, 2
     160:	00327961 	eorseq	r7, r2, r1, ror #18
     164:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
     168:	732f6c65 			; <UNDEFINED> instruction: 0x732f6c65
     16c:	6b2f6372 	blvs	bd8f3c <__user_program+0x8d8f3c>
     170:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
     174:	00632e6c 	rsbeq	r2, r3, ip, ror #28
     178:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
     17c:	61765f72 	cmnvs	r6, r2, ror pc
     180:	0065756c 	rsbeq	r7, r5, ip, ror #10
     184:	65646e69 	strbvs	r6, [r4, #-3689]!	; 0xfffff197
     188:	656b0078 	strbvs	r0, [fp, #-120]!	; 0xffffff88
     18c:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
     190:	69616d5f 	stmdbvs	r1!, {r0, r1, r2, r3, r4, r6, r8, sl, fp, sp, lr}^
     194:	6f67006e 	svcvs	0x0067006e
     198:	7000646f 	andvc	r6, r0, pc, ror #8
     19c:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
     1a0:	6b6d756e 	blvs	1b5d760 <__user_program+0x185d760>
     1a4:	6e697500 	cdpvs	5, 6, cr7, cr9, cr0, {0}
     1a8:	5f343674 	svcpl	0x00343674
     1ac:	61620074 	smcvs	8196	; 0x2004
     1b0:	6b006573 	blvs	19784 <__bss_end+0xc784>
     1b4:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
     1b8:	72732f6c 	rsbsvc	r2, r3, #108, 30	; 0x1b0
     1bc:	72702f63 	rsbsvc	r2, r0, #396	; 0x18c
     1c0:	6b746e69 	blvs	1d1bb6c <__user_program+0x1a1bb6c>
     1c4:	5f00632e 	svcpl	0x0000632e
     1c8:	5f61765f 	svcpl	0x0061765f
     1cc:	7473696c 	ldrbtvc	r6, [r3], #-2412	; 0xfffff694
     1d0:	61686300 	cmnvs	r8, r0, lsl #6
     1d4:	756f5f72 	strbvc	r5, [pc, #-3954]!	; fffff26a <GIC_DISTB+0x7be26a>
     1d8:	69640074 	stmdbvs	r4!, {r2, r4, r5, r6}^
     1dc:	73746967 	cmnvc	r4, #1687552	; 0x19c000
     1e0:	67696400 	strbvs	r6, [r9, -r0, lsl #8]!
     1e4:	70007469 	andvc	r7, r0, r9, ror #8
     1e8:	746e6972 	strbtvc	r6, [lr], #-2418	; 0xfffff68e
     1ec:	7261006b 	rsbvc	r0, r1, #107	; 0x6b
     1f0:	5f007367 	svcpl	0x00007367
     1f4:	0070615f 	rsbseq	r6, r0, pc, asr r1
     1f8:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
     1fc:	7465675f 	strbtvc	r6, [r5], #-1887	; 0xfffff8a1
     200:	7479625f 	ldrbtvc	r6, [r9], #-607	; 0xfffffda1
     204:	61750065 	cmnvs	r5, r5, rrx
     208:	705f7472 	subsvc	r7, pc, r2, ror r4	; <UNPREDICTABLE>
     20c:	625f7475 	subsvs	r7, pc, #1962934272	; 0x75000000
     210:	00657479 	rsbeq	r7, r5, r9, ror r4
     214:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
     218:	732f6c65 			; <UNDEFINED> instruction: 0x732f6c65
     21c:	752f6372 	strvc	r6, [pc, #-882]!	; fffffeb2 <GIC_DISTB+0x7beeb2>
     220:	2e747261 	cdpcs	2, 7, cr7, cr4, cr1, {3}
     224:	61750063 	cmnvs	r5, r3, rrx
     228:	695f7472 	ldmdbvs	pc, {r1, r4, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
     22c:	0074696e 	rsbseq	r6, r4, lr, ror #18
     230:	74726175 	ldrbtvc	r6, [r2], #-373	; 0xfffffe8b
     234:	6f6c635f 	svcvs	0x006c635f
     238:	6b006573 	blvs	1980c <__bss_end+0xc80c>
     23c:	656e7265 	strbvs	r7, [lr, #-613]!	; 0xfffffd9b
     240:	72732f6c 	rsbsvc	r2, r3, #108, 30	; 0x1b0
     244:	61622f63 	cmnvs	r2, r3, ror #30
     248:	5f636973 	svcpl	0x00636973
     24c:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
     250:	00632e72 	rsbeq	r2, r3, r2, ror lr
     254:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
     258:	6f635f74 	svcvs	0x00635f74
     25c:	64746e75 	ldrbtvs	r6, [r4], #-3701	; 0xfffff18b
     260:	006e776f 	rsbeq	r7, lr, pc, ror #14
     264:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
     268:	616c5f72 	smcvs	50674	; 0xc5f2
     26c:	00686374 	rsbeq	r6, r8, r4, ror r3
     270:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
     274:	732f6c65 			; <UNDEFINED> instruction: 0x732f6c65
     278:	742f6372 	strtvc	r6, [pc], #-882	; 280 <CPSR_IRQ_INHIBIT+0x200>
     27c:	72656d69 	rsbvc	r6, r5, #6720	; 0x1a40
     280:	7400632e 	strvc	r6, [r0], #-814	; 0xfffffcd2
     284:	72656d69 	rsbvc	r6, r5, #6720	; 0x1a40
     288:	656c635f 	strbvs	r6, [ip, #-863]!	; 0xfffffca1
     28c:	705f7261 	subsvc	r7, pc, r1, ror #4
     290:	69646e65 	stmdbvs	r4!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
     294:	6600676e 	strvs	r6, [r0], -lr, ror #14
     298:	00716572 	rsbseq	r6, r1, r2, ror r5
     29c:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
     2a0:	73695f72 	cmnvc	r9, #456	; 0x1c8
     2a4:	6e65705f 	mcrvs	0, 3, r7, cr5, cr15, {2}
     2a8:	676e6964 	strbvs	r6, [lr, -r4, ror #18]!
     2ac:	6d697400 	cfstrdvs	mvd7, [r9, #-0]
     2b0:	735f7265 	cmpvc	pc, #1342177286	; 0x50000006
     2b4:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
     2b8:	6d697400 	cfstrdvs	mvd7, [r9, #-0]
     2bc:	735f7265 	cmpvc	pc, #1342177286	; 0x50000006
     2c0:	00706f74 	rsbseq	r6, r0, r4, ror pc
     2c4:	62616e45 	rsbvs	r6, r1, #1104	; 0x450
     2c8:	425f656c 	subsmi	r6, pc, #108, 10	; 0x1b000000
     2cc:	63697361 	cmnvs	r9, #-2080374783	; 0x84000001
     2d0:	5152495f 	cmppl	r2, pc, asr r9
     2d4:	49460073 	stmdbmi	r6, {r0, r1, r4, r5, r6}^
     2d8:	6f635f51 	svcvs	0x00635f51
     2dc:	6f72746e 	svcvs	0x0072746e
     2e0:	5249006c 	subpl	r0, r9, #108	; 0x6c
     2e4:	61625f51 	cmnvs	r2, r1, asr pc
     2e8:	5f636973 	svcpl	0x00636973
     2ec:	646e6570 	strbtvs	r6, [lr], #-1392	; 0xfffffa90
     2f0:	00676e69 	rsbeq	r6, r7, r9, ror #28
     2f4:	5f717269 	svcpl	0x00717269
     2f8:	5f6d7361 	svcpl	0x006d7361
     2fc:	646e6168 	strbtvs	r6, [lr], #-360	; 0xfffffe98
     300:	0072656c 	rsbseq	r6, r2, ip, ror #10
     304:	65646e75 	strbvs	r6, [r4, #-3701]!	; 0xfffff18b
     308:	656e6966 	strbvs	r6, [lr, #-2406]!	; 0xfffff69a
     30c:	6e695f64 	cdpvs	15, 6, cr5, cr9, cr4, {3}
     310:	75727473 	ldrbvc	r7, [r2, #-1139]!	; 0xfffffb8d
     314:	6f697463 	svcvs	0x00697463
     318:	65765f6e 	ldrbvs	r5, [r6, #-3950]!	; 0xfffff092
     31c:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
     320:	51524900 	cmppl	r2, r0, lsl #18
     324:	6e65705f 	mcrvs	0, 3, r7, cr5, cr15, {2}
     328:	676e6964 	strbvs	r6, [lr, -r4, ror #18]!
     32c:	4900315f 	stmdbmi	r0, {r0, r1, r2, r3, r4, r6, r8, ip, sp}
     330:	705f5152 	subsvc	r5, pc, r2, asr r1	; <UNPREDICTABLE>
     334:	69646e65 	stmdbvs	r4!, {r0, r2, r5, r6, r9, sl, fp, sp, lr}^
     338:	325f676e 	subscc	r6, pc, #28835840	; 0x1b80000
     33c:	73694400 	cmnvc	r9, #0, 8
     340:	656c6261 	strbvs	r6, [ip, #-609]!	; 0xfffffd9f
     344:	7361425f 	cmnvc	r1, #-268435451	; 0xf0000005
     348:	495f6369 	ldmdbmi	pc, {r0, r3, r5, r6, r8, r9, sp, lr}^	; <UNPREDICTABLE>
     34c:	00735152 	rsbseq	r5, r3, r2, asr r1
     350:	74666f73 	strbtvc	r6, [r6], #-3955	; 0xfffff08d
     354:	65726177 	ldrbvs	r6, [r2, #-375]!	; 0xfffffe89
     358:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
     35c:	75727265 	ldrbvc	r7, [r2, #-613]!	; 0xfffffd9b
     360:	765f7470 			; <UNDEFINED> instruction: 0x765f7470
     364:	6f746365 	svcvs	0x00746365
     368:	70720072 	rsbsvc	r0, r2, r2, ror r0
     36c:	51524969 	cmppl	r2, r9, ror #18
     370:	746e6f43 	strbtvc	r6, [lr], #-3907	; 0xfffff0bd
     374:	6c6c6f72 	stclvs	15, cr6, [ip], #-456	; 0xfffffe38
     378:	72007265 	andvc	r7, r0, #1342177286	; 0x50000006
     37c:	695f6970 	ldmdbvs	pc, {r4, r5, r6, r8, fp, sp, lr}^	; <UNPREDICTABLE>
     380:	635f7172 	cmpvs	pc, #-2147483620	; 0x8000001c
     384:	72746e6f 	rsbsvc	r6, r4, #1776	; 0x6f0
     388:	656c6c6f 	strbvs	r6, [ip, #-3183]!	; 0xfffff391
     38c:	00745f72 	rsbseq	r5, r4, r2, ror pc
     390:	74736166 	ldrbtvc	r6, [r3], #-358	; 0xfffffe9a
     394:	746e695f 	strbtvc	r6, [lr], #-2399	; 0xfffff6a1
     398:	75727265 	ldrbvc	r7, [r2, #-613]!	; 0xfffffd9b
     39c:	765f7470 			; <UNDEFINED> instruction: 0x765f7470
     3a0:	6f746365 	svcvs	0x00746365
     3a4:	72700072 	rsbsvc	r0, r0, #114	; 0x72
     3a8:	74656665 	strbtvc	r6, [r5], #-1637	; 0xfffff99b
     3ac:	615f6863 	cmpvs	pc, r3, ror #16
     3b0:	74726f62 	ldrbtvc	r6, [r2], #-3938	; 0xfffff09e
     3b4:	6365765f 	cmnvs	r5, #99614720	; 0x5f00000
     3b8:	00726f74 	rsbseq	r6, r2, r4, ror pc
     3bc:	5f495052 	svcpl	0x00495052
     3c0:	62616e45 	rsbvs	r6, r1, #1104	; 0x450
     3c4:	5241656c 	subpl	r6, r1, #108, 10	; 0x1b000000
     3c8:	6d69544d 	cfstrdvs	mvd5, [r9, #-308]!	; 0xfffffecc
     3cc:	6e497265 	cdpvs	2, 4, cr7, cr9, cr5, {3}
     3d0:	72726574 	rsbsvc	r6, r2, #116, 10	; 0x1d000000
     3d4:	00747075 	rsbseq	r7, r4, r5, ror r0
     3d8:	61736944 	cmnvs	r3, r4, asr #18
     3dc:	5f656c62 	svcpl	0x00656c62
     3e0:	73515249 	cmpvc	r1, #-1879048188	; 0x90000004
     3e4:	7200325f 	andvc	r3, r0, #-268435451	; 0xf0000005
     3e8:	74657365 	strbtvc	r7, [r5], #-869	; 0xfffffc9b
     3ec:	6365765f 	cmnvs	r5, #99614720	; 0x5f00000
     3f0:	00726f74 	rsbseq	r6, r2, r4, ror pc
     3f4:	61746164 	cmnvs	r4, r4, ror #2
     3f8:	6f62615f 	svcvs	0x0062615f
     3fc:	765f7472 			; <UNDEFINED> instruction: 0x765f7472
     400:	6f746365 	svcvs	0x00746365
     404:	6e450072 	mcrvs	0, 2, r0, cr5, cr2, {3}
     408:	656c6261 	strbvs	r6, [ip, #-609]!	; 0xfffffd9f
     40c:	5152495f 	cmppl	r2, pc, asr r9
     410:	00325f73 	eorseq	r5, r2, r3, ror pc
     414:	5f495052 	svcpl	0x00495052
     418:	49746547 	ldmdbmi	r4!, {r0, r1, r2, r6, r8, sl, sp, lr}^
     41c:	6f437172 	svcvs	0x00437172
     420:	6f72746e 	svcvs	0x0072746e
     424:	72656c6c 	rsbvc	r6, r5, #108, 24	; 0x6c00
     428:	73694400 	cmnvc	r9, #0, 8
     42c:	656c6261 	strbvs	r6, [ip, #-609]!	; 0xfffffd9f
     430:	5152495f 	cmppl	r2, pc, asr r9
     434:	00315f73 	eorseq	r5, r1, r3, ror pc
     438:	62616e45 	rsbvs	r6, r1, #1104	; 0x450
     43c:	495f656c 	ldmdbmi	pc, {r2, r3, r5, r6, r8, sl, sp, lr}^	; <UNPREDICTABLE>
     440:	5f735152 	svcpl	0x00735152
     444:	656b0031 	strbvs	r0, [fp, #-49]!	; 0xffffffcf
     448:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
     44c:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
     450:	746e692f 	strbtvc	r6, [lr], #-2351	; 0xfffff6d1
     454:	75727265 	ldrbvc	r7, [r2, #-613]!	; 0xfffffd9b
     458:	2e737470 	mrccs	4, 3, r7, cr3, cr0, {3}
     45c:	33340063 	teqcc	r4, #99	; 0x63
     460:	62696c32 	rsbvs	r6, r9, #12800	; 0x3200
     464:	72732f6b 	rsbsvc	r2, r3, #428	; 0x1ac
     468:	6f622f63 	svcvs	0x00622f63
     46c:	532e746f 			; <UNDEFINED> instruction: 0x532e746f
     470:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
     474:	20534120 	subscs	r4, r3, r0, lsr #2
     478:	34332e32 	ldrtcc	r2, [r3], #-3634	; 0xfffff1ce
     47c:	32333400 	eorscc	r3, r3, #0, 8
     480:	6b62696c 	blvs	189aa38 <__user_program+0x159aa38>
     484:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
     488:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
     48c:	7500532e 	strvc	r5, [r0, #-814]	; 0xfffffcd2
     490:	74706f6e 	ldrbtvc	r6, [r0], #-3950	; 0xfffff092
     494:	7a696d69 	bvc	1a5ba40 <__user_program+0x175ba40>
     498:	632e6465 			; <UNDEFINED> instruction: 0x632e6465
     49c:	72656b00 	rsbvc	r6, r5, #0, 22
     4a0:	2f6c656e 	svccs	0x006c656e
     4a4:	2f637273 	svccs	0x00637273
     4a8:	65707573 	ldrbvs	r7, [r0, #-1395]!	; 0xfffffa8d
     4ac:	73697672 	cmnvc	r9, #119537664	; 0x7200000
     4b0:	532e726f 			; <UNDEFINED> instruction: 0x532e726f
     4b4:	2f2e2e00 	svccs	0x002e2e00
     4b8:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     4bc:	696c2f2e 	stmdbvs	ip!, {r1, r2, r3, r5, r8, r9, sl, fp, sp}^
     4c0:	63636762 	cmnvs	r3, #25690112	; 0x1880000
     4c4:	6e6f632f 	cdpvs	3, 6, cr6, cr15, cr15, {1}
     4c8:	2f676966 	svccs	0x00676966
     4cc:	2f6d7261 	svccs	0x006d7261
     4d0:	3162696c 	cmncc	r2, ip, ror #18
     4d4:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
     4d8:	00532e73 	subseq	r2, r3, r3, ror lr
     4dc:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
     4e0:	672f646c 	strvs	r6, [pc, -ip, ror #8]!
     4e4:	612d6363 			; <UNDEFINED> instruction: 0x612d6363
     4e8:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
     4ec:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
     4f0:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
     4f4:	396c472d 	stmdbcc	ip!, {r0, r2, r3, r5, r8, r9, sl, lr}^
     4f8:	2f39546b 	svccs	0x0039546b
     4fc:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
     500:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
     504:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
     508:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
     50c:	2d392d69 	ldccs	13, cr2, [r9, #-420]!	; 0xfffffe5c
     510:	39313032 	ldmdbcc	r1!, {r1, r4, r5, ip, sp}
     514:	2f34712d 	svccs	0x0034712d
     518:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
     51c:	72612f64 	rsbvc	r2, r1, #100, 30	; 0x190
     520:	6f6e2d6d 	svcvs	0x006e2d6d
     524:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
     528:	2f696261 	svccs	0x00696261
     52c:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
     530:	2e006363 	cdpcs	3, 0, cr6, cr0, cr3, {3}
     534:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     538:	2f2e2e2f 	svccs	0x002e2e2f
     53c:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
     540:	632f6363 			; <UNDEFINED> instruction: 0x632f6363
     544:	69666e6f 	stmdbvs	r6!, {r0, r1, r2, r3, r5, r6, r9, sl, fp, sp, lr}^
     548:	72612f67 	rsbvc	r2, r1, #412	; 0x19c
     54c:	70622f6d 	rsbvc	r2, r2, sp, ror #30
     550:	2e696261 	cdpcs	2, 6, cr6, cr9, cr1, {3}
     554:	73690053 	cmnvc	r9, #83	; 0x53
     558:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
     55c:	70665f74 	rsbvc	r5, r6, r4, ror pc
     560:	6c62645f 	cfstrdvs	mvd6, [r2], #-380	; 0xfffffe84
     564:	6d726100 	ldfvse	f6, [r2, #-0]
     568:	6372615f 	cmnvs	r2, #-1073741801	; 0xc0000017
     56c:	77695f68 	strbvc	r5, [r9, -r8, ror #30]!
     570:	74786d6d 	ldrbtvc	r6, [r8], #-3437	; 0xfffff293
     574:	52415400 	subpl	r5, r1, #0, 8
     578:	5f544547 	svcpl	0x00544547
     57c:	5f555043 	svcpl	0x00555043
     580:	74726f63 	ldrbtvc	r6, [r2], #-3939	; 0xfffff09d
     584:	326d7865 	rsbcc	r7, sp, #6619136	; 0x650000
     588:	52410033 	subpl	r0, r1, #51	; 0x33
     58c:	51455f4d 	cmppl	r5, sp, asr #30
     590:	52415400 	subpl	r5, r1, #0, 8
     594:	5f544547 	svcpl	0x00544547
     598:	5f555043 	svcpl	0x00555043
     59c:	316d7261 	cmncc	sp, r1, ror #4
     5a0:	74363531 	ldrtvc	r3, [r6], #-1329	; 0xfffffacf
     5a4:	00736632 	rsbseq	r6, r3, r2, lsr r6
     5a8:	5f617369 	svcpl	0x00617369
     5ac:	5f746962 	svcpl	0x00746962
     5b0:	6d756874 	ldclvs	8, cr6, [r5, #-464]!	; 0xfffffe30
     5b4:	44550062 	ldrbmi	r0, [r5], #-98	; 0xffffff9e
     5b8:	70797449 	rsbsvc	r7, r9, r9, asr #8
     5bc:	41540065 	cmpmi	r4, r5, rrx
     5c0:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     5c4:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     5c8:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
     5cc:	61786574 	cmnvs	r8, r4, ror r5
     5d0:	6f633735 	svcvs	0x00633735
     5d4:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
     5d8:	00333561 	eorseq	r3, r3, r1, ror #10
     5dc:	64755f5f 	ldrbtvs	r5, [r5], #-3935	; 0xfffff0a1
     5e0:	6f6d7669 	svcvs	0x006d7669
     5e4:	34696464 	strbtcc	r6, [r9], #-1124	; 0xfffffb9c
     5e8:	53414200 	movtpl	r4, #4608	; 0x1200
     5ec:	52415f45 	subpl	r5, r1, #276	; 0x114
     5f0:	385f4843 	ldmdacc	pc, {r0, r1, r6, fp, lr}^	; <UNPREDICTABLE>
     5f4:	41425f4d 	cmpmi	r2, sp, asr #30
     5f8:	54004553 	strpl	r4, [r0], #-1363	; 0xfffffaad
     5fc:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
     600:	50435f54 	subpl	r5, r3, r4, asr pc
     604:	72615f55 	rsbvc	r5, r1, #340	; 0x154
     608:	3031386d 	eorscc	r3, r1, sp, ror #16
     60c:	52415400 	subpl	r5, r1, #0, 8
     610:	5f544547 	svcpl	0x00544547
     614:	5f555043 	svcpl	0x00555043
     618:	6e656778 	mcrvs	7, 3, r6, cr5, cr8, {3}
     61c:	41003165 	tstmi	r0, r5, ror #2
     620:	505f4d52 	subspl	r4, pc, r2, asr sp	; <UNPREDICTABLE>
     624:	415f5343 	cmpmi	pc, r3, asr #6
     628:	53435041 	movtpl	r5, #12353	; 0x3041
     62c:	4d57495f 	vldrmi.16	s9, [r7, #-190]	; 0xffffff42	; <UNPREDICTABLE>
     630:	0054584d 	subseq	r5, r4, sp, asr #16
     634:	45534142 	ldrbmi	r4, [r3, #-322]	; 0xfffffebe
     638:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
     63c:	00305f48 	eorseq	r5, r0, r8, asr #30
     640:	45534142 	ldrbmi	r4, [r3, #-322]	; 0xfffffebe
     644:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
     648:	00325f48 	eorseq	r5, r2, r8, asr #30
     64c:	45534142 	ldrbmi	r4, [r3, #-322]	; 0xfffffebe
     650:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
     654:	00335f48 	eorseq	r5, r3, r8, asr #30
     658:	45534142 	ldrbmi	r4, [r3, #-322]	; 0xfffffebe
     65c:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
     660:	00345f48 	eorseq	r5, r4, r8, asr #30
     664:	45534142 	ldrbmi	r4, [r3, #-322]	; 0xfffffebe
     668:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
     66c:	00365f48 	eorseq	r5, r6, r8, asr #30
     670:	45534142 	ldrbmi	r4, [r3, #-322]	; 0xfffffebe
     674:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
     678:	00375f48 	eorseq	r5, r7, r8, asr #30
     67c:	47524154 			; <UNDEFINED> instruction: 0x47524154
     680:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
     684:	785f5550 	ldmdavc	pc, {r4, r6, r8, sl, ip, lr}^	; <UNPREDICTABLE>
     688:	6c616373 	stclvs	3, cr6, [r1], #-460	; 0xfffffe34
     68c:	73690065 	cmnvc	r9, #101	; 0x65
     690:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
     694:	72705f74 	rsbsvc	r5, r0, #116, 30	; 0x1d0
     698:	65726465 	ldrbvs	r6, [r2, #-1125]!	; 0xfffffb9b
     69c:	41540073 	cmpmi	r4, r3, ror r0
     6a0:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     6a4:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     6a8:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
     6ac:	6d786574 	cfldr64vs	mvdx6, [r8, #-464]!	; 0xfffffe30
     6b0:	55003333 	strpl	r3, [r0, #-819]	; 0xfffffccd
     6b4:	79744953 	ldmdbvc	r4!, {r0, r1, r4, r6, r8, fp, lr}^
     6b8:	54006570 	strpl	r6, [r0], #-1392	; 0xfffffa90
     6bc:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
     6c0:	50435f54 	subpl	r5, r3, r4, asr pc
     6c4:	72615f55 	rsbvc	r5, r1, #340	; 0x154
     6c8:	6474376d 	ldrbtvs	r3, [r4], #-1901	; 0xfffff893
     6cc:	6900696d 	stmdbvs	r0, {r0, r2, r3, r5, r6, r8, fp, sp, lr}
     6d0:	6e5f6173 	mrcvs	1, 2, r6, cr15, cr3, {3}
     6d4:	7469626f 	strbtvc	r6, [r9], #-623	; 0xfffffd91
     6d8:	52415400 	subpl	r5, r1, #0, 8
     6dc:	5f544547 	svcpl	0x00544547
     6e0:	5f555043 	svcpl	0x00555043
     6e4:	316d7261 	cmncc	sp, r1, ror #4
     6e8:	6a363731 	bvs	d8e3b4 <__user_program+0xa8e3b4>
     6ec:	0073667a 	rsbseq	r6, r3, sl, ror r6
     6f0:	5f4d5241 	svcpl	0x004d5241
     6f4:	5f534350 	svcpl	0x00534350
     6f8:	4e4b4e55 	mcrmi	14, 2, r4, cr11, cr5, {2}
     6fc:	004e574f 	subeq	r5, lr, pc, asr #14
     700:	47524154 			; <UNDEFINED> instruction: 0x47524154
     704:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
     708:	615f5550 	cmpvs	pc, r0, asr r5	; <UNPREDICTABLE>
     70c:	65396d72 	ldrvs	r6, [r9, #-3442]!	; 0xfffff28e
     710:	53414200 	movtpl	r4, #4608	; 0x1200
     714:	52415f45 	subpl	r5, r1, #276	; 0x114
     718:	355f4843 	ldrbcc	r4, [pc, #-2115]	; fffffedd <GIC_DISTB+0x7beedd>
     71c:	004a4554 	subeq	r4, sl, r4, asr r5
     720:	5f6d7261 	svcpl	0x006d7261
     724:	73666363 	cmnvc	r6, #-1946157055	; 0x8c000001
     728:	74735f6d 	ldrbtvc	r5, [r3], #-3949	; 0xfffff093
     72c:	00657461 	rsbeq	r7, r5, r1, ror #8
     730:	5f6d7261 	svcpl	0x006d7261
     734:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
     738:	00657435 	rsbeq	r7, r5, r5, lsr r4
     73c:	70736e75 	rsbsvc	r6, r3, r5, ror lr
     740:	735f6365 	cmpvc	pc, #-1811939327	; 0x94000001
     744:	6e697274 	mcrvs	2, 3, r7, cr9, cr4, {3}
     748:	69007367 	stmdbvs	r0, {r0, r1, r2, r5, r6, r8, r9, ip, sp, lr}
     74c:	625f6173 	subsvs	r6, pc, #-1073741796	; 0xc000001c
     750:	735f7469 	cmpvc	pc, #1761607680	; 0x69000000
     754:	5f006365 	svcpl	0x00006365
     758:	7a6c635f 	bvc	1b194dc <__user_program+0x18194dc>
     75c:	6261745f 	rsbvs	r7, r1, #1593835520	; 0x5f000000
     760:	4d524100 	ldfmie	f4, [r2, #-0]
     764:	0043565f 	subeq	r5, r3, pc, asr r6
     768:	5f6d7261 	svcpl	0x006d7261
     76c:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
     770:	6373785f 	cmnvs	r3, #6225920	; 0x5f0000
     774:	00656c61 	rsbeq	r6, r5, r1, ror #24
     778:	5f4d5241 	svcpl	0x004d5241
     77c:	4100454c 	tstmi	r0, ip, asr #10
     780:	565f4d52 			; <UNDEFINED> instruction: 0x565f4d52
     784:	52410053 	subpl	r0, r1, #83	; 0x53
     788:	45475f4d 	strbmi	r5, [r7, #-3917]	; 0xfffff0b3
     78c:	6d726100 	ldfvse	f6, [r2, #-0]
     790:	6e75745f 	mrcvs	4, 3, r7, cr5, cr15, {2}
     794:	74735f65 	ldrbtvc	r5, [r3], #-3941	; 0xfffff09b
     798:	676e6f72 			; <UNDEFINED> instruction: 0x676e6f72
     79c:	006d7261 	rsbeq	r7, sp, r1, ror #4
     7a0:	706d6f63 	rsbvc	r6, sp, r3, ror #30
     7a4:	2078656c 	rsbscs	r6, r8, ip, ror #10
     7a8:	616f6c66 	cmnvs	pc, r6, ror #24
     7ac:	41540074 	cmpmi	r4, r4, ror r0
     7b0:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     7b4:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     7b8:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
     7bc:	61786574 	cmnvs	r8, r4, ror r5
     7c0:	54003531 	strpl	r3, [r0], #-1329	; 0xfffffacf
     7c4:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
     7c8:	50435f54 	subpl	r5, r3, r4, asr pc
     7cc:	61665f55 	cmnvs	r6, r5, asr pc
     7d0:	74363237 	ldrtvc	r3, [r6], #-567	; 0xfffffdc9
     7d4:	41540065 	cmpmi	r4, r5, rrx
     7d8:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     7dc:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     7e0:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
     7e4:	61786574 	cmnvs	r8, r4, ror r5
     7e8:	41003731 	tstmi	r0, r1, lsr r7
     7ec:	475f4d52 			; <UNDEFINED> instruction: 0x475f4d52
     7f0:	41540054 	cmpmi	r4, r4, asr r0
     7f4:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     7f8:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     7fc:	6f656e5f 	svcvs	0x00656e5f
     800:	73726576 	cmnvc	r2, #494927872	; 0x1d800000
     804:	00316e65 	eorseq	r6, r1, r5, ror #28
     808:	47524154 			; <UNDEFINED> instruction: 0x47524154
     80c:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
     810:	635f5550 	cmpvs	pc, #80, 10	; 0x14000000
     814:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
     818:	66347278 			; <UNDEFINED> instruction: 0x66347278
     81c:	53414200 	movtpl	r4, #4608	; 0x1200
     820:	52415f45 	subpl	r5, r1, #276	; 0x114
     824:	375f4843 	ldrbcc	r4, [pc, -r3, asr #16]
     828:	54004d45 	strpl	r4, [r0], #-3397	; 0xfffff2bb
     82c:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
     830:	50435f54 	subpl	r5, r3, r4, asr pc
     834:	6f635f55 	svcvs	0x00635f55
     838:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
     83c:	00323161 	eorseq	r3, r2, r1, ror #2
     840:	68736168 	ldmdavs	r3!, {r3, r5, r6, r8, sp, lr}^
     844:	5f6c6176 	svcpl	0x006c6176
     848:	41420074 	hvcmi	8196	; 0x2004
     84c:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
     850:	5f484352 	svcpl	0x00484352
     854:	005a4b36 	subseq	r4, sl, r6, lsr fp
     858:	5f617369 	svcpl	0x00617369
     85c:	73746962 	cmnvc	r4, #1605632	; 0x188000
     860:	6d726100 	ldfvse	f6, [r2, #-0]
     864:	6372615f 	cmnvs	r2, #-1073741801	; 0xc0000017
     868:	72615f68 	rsbvc	r5, r1, #104, 30	; 0x1a0
     86c:	77685f6d 	strbvc	r5, [r8, -sp, ror #30]!
     870:	00766964 	rsbseq	r6, r6, r4, ror #18
     874:	5f6d7261 	svcpl	0x006d7261
     878:	5f757066 	svcpl	0x00757066
     87c:	63736564 	cmnvs	r3, #100, 10	; 0x19000000
     880:	61736900 	cmnvs	r3, r0, lsl #18
     884:	7469625f 	strbtvc	r6, [r9], #-607	; 0xfffffda1
     888:	3170665f 	cmncc	r0, pc, asr r6
     88c:	52410036 	subpl	r0, r1, #54	; 0x36
     890:	49485f4d 	stmdbmi	r8, {r0, r2, r3, r6, r8, r9, sl, fp, ip, lr}^
     894:	61736900 	cmnvs	r3, r0, lsl #18
     898:	7469625f 	strbtvc	r6, [r9], #-607	; 0xfffffda1
     89c:	6964615f 	stmdbvs	r4!, {r0, r1, r2, r3, r4, r6, r8, sp, lr}^
     8a0:	41540076 	cmpmi	r4, r6, ror r0
     8a4:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     8a8:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     8ac:	6d72615f 	ldfvse	f6, [r2, #-380]!	; 0xfffffe84
     8b0:	36333131 			; <UNDEFINED> instruction: 0x36333131
     8b4:	5400736a 	strpl	r7, [r0], #-874	; 0xfffffc96
     8b8:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
     8bc:	50435f54 	subpl	r5, r3, r4, asr pc
     8c0:	72615f55 	rsbvc	r5, r1, #340	; 0x154
     8c4:	5400386d 	strpl	r3, [r0], #-2157	; 0xfffff793
     8c8:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
     8cc:	50435f54 	subpl	r5, r3, r4, asr pc
     8d0:	72615f55 	rsbvc	r5, r1, #340	; 0x154
     8d4:	5400396d 	strpl	r3, [r0], #-2413	; 0xfffff693
     8d8:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
     8dc:	50435f54 	subpl	r5, r3, r4, asr pc
     8e0:	61665f55 	cmnvs	r6, r5, asr pc
     8e4:	00363236 	eorseq	r3, r6, r6, lsr r2
     8e8:	5f6d7261 	svcpl	0x006d7261
     8ec:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
     8f0:	736d635f 	cmnvc	sp, #2080374785	; 0x7c000001
     8f4:	41540065 	cmpmi	r4, r5, rrx
     8f8:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     8fc:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     900:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
     904:	6d786574 	cfldr64vs	mvdx6, [r8, #-464]!	; 0xfffffe30
     908:	41540034 	cmpmi	r4, r4, lsr r0
     90c:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     910:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     914:	6d72615f 	ldfvse	f6, [r2, #-380]!	; 0xfffffe84
     918:	00653031 	rsbeq	r3, r5, r1, lsr r0
     91c:	47524154 			; <UNDEFINED> instruction: 0x47524154
     920:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
     924:	635f5550 	cmpvs	pc, #80, 10	; 0x14000000
     928:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
     92c:	00376d78 	eorseq	r6, r7, r8, ror sp
     930:	5f617369 	svcpl	0x00617369
     934:	5f746962 	svcpl	0x00746962
     938:	35767066 	ldrbcc	r7, [r6, #-102]!	; 0xffffff9a
     93c:	6d726100 	ldfvse	f6, [r2, #-0]
     940:	6e6f635f 	mcrvs	3, 3, r6, cr15, cr15, {2}
     944:	6f635f64 	svcvs	0x00635f64
     948:	41006564 	tstmi	r0, r4, ror #10
     94c:	505f4d52 	subspl	r4, pc, r2, asr sp	; <UNPREDICTABLE>
     950:	415f5343 	cmpmi	pc, r3, asr #6
     954:	53435041 	movtpl	r5, #12353	; 0x3041
     958:	61736900 	cmnvs	r3, r0, lsl #18
     95c:	7469625f 	strbtvc	r6, [r9], #-607	; 0xfffffda1
     960:	6d72615f 	ldfvse	f6, [r2, #-380]!	; 0xfffffe84
     964:	325f3876 	subscc	r3, pc, #7733248	; 0x760000
     968:	53414200 	movtpl	r4, #4608	; 0x1200
     96c:	52415f45 	subpl	r5, r1, #276	; 0x114
     970:	335f4843 	cmpcc	pc, #4390912	; 0x430000
     974:	4154004d 	cmpmi	r4, sp, asr #32
     978:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     97c:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     980:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
     984:	61786574 	cmnvs	r8, r4, ror r5
     988:	6f633731 	svcvs	0x00633731
     98c:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
     990:	54003761 	strpl	r3, [r0], #-1889	; 0xfffff89f
     994:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
     998:	50435f54 	subpl	r5, r3, r4, asr pc
     99c:	72615f55 	rsbvc	r5, r1, #340	; 0x154
     9a0:	3031376d 	eorscc	r3, r1, sp, ror #14
     9a4:	72610074 	rsbvc	r0, r1, #116	; 0x74
     9a8:	72615f6d 	rsbvc	r5, r1, #436	; 0x1b4
     9ac:	695f6863 	ldmdbvs	pc, {r0, r1, r5, r6, fp, sp, lr}^	; <UNPREDICTABLE>
     9b0:	786d6d77 	stmdavc	sp!, {r0, r1, r2, r4, r5, r6, r8, sl, fp, sp, lr}^
     9b4:	69003274 	stmdbvs	r0, {r2, r4, r5, r6, r9, ip, sp}
     9b8:	6e5f6173 	mrcvs	1, 2, r6, cr15, cr3, {3}
     9bc:	625f6d75 	subsvs	r6, pc, #7488	; 0x1d40
     9c0:	00737469 	rsbseq	r7, r3, r9, ror #8
     9c4:	47524154 			; <UNDEFINED> instruction: 0x47524154
     9c8:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
     9cc:	635f5550 	cmpvs	pc, #80, 10	; 0x14000000
     9d0:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
     9d4:	70306d78 	eorsvc	r6, r0, r8, ror sp
     9d8:	7373756c 	cmnvc	r3, #108, 10	; 0x1b000000
     9dc:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
     9e0:	746c756d 	strbtvc	r7, [ip], #-1389	; 0xfffffa93
     9e4:	796c7069 	stmdbvc	ip!, {r0, r3, r5, r6, ip, sp, lr}^
     9e8:	52415400 	subpl	r5, r1, #0, 8
     9ec:	5f544547 	svcpl	0x00544547
     9f0:	5f555043 	svcpl	0x00555043
     9f4:	6e797865 	cdpvs	8, 7, cr7, cr9, cr5, {3}
     9f8:	316d736f 	cmncc	sp, pc, ror #6
     9fc:	52415400 	subpl	r5, r1, #0, 8
     a00:	5f544547 	svcpl	0x00544547
     a04:	5f555043 	svcpl	0x00555043
     a08:	74726f63 	ldrbtvc	r6, [r2], #-3939	; 0xfffff09d
     a0c:	35727865 	ldrbcc	r7, [r2, #-2149]!	; 0xfffff79b
     a10:	73690032 	cmnvc	r9, #50	; 0x32
     a14:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
     a18:	64745f74 	ldrbtvs	r5, [r4], #-3956	; 0xfffff08c
     a1c:	70007669 	andvc	r7, r0, r9, ror #12
     a20:	65666572 	strbvs	r6, [r6, #-1394]!	; 0xfffffa8e
     a24:	656e5f72 	strbvs	r5, [lr, #-3954]!	; 0xfffff08e
     a28:	665f6e6f 	ldrbvs	r6, [pc], -pc, ror #28
     a2c:	365f726f 	ldrbcc	r7, [pc], -pc, ror #4
     a30:	74696234 	strbtvc	r6, [r9], #-564	; 0xfffffdcc
     a34:	73690073 	cmnvc	r9, #115	; 0x73
     a38:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
     a3c:	70665f74 	rsbvc	r5, r6, r4, ror pc
     a40:	6d663631 	stclvs	6, cr3, [r6, #-196]!	; 0xffffff3c
     a44:	4154006c 	cmpmi	r4, ip, rrx
     a48:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     a4c:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     a50:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
     a54:	61786574 	cmnvs	r8, r4, ror r5
     a58:	54003233 	strpl	r3, [r0], #-563	; 0xfffffdcd
     a5c:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
     a60:	50435f54 	subpl	r5, r3, r4, asr pc
     a64:	6f635f55 	svcvs	0x00635f55
     a68:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
     a6c:	00353361 	eorseq	r3, r5, r1, ror #6
     a70:	5f617369 	svcpl	0x00617369
     a74:	5f746962 	svcpl	0x00746962
     a78:	36317066 	ldrtcc	r7, [r1], -r6, rrx
     a7c:	766e6f63 	strbtvc	r6, [lr], -r3, ror #30
     a80:	736e7500 	cmnvc	lr, #0, 10
     a84:	76636570 			; <UNDEFINED> instruction: 0x76636570
     a88:	7274735f 	rsbsvc	r7, r4, #2080374785	; 0x7c000001
     a8c:	73676e69 	cmnvc	r7, #1680	; 0x690
     a90:	52415400 	subpl	r5, r1, #0, 8
     a94:	5f544547 	svcpl	0x00544547
     a98:	5f555043 	svcpl	0x00555043
     a9c:	316d7261 	cmncc	sp, r1, ror #4
     aa0:	74363531 	ldrtvc	r3, [r6], #-1329	; 0xfffffacf
     aa4:	54007332 	strpl	r7, [r0], #-818	; 0xfffffcce
     aa8:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
     aac:	50435f54 	subpl	r5, r3, r4, asr pc
     ab0:	6f635f55 	svcvs	0x00635f55
     ab4:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
     ab8:	63353761 	teqvs	r5, #25427968	; 0x1840000
     abc:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
     ac0:	35356178 	ldrcc	r6, [r5, #-376]!	; 0xfffffe88
     ac4:	52415400 	subpl	r5, r1, #0, 8
     ac8:	5f544547 	svcpl	0x00544547
     acc:	5f555043 	svcpl	0x00555043
     ad0:	30366166 	eorscc	r6, r6, r6, ror #2
     ad4:	00657436 	rsbeq	r7, r5, r6, lsr r4
     ad8:	47524154 			; <UNDEFINED> instruction: 0x47524154
     adc:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
     ae0:	615f5550 	cmpvs	pc, r0, asr r5	; <UNPREDICTABLE>
     ae4:	32396d72 	eorscc	r6, r9, #7296	; 0x1c80
     ae8:	736a6536 	cmnvc	sl, #226492416	; 0xd800000
     aec:	53414200 	movtpl	r4, #4608	; 0x1200
     af0:	52415f45 	subpl	r5, r1, #276	; 0x114
     af4:	345f4843 	ldrbcc	r4, [pc], #-2115	; afc <CPSR_IRQ_INHIBIT+0xa7c>
     af8:	73690054 	cmnvc	r9, #84	; 0x54
     afc:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
     b00:	72635f74 	rsbvc	r5, r3, #116, 30	; 0x1d0
     b04:	6f747079 	svcvs	0x00747079
     b08:	6d726100 	ldfvse	f6, [r2, #-0]
     b0c:	6765725f 			; <UNDEFINED> instruction: 0x6765725f
     b10:	6e695f73 	mcrvs	15, 3, r5, cr9, cr3, {3}
     b14:	7165735f 	cmnvc	r5, pc, asr r3
     b18:	636e6575 	cmnvs	lr, #490733568	; 0x1d400000
     b1c:	73690065 	cmnvc	r9, #101	; 0x65
     b20:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
     b24:	62735f74 	rsbsvs	r5, r3, #116, 30	; 0x1d0
     b28:	53414200 	movtpl	r4, #4608	; 0x1200
     b2c:	52415f45 	subpl	r5, r1, #276	; 0x114
     b30:	355f4843 	ldrbcc	r4, [pc, #-2115]	; 2f5 <CPSR_IRQ_INHIBIT+0x275>
     b34:	69004554 	stmdbvs	r0, {r2, r4, r6, r8, sl, lr}
     b38:	665f6173 			; <UNDEFINED> instruction: 0x665f6173
     b3c:	75746165 	ldrbvc	r6, [r4, #-357]!	; 0xfffffe9b
     b40:	69006572 	stmdbvs	r0, {r1, r4, r5, r6, r8, sl, sp, lr}
     b44:	625f6173 	subsvs	r6, pc, #-1073741796	; 0xc000001c
     b48:	735f7469 	cmpvc	pc, #1761607680	; 0x69000000
     b4c:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
     b50:	006c756d 	rsbeq	r7, ip, sp, ror #10
     b54:	5f6d7261 	svcpl	0x006d7261
     b58:	676e616c 	strbvs	r6, [lr, -ip, ror #2]!
     b5c:	74756f5f 	ldrbtvc	r6, [r5], #-3935	; 0xfffff0a1
     b60:	5f747570 	svcpl	0x00747570
     b64:	656a626f 	strbvs	r6, [sl, #-623]!	; 0xfffffd91
     b68:	615f7463 	cmpvs	pc, r3, ror #8
     b6c:	69727474 	ldmdbvs	r2!, {r2, r4, r5, r6, sl, ip, sp, lr}^
     b70:	65747562 	ldrbvs	r7, [r4, #-1378]!	; 0xfffffa9e
     b74:	6f685f73 	svcvs	0x00685f73
     b78:	69006b6f 	stmdbvs	r0, {r0, r1, r2, r3, r5, r6, r8, r9, fp, sp, lr}
     b7c:	625f6173 	subsvs	r6, pc, #-1073741796	; 0xc000001c
     b80:	665f7469 	ldrbvs	r7, [pc], -r9, ror #8
     b84:	33645f70 	cmncc	r4, #112, 30	; 0x1c0
     b88:	52410032 	subpl	r0, r1, #50	; 0x32
     b8c:	454e5f4d 	strbmi	r5, [lr, #-3917]	; 0xfffff0b3
     b90:	61736900 	cmnvs	r3, r0, lsl #18
     b94:	7469625f 	strbtvc	r6, [r9], #-607	; 0xfffffda1
     b98:	3865625f 	stmdacc	r5!, {r0, r1, r2, r3, r4, r6, r9, sp, lr}^
     b9c:	52415400 	subpl	r5, r1, #0, 8
     ba0:	5f544547 	svcpl	0x00544547
     ba4:	5f555043 	svcpl	0x00555043
     ba8:	316d7261 	cmncc	sp, r1, ror #4
     bac:	6a363731 	bvs	d8e878 <__user_program+0xa8e878>
     bb0:	7000737a 	andvc	r7, r0, sl, ror r3
     bb4:	65636f72 	strbvs	r6, [r3, #-3954]!	; 0xfffff08e
     bb8:	726f7373 	rsbvc	r7, pc, #-872415231	; 0xcc000001
     bbc:	7079745f 	rsbsvc	r7, r9, pc, asr r4
     bc0:	6c610065 	stclvs	0, cr0, [r1], #-404	; 0xfffffe6c
     bc4:	70665f6c 	rsbvc	r5, r6, ip, ror #30
     bc8:	61007375 	tstvs	r0, r5, ror r3
     bcc:	705f6d72 	subsvc	r6, pc, r2, ror sp	; <UNPREDICTABLE>
     bd0:	42007363 	andmi	r7, r0, #-1946157055	; 0x8c000001
     bd4:	5f455341 	svcpl	0x00455341
     bd8:	48435241 	stmdami	r3, {r0, r6, r9, ip, lr}^
     bdc:	0054355f 	subseq	r3, r4, pc, asr r5
     be0:	5f6d7261 	svcpl	0x006d7261
     be4:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
     be8:	54007434 	strpl	r7, [r0], #-1076	; 0xfffffbcc
     bec:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
     bf0:	50435f54 	subpl	r5, r3, r4, asr pc
     bf4:	6f635f55 	svcvs	0x00635f55
     bf8:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
     bfc:	63363761 	teqvs	r6, #25427968	; 0x1840000
     c00:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
     c04:	35356178 	ldrcc	r6, [r5, #-376]!	; 0xfffffe88
     c08:	6d726100 	ldfvse	f6, [r2, #-0]
     c0c:	6e75745f 	mrcvs	4, 3, r7, cr5, cr15, {2}
     c10:	62775f65 	rsbsvs	r5, r7, #404	; 0x194
     c14:	68006675 	stmdavs	r0, {r0, r2, r4, r5, r6, r9, sl, sp, lr}
     c18:	5f626174 	svcpl	0x00626174
     c1c:	68736168 	ldmdavs	r3!, {r3, r5, r6, r8, sp, lr}^
     c20:	61736900 	cmnvs	r3, r0, lsl #18
     c24:	7469625f 	strbtvc	r6, [r9], #-607	; 0xfffffda1
     c28:	6975715f 	ldmdbvs	r5!, {r0, r1, r2, r3, r4, r6, r8, ip, sp, lr}^
     c2c:	6e5f6b72 	vmovvs.s8	r6, d15[3]
     c30:	6f765f6f 	svcvs	0x00765f6f
     c34:	6974616c 	ldmdbvs	r4!, {r2, r3, r5, r6, r8, sp, lr}^
     c38:	635f656c 	cmpvs	pc, #108, 10	; 0x1b000000
     c3c:	41540065 	cmpmi	r4, r5, rrx
     c40:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     c44:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     c48:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
     c4c:	6d786574 	cfldr64vs	mvdx6, [r8, #-464]!	; 0xfffffe30
     c50:	41540030 	cmpmi	r4, r0, lsr r0
     c54:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     c58:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     c5c:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
     c60:	6d786574 	cfldr64vs	mvdx6, [r8, #-464]!	; 0xfffffe30
     c64:	41540031 	cmpmi	r4, r1, lsr r0
     c68:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     c6c:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     c70:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
     c74:	6d786574 	cfldr64vs	mvdx6, [r8, #-464]!	; 0xfffffe30
     c78:	73690033 	cmnvc	r9, #51	; 0x33
     c7c:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
     c80:	72615f74 	rsbvc	r5, r1, #116, 30	; 0x1d0
     c84:	5f38766d 	svcpl	0x0038766d
     c88:	72610031 	rsbvc	r0, r1, #49	; 0x31
     c8c:	72615f6d 	rsbvc	r5, r1, #436	; 0x1b4
     c90:	6e5f6863 	cdpvs	8, 5, cr6, cr15, cr3, {3}
     c94:	00656d61 	rsbeq	r6, r5, r1, ror #26
     c98:	5f617369 	svcpl	0x00617369
     c9c:	5f746962 	svcpl	0x00746962
     ca0:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
     ca4:	00335f38 	eorseq	r5, r3, r8, lsr pc
     ca8:	5f617369 	svcpl	0x00617369
     cac:	5f746962 	svcpl	0x00746962
     cb0:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
     cb4:	00345f38 	eorseq	r5, r4, r8, lsr pc
     cb8:	5f617369 	svcpl	0x00617369
     cbc:	5f746962 	svcpl	0x00746962
     cc0:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
     cc4:	00355f38 	eorseq	r5, r5, r8, lsr pc
     cc8:	47524154 			; <UNDEFINED> instruction: 0x47524154
     ccc:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
     cd0:	635f5550 	cmpvs	pc, #80, 10	; 0x14000000
     cd4:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
     cd8:	33356178 	teqcc	r5, #120, 2
     cdc:	52415400 	subpl	r5, r1, #0, 8
     ce0:	5f544547 	svcpl	0x00544547
     ce4:	5f555043 	svcpl	0x00555043
     ce8:	74726f63 	ldrbtvc	r6, [r2], #-3939	; 0xfffff09d
     cec:	35617865 	strbcc	r7, [r1, #-2149]!	; 0xfffff79b
     cf0:	41540035 	cmpmi	r4, r5, lsr r0
     cf4:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     cf8:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     cfc:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
     d00:	61786574 	cmnvs	r8, r4, ror r5
     d04:	54003735 	strpl	r3, [r0], #-1845	; 0xfffff8cb
     d08:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
     d0c:	50435f54 	subpl	r5, r3, r4, asr pc
     d10:	706d5f55 	rsbvc	r5, sp, r5, asr pc
     d14:	65726f63 	ldrbvs	r6, [r2, #-3939]!	; 0xfffff09d
     d18:	61736900 	cmnvs	r3, r0, lsl #18
     d1c:	7469625f 	strbtvc	r6, [r9], #-607	; 0xfffffda1
     d20:	7066765f 	rsbvc	r7, r6, pc, asr r6
     d24:	54003276 	strpl	r3, [r0], #-630	; 0xfffffd8a
     d28:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
     d2c:	50435f54 	subpl	r5, r3, r4, asr pc
     d30:	72615f55 	rsbvc	r5, r1, #340	; 0x154
     d34:	6f6e5f6d 	svcvs	0x006e5f6d
     d38:	6100656e 	tstvs	r0, lr, ror #10
     d3c:	615f6d72 	cmpvs	pc, r2, ror sp	; <UNPREDICTABLE>
     d40:	5f686372 	svcpl	0x00686372
     d44:	6d746f6e 	ldclvs	15, cr6, [r4, #-440]!	; 0xfffffe48
     d48:	52415400 	subpl	r5, r1, #0, 8
     d4c:	5f544547 	svcpl	0x00544547
     d50:	5f555043 	svcpl	0x00555043
     d54:	316d7261 	cmncc	sp, r1, ror #4
     d58:	65363230 	ldrvs	r3, [r6, #-560]!	; 0xfffffdd0
     d5c:	4200736a 	andmi	r7, r0, #-1476395007	; 0xa8000001
     d60:	5f455341 	svcpl	0x00455341
     d64:	48435241 	stmdami	r3, {r0, r6, r9, ip, lr}^
     d68:	004a365f 	subeq	r3, sl, pc, asr r6
     d6c:	45534142 	ldrbmi	r4, [r3, #-322]	; 0xfffffebe
     d70:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
     d74:	4b365f48 	blmi	d98a9c <__user_program+0xa98a9c>
     d78:	53414200 	movtpl	r4, #4608	; 0x1200
     d7c:	52415f45 	subpl	r5, r1, #276	; 0x114
     d80:	365f4843 	ldrbcc	r4, [pc], -r3, asr #16
     d84:	7369004d 	cmnvc	r9, #77	; 0x4d
     d88:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
     d8c:	77695f74 			; <UNDEFINED> instruction: 0x77695f74
     d90:	74786d6d 	ldrbtvc	r6, [r8], #-3437	; 0xfffff293
     d94:	52415400 	subpl	r5, r1, #0, 8
     d98:	5f544547 	svcpl	0x00544547
     d9c:	5f555043 	svcpl	0x00555043
     da0:	316d7261 	cmncc	sp, r1, ror #4
     da4:	6a363331 	bvs	d8da70 <__user_program+0xa8da70>
     da8:	41007366 	tstmi	r0, r6, ror #6
     dac:	4c5f4d52 	mrrcmi	13, 5, r4, pc, cr2	; <UNPREDICTABLE>
     db0:	52410053 	subpl	r0, r1, #83	; 0x53
     db4:	544c5f4d 	strbpl	r5, [ip], #-3917	; 0xfffff0b3
     db8:	53414200 	movtpl	r4, #4608	; 0x1200
     dbc:	52415f45 	subpl	r5, r1, #276	; 0x114
     dc0:	365f4843 	ldrbcc	r4, [pc], -r3, asr #16
     dc4:	5241005a 	subpl	r0, r1, #90	; 0x5a
     dc8:	43505f4d 	cmpmi	r0, #308	; 0x134
     dcc:	41415f53 	cmpmi	r1, r3, asr pc
     dd0:	5f534350 	svcpl	0x00534350
     dd4:	00504656 	subseq	r4, r0, r6, asr r6
     dd8:	47524154 			; <UNDEFINED> instruction: 0x47524154
     ddc:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
     de0:	695f5550 	ldmdbvs	pc, {r4, r6, r8, sl, ip, lr}^	; <UNPREDICTABLE>
     de4:	786d6d77 	stmdavc	sp!, {r0, r1, r2, r4, r5, r6, r8, sl, fp, sp, lr}^
     de8:	69003274 	stmdbvs	r0, {r2, r4, r5, r6, r9, ip, sp}
     dec:	625f6173 	subsvs	r6, pc, #-1073741796	; 0xc000001c
     df0:	6e5f7469 	cdpvs	4, 5, cr7, cr15, cr9, {3}
     df4:	006e6f65 	rsbeq	r6, lr, r5, ror #30
     df8:	5f6d7261 	svcpl	0x006d7261
     dfc:	5f757066 	svcpl	0x00757066
     e00:	72747461 	rsbsvc	r7, r4, #1627389952	; 0x61000000
     e04:	61736900 	cmnvs	r3, r0, lsl #18
     e08:	7469625f 	strbtvc	r6, [r9], #-607	; 0xfffffda1
     e0c:	6d72615f 	ldfvse	f6, [r2, #-380]!	; 0xfffffe84
     e10:	6d653776 	stclvs	7, cr3, [r5, #-472]!	; 0xfffffe28
     e14:	52415400 	subpl	r5, r1, #0, 8
     e18:	5f544547 	svcpl	0x00544547
     e1c:	5f555043 	svcpl	0x00555043
     e20:	32366166 	eorscc	r6, r6, #-2147483623	; 0x80000019
     e24:	00657436 	rsbeq	r7, r5, r6, lsr r4
     e28:	47524154 			; <UNDEFINED> instruction: 0x47524154
     e2c:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
     e30:	6d5f5550 	cfldr64vs	mvdx5, [pc, #-320]	; cf8 <CPSR_IRQ_INHIBIT+0xc78>
     e34:	65767261 	ldrbvs	r7, [r6, #-609]!	; 0xfffffd9f
     e38:	705f6c6c 	subsvc	r6, pc, ip, ror #24
     e3c:	6800346a 	stmdavs	r0, {r1, r3, r5, r6, sl, ip, sp}
     e40:	5f626174 	svcpl	0x00626174
     e44:	68736168 	ldmdavs	r3!, {r3, r5, r6, r8, sp, lr}^
     e48:	696f705f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, ip, sp, lr}^	; <UNPREDICTABLE>
     e4c:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
     e50:	6d726100 	ldfvse	f6, [r2, #-0]
     e54:	6e75745f 	mrcvs	4, 3, r7, cr5, cr15, {2}
     e58:	6f635f65 	svcvs	0x00635f65
     e5c:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
     e60:	0039615f 	eorseq	r6, r9, pc, asr r1
     e64:	5f617369 	svcpl	0x00617369
     e68:	5f746962 	svcpl	0x00746962
     e6c:	6d6d7769 	stclvs	7, cr7, [sp, #-420]!	; 0xfffffe5c
     e70:	00327478 	eorseq	r7, r2, r8, ror r4
     e74:	47524154 			; <UNDEFINED> instruction: 0x47524154
     e78:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
     e7c:	635f5550 	cmpvs	pc, #80, 10	; 0x14000000
     e80:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
     e84:	32376178 	eorscc	r6, r7, #120, 2
     e88:	74726f63 	ldrbtvc	r6, [r2], #-3939	; 0xfffff09d
     e8c:	35617865 	strbcc	r7, [r1, #-2149]!	; 0xfffff79b
     e90:	73690033 	cmnvc	r9, #51	; 0x33
     e94:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
     e98:	68745f74 	ldmdavs	r4!, {r2, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
     e9c:	32626d75 	rsbcc	r6, r2, #7488	; 0x1d40
     ea0:	53414200 	movtpl	r4, #4608	; 0x1200
     ea4:	52415f45 	subpl	r5, r1, #276	; 0x114
     ea8:	375f4843 	ldrbcc	r4, [pc, -r3, asr #16]
     eac:	73690041 	cmnvc	r9, #65	; 0x41
     eb0:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
     eb4:	6f645f74 	svcvs	0x00645f74
     eb8:	6f727074 	svcvs	0x00727074
     ebc:	72610064 	rsbvc	r0, r1, #100	; 0x64
     ec0:	70665f6d 	rsbvc	r5, r6, sp, ror #30
     ec4:	745f3631 	ldrbvc	r3, [pc], #-1585	; ecc <CPSR_IRQ_INHIBIT+0xe4c>
     ec8:	5f657079 	svcpl	0x00657079
     ecc:	65646f6e 	strbvs	r6, [r4, #-3950]!	; 0xfffff092
     ed0:	4d524100 	ldfmie	f4, [r2, #-0]
     ed4:	00494d5f 	subeq	r4, r9, pc, asr sp
     ed8:	5f6d7261 	svcpl	0x006d7261
     edc:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
     ee0:	61006b36 	tstvs	r0, r6, lsr fp
     ee4:	615f6d72 	cmpvs	pc, r2, ror sp	; <UNPREDICTABLE>
     ee8:	36686372 			; <UNDEFINED> instruction: 0x36686372
     eec:	4142006d 	cmpmi	r2, sp, rrx
     ef0:	415f4553 	cmpmi	pc, r3, asr r5	; <UNPREDICTABLE>
     ef4:	5f484352 	svcpl	0x00484352
     ef8:	5f005237 	svcpl	0x00005237
     efc:	706f705f 	rsbvc	r7, pc, pc, asr r0	; <UNPREDICTABLE>
     f00:	6e756f63 	cdpvs	15, 7, cr6, cr5, cr3, {3}
     f04:	61745f74 	cmnvs	r4, r4, ror pc
     f08:	73690062 	cmnvc	r9, #98	; 0x62
     f0c:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
     f10:	6d635f74 	stclvs	15, cr5, [r3, #-464]!	; 0xfffffe30
     f14:	54006573 	strpl	r6, [r0], #-1395	; 0xfffffa8d
     f18:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
     f1c:	50435f54 	subpl	r5, r3, r4, asr pc
     f20:	6f635f55 	svcvs	0x00635f55
     f24:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
     f28:	00333761 	eorseq	r3, r3, r1, ror #14
     f2c:	47524154 			; <UNDEFINED> instruction: 0x47524154
     f30:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
     f34:	675f5550 			; <UNDEFINED> instruction: 0x675f5550
     f38:	72656e65 	rsbvc	r6, r5, #1616	; 0x650
     f3c:	37766369 	ldrbcc	r6, [r6, -r9, ror #6]!
     f40:	41540061 	cmpmi	r4, r1, rrx
     f44:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
     f48:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
     f4c:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
     f50:	61786574 	cmnvs	r8, r4, ror r5
     f54:	61003637 	tstvs	r0, r7, lsr r6
     f58:	615f6d72 	cmpvs	pc, r2, ror sp	; <UNPREDICTABLE>
     f5c:	5f686372 	svcpl	0x00686372
     f60:	765f6f6e 	ldrbvc	r6, [pc], -lr, ror #30
     f64:	74616c6f 	strbtvc	r6, [r1], #-3183	; 0xfffff391
     f68:	5f656c69 	svcpl	0x00656c69
     f6c:	42006563 	andmi	r6, r0, #415236096	; 0x18c00000
     f70:	5f455341 	svcpl	0x00455341
     f74:	48435241 	stmdami	r3, {r0, r6, r9, ip, lr}^
     f78:	0041385f 	subeq	r3, r1, pc, asr r8
     f7c:	5f617369 	svcpl	0x00617369
     f80:	5f746962 	svcpl	0x00746962
     f84:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
     f88:	42007435 	andmi	r7, r0, #889192448	; 0x35000000
     f8c:	5f455341 	svcpl	0x00455341
     f90:	48435241 	stmdami	r3, {r0, r6, r9, ip, lr}^
     f94:	0052385f 	subseq	r3, r2, pc, asr r8
     f98:	47524154 			; <UNDEFINED> instruction: 0x47524154
     f9c:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
     fa0:	635f5550 	cmpvs	pc, #80, 10	; 0x14000000
     fa4:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
     fa8:	33376178 	teqcc	r7, #120, 2
     fac:	74726f63 	ldrbtvc	r6, [r2], #-3939	; 0xfffff09d
     fb0:	33617865 	cmncc	r1, #6619136	; 0x650000
     fb4:	52410035 	subpl	r0, r1, #53	; 0x35
     fb8:	564e5f4d 	strbpl	r5, [lr], -sp, asr #30
     fbc:	6d726100 	ldfvse	f6, [r2, #-0]
     fc0:	6372615f 	cmnvs	r2, #-1073741801	; 0xc0000017
     fc4:	61003468 	tstvs	r0, r8, ror #8
     fc8:	615f6d72 	cmpvs	pc, r2, ror sp	; <UNPREDICTABLE>
     fcc:	36686372 			; <UNDEFINED> instruction: 0x36686372
     fd0:	6d726100 	ldfvse	f6, [r2, #-0]
     fd4:	6372615f 	cmnvs	r2, #-1073741801	; 0xc0000017
     fd8:	61003768 	tstvs	r0, r8, ror #14
     fdc:	615f6d72 	cmpvs	pc, r2, ror sp	; <UNPREDICTABLE>
     fe0:	38686372 	stmdacc	r8!, {r1, r4, r5, r6, r8, r9, sp, lr}^
     fe4:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
     fe8:	6f642067 	svcvs	0x00642067
     fec:	656c6275 	strbvs	r6, [ip, #-629]!	; 0xfffffd8b
     ff0:	6d726100 	ldfvse	f6, [r2, #-0]
     ff4:	6e75745f 	mrcvs	4, 3, r7, cr5, cr15, {2}
     ff8:	73785f65 	cmnvc	r8, #404	; 0x194
     ffc:	656c6163 	strbvs	r6, [ip, #-355]!	; 0xfffffe9d
    1000:	6b616d00 	blvs	185c408 <__user_program+0x155c408>
    1004:	5f676e69 	svcpl	0x00676e69
    1008:	736e6f63 	cmnvc	lr, #396	; 0x18c
    100c:	61745f74 	cmnvs	r4, r4, ror pc
    1010:	00656c62 	rsbeq	r6, r5, r2, ror #24
    1014:	6d756874 	ldclvs	8, cr6, [r5, #-464]!	; 0xfffffe30
    1018:	61635f62 	cmnvs	r3, r2, ror #30
    101c:	765f6c6c 	ldrbvc	r6, [pc], -ip, ror #24
    1020:	6c5f6169 	ldfvse	f6, [pc], {105}	; 0x69
    1024:	6c656261 	sfmvs	f6, 2, [r5], #-388	; 0xfffffe7c
    1028:	61736900 	cmnvs	r3, r0, lsl #18
    102c:	7469625f 	strbtvc	r6, [r9], #-607	; 0xfffffda1
    1030:	6d72615f 	ldfvse	f6, [r2, #-380]!	; 0xfffffe84
    1034:	006b3676 	rsbeq	r3, fp, r6, ror r6
    1038:	47524154 			; <UNDEFINED> instruction: 0x47524154
    103c:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
    1040:	635f5550 	cmpvs	pc, #80, 10	; 0x14000000
    1044:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
    1048:	00376178 	eorseq	r6, r7, r8, ror r1
    104c:	47524154 			; <UNDEFINED> instruction: 0x47524154
    1050:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
    1054:	635f5550 	cmpvs	pc, #80, 10	; 0x14000000
    1058:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
    105c:	00386178 	eorseq	r6, r8, r8, ror r1
    1060:	47524154 			; <UNDEFINED> instruction: 0x47524154
    1064:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
    1068:	635f5550 	cmpvs	pc, #80, 10	; 0x14000000
    106c:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
    1070:	00396178 	eorseq	r6, r9, r8, ror r1
    1074:	5f4d5241 	svcpl	0x004d5241
    1078:	5f534350 	svcpl	0x00534350
    107c:	53435041 	movtpl	r5, #12353	; 0x3041
    1080:	4d524100 	ldfmie	f4, [r2, #-0]
    1084:	5343505f 	movtpl	r5, #12383	; 0x305f
    1088:	5054415f 	subspl	r4, r4, pc, asr r1
    108c:	63005343 	movwvs	r5, #835	; 0x343
    1090:	6c706d6f 	ldclvs	13, cr6, [r0], #-444	; 0xfffffe44
    1094:	64207865 	strtvs	r7, [r0], #-2149	; 0xfffff79b
    1098:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
    109c:	41540065 	cmpmi	r4, r5, rrx
    10a0:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
    10a4:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
    10a8:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
    10ac:	61786574 	cmnvs	r8, r4, ror r5
    10b0:	6f633337 	svcvs	0x00633337
    10b4:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
    10b8:	00333561 	eorseq	r3, r3, r1, ror #10
    10bc:	47524154 			; <UNDEFINED> instruction: 0x47524154
    10c0:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
    10c4:	635f5550 	cmpvs	pc, #80, 10	; 0x14000000
    10c8:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
    10cc:	70306d78 	eorsvc	r6, r0, r8, ror sp
    10d0:	0073756c 	rsbseq	r7, r3, ip, ror #10
    10d4:	5f6d7261 	svcpl	0x006d7261
    10d8:	69006363 	stmdbvs	r0, {r0, r1, r5, r6, r8, r9, sp, lr}
    10dc:	625f6173 	subsvs	r6, pc, #-1073741796	; 0xc000001c
    10e0:	785f7469 	ldmdavc	pc, {r0, r3, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
    10e4:	6c616373 	stclvs	3, cr6, [r1], #-460	; 0xfffffe34
    10e8:	645f0065 	ldrbvs	r0, [pc], #-101	; 10f0 <GIC_CPUB_offset+0xf0>
    10ec:	5f746e6f 	svcpl	0x00746e6f
    10f0:	5f657375 	svcpl	0x00657375
    10f4:	65657274 	strbvs	r7, [r5, #-628]!	; 0xfffffd8c
    10f8:	7265685f 	rsbvc	r6, r5, #6225920	; 0x5f0000
    10fc:	54005f65 	strpl	r5, [r0], #-3941	; 0xfffff09b
    1100:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
    1104:	50435f54 	subpl	r5, r3, r4, asr pc
    1108:	72615f55 	rsbvc	r5, r1, #340	; 0x154
    110c:	7430316d 	ldrtvc	r3, [r0], #-365	; 0xfffffe93
    1110:	00696d64 	rsbeq	r6, r9, r4, ror #26
    1114:	47524154 			; <UNDEFINED> instruction: 0x47524154
    1118:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
    111c:	635f5550 	cmpvs	pc, #80, 10	; 0x14000000
    1120:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
    1124:	00356178 	eorseq	r6, r5, r8, ror r1
    1128:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
    112c:	6372615f 	cmnvs	r2, #-1073741801	; 0xc0000017
    1130:	65746968 	ldrbvs	r6, [r4, #-2408]!	; 0xfffff698
    1134:	72757463 	rsbsvc	r7, r5, #1660944384	; 0x63000000
    1138:	72610065 	rsbvc	r0, r1, #101	; 0x65
    113c:	72615f6d 	rsbvc	r5, r1, #436	; 0x1b4
    1140:	635f6863 	cmpvs	pc, #6488064	; 0x630000
    1144:	54006372 	strpl	r6, [r0], #-882	; 0xfffffc8e
    1148:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
    114c:	50435f54 	subpl	r5, r3, r4, asr pc
    1150:	6f635f55 	svcvs	0x00635f55
    1154:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
    1158:	6d73316d 	ldfvse	f3, [r3, #-436]!	; 0xfffffe4c
    115c:	6d6c6c61 	stclvs	12, cr6, [ip, #-388]!	; 0xfffffe7c
    1160:	69746c75 	ldmdbvs	r4!, {r0, r2, r4, r5, r6, sl, fp, sp, lr}^
    1164:	00796c70 	rsbseq	r6, r9, r0, ror ip
    1168:	20554e47 	subscs	r4, r5, r7, asr #28
    116c:	20373143 	eorscs	r3, r7, r3, asr #2
    1170:	2e322e39 	mrccs	14, 1, r2, cr2, cr9, {1}
    1174:	30322031 	eorscc	r2, r2, r1, lsr r0
    1178:	30313931 	eorscc	r3, r1, r1, lsr r9
    117c:	28203532 	stmdacs	r0!, {r1, r4, r5, r8, sl, ip, sp}
    1180:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
    1184:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
    1188:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
    118c:	72612f4d 	rsbvc	r2, r1, #308	; 0x134
    1190:	2d392d6d 	ldccs	13, cr2, [r9, #-436]!	; 0xfffffe4c
    1194:	6e617262 	cdpvs	2, 6, cr7, cr1, cr2, {3}
    1198:	72206863 	eorvc	r6, r0, #6488064	; 0x630000
    119c:	73697665 	cmnvc	r9, #105906176	; 0x6500000
    11a0:	206e6f69 	rsbcs	r6, lr, r9, ror #30
    11a4:	35373732 	ldrcc	r3, [r7, #-1842]!	; 0xfffff8ce
    11a8:	205d3939 	subscs	r3, sp, r9, lsr r9
    11ac:	70636d2d 	rsbvc	r6, r3, sp, lsr #26
    11b0:	72613d75 	rsbvc	r3, r1, #7488	; 0x1d40
    11b4:	6474376d 	ldrbtvs	r3, [r4], #-1901	; 0xfffff893
    11b8:	2d20696d 			; <UNDEFINED> instruction: 0x2d20696d
    11bc:	6f6c666d 	svcvs	0x006c666d
    11c0:	612d7461 			; <UNDEFINED> instruction: 0x612d7461
    11c4:	733d6962 	teqvc	sp, #1605632	; 0x188000
    11c8:	2074666f 	rsbscs	r6, r4, pc, ror #12
    11cc:	72616d2d 	rsbvc	r6, r1, #2880	; 0xb40
    11d0:	6d2d206d 	stcvs	0, cr2, [sp, #-436]!	; 0xfffffe4c
    11d4:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
    11d8:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
    11dc:	20743476 	rsbscs	r3, r4, r6, ror r4
    11e0:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
    11e4:	672d2067 	strvs	r2, [sp, -r7, rrx]!
    11e8:	324f2d20 	subcc	r2, pc, #32, 26	; 0x800
    11ec:	324f2d20 	subcc	r2, pc, #32, 26	; 0x800
    11f0:	324f2d20 	subcc	r2, pc, #32, 26	; 0x800
    11f4:	62662d20 	rsbvs	r2, r6, #32, 26	; 0x800
    11f8:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    11fc:	2d676e69 	stclcs	14, cr6, [r7, #-420]!	; 0xfffffe5c
    1200:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
    1204:	2d206363 	stccs	3, cr6, [r0, #-396]!	; 0xfffffe74
    1208:	2d6f6e66 	stclcs	14, cr6, [pc, #-408]!	; 1078 <GIC_CPUB_offset+0x78>
    120c:	63617473 	cmnvs	r1, #1929379840	; 0x73000000
    1210:	72702d6b 	rsbsvc	r2, r0, #6848	; 0x1ac0
    1214:	6365746f 	cmnvs	r5, #1862270976	; 0x6f000000
    1218:	20726f74 	rsbscs	r6, r2, r4, ror pc
    121c:	6f6e662d 	svcvs	0x006e662d
    1220:	6c6e692d 			; <UNDEFINED> instruction: 0x6c6e692d
    1224:	20656e69 	rsbcs	r6, r5, r9, ror #28
    1228:	7865662d 	stmdavc	r5!, {r0, r2, r3, r5, r9, sl, sp, lr}^
    122c:	74706563 	ldrbtvc	r6, [r0], #-1379	; 0xfffffa9d
    1230:	736e6f69 	cmnvc	lr, #420	; 0x1a4
    1234:	76662d20 	strbtvc	r2, [r6], -r0, lsr #26
    1238:	62697369 	rsbvs	r7, r9, #-1543503871	; 0xa4000001
    123c:	74696c69 	strbtvc	r6, [r9], #-3177	; 0xfffff397
    1240:	69683d79 	stmdbvs	r8!, {r0, r3, r4, r5, r6, r8, sl, fp, ip, sp}^
    1244:	6e656464 	cdpvs	4, 6, cr6, cr5, cr4, {3}
    1248:	6d726100 	ldfvse	f6, [r2, #-0]
    124c:	7275635f 	rsbsvc	r6, r5, #2080374785	; 0x7c000001
    1250:	746e6572 	strbtvc	r6, [lr], #-1394	; 0xfffffa8e
    1254:	0063635f 	rsbeq	r6, r3, pc, asr r3
    1258:	5f617369 	svcpl	0x00617369
    125c:	5f746962 	svcpl	0x00746962
    1260:	33637263 	cmncc	r3, #805306374	; 0x30000006
    1264:	52410032 	subpl	r0, r1, #50	; 0x32
    1268:	4c505f4d 	mrrcmi	15, 4, r5, r0, cr13
    126c:	61736900 	cmnvs	r3, r0, lsl #18
    1270:	7469625f 	strbtvc	r6, [r9], #-607	; 0xfffffda1
    1274:	7066765f 	rsbvc	r7, r6, pc, asr r6
    1278:	69003376 	stmdbvs	r0, {r1, r2, r4, r5, r6, r8, r9, ip, sp}
    127c:	625f6173 	subsvs	r6, pc, #-1073741796	; 0xc000001c
    1280:	765f7469 	ldrbvc	r7, [pc], -r9, ror #8
    1284:	34767066 	ldrbtcc	r7, [r6], #-102	; 0xffffff9a
    1288:	53414200 	movtpl	r4, #4608	; 0x1200
    128c:	52415f45 	subpl	r5, r1, #276	; 0x114
    1290:	365f4843 	ldrbcc	r4, [pc], -r3, asr #16
    1294:	42003254 	andmi	r3, r0, #84, 4	; 0x40000005
    1298:	5f455341 	svcpl	0x00455341
    129c:	48435241 	stmdami	r3, {r0, r6, r9, ip, lr}^
    12a0:	5f4d385f 	svcpl	0x004d385f
    12a4:	4e49414d 	dvfmiem	f4, f1, #5.0
    12a8:	52415400 	subpl	r5, r1, #0, 8
    12ac:	5f544547 	svcpl	0x00544547
    12b0:	5f555043 	svcpl	0x00555043
    12b4:	396d7261 	stmdbcc	sp!, {r0, r5, r6, r9, ip, sp, lr}^
    12b8:	696d6474 	stmdbvs	sp!, {r2, r4, r5, r6, sl, sp, lr}^
    12bc:	4d524100 	ldfmie	f4, [r2, #-0]
    12c0:	004c415f 	subeq	r4, ip, pc, asr r1
    12c4:	45534142 	ldrbmi	r4, [r3, #-322]	; 0xfffffebe
    12c8:	4352415f 	cmpmi	r2, #-1073741801	; 0xc0000017
    12cc:	4d375f48 	ldcmi	15, cr5, [r7, #-288]!	; 0xfffffee0
    12d0:	6d726100 	ldfvse	f6, [r2, #-0]
    12d4:	7261745f 	rsbvc	r7, r1, #1593835520	; 0x5f000000
    12d8:	5f746567 	svcpl	0x00746567
    12dc:	6562616c 	strbvs	r6, [r2, #-364]!	; 0xfffffe94
    12e0:	7261006c 	rsbvc	r0, r1, #108	; 0x6c
    12e4:	61745f6d 	cmnvs	r4, sp, ror #30
    12e8:	74656772 	strbtvc	r6, [r5], #-1906	; 0xfffff88e
    12ec:	736e695f 	cmnvc	lr, #1556480	; 0x17c000
    12f0:	4154006e 	cmpmi	r4, lr, rrx
    12f4:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
    12f8:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
    12fc:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
    1300:	72786574 	rsbsvc	r6, r8, #116, 10	; 0x1d000000
    1304:	41540034 	cmpmi	r4, r4, lsr r0
    1308:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
    130c:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
    1310:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
    1314:	72786574 	rsbsvc	r6, r8, #116, 10	; 0x1d000000
    1318:	41540035 	cmpmi	r4, r5, lsr r0
    131c:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
    1320:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
    1324:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
    1328:	72786574 	rsbsvc	r6, r8, #116, 10	; 0x1d000000
    132c:	41540037 	cmpmi	r4, r7, lsr r0
    1330:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
    1334:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
    1338:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
    133c:	72786574 	rsbsvc	r6, r8, #116, 10	; 0x1d000000
    1340:	73690038 	cmnvc	r9, #56	; 0x38
    1344:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
    1348:	706c5f74 	rsbvc	r5, ip, r4, ror pc
    134c:	69006561 	stmdbvs	r0, {r0, r5, r6, r8, sl, sp, lr}
    1350:	625f6173 	subsvs	r6, pc, #-1073741796	; 0xc000001c
    1354:	715f7469 	cmpvc	pc, r9, ror #8
    1358:	6b726975 	blvs	1c9b934 <__user_program+0x199b934>
    135c:	6d72615f 	ldfvse	f6, [r2, #-380]!	; 0xfffffe84
    1360:	7a6b3676 	bvc	1aced40 <__user_program+0x17ced40>
    1364:	61736900 	cmnvs	r3, r0, lsl #18
    1368:	7469625f 	strbtvc	r6, [r9], #-607	; 0xfffffda1
    136c:	746f6e5f 	strbtvc	r6, [pc], #-3679	; 1374 <GIC_CPUB_offset+0x374>
    1370:	7369006d 	cmnvc	r9, #109	; 0x6d
    1374:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
    1378:	72615f74 	rsbvc	r5, r1, #116, 30	; 0x1d0
    137c:	0034766d 	eorseq	r7, r4, sp, ror #12
    1380:	5f617369 	svcpl	0x00617369
    1384:	5f746962 	svcpl	0x00746962
    1388:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
    138c:	73690036 	cmnvc	r9, #54	; 0x36
    1390:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
    1394:	72615f74 	rsbvc	r5, r1, #116, 30	; 0x1d0
    1398:	0037766d 	eorseq	r7, r7, sp, ror #12
    139c:	5f617369 	svcpl	0x00617369
    13a0:	5f746962 	svcpl	0x00746962
    13a4:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
    13a8:	645f0038 	ldrbvs	r0, [pc], #-56	; 13b0 <GIC_CPUB_offset+0x3b0>
    13ac:	5f746e6f 	svcpl	0x00746e6f
    13b0:	5f657375 	svcpl	0x00657375
    13b4:	5f787472 	svcpl	0x00787472
    13b8:	65726568 	ldrbvs	r6, [r2, #-1384]!	; 0xfffffa98
    13bc:	5155005f 	cmppl	r5, pc, asr r0
    13c0:	70797449 	rsbsvc	r7, r9, r9, asr #8
    13c4:	73690065 	cmnvc	r9, #101	; 0x65
    13c8:	69625f61 	stmdbvs	r2!, {r0, r5, r6, r8, r9, sl, fp, ip, lr}^
    13cc:	72615f74 	rsbvc	r5, r1, #116, 30	; 0x1d0
    13d0:	7435766d 	ldrtvc	r7, [r5], #-1645	; 0xfffff993
    13d4:	72610065 	rsbvc	r0, r1, #101	; 0x65
    13d8:	75745f6d 	ldrbvc	r5, [r4, #-3949]!	; 0xfffff093
    13dc:	6100656e 	tstvs	r0, lr, ror #10
    13e0:	635f6d72 	cmpvs	pc, #7296	; 0x1c80
    13e4:	695f7070 	ldmdbvs	pc, {r4, r5, r6, ip, sp, lr}^	; <UNPREDICTABLE>
    13e8:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
    13ec:	6b726f77 	blvs	1c9d1d0 <__user_program+0x199d1d0>
    13f0:	52415400 	subpl	r5, r1, #0, 8
    13f4:	5f544547 	svcpl	0x00544547
    13f8:	5f555043 	svcpl	0x00555043
    13fc:	396d7261 	stmdbcc	sp!, {r0, r5, r6, r9, ip, sp, lr}^
    1400:	00743032 	rsbseq	r3, r4, r2, lsr r0
    1404:	62617468 	rsbvs	r7, r1, #104, 8	; 0x68000000
    1408:	0071655f 	rsbseq	r6, r1, pc, asr r5
    140c:	47524154 			; <UNDEFINED> instruction: 0x47524154
    1410:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
    1414:	665f5550 			; <UNDEFINED> instruction: 0x665f5550
    1418:	36323561 	ldrtcc	r3, [r2], -r1, ror #10
    141c:	6d726100 	ldfvse	f6, [r2, #-0]
    1420:	6372615f 	cmnvs	r2, #-1073741801	; 0xc0000017
    1424:	68745f68 	ldmdavs	r4!, {r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    1428:	5f626d75 	svcpl	0x00626d75
    142c:	69647768 	stmdbvs	r4!, {r3, r5, r6, r8, r9, sl, ip, sp, lr}^
    1430:	74680076 	strbtvc	r0, [r8], #-118	; 0xffffff8a
    1434:	655f6261 	ldrbvs	r6, [pc, #-609]	; 11db <GIC_CPUB_offset+0x1db>
    1438:	6f705f71 	svcvs	0x00705f71
    143c:	65746e69 	ldrbvs	r6, [r4, #-3689]!	; 0xfffff197
    1440:	72610072 	rsbvc	r0, r1, #114	; 0x72
    1444:	69705f6d 	ldmdbvs	r0!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
    1448:	65725f63 	ldrbvs	r5, [r2, #-3939]!	; 0xfffff09d
    144c:	74736967 	ldrbtvc	r6, [r3], #-2407	; 0xfffff699
    1450:	54007265 	strpl	r7, [r0], #-613	; 0xfffffd9b
    1454:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
    1458:	50435f54 	subpl	r5, r3, r4, asr pc
    145c:	6f635f55 	svcvs	0x00635f55
    1460:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
    1464:	6d73306d 	ldclvs	0, cr3, [r3, #-436]!	; 0xfffffe4c
    1468:	6d6c6c61 	stclvs	12, cr6, [ip, #-388]!	; 0xfffffe7c
    146c:	69746c75 	ldmdbvs	r4!, {r0, r2, r4, r5, r6, sl, fp, sp, lr}^
    1470:	00796c70 	rsbseq	r6, r9, r0, ror ip
    1474:	47524154 			; <UNDEFINED> instruction: 0x47524154
    1478:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
    147c:	6d5f5550 	cfldr64vs	mvdx5, [pc, #-320]	; 1344 <GIC_CPUB_offset+0x344>
    1480:	726f6370 	rsbvc	r6, pc, #112, 6	; 0xc0000001
    1484:	766f6e65 	strbtvc	r6, [pc], -r5, ror #28
    1488:	69007066 	stmdbvs	r0, {r1, r2, r5, r6, ip, sp, lr}
    148c:	625f6173 	subsvs	r6, pc, #-1073741796	; 0xc000001c
    1490:	715f7469 	cmpvc	pc, r9, ror #8
    1494:	6b726975 	blvs	1c9ba70 <__user_program+0x199ba70>
    1498:	336d635f 	cmncc	sp, #2080374785	; 0x7c000001
    149c:	72646c5f 	rsbvc	r6, r4, #24320	; 0x5f00
    14a0:	52410064 	subpl	r0, r1, #100	; 0x64
    14a4:	43435f4d 	movtmi	r5, #16205	; 0x3f4d
    14a8:	6d726100 	ldfvse	f6, [r2, #-0]
    14ac:	6372615f 	cmnvs	r2, #-1073741801	; 0xc0000017
    14b0:	325f3868 	subscc	r3, pc, #104, 16	; 0x680000
    14b4:	6d726100 	ldfvse	f6, [r2, #-0]
    14b8:	6372615f 	cmnvs	r2, #-1073741801	; 0xc0000017
    14bc:	335f3868 	cmpcc	pc, #104, 16	; 0x680000
    14c0:	6d726100 	ldfvse	f6, [r2, #-0]
    14c4:	6372615f 	cmnvs	r2, #-1073741801	; 0xc0000017
    14c8:	345f3868 	ldrbcc	r3, [pc], #-2152	; 14d0 <GIC_CPUB_offset+0x4d0>
    14cc:	52415400 	subpl	r5, r1, #0, 8
    14d0:	5f544547 	svcpl	0x00544547
    14d4:	5f555043 	svcpl	0x00555043
    14d8:	36706d66 	ldrbtcc	r6, [r0], -r6, ror #26
    14dc:	41003632 	tstmi	r0, r2, lsr r6
    14e0:	435f4d52 	cmpmi	pc, #5248	; 0x1480
    14e4:	72610053 	rsbvc	r0, r1, #83	; 0x53
    14e8:	70665f6d 	rsbvc	r5, r6, sp, ror #30
    14ec:	695f3631 	ldmdbvs	pc, {r0, r4, r5, r9, sl, ip, sp}^	; <UNPREDICTABLE>
    14f0:	0074736e 	rsbseq	r7, r4, lr, ror #6
    14f4:	5f6d7261 	svcpl	0x006d7261
    14f8:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
    14fc:	6372615f 	cmnvs	r2, #-1073741801	; 0xc0000017
    1500:	41540068 	cmpmi	r4, r8, rrx
    1504:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
    1508:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
    150c:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
    1510:	61786574 	cmnvs	r8, r4, ror r5
    1514:	6f633531 	svcvs	0x00633531
    1518:	78657472 	stmdavc	r5!, {r1, r4, r5, r6, sl, ip, sp, lr}^
    151c:	2e003761 	cdpcs	7, 0, cr3, cr0, cr1, {3}
    1520:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1524:	2f2e2e2f 	svccs	0x002e2e2f
    1528:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
    152c:	6c2f6363 	stcvs	3, cr6, [pc], #-396	; 13a8 <GIC_CPUB_offset+0x3a8>
    1530:	63676269 	cmnvs	r7, #-1879048186	; 0x90000006
    1534:	632e3263 			; <UNDEFINED> instruction: 0x632e3263
    1538:	6d726100 	ldfvse	f6, [r2, #-0]
    153c:	6372615f 	cmnvs	r2, #-1073741801	; 0xc0000017
    1540:	6d653768 	stclvs	7, cr3, [r5, #-416]!	; 0xfffffe60
    1544:	52415400 	subpl	r5, r1, #0, 8
    1548:	5f544547 	svcpl	0x00544547
    154c:	5f555043 	svcpl	0x00555043
    1550:	74726f63 	ldrbtvc	r6, [r2], #-3939	; 0xfffff09d
    1554:	37617865 	strbcc	r7, [r1, -r5, ror #16]!
    1558:	72610032 	rsbvc	r0, r1, #50	; 0x32
    155c:	63705f6d 	cmnvs	r0, #436	; 0x1b4
    1560:	65645f73 	strbvs	r5, [r4, #-3955]!	; 0xfffff08d
    1564:	6c756166 	ldfvse	f6, [r5], #-408	; 0xfffffe68
    1568:	52410074 	subpl	r0, r1, #116	; 0x74
    156c:	43505f4d 	cmpmi	r0, #308	; 0x134
    1570:	41415f53 	cmpmi	r1, r3, asr pc
    1574:	5f534350 	svcpl	0x00534350
    1578:	41434f4c 	cmpmi	r3, ip, asr #30
    157c:	4154004c 	cmpmi	r4, ip, asr #32
    1580:	54454752 	strbpl	r4, [r5], #-1874	; 0xfffff8ae
    1584:	5550435f 	ldrbpl	r4, [r0, #-863]	; 0xfffffca1
    1588:	726f635f 	rsbvc	r6, pc, #2080374785	; 0x7c000001
    158c:	61786574 	cmnvs	r8, r4, ror r5
    1590:	54003537 	strpl	r3, [r0], #-1335	; 0xfffffac9
    1594:	45475241 	strbmi	r5, [r7, #-577]	; 0xfffffdbf
    1598:	50435f54 	subpl	r5, r3, r4, asr pc
    159c:	74735f55 	ldrbtvc	r5, [r3], #-3925	; 0xfffff0ab
    15a0:	676e6f72 			; <UNDEFINED> instruction: 0x676e6f72
    15a4:	006d7261 	rsbeq	r7, sp, r1, ror #4
    15a8:	5f6d7261 	svcpl	0x006d7261
    15ac:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
    15b0:	7568745f 	strbvc	r7, [r8, #-1119]!	; 0xfffffba1
    15b4:	0031626d 	eorseq	r6, r1, sp, ror #4
    15b8:	5f6d7261 	svcpl	0x006d7261
    15bc:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
    15c0:	7568745f 	strbvc	r7, [r8, #-1119]!	; 0xfffffba1
    15c4:	0032626d 	eorseq	r6, r2, sp, ror #4
    15c8:	47524154 			; <UNDEFINED> instruction: 0x47524154
    15cc:	435f5445 	cmpmi	pc, #1157627904	; 0x45000000
    15d0:	695f5550 	ldmdbvs	pc, {r4, r6, r8, sl, ip, lr}^	; <UNPREDICTABLE>
    15d4:	786d6d77 	stmdavc	sp!, {r0, r1, r2, r4, r5, r6, r8, sl, fp, sp, lr}^
    15d8:	72610074 	rsbvc	r0, r1, #116	; 0x74
    15dc:	72615f6d 	rsbvc	r5, r1, #436	; 0x1b4
    15e0:	74356863 	ldrtvc	r6, [r5], #-2147	; 0xfffff79d
    15e4:	61736900 	cmnvs	r3, r0, lsl #18
    15e8:	7469625f 	strbtvc	r6, [r9], #-607	; 0xfffffda1
    15ec:	00706d5f 	rsbseq	r6, r0, pc, asr sp
    15f0:	5f6d7261 	svcpl	0x006d7261
    15f4:	735f646c 	cmpvc	pc, #108, 8	; 0x6c000000
    15f8:	64656863 	strbtvs	r6, [r5], #-2147	; 0xfffff79d
    15fc:	6d726100 	ldfvse	f6, [r2, #-0]
    1600:	6372615f 	cmnvs	r2, #-1073741801	; 0xc0000017
    1604:	315f3868 	cmpcc	pc, r8, ror #16
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <__user_program+0xdd0d24>
   4:	35312820 	ldrcc	r2, [r1, #-2080]!	; 0xfffff7e0
   8:	322d393a 	eorcc	r3, sp, #950272	; 0xe8000
   c:	2d393130 	ldfcss	f3, [r9, #-192]!	; 0xffffff40
  10:	302d3471 	eorcc	r3, sp, r1, ror r4
  14:	6e756275 	mrcvs	2, 3, r6, cr5, cr5, {3}
  18:	29317574 	ldmdbcs	r1!, {r2, r4, r5, r6, r8, sl, ip, sp, lr}
  1c:	322e3920 	eorcc	r3, lr, #32, 18	; 0x80000
  20:	3220312e 	eorcc	r3, r0, #-2147483637	; 0x8000000b
  24:	31393130 	teqcc	r9, r0, lsr r1
  28:	20353230 	eorscs	r3, r5, r0, lsr r2
  2c:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
  30:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0xfffffe9b
  34:	415b2029 	cmpmi	fp, r9, lsr #32
  38:	612f4d52 			; <UNDEFINED> instruction: 0x612f4d52
  3c:	392d6d72 	pushcc	{r1, r4, r5, r6, r8, sl, fp, sp, lr}
  40:	6172622d 	cmnvs	r2, sp, lsr #4
  44:	2068636e 	rsbcs	r6, r8, lr, ror #6
  48:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  4c:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  50:	37373220 	ldrcc	r3, [r7, -r0, lsr #4]!
  54:	5d393935 			; <UNDEFINED> instruction: 0x5d393935
  58:	43434700 	movtmi	r4, #14080	; 0x3700
  5c:	4728203a 			; <UNDEFINED> instruction: 0x4728203a
  60:	5420554e 	strtpl	r5, [r0], #-1358	; 0xfffffab2
  64:	736c6f6f 	cmnvc	ip, #444	; 0x1bc
  68:	726f6620 	rsbvc	r6, pc, #32, 12	; 0x2000000
  6c:	4d524120 	ldfmie	f4, [r2, #-128]	; 0xffffff80
  70:	626d4520 	rsbvs	r4, sp, #32, 10	; 0x8000000
  74:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  78:	72502064 	subsvc	r2, r0, #100	; 0x64
  7c:	7365636f 	cmnvc	r5, #-1140850687	; 0xbc000001
  80:	73726f73 	cmnvc	r2, #460	; 0x1cc
  84:	2e342029 	cdpcs	0, 3, cr2, cr4, cr9, {1}
  88:	20332e39 	eorscs	r2, r3, r9, lsr lr
  8c:	35313032 	ldrcc	r3, [r1, #-50]!	; 0xffffffce
  90:	39323530 	ldmdbcc	r2!, {r4, r5, r8, sl, ip, sp}
  94:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  98:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  9c:	5b202965 	blpl	80a638 <__user_program+0x50a638>
  a0:	2f4d5241 	svccs	0x004d5241
  a4:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  a8:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  ac:	395f342d 	ldmdbcc	pc, {r0, r2, r3, r5, sl, ip, sp}^	; <UNPREDICTABLE>
  b0:	6172622d 	cmnvs	r2, sp, lsr #4
  b4:	2068636e 	rsbcs	r6, r8, lr, ror #6
  b8:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  bc:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  c0:	34323220 	ldrtcc	r3, [r2], #-544	; 0xfffffde0
  c4:	5d383832 	ldcpl	8, cr3, [r8, #-200]!	; 0xffffff38
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
  18:	00008018 	andeq	r8, r0, r8, lsl r0
  1c:	0000011c 	andeq	r0, r0, ip, lsl r1
  20:	8b040e42 	blhi	103930 <__bss_end+0xf6930>
  24:	0b0d4201 	bleq	350830 <__user_program+0x50830>
  28:	0d0d8602 	stceq	6, cr8, [sp, #-8]
  2c:	000ecb42 	andeq	ip, lr, r2, asr #22
  30:	0000001c 	andeq	r0, r0, ip, lsl r0
  34:	00000000 	andeq	r0, r0, r0
  38:	00008134 	andeq	r8, r0, r4, lsr r1
  3c:	00000088 	andeq	r0, r0, r8, lsl #1
  40:	8b040e42 	blhi	103950 <__bss_end+0xf6950>
  44:	0b0d4201 	bleq	350850 <__user_program+0x50850>
  48:	420d0d7c 	andmi	r0, sp, #124, 26	; 0x1f00
  4c:	00000ecb 	andeq	r0, r0, fp, asr #29
  50:	0000001c 	andeq	r0, r0, ip, lsl r0
  54:	00000000 	andeq	r0, r0, r0
  58:	000081bc 			; <UNDEFINED> instruction: 0x000081bc
  5c:	00000088 	andeq	r0, r0, r8, lsl #1
  60:	8b040e42 	blhi	103970 <__bss_end+0xf6970>
  64:	0b0d4201 	bleq	350870 <__user_program+0x50870>
  68:	420d0d7c 	andmi	r0, sp, #124, 26	; 0x1f00
  6c:	00000ecb 	andeq	r0, r0, fp, asr #29
  70:	0000001c 	andeq	r0, r0, ip, lsl r0
  74:	00000000 	andeq	r0, r0, r0
  78:	00008244 	andeq	r8, r0, r4, asr #4
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
  a8:	00008340 	andeq	r8, r0, r0, asr #6
  ac:	00000230 	andeq	r0, r0, r0, lsr r2
  b0:	8b080e42 	blhi	2039c0 <__end+0xd59c0>
  b4:	42018e02 	andmi	r8, r1, #2, 28
  b8:	00040b0c 	andeq	r0, r4, ip, lsl #22
  bc:	0000000c 	andeq	r0, r0, ip
  c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  c4:	7c020001 	stcvc	0, cr0, [r2], {1}
  c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  cc:	0000001c 	andeq	r0, r0, ip, lsl r0
  d0:	000000bc 	strheq	r0, [r0], -ip
  d4:	00008570 	andeq	r8, r0, r0, ror r5
  d8:	00000118 	andeq	r0, r0, r8, lsl r1
  dc:	8b080e42 	blhi	2039ec <__end+0xd59ec>
  e0:	42018e02 	andmi	r8, r1, #2, 28
  e4:	02040b0c 	andeq	r0, r4, #12, 22	; 0x3000
  e8:	080d0c86 	stmdaeq	sp, {r1, r2, r7, sl, fp}
  ec:	00000034 	andeq	r0, r0, r4, lsr r0
  f0:	000000bc 	strheq	r0, [r0], -ip
  f4:	00008688 	andeq	r8, r0, r8, lsl #13
  f8:	0000028c 	andeq	r0, r0, ip, lsl #5
  fc:	80100e42 	andshi	r0, r0, r2, asr #28
 100:	82038104 	andhi	r8, r3, #4, 2
 104:	42018302 	andmi	r8, r1, #134217728	; 0x8000000
 108:	068b180e 	streq	r1, [fp], lr, lsl #16
 10c:	0c42058e 	cfstr64eq	mvdx0, [r2], {142}	; 0x8e
 110:	3a03140b 	bcc	c5144 <__bss_end+0xb8144>
 114:	180d0c01 	stmdane	sp, {r0, sl, fp}
 118:	0ecbce42 	cdpeq	14, 12, cr12, cr11, cr2, {2}
 11c:	c2c34210 	sbcgt	r4, r3, #16, 4
 120:	000ec0c1 	andeq	ip, lr, r1, asr #1
 124:	0000000c 	andeq	r0, r0, ip
 128:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 12c:	7c020001 	stcvc	0, cr0, [r2], {1}
 130:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 134:	00000018 	andeq	r0, r0, r8, lsl r0
 138:	00000124 	andeq	r0, r0, r4, lsr #2
 13c:	00008914 	andeq	r8, r0, r4, lsl r9
 140:	000000a0 	andeq	r0, r0, r0, lsr #1
 144:	8b080e42 	blhi	203a54 <__end+0xd5a54>
 148:	42018e02 	andmi	r8, r1, #2, 28
 14c:	00040b0c 	andeq	r0, r4, ip, lsl #22
 150:	0000001c 	andeq	r0, r0, ip, lsl r0
 154:	00000124 	andeq	r0, r0, r4, lsr #2
 158:	000089b4 			; <UNDEFINED> instruction: 0x000089b4
 15c:	00000038 	andeq	r0, r0, r8, lsr r0
 160:	8b040e42 	blhi	103a70 <__bss_end+0xf6a70>
 164:	0b0d4201 	bleq	350970 <__user_program+0x50970>
 168:	420d0d54 	andmi	r0, sp, #84, 26	; 0x1500
 16c:	00000ecb 	andeq	r0, r0, fp, asr #29
 170:	0000001c 	andeq	r0, r0, ip, lsl r0
 174:	00000124 	andeq	r0, r0, r4, lsr #2
 178:	000089ec 	andeq	r8, r0, ip, ror #19
 17c:	00000054 	andeq	r0, r0, r4, asr r0
 180:	8b040e42 	blhi	103a90 <__bss_end+0xf6a90>
 184:	0b0d4201 	bleq	350990 <__user_program+0x50990>
 188:	420d0d62 	andmi	r0, sp, #6272	; 0x1880
 18c:	00000ecb 	andeq	r0, r0, fp, asr #29
 190:	0000001c 	andeq	r0, r0, ip, lsl r0
 194:	00000124 	andeq	r0, r0, r4, lsr #2
 198:	00008a40 	andeq	r8, r0, r0, asr #20
 19c:	00000048 	andeq	r0, r0, r8, asr #32
 1a0:	8b040e42 	blhi	103ab0 <__bss_end+0xf6ab0>
 1a4:	0b0d4201 	bleq	3509b0 <__user_program+0x509b0>
 1a8:	420d0d5c 	andmi	r0, sp, #92, 26	; 0x1700
 1ac:	00000ecb 	andeq	r0, r0, fp, asr #29
 1b0:	0000000c 	andeq	r0, r0, ip
 1b4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 1b8:	7c020001 	stcvc	0, cr0, [r2], {1}
 1bc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1c0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1c4:	000001b0 			; <UNDEFINED> instruction: 0x000001b0
 1c8:	00008a88 	andeq	r8, r0, r8, lsl #21
 1cc:	00000058 	andeq	r0, r0, r8, asr r0
 1d0:	8b040e42 	blhi	103ae0 <__bss_end+0xf6ae0>
 1d4:	0b0d4201 	bleq	3509e0 <__user_program+0x509e0>
 1d8:	420d0d64 	andmi	r0, sp, #100, 26	; 0x1900
 1dc:	00000ecb 	andeq	r0, r0, fp, asr #29
 1e0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1e4:	000001b0 			; <UNDEFINED> instruction: 0x000001b0
 1e8:	00008ae0 	andeq	r8, r0, r0, ror #21
 1ec:	00000034 	andeq	r0, r0, r4, lsr r0
 1f0:	8b040e42 	blhi	103b00 <__bss_end+0xf6b00>
 1f4:	0b0d4201 	bleq	350a00 <__user_program+0x50a00>
 1f8:	420d0d52 	andmi	r0, sp, #5248	; 0x1480
 1fc:	00000ecb 	andeq	r0, r0, fp, asr #29
 200:	0000000c 	andeq	r0, r0, ip
 204:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 208:	7c020001 	stcvc	0, cr0, [r2], {1}
 20c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 210:	0000001c 	andeq	r0, r0, ip, lsl r0
 214:	00000200 	andeq	r0, r0, r0, lsl #4
 218:	00008b14 	andeq	r8, r0, r4, lsl fp
 21c:	00000064 	andeq	r0, r0, r4, rrx
 220:	8b080e42 	blhi	203b30 <__end+0xd5b30>
 224:	42018e02 	andmi	r8, r1, #2, 28
 228:	6c040b0c 			; <UNDEFINED> instruction: 0x6c040b0c
 22c:	00080d0c 	andeq	r0, r8, ip, lsl #26
 230:	0000001c 	andeq	r0, r0, ip, lsl r0
 234:	00000200 	andeq	r0, r0, r0, lsl #4
 238:	00008b78 	andeq	r8, r0, r8, ror fp
 23c:	00000028 	andeq	r0, r0, r8, lsr #32
 240:	8b040e42 	blhi	103b50 <__bss_end+0xf6b50>
 244:	0b0d4201 	bleq	350a50 <__user_program+0x50a50>
 248:	420d0d4c 	andmi	r0, sp, #76, 26	; 0x1300
 24c:	00000ecb 	andeq	r0, r0, fp, asr #29
 250:	0000001c 	andeq	r0, r0, ip, lsl r0
 254:	00000200 	andeq	r0, r0, r0, lsl #4
 258:	00008ba0 	andeq	r8, r0, r0, lsr #23
 25c:	00000028 	andeq	r0, r0, r8, lsr #32
 260:	8b040e42 	blhi	103b70 <__bss_end+0xf6b70>
 264:	0b0d4201 	bleq	350a70 <__user_program+0x50a70>
 268:	420d0d4c 	andmi	r0, sp, #76, 26	; 0x1300
 26c:	00000ecb 	andeq	r0, r0, fp, asr #29
 270:	0000001c 	andeq	r0, r0, ip, lsl r0
 274:	00000200 	andeq	r0, r0, r0, lsl #4
 278:	00008bc8 	andeq	r8, r0, r8, asr #23
 27c:	00000028 	andeq	r0, r0, r8, lsr #32
 280:	8b040e42 	blhi	103b90 <__bss_end+0xf6b90>
 284:	0b0d4201 	bleq	350a90 <__user_program+0x50a90>
 288:	420d0d4c 	andmi	r0, sp, #76, 26	; 0x1300
 28c:	00000ecb 	andeq	r0, r0, fp, asr #29
 290:	0000001c 	andeq	r0, r0, ip, lsl r0
 294:	00000200 	andeq	r0, r0, r0, lsl #4
 298:	00008bf0 	strdeq	r8, [r0], -r0
 29c:	00000024 	andeq	r0, r0, r4, lsr #32
 2a0:	8b040e42 	blhi	103bb0 <__bss_end+0xf6bb0>
 2a4:	0b0d4201 	bleq	350ab0 <__user_program+0x50ab0>
 2a8:	420d0d4a 	andmi	r0, sp, #4736	; 0x1280
 2ac:	00000ecb 	andeq	r0, r0, fp, asr #29
 2b0:	0000000c 	andeq	r0, r0, ip
 2b4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2b8:	7c020001 	stcvc	0, cr0, [r2], {1}
 2bc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 2c0:	0000001c 	andeq	r0, r0, ip, lsl r0
 2c4:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 2c8:	00008c14 	andeq	r8, r0, r4, lsl ip
 2cc:	00000018 	andeq	r0, r0, r8, lsl r0
 2d0:	8b040e42 	blhi	103be0 <__bss_end+0xf6be0>
 2d4:	0b0d4201 	bleq	350ae0 <__user_program+0x50ae0>
 2d8:	420d0d44 	andmi	r0, sp, #68, 26	; 0x1100
 2dc:	00000ecb 	andeq	r0, r0, fp, asr #29
 2e0:	00000024 	andeq	r0, r0, r4, lsr #32
 2e4:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 2e8:	00008c2c 	andeq	r8, r0, ip, lsr #24
 2ec:	00000018 	andeq	r0, r0, r8, lsl r0
 2f0:	80200e42 	eorhi	r0, r0, r2, asr #28
 2f4:	82078108 	andhi	r8, r7, #8, 2
 2f8:	84058306 	strhi	r8, [r5], #-774	; 0xfffffcfa
 2fc:	8c038b04 			; <UNDEFINED> instruction: 0x8c038b04
 300:	42018e02 	andmi	r8, r1, #2, 28
 304:	00040b0c 	andeq	r0, r4, ip, lsl #22
 308:	00000024 	andeq	r0, r0, r4, lsr #32
 30c:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 310:	00008c44 	andeq	r8, r0, r4, asr #24
 314:	00000018 	andeq	r0, r0, r8, lsl r0
 318:	80200e42 	eorhi	r0, r0, r2, asr #28
 31c:	82078108 	andhi	r8, r7, #8, 2
 320:	84058306 	strhi	r8, [r5], #-774	; 0xfffffcfa
 324:	8c038b04 			; <UNDEFINED> instruction: 0x8c038b04
 328:	42018e02 	andmi	r8, r1, #2, 28
 32c:	00040b0c 	andeq	r0, r4, ip, lsl #22
 330:	0000001c 	andeq	r0, r0, ip, lsl r0
 334:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 338:	00008c5c 	andeq	r8, r0, ip, asr ip
 33c:	00000018 	andeq	r0, r0, r8, lsl r0
 340:	8b040e42 	blhi	103c50 <__bss_end+0xf6c50>
 344:	0b0d4201 	bleq	350b50 <__user_program+0x50b50>
 348:	420d0d44 	andmi	r0, sp, #68, 26	; 0x1100
 34c:	00000ecb 	andeq	r0, r0, fp, asr #29
 350:	0000001c 	andeq	r0, r0, ip, lsl r0
 354:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 358:	00008c74 	andeq	r8, r0, r4, ror ip
 35c:	00000018 	andeq	r0, r0, r8, lsl r0
 360:	8b040e42 	blhi	103c70 <__bss_end+0xf6c70>
 364:	0b0d4201 	bleq	350b70 <__user_program+0x50b70>
 368:	420d0d44 	andmi	r0, sp, #68, 26	; 0x1100
 36c:	00000ecb 	andeq	r0, r0, fp, asr #29
 370:	00000028 	andeq	r0, r0, r8, lsr #32
 374:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 378:	00008c8c 	andeq	r8, r0, ip, lsl #25
 37c:	00000024 	andeq	r0, r0, r4, lsr #32
 380:	80200e44 	eorhi	r0, r0, r4, asr #28
 384:	82078108 	andhi	r8, r7, #8, 2
 388:	84058306 	strhi	r8, [r5], #-774	; 0xfffffcfa
 38c:	8c038b04 			; <UNDEFINED> instruction: 0x8c038b04
 390:	42018e02 	andmi	r8, r1, #2, 28
 394:	4a040b0c 	bmi	102fcc <__bss_end+0xf5fcc>
 398:	00200d0c 	eoreq	r0, r0, ip, lsl #26
 39c:	00000014 	andeq	r0, r0, r4, lsl r0
 3a0:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 3a4:	00008cb0 			; <UNDEFINED> instruction: 0x00008cb0
 3a8:	00000010 	andeq	r0, r0, r0, lsl r0
 3ac:	040b0c42 	streq	r0, [fp], #-3138	; 0xfffff3be
 3b0:	000d0c44 	andeq	r0, sp, r4, asr #24
 3b4:	0000001c 	andeq	r0, r0, ip, lsl r0
 3b8:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 3bc:	00008cc0 	andeq	r8, r0, r0, asr #25
 3c0:	00000024 	andeq	r0, r0, r4, lsr #32
 3c4:	8b040e42 	blhi	103cd4 <__bss_end+0xf6cd4>
 3c8:	0b0d4201 	bleq	350bd4 <__user_program+0x50bd4>
 3cc:	420d0d4a 	andmi	r0, sp, #4736	; 0x1280
 3d0:	00000ecb 	andeq	r0, r0, fp, asr #29
 3d4:	00000018 	andeq	r0, r0, r8, lsl r0
 3d8:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
 3dc:	00008ce4 	andeq	r8, r0, r4, ror #25
 3e0:	00000020 	andeq	r0, r0, r0, lsr #32
 3e4:	8b080e42 	blhi	203cf4 <__end+0xd5cf4>
 3e8:	42018e02 	andmi	r8, r1, #2, 28
 3ec:	00040b0c 	andeq	r0, r4, ip, lsl #22
 3f0:	0000000c 	andeq	r0, r0, ip
 3f4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 3f8:	7c010001 	stcvc	0, cr0, [r1], {1}
 3fc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 400:	0000000c 	andeq	r0, r0, ip
 404:	000003f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 408:	00008ff8 	strdeq	r8, [r0], -r8	; <UNPREDICTABLE>
 40c:	00000128 	andeq	r0, r0, r8, lsr #2
 410:	0000000c 	andeq	r0, r0, ip
 414:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 418:	7c020001 	stcvc	0, cr0, [r2], {1}
 41c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 420:	00000018 	andeq	r0, r0, r8, lsl r0
 424:	00000410 	andeq	r0, r0, r0, lsl r4
 428:	00009144 	andeq	r9, r0, r4, asr #2
 42c:	0000003c 	andeq	r0, r0, ip, lsr r0
 430:	8e100e54 	mrchi	14, 0, r0, cr0, cr4, {2}
 434:	0ece4803 	cdpeq	8, 12, cr4, cr14, cr3, {0}
 438:	00000010 	andeq	r0, r0, r0, lsl r0
 43c:	0000000c 	andeq	r0, r0, ip
 440:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 444:	7c020001 	stcvc	0, cr0, [r2], {1}
 448:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 44c:	0000002c 	andeq	r0, r0, ip, lsr #32
 450:	0000043c 	andeq	r0, r0, ip, lsr r4
 454:	00009180 	andeq	r9, r0, r0, lsl #3
 458:	00000130 	andeq	r0, r0, r0, lsr r1
 45c:	84200e46 	strthi	r0, [r0], #-3654	; 0xfffff1ba
 460:	86078508 	strhi	r8, [r7], -r8, lsl #10
 464:	88058706 	stmdahi	r5, {r1, r2, r8, r9, sl, pc}
 468:	8a038904 	bhi	e2880 <__bss_end+0xd5880>
 46c:	02018e02 	andeq	r8, r1, #2, 28
 470:	c9cace90 	stmibgt	sl, {r4, r7, r9, sl, fp, lr, pc}^
 474:	c5c6c7c8 	strbgt	ip, [r6, #1992]	; 0x7c8
 478:	00000ec4 	andeq	r0, r0, r4, asr #29

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
	...
   8:	00000014 	andeq	r0, r0, r4, lsl r0
   c:	93500006 	cmpls	r0, #6
  10:	04935104 	ldreq	r5, [r3], #260	; 0x104
  14:	00000014 	andeq	r0, r0, r4, lsl r0
  18:	00000130 	andeq	r0, r0, r0, lsr r1
  1c:	03f30006 	mvnseq	r0, #6
  20:	9f2500f5 	svcls	0x002500f5
	...
  34:	00000037 	andeq	r0, r0, r7, lsr r0
  38:	93520006 	cmpls	r2, #6
  3c:	04935304 	ldreq	r5, [r3], #772	; 0x304
  40:	00000037 	andeq	r0, r0, r7, lsr r0
  44:	00000130 	andeq	r0, r0, r0, lsr r1
  48:	03f30006 	mvnseq	r0, #6
  4c:	9f2502f5 	svcls	0x002502f5
	...
  58:	00000002 	andeq	r0, r0, r2
	...
  64:	00000090 	muleq	r0, r0, r0
  68:	089e000a 	ldmeq	lr, {r1, r3}
	...
  74:	00000090 	muleq	r0, r0, r0
  78:	000000f8 	strdeq	r0, [r0], -r8
  7c:	93500006 	cmpls	r0, #6
  80:	04935104 	ldreq	r5, [r3], #260	; 0x104
  84:	00000104 	andeq	r0, r0, r4, lsl #2
  88:	00000118 	andeq	r0, r0, r8, lsl r1
  8c:	93500006 	cmpls	r0, #6
  90:	04935104 	ldreq	r5, [r3], #260	; 0x104
  94:	00000120 	andeq	r0, r0, r0, lsr #2
  98:	00000130 	andeq	r0, r0, r0, lsr r1
  9c:	93500006 	cmpls	r0, #6
  a0:	04935104 	ldreq	r5, [r3], #260	; 0x104
	...
  b4:	00180000 	andseq	r0, r8, r0
  b8:	00800000 	addeq	r0, r0, r0
  bc:	00060000 	andeq	r0, r6, r0
  c0:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
  c4:	008c0493 	umulleq	r0, ip, r3, r4
  c8:	00c00000 	sbceq	r0, r0, r0
  cc:	00060000 	andeq	r0, r6, r0
  d0:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
  d4:	00c40493 	smulleq	r0, r4, r3, r4
  d8:	00dc0000 	sbcseq	r0, ip, r0
  dc:	00060000 	andeq	r0, r6, r0
  e0:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
  e4:	00e00493 	smlaleq	r0, r0, r3, r4	; <UNPREDICTABLE>
  e8:	00fc0000 	rscseq	r0, ip, r0
  ec:	00060000 	andeq	r0, r6, r0
  f0:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
  f4:	01080493 			; <UNDEFINED> instruction: 0x01080493
  f8:	012c0000 			; <UNDEFINED> instruction: 0x012c0000
  fc:	00060000 	andeq	r0, r6, r0
 100:	55049354 	strpl	r9, [r4, #-852]	; 0xfffffcac
 104:	00000493 	muleq	r0, r3, r4
	...
 110:	00680000 	rsbeq	r0, r8, r0
 114:	00a80000 	adceq	r0, r8, r0
 118:	00060000 	andeq	r0, r6, r0
 11c:	53049352 	movwpl	r9, #17234	; 0x4352
 120:	00a80493 	umlaleq	r0, r8, r3, r4
 124:	01200000 			; <UNDEFINED> instruction: 0x01200000
 128:	00060000 	andeq	r0, r6, r0
 12c:	57049356 	smlsdpl	r4, r6, r3, r9
 130:	00000493 	muleq	r0, r3, r4
	...
 13c:	00400000 	subeq	r0, r0, r0
 140:	00440000 	subeq	r0, r4, r0
 144:	00010000 	andeq	r0, r1, r0
 148:	00004450 	andeq	r4, r0, r0, asr r4
 14c:	00005000 	andeq	r5, r0, r0
 150:	59000100 	stmdbpl	r0, {r8}
	...
 15c:	00480000 	subeq	r0, r8, r0
 160:	00700000 	rsbseq	r0, r0, r0
 164:	00010000 	andeq	r0, r1, r0
 168:	00000050 	andeq	r0, r0, r0, asr r0
 16c:	00000000 	andeq	r0, r0, r0
 170:	01010100 	mrseq	r0, (UNDEF: 17)
 174:	01010000 	mrseq	r0, (UNDEF: 1)
 178:	a8000000 	stmdage	r0, {}	; <UNPREDICTABLE>
 17c:	c4000000 	strgt	r0, [r0], #-0
 180:	01000000 	mrseq	r0, (UNDEF: 0)
 184:	00c45e00 	sbceq	r5, r4, r0, lsl #28
 188:	00c80000 	sbceq	r0, r8, r0
 18c:	00030000 	andeq	r0, r3, r0
 190:	c89f7f7e 	ldmgt	pc, {r1, r2, r3, r4, r5, r6, r8, r9, sl, fp, ip, sp, lr}	; <UNPREDICTABLE>
 194:	e0000000 	and	r0, r0, r0
 198:	01000000 	mrseq	r0, (UNDEF: 0)
 19c:	00e05e00 	rsceq	r5, r0, r0, lsl #28
 1a0:	00e40000 	rsceq	r0, r4, r0
 1a4:	00030000 	andeq	r0, r3, r0
 1a8:	e49f7f7e 	ldr	r7, [pc], #3966	; 1b0 <CPSR_IRQ_INHIBIT+0x130>
 1ac:	20000000 	andcs	r0, r0, r0
 1b0:	01000001 	tsteq	r0, r1
 1b4:	00005e00 	andeq	r5, r0, r0, lsl #28
	...
 1c0:	004c0000 	subeq	r0, ip, r0
 1c4:	01140000 	tsteq	r4, r0
 1c8:	00010000 	andeq	r0, r1, r0
 1cc:	0001145c 	andeq	r1, r1, ip, asr r4
 1d0:	00012000 	andeq	r2, r1, r0
 1d4:	79000300 	stmdbvc	r0, {r8, r9}
 1d8:	00009f20 	andeq	r9, r0, r0, lsr #30
 1dc:	00000000 	andeq	r0, r0, r0
	...
