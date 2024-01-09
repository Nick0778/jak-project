; ALL_TYPES=jak2=/home/philip/code/C++/jak-project/decompiler/config/jak2/all-types.gc

;------------------------------------------
;  top-level segment
;------------------------------------------

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (top-level-login port-blimp)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x20, fp? 1 ra? 1 ep? 1
  ;gprs: gp
;; Warnings:
;; WARN: Return type mismatch state vs none.
;; ERROR: Failed static ref finding: Unable to 'decompile_at_label' L218 (using type turret-path), Reason: Unable to 'decompile_at_label'  (using type turret-path-event), Reason: Field param in type turret-path-event offset 8 did not have a proper reference


    daddiu sp, sp, -32
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
    sq gp, 16(sp)
B0:
    lui v1, L218              ;; [  0] (set! v1-0 L218) [] -> [v1: turret-path ]
    ori v1, v1, L218
    sw v1, *port-turret-1-path*(s7);; [  1] (s.w! *port-turret-1-path* v1-0) [v1: turret-path ] -> []
    lw v1, type(s7)           ;; [  2] (set! v1-1 type) [] -> [v1: <the etype type> ]
    lwu t9, 16(v1)            ;; [  3] (set! t9-0 (l.wu (+ v1-1 16)))
                              ;; [v1: <the etype type> ] -> [t9: <new type (function symbol type int type)> ]
    daddiu a0, s7, port-turret;; [  4] (set! a0-0 'port-turret) [] -> [a0: <sym port-turret> ]
    lw a1, base-turret(s7)    ;; [  5] (set! a1-0 base-turret) [] -> [a1: <the etype base-turret> ]
    ld a2, L265(fp)           ;; [  6] (set! a2-0 (l.d L265)) [] -> [a2: uint ]
    jalr ra, t9               ;; [  7] (call! a0-0 a1-0 a2-0)
                              ;; [a0: <sym port-turret> a1: <the etype base-turret> a2: uint t9: <new type (function symbol type int type)> ] -> [v0: type ]
    sll v0, ra, 0

    lw t9, method-set!(s7)    ;; [  8] (set! t9-1 method-set!) [] -> [t9: (function type int object none) ]
    lw a0, port-turret(s7)    ;; [  9] (set! a0-1 port-turret) [] -> [a0: <the etype port-turret> ]
    addiu a1, r0, 3           ;; [ 10] (set! a1-1 3) [] -> [a1: <integer 3> ]
    lui v1, L232              ;; [ 11] (set! a2-1 L232) [] -> [a2: (function port-turret port-turret) ]
    ori a2, v1, L232
    jalr ra, t9               ;; [ 12] (call! a0-1 a1-1 a2-1)
                              ;; [a0: <the etype port-turret> a1: <integer 3> a2: (function port-turret port-turret) t9: (function type int object none) ] -> [v0: none ]
    sll v0, ra, 0

    lui v1, L144              ;; [ 13] (set! v1-2 L144) [] -> [v1: (function port-turret none) ]
    ori v1, v1, L144
    sw v1, new-wave-speech(s7);; [ 14] (s.w! new-wave-speech v1-2) [v1: (function port-turret none) ] -> []
    lui v1, L134              ;; [ 15] (set! v1-3 L134) [] -> [v1: (function port-turret none) ]
    ori v1, v1, L134
    sw v1, jak-hit-speech(s7) ;; [ 16] (s.w! jak-hit-speech v1-3) [v1: (function port-turret none) ] -> []
    lui v1, L131              ;; [ 17] (set! v1-4 L131) [] -> [v1: (function port-turret none) ]
    ori v1, v1, L131
    sw v1, jak-miss-speech(s7);; [ 18] (s.w! jak-miss-speech v1-4) [v1: (function port-turret none) ] -> []
    lui v1, L127              ;; [ 19] (set! v1-5 L127) [] -> [v1: (function port-turret none) ]
    ori v1, v1, L127
    sw v1, ship-close-speech(s7);; [ 20] (s.w! ship-close-speech v1-5) [v1: (function port-turret none) ] -> []
    lui v1, L124              ;; [ 21] (set! v1-6 L124) [] -> [v1: (function port-turret none) ]
    ori v1, v1, L124
    sw v1, help-speech(s7)    ;; [ 22] (s.w! help-speech v1-6) [v1: (function port-turret none) ] -> []
    lui v1, L189              ;; [ 23] (set! v1-7 L189) [] -> [v1: sparticle-launch-group ]
    ori v1, v1, L189
    lw a0, *part-group-id-table*(s7);; [ 24] (set! a0-2 *part-group-id-table*)
                              ;; [] -> [a0: (array sparticle-launch-group) ]
    sw v1, 4524(a0)           ;; [ 25] (s.w! (+ a0-2 4524) v1-7)
                              ;; [v1: sparticle-launch-group a0: (array sparticle-launch-group) ] -> []
    lui v1, L187              ;; [ 26] (set! v1-8 L187) [] -> [v1: sparticle-launcher ]
    ori v1, v1, L187
    lw a0, *part-id-table*(s7);; [ 27] (set! a0-3 *part-id-table*) [] -> [a0: (array sparticle-launcher) ]
    sw v1, 19112(a0)          ;; [ 28] (s.w! (+ a0-3 #x4aa8) v1-8)
                              ;; [v1: sparticle-launcher a0: (array sparticle-launcher) ] -> []
    lui v1, L184              ;; [ 29] (set! v1-9 L184) [] -> [v1: sparticle-launcher ]
    ori v1, v1, L184
    lw a0, *part-id-table*(s7);; [ 30] (set! a0-4 *part-id-table*) [] -> [a0: (array sparticle-launcher) ]
    sw v1, 19108(a0)          ;; [ 31] (s.w! (+ a0-4 #x4aa4) v1-9)
                              ;; [v1: sparticle-launcher a0: (array sparticle-launcher) ] -> []
    lui v1, L182              ;; [ 32] (set! v1-10 L182) [] -> [v1: sparticle-launcher ]
    ori v1, v1, L182
    lw a0, *part-id-table*(s7);; [ 33] (set! a0-5 *part-id-table*) [] -> [a0: (array sparticle-launcher) ]
    sw v1, 19116(a0)          ;; [ 34] (s.w! (+ a0-5 #x4aac) v1-10)
                              ;; [v1: sparticle-launcher a0: (array sparticle-launcher) ] -> []
    lui v1, L180              ;; [ 35] (set! v1-11 L180) [] -> [v1: sparticle-launcher ]
    ori v1, v1, L180
    lw a0, *part-id-table*(s7);; [ 36] (set! a0-6 *part-id-table*) [] -> [a0: (array sparticle-launcher) ]
    sw v1, 19120(a0)          ;; [ 37] (s.w! (+ a0-6 #x4ab0) v1-11)
                              ;; [v1: sparticle-launcher a0: (array sparticle-launcher) ] -> []
    lui v1, L178              ;; [ 38] (set! v1-12 L178) [] -> [v1: sparticle-launcher ]
    ori v1, v1, L178
    lw a0, *part-id-table*(s7);; [ 39] (set! a0-7 *part-id-table*) [] -> [a0: (array sparticle-launcher) ]
    sw v1, 19124(a0)          ;; [ 40] (s.w! (+ a0-7 #x4ab4) v1-12)
                              ;; [v1: sparticle-launcher a0: (array sparticle-launcher) ] -> []
    lui v1, L175              ;; [ 41] (set! a0-8 L175) [] -> [a0: skeleton-group ]
    ori a0, v1, L175
    sw r0, 32(a0)             ;; [ 42] (s.w! (+ a0-8 32) 0) [a0: skeleton-group ] -> []
    addiu v1, r0, 2           ;; [ 43] (set! v1-13 2) [] -> [v1: <integer 2> ]
    sw v1, 36(a0)             ;; [ 44] (s.w! (+ a0-8 36) v1-13) [v1: <integer 2> a0: skeleton-group ] -> []
    addiu v1, r0, 1           ;; [ 45] (set! v1-14 1) [] -> [v1: <integer 1> ]
    sh v1, 60(a0)             ;; [ 46] (s.h! (+ a0-8 60) v1-14) [v1: <integer 1> a0: skeleton-group ] -> []
    lui v1, 20340             ;; [ 47] (set! v1-15 4095996000.0) [] -> [v1: float ]
    ori v1, v1, 9200
    mtc1 f0, v1               ;; [ 48] (set! f0-0 (gpr->fpr v1-15)) [v1: float ] -> []
    swc1 f0, 76(a0)           ;; [ 49] (s.f! (+ a0-8 76) f0-0) [a0: skeleton-group ] -> []
    lwu v1, -4(a0)            ;; [ 50] (set! v1-16 (l.wu (+ a0-8 -4)))
                              ;; [a0: skeleton-group ] -> [v1: <the type skeleton-group> ]
    lwu t9, 76(v1)            ;; [ 51] (set! t9-2 (l.wu (+ v1-16 76)))
                              ;; [v1: <the type skeleton-group> ] -> [t9: <vmethod (function skeleton-group skeleton-group)> ]
    jalr ra, t9               ;; [ 52] (call! a0-8)
                              ;; [a0: skeleton-group t9: <vmethod (function skeleton-group skeleton-group)> ] -> [v0: skeleton-group ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 53] (set! v1-17 v0-2) [v0: skeleton-group ] -> [v1: skeleton-group ]
    lw v1, type(s7)           ;; [ 54] (set! v1-18 type) [] -> [v1: <the etype type> ]
    lwu t9, 16(v1)            ;; [ 55] (set! t9-3 (l.wu (+ v1-18 16)))
                              ;; [v1: <the etype type> ] -> [t9: <new type (function symbol type int type)> ]
    daddiu a0, s7, port-metal-head-boat;; [ 56] (set! a0-9 'port-metal-head-boat) [] -> [a0: <sym port-metal-head-boat> ]
    lw a1, process-drawable(s7);; [ 57] (set! a1-2 process-drawable) [] -> [a1: <the etype process-drawable> ]
    ld a2, L267(fp)           ;; [ 58] (set! a2-2 (l.d L267)) [] -> [a2: uint ]
    jalr ra, t9               ;; [ 59] (call! a0-9 a1-2 a2-2)
                              ;; [a0: <sym port-metal-head-boat> a1: <the etype process-drawable> a2: uint t9: <new type (function symbol type int type)> ] -> [v0: type ]
    sll v0, ra, 0

    lw t9, method-set!(s7)    ;; [ 60] (set! t9-4 method-set!) [] -> [t9: (function type int object none) ]
    lw a0, port-metal-head-boat(s7);; [ 61] (set! a0-10 port-metal-head-boat)
                              ;; [] -> [a0: <the etype port-metal-head-boat> ]
    addiu a1, r0, 3           ;; [ 62] (set! a1-3 3) [] -> [a1: <integer 3> ]
    lui v1, L229              ;; [ 63] (set! a2-3 L229) [] -> [a2: (function port-metal-head-boat port-metal-head-boat) ]
    ori a2, v1, L229
    jalr ra, t9               ;; [ 64] (call! a0-10 a1-3 a2-3)
                              ;; [a0: <the etype port-metal-head-boat> a1: <integer 3> a2: (function port-metal-head-boat port-metal-head-boat) t9: (function type int object none) ] -> [v0: none ]
    sll v0, ra, 0

    lui v1, L119              ;; [ 65] (set! v1-19 L119) [] -> [v1: (function none :behavior port-metal-head-boat) ]
    ori v1, v1, L119
    sw v1, port-metal-head-boat-init-by-other(s7);; [ 66] (s.w! port-metal-head-boat-init-by-other v1-19)
                              ;; [v1: (function none :behavior port-metal-head-boat) ] -> []
    lui v1, L173              ;; [ 67] (set! gp-0 L173) [] -> [gp: state ]
    ori gp, v1, L173
    lw t9, method-set!(s7)    ;; [ 68] (set! t9-5 method-set!) [] -> [t9: (function type int object none) ]
    lw a0, port-metal-head-boat(s7);; [ 69] (set! a0-11 port-metal-head-boat)
                              ;; [] -> [a0: <the etype port-metal-head-boat> ]
    addiu a1, r0, 20          ;; [ 70] (set! a1-4 20) [] -> [a1: <integer 20> ]
    or a2, gp, r0             ;; [ 71] (set! a2-4 gp-0) [gp: state ] -> [a2: state ]
    jalr ra, t9               ;; [ 72] (call! a0-11 a1-4 a2-4)
                              ;; [a0: <the etype port-metal-head-boat> a1: <integer 20> a2: state t9: (function type int object none) ] -> [v0: none ]
    sll v0, ra, 0

    lui v1, L111              ;; [ 73] (set! v1-20 L111) [] -> [v1: function ]
    ori v1, v1, L111
    sw v1, 28(gp)             ;; [ 74] (s.w! (+ gp-0 28) v1-20) [v1: function gp: state ] -> []
    lui v1, L101              ;; [ 75] (set! v1-21 L101) [] -> [v1: function ]
    ori v1, v1, L101
    sw v1, 12(gp)             ;; [ 76] (s.w! (+ gp-0 12) v1-21) [v1: function gp: state ] -> []
    lui v1, L94               ;; [ 77] (set! v1-22 L94) [] -> [v1: function ]
    ori v1, v1, L94
    sw v1, 20(gp)             ;; [ 78] (s.w! (+ gp-0 20) v1-22) [v1: function gp: state ] -> []
    lw v1, type(s7)           ;; [ 79] (set! v1-23 type) [] -> [v1: <the etype type> ]
    lwu t9, 16(v1)            ;; [ 80] (set! t9-6 (l.wu (+ v1-23 16)))
                              ;; [v1: <the etype type> ] -> [t9: <new type (function symbol type int type)> ]
    daddiu a0, s7, port-turret-shot;; [ 81] (set! a0-12 'port-turret-shot) [] -> [a0: <sym port-turret-shot> ]
    lw a1, turret-shot(s7)    ;; [ 82] (set! a1-5 turret-shot) [] -> [a1: <the etype turret-shot> ]
    ld a2, L266(fp)           ;; [ 83] (set! a2-5 (l.d L266)) [] -> [a2: uint ]
    jalr ra, t9               ;; [ 84] (call! a0-12 a1-5 a2-5)
                              ;; [a0: <sym port-turret-shot> a1: <the etype turret-shot> a2: uint t9: <new type (function symbol type int type)> ] -> [v0: type ]
    sll v0, ra, 0

    lw t9, method-set!(s7)    ;; [ 85] (set! t9-7 method-set!) [] -> [t9: (function type int object none) ]
    lw a0, port-turret-shot(s7);; [ 86] (set! a0-13 port-turret-shot) [] -> [a0: <the etype port-turret-shot> ]
    addiu a1, r0, 3           ;; [ 87] (set! a1-6 3) [] -> [a1: <integer 3> ]
    lui v1, L226              ;; [ 88] (set! a2-6 L226) [] -> [a2: (function port-turret-shot port-turret-shot) ]
    ori a2, v1, L226
    jalr ra, t9               ;; [ 89] (call! a0-13 a1-6 a2-6)
                              ;; [a0: <the etype port-turret-shot> a1: <integer 3> a2: (function port-turret-shot port-turret-shot) t9: (function type int object none) ] -> [v0: none ]
    sll v0, ra, 0

    lui v1, L172              ;; [ 90] (set! gp-1 L172) [] -> [gp: state ]
    ori gp, v1, L172
    lw t9, inherit-state(s7)  ;; [ 91] (set! t9-8 inherit-state) [] -> [t9: (function state state state) ]
    or a0, gp, r0             ;; [ 92] (set! a0-14 gp-1) [gp: state ] -> [a0: state ]
    lw v1, turret-shot(s7)    ;; [ 93] (set! v1-24 turret-shot) [] -> [v1: <the etype turret-shot> ]
    lwu a1, 104(v1)           ;; [ 94] (set! a1-7 (l.wu (+ v1-24 104)))
                              ;; [v1: <the etype turret-shot> ] -> [a1: <method (state turret-shot)> ]
    jalr ra, t9               ;; [ 95] (call! a0-14 a1-7)
                              ;; [a0: state a1: <method (state turret-shot)> t9: (function state state state) ] -> [v0: state ]
    sll v0, ra, 0

    lw t9, method-set!(s7)    ;; [ 96] (set! t9-9 method-set!) [] -> [t9: (function type int object none) ]
    lw a0, port-turret-shot(s7);; [ 97] (set! a0-15 port-turret-shot) [] -> [a0: <the etype port-turret-shot> ]
    addiu a1, r0, 22          ;; [ 98] (set! a1-8 22) [] -> [a1: <integer 22> ]
    or a2, gp, r0             ;; [ 99] (set! a2-7 gp-1) [gp: state ] -> [a2: state ]
    jalr ra, t9               ;; [100] (call! a0-15 a1-8 a2-7)
                              ;; [a0: <the etype port-turret-shot> a1: <integer 22> a2: state t9: (function type int object none) ] -> [v0: none ]
    sll v0, ra, 0

    lui v1, L91               ;; [101] (set! v1-25 L91) [] -> [v1: function ]
    ori v1, v1, L91
    sw v1, 12(gp)             ;; [102] (s.w! (+ gp-1 12) v1-25) [v1: function gp: state ] -> []
    lui v1, L86               ;; [103] (set! v1-26 L86) [] -> [v1: (function port-turret-shot none) ]
    ori v1, v1, L86
    sw v1, port-turret-shot-move(s7);; [104] (s.w! port-turret-shot-move v1-26)
                              ;; [v1: (function port-turret-shot none) ] -> []
    lw t9, method-set!(s7)    ;; [105] (set! t9-10 method-set!) [] -> [t9: (function type int object none) ]
    lw a0, port-turret-shot(s7);; [106] (set! a0-16 port-turret-shot) [] -> [a0: <the etype port-turret-shot> ]
    addiu a1, r0, 31          ;; [107] (set! a1-9 31) [] -> [a1: <integer 31> ]
    lui v1, L85               ;; [108] (set! a2-8 L85) [] -> [a2: (function port-turret-shot none) ]
    ori a2, v1, L85
    jalr ra, t9               ;; [109] (call! a0-16 a1-9 a2-8)
                              ;; [a0: <the etype port-turret-shot> a1: <integer 31> a2: (function port-turret-shot none) t9: (function type int object none) ] -> [v0: none ]
    sll v0, ra, 0

    lw t9, method-set!(s7)    ;; [110] (set! t9-11 method-set!) [] -> [t9: (function type int object none) ]
    lw a0, port-turret(s7)    ;; [111] (set! a0-17 port-turret) [] -> [a0: <the etype port-turret> ]
    addiu a1, r0, 32          ;; [112] (set! a1-10 32) [] -> [a1: <integer 32> ]
    lui v1, L77               ;; [113] (set! a2-9 L77) [] -> [a2: (function port-turret entity-actor matrix none) ]
    ori a2, v1, L77
    jalr ra, t9               ;; [114] (call! a0-17 a1-10 a2-9)
                              ;; [a0: <the etype port-turret> a1: <integer 32> a2: (function port-turret entity-actor matrix none) t9: (function type int object none) ] -> [v0: none ]
    sll v0, ra, 0

    lw t9, method-set!(s7)    ;; [115] (set! t9-12 method-set!) [] -> [t9: (function type int object none) ]
    lw a0, port-turret(s7)    ;; [116] (set! a0-18 port-turret) [] -> [a0: <the etype port-turret> ]
    addiu a1, r0, 33          ;; [117] (set! a1-11 33) [] -> [a1: <integer 33> ]
    lui v1, L73               ;; [118] (set! a2-10 L73) [] -> [a2: (function port-turret process none) ]
    ori a2, v1, L73
    jalr ra, t9               ;; [119] (call! a0-18 a1-11 a2-10)
                              ;; [a0: <the etype port-turret> a1: <integer 33> a2: (function port-turret process none) t9: (function type int object none) ] -> [v0: none ]
    sll v0, ra, 0

    lw t9, method-set!(s7)    ;; [120] (set! t9-13 method-set!) [] -> [t9: (function type int object none) ]
    lw a0, port-turret(s7)    ;; [121] (set! a0-19 port-turret) [] -> [a0: <the etype port-turret> ]
    addiu a1, r0, 43          ;; [122] (set! a1-12 43) [] -> [a1: <integer 43> ]
    lui v1, L68               ;; [123] (set! a2-11 L68) [] -> [a2: (function port-turret vector vector none) ]
    ori a2, v1, L68
    jalr ra, t9               ;; [124] (call! a0-19 a1-12 a2-11)
                              ;; [a0: <the etype port-turret> a1: <integer 43> a2: (function port-turret vector vector none) t9: (function type int object none) ] -> [v0: none ]
    sll v0, ra, 0

    lw t9, method-set!(s7)    ;; [125] (set! t9-14 method-set!) [] -> [t9: (function type int object none) ]
    lw a0, port-turret(s7)    ;; [126] (set! a0-20 port-turret) [] -> [a0: <the etype port-turret> ]
    addiu a1, r0, 46          ;; [127] (set! a1-13 46) [] -> [a1: <integer 46> ]
    lui v1, L60               ;; [128] (set! a2-12 L60) [] -> [a2: (function port-turret none) ]
    ori a2, v1, L60
    jalr ra, t9               ;; [129] (call! a0-20 a1-13 a2-12)
                              ;; [a0: <the etype port-turret> a1: <integer 46> a2: (function port-turret none) t9: (function type int object none) ] -> [v0: none ]
    sll v0, ra, 0

    lui v1, L53               ;; [130] (set! v1-27 L53) [] -> [v1: (function port-turret object float none) ]
    ori v1, v1, L53
    sw v1, manage-torn-turret(s7);; [131] (s.w! manage-torn-turret v1-27)
                              ;; [v1: (function port-turret object float none) ] -> []
    lui v1, L161              ;; [132] (set! gp-2 L161) [] -> [gp: state ]
    ori gp, v1, L161
    lw t9, inherit-state(s7)  ;; [133] (set! t9-15 inherit-state) [] -> [t9: (function state state state) ]
    or a0, gp, r0             ;; [134] (set! a0-21 gp-2) [gp: state ] -> [a0: state ]
    lw v1, base-turret(s7)    ;; [135] (set! v1-28 base-turret) [] -> [v1: <the etype base-turret> ]
    lwu a1, 124(v1)           ;; [136] (set! a1-14 (l.wu (+ v1-28 124)))
                              ;; [v1: <the etype base-turret> ] -> [a1: <method (state base-turret)> ]
    jalr ra, t9               ;; [137] (call! a0-21 a1-14)
                              ;; [a0: state a1: <method (state base-turret)> t9: (function state state state) ] -> [v0: state ]
    sll v0, ra, 0

    lw t9, method-set!(s7)    ;; [138] (set! t9-16 method-set!) [] -> [t9: (function type int object none) ]
    lw a0, port-turret(s7)    ;; [139] (set! a0-22 port-turret) [] -> [a0: <the etype port-turret> ]
    addiu a1, r0, 27          ;; [140] (set! a1-15 27) [] -> [a1: <integer 27> ]
    or a2, gp, r0             ;; [141] (set! a2-13 gp-2) [gp: state ] -> [a2: state ]
    jalr ra, t9               ;; [142] (call! a0-22 a1-15 a2-13)
                              ;; [a0: <the etype port-turret> a1: <integer 27> a2: state t9: (function type int object none) ] -> [v0: none ]
    sll v0, ra, 0

    lui v1, L32               ;; [143] (set! v1-29 L32) [] -> [v1: function ]
    ori v1, v1, L32
    sw v1, 16(gp)             ;; [144] (s.w! (+ gp-2 16) v1-29) [v1: function gp: state ] -> []
    lui v1, L29               ;; [145] (set! v1-30 L29) [] -> [v1: function ]
    ori v1, v1, L29
    sw v1, 20(gp)             ;; [146] (s.w! (+ gp-2 20) v1-30) [v1: function gp: state ] -> []
    lui v1, L155              ;; [147] (set! gp-3 L155) [] -> [gp: state ]
    ori gp, v1, L155
    lw t9, inherit-state(s7)  ;; [148] (set! t9-17 inherit-state) [] -> [t9: (function state state state) ]
    or a0, gp, r0             ;; [149] (set! a0-23 gp-3) [gp: state ] -> [a0: state ]
    lw v1, base-turret(s7)    ;; [150] (set! v1-31 base-turret) [] -> [v1: <the etype base-turret> ]
    lwu a1, 132(v1)           ;; [151] (set! a1-16 (l.wu (+ v1-31 132)))
                              ;; [v1: <the etype base-turret> ] -> [a1: <method (state base-turret)> ]
    jalr ra, t9               ;; [152] (call! a0-23 a1-16)
                              ;; [a0: state a1: <method (state base-turret)> t9: (function state state state) ] -> [v0: state ]
    sll v0, ra, 0

    lw t9, method-set!(s7)    ;; [153] (set! t9-18 method-set!) [] -> [t9: (function type int object none) ]
    lw a0, port-turret(s7)    ;; [154] (set! a0-24 port-turret) [] -> [a0: <the etype port-turret> ]
    addiu a1, r0, 29          ;; [155] (set! a1-17 29) [] -> [a1: <integer 29> ]
    or a2, gp, r0             ;; [156] (set! a2-14 gp-3) [gp: state ] -> [a2: state ]
    jalr ra, t9               ;; [157] (call! a0-24 a1-17 a2-14)
                              ;; [a0: <the etype port-turret> a1: <integer 29> a2: state t9: (function type int object none) ] -> [v0: none ]
    sll v0, ra, 0

    lui v1, L1                ;; [158] (set! v1-32 L1) [] -> [v1: function ]
    ori v1, v1, L1
    sw v1, 16(gp)             ;; [159] (s.w! (+ gp-3 16) v1-32) [v1: function gp: state ] -> []
    or v0, gp, r0             ;; [160] (set! v0-19 gp-3) [gp: state ] -> [v0: state ]
    ld ra, 0(sp)
    ld fp, 8(sp)
    lq gp, 16(sp)
    jr ra
    daddiu sp, sp, 32



;;-*-OpenGOAL-Start-*-

(top-level-function
  ()
  (set! *port-turret-1-path* <static-data L218>)
  (type-new 'port-turret base-turret (the-as int (the-as uint #x3002000274)))
  (method-set! port-turret 3 L232)
  (set! new-wave-speech L144)
  (set! jak-hit-speech L134)
  (set! jak-miss-speech L131)
  (set! ship-close-speech L127)
  (set! help-speech L124)
  (defpartgroup group-port-mh-boat-smoke-trail
    :id 1128
    :linger-duration (seconds 1.5)
    :bounds (static-bspherem 0 0 0 6)
    :parts ((sp-item 4774 :flags (bit7)) (sp-item 4775 :flags (bit6 bit7)))
    )
  (defpart 4775
    :init-specs ((:texture (new 'static 'texture-id :index #xbc :page #xc))
      (:num 1.0)
      (:x (meters 0) (meters 2))
      (:y (meters 1))
      (:scale-x (meters 12) (meters 3))
      (:rot-x (degrees 6.7500005))
      (:rot-z (degrees 0) (degrees 3600))
      (:scale-y :copy scale-x)
      (:r 255.0)
      (:g 64.0 128.0)
      (:b 0.0 64.0)
      (:a 12.0 4.0)
      (:omega (degrees 4518))
      (:fade-a -0.8)
      (:timer (seconds 0.067))
      (:flags (sp-cpuinfo-flag-2 sp-cpuinfo-flag-3 glow))
      (:userdata 6144.0)
      (:rotate-y (degrees 0) (degrees 3600))
      )
    )
  (defpart 4774
    :init-specs ((:texture (new 'static 'texture-id :page #xc))
      (:birth-func 'birth-func-texture-group)
      (:num 0.5)
      (:x (meters 0) (meters 4))
      (:scale-x (meters 8) (meters 4))
      (:rot-z (degrees 0) (degrees 360))
      (:scale-y :copy scale-x)
      (:r 255.0)
      (:g 246.0)
      (:b 149.0)
      (:a 32.0 32.0)
      (:vel-y (meters 0.1) (meters 0.033333335))
      (:scalevel-x (meters 0.026666667) (meters 0.006666667))
      (:rotvel-z (degrees -0.2) (degrees 0.4))
      (:scalevel-y :copy scalevel-x)
      (:fade-r -0.14666666)
      (:fade-g -0.7866667)
      (:fade-b -0.88)
      (:fade-a -0.053333335 -0.053333335)
      (:accel-x (meters 0.0013333333) (meters 0.00033333333))
      (:accel-y (meters 0.0001) (meters 0.0001))
      (:friction 0.96)
      (:timer (seconds 8))
      (:flags (sp-cpuinfo-flag-2 use-global-acc))
      (:userdata :data (new 'static 'boxed-array :type int32 40 1 0 #xc00000 #xc00000 #xc03300))
      (:next-time (seconds 0.167) (seconds 0.08))
      (:next-launcher 4776)
      (:rotate-y (degrees 0) (degrees 3600))
      )
    )
  (defpart 4776
    :init-specs ((:scalevel-x (meters 0.013333334) (meters 0.0033333334))
      (:scalevel-y :copy scalevel-x)
      (:next-time (seconds 0.25) (seconds 0.08))
      (:next-launcher 4777)
      )
    )
  (defpart 4777
    :init-specs ((:scalevel-x (meters 0.006666667) (meters 0.0016666667))
      (:scalevel-y :copy scalevel-x)
      (:fade-r -2.33)
      (:fade-g -1.28)
      (:fade-b -0.17)
      (:next-time (seconds 0.25) (seconds 0.08))
      (:next-launcher 4778)
      )
    )
  (defpart 4778
    :init-specs ((:fade-r 0.0) (:fade-g 0.0) (:fade-b 0.0) (:fade-a -0.03 -0.24))
    )
  (defskelgroup skel-port-metal-head-boat port-metal-head-boat 0 2
                ((1 (meters 999999)))
                :bounds (static-spherem 0 0 0 110)
                )
  (type-new 'port-metal-head-boat process-drawable (the-as int (the-as uint #x1500b00124)))
  (method-set! port-metal-head-boat 3 L229)
  (set! port-metal-head-boat-init-by-other L119)
  (defstate idle (port-metal-head-boat)
    :virtual #t
    :event L111
    :code L101
    :post L94
    )
  (type-new 'port-turret-shot turret-shot (the-as int (the-as uint #x2801900204)))
  (method-set! port-turret-shot 3 L226)
  (defstate impact (port-turret-shot)
    :virtual #t
    :code L91
    )
  (set! port-turret-shot-move L86)
  (method-set! port-turret-shot 31 L85)
  (method-set! port-turret 32 L77)
  (method-set! port-turret 33 L73)
  (method-set! port-turret 43 L68)
  (method-set! port-turret 46 L60)
  (set! manage-torn-turret L53)
  (defstate idle (port-turret)
    :virtual #t
    :trans (behavior ()
      (cond
        ((= (-> self who-am-i) 1)
         (get-point-at-percent-along-path! (-> self path) (-> self root trans) 0.0 'interp)
         (set! (-> self root trans y) (- (-> self root trans y) (* 122880.0 (-> self sink-interp))))
         (seek! (-> self sink-interp) 0.0 (* 0.005 (-> self clock time-adjust-ratio)))
         (if (= (-> self sink-interp) 0.0)
             (set! (-> self available-for-pickup) (the-as basic #t))
             )
         )
        ((zero? (-> self who-am-i))
         (let ((t9-2 seek)
               (a0-3 (-> self roty))
               (a1-2 (the-as object (-> self target-y)))
               (a2-2 (the-as number (* 72.81778 (-> self clock time-adjust-ratio))))
               )
           (set! (-> self roty) (t9-2 a0-3 (the-as float a1-2) (the-as float a2-2)))
           (when (and (cpad-pressed? 0 triangle) (= (-> self ships-launched) 1))
             (let* ((a0-5 *gui-control*)
                    (t9-3 (method-of-object a0-5 set-action!))
                    (a1-3 4)
                    )
               (set! a2-2 1)
               (t9-3
                 a0-5
                 (the-as gui-action a1-3)
                 (the-as sound-id a2-2)
                 (the-as gui-channel (-> self channel))
                 (gui-action none)
                 (the-as string #f)
                 (the-as (function gui-connection symbol) #f)
                 (the-as process #f)
                 )
               )
             (logclear! (-> *cpad-list* cpads 0 button0-abs 0) (pad-buttons triangle))
             (logclear! (-> *cpad-list* cpads 0 button0-rel 0) (pad-buttons triangle))
             (set! (-> self ships-launched) 0)
             (let ((gp-0 (new 'stack-no-clear 'event-message-block)))
               (set! (-> gp-0 from) (process->ppointer self))
               (set! (-> gp-0 num-params) 0)
               (set! (-> gp-0 message) 'start-shooting)
               (set! a1-2 gp-0)
               )
             (send-event-function (process-by-name "port-turret-1" *active-pool*) (the-as event-message-block a1-2))
             (set! (-> self num-shots-available) 5.0)
             (set! (-> self turret-state) (the-as uint 6))
             )
           (case (-> self turret-state)
             ((2)
              (when (= (-> self ships-launched) 1)
                (set! (-> self id)
                      (the-as
                        uint
                        (add-process *gui-control* self (the-as gui-channel (-> self channel)) (gui-action play) "torn010" -99.0 0)
                        )
                      )
                (set! (-> self next-turret-state) (the-as uint 3))
                (set! (-> self turret-state) (the-as uint 8))
                )
              )
             ((3)
              (let ((a2-4 (get-status *gui-control* (the-as sound-id (-> self id)))))
                (cond
                  ((< (the-as uint a2-4) (the-as uint 3))
                   (format 0 "status ~D~%" a2-4)
                   (set! (-> self id) (the-as uint 0))
                   (set! (-> self turret-state) (the-as uint 4))
                   )
                  (else
                    (set! (-> self target-y) 14563.556)
                    )
                  )
                )
              )
             ((4)
              (set! (-> self id)
                    (the-as
                      uint
                      (add-process *gui-control* self (the-as gui-channel (-> self channel)) (gui-action play) "torn011" -99.0 0)
                      )
                    )
              (set! (-> self next-turret-state) (the-as uint 5))
              (set! (-> self turret-state) (the-as uint 7))
              )
             ((5)
              (set! (-> self ships-launched) 0)
              (send-event (process-by-name "port-turret-1" *active-pool*) 'start-shooting)
              (set! (-> self num-shots-available) 5.0)
              (set! (-> self target-y) 0.0)
              (set! (-> self id)
                    (the-as
                      uint
                      (add-process *gui-control* self (the-as gui-channel (-> self channel)) (gui-action play) "torn012" -99.0 0)
                      )
                    )
              (set! (-> self turret-state) (the-as uint 6))
              )
             ((6)
              (manage-torn-turret self (the-as none a1-2) (the-as float a2-2))
              )
             ((8)
              (let ((a2-7 (get-status *gui-control* (the-as sound-id (-> self id)))))
                (when (= a2-7 (gui-status active))
                  (format 0 "status ~D~%" a2-7)
                  (set! (-> self turret-state) (-> self next-turret-state))
                  (set! (-> self next-turret-state) (the-as uint 1))
                  )
                )
              )
             ((7)
              (let ((a2-8 (get-status *gui-control* (the-as sound-id (-> self id)))))
                (when (= a2-8 (gui-status unknown))
                  (format 0 "status ~D~%" a2-8)
                  (set! (-> self turret-state) (-> self next-turret-state))
                  (set! (-> self next-turret-state) (the-as uint 1))
                  )
                )
              )
             ((1)
              (format 0 "~A invalid-state~%" (-> self name))
              )
             )
           )
         )
        )
      (let ((t9-19 (-> (method-of-type base-turret idle) trans)))
        (if t9-19
            (t9-19)
            )
        )
      )
    :post (behavior ()
      (if (name= (-> self name) "port-turret-2")
          (quaternion-copy! (-> self torn 0 root quat) (-> self root quat))
          )
      (let ((t9-2 (-> (method-of-type base-turret idle) post)))
        (if t9-2
            ((the-as (function none) t9-2))
            )
        )
      )
    )
  (defstate active (port-turret)
    :virtual #t
    :trans (behavior ()
      (let ((t9-0 (-> (method-of-type base-turret active) trans)))
        (if t9-0
            (t9-0)
            )
        )
      (when (or (!= (-> self path-u) 1.0) (not (-> self enable-controls)))
        (set-time! (-> self first-ship-launched))
        (set-time! (-> self last-ship-launched))
        )
      (when (and (-> self enable-controls) (< (-> self roty) -12743.111))
        (set! (-> self roty-min) (-> self roty))
        (when (< (-> self roty-min) -12925.155)
          (set-time! (-> self first-ship-launched))
          (set-time! (-> self last-ship-launched))
          )
        )
      (when (>= (+ (current-time) (seconds -1.2)) (-> self last-shot-gained))
        (set-time! (-> self last-shot-gained))
        (seek! (-> self num-shots-available) 5.0 (-> self clock time-adjust-ratio))
        )
      (cond
        ((>= (+ (current-time) (seconds -90)) (-> self first-ship-launched))
         (let ((v1-34 (-> self last-speech)))
           (cond
             ((zero? v1-34)
              (when (= (-> self ships-launched) 1)
                (set! (-> self last-speech) (the-as uint 1))
                (set! (-> self id)
                      (the-as
                        uint
                        (add-process *gui-control* self (the-as gui-channel (-> self channel)) (gui-action play) "torn060" -99.0 0)
                        )
                      )
                )
              )
             ((= v1-34 1)
              (if (= (get-status *gui-control* (the-as sound-id (-> self id))) (gui-status active))
                  (set! (-> self last-speech) (the-as uint 2))
                  )
              )
             ((= v1-34 2)
              (if (< (the-as uint (get-status *gui-control* (the-as sound-id (-> self id)))) (the-as uint 3))
                  (set! (-> self last-speech) (the-as uint 3))
                  )
              )
             ((= v1-34 3)
              (when (zero? (-> self ships-launched))
                (let ((v1-43 (rand-vu-int-count 2)))
                  (cond
                    ((zero? v1-43)
                     (set! (-> self id)
                           (the-as
                             uint
                             (add-process *gui-control* self (the-as gui-channel (-> self channel)) (gui-action play) "torn061" -99.0 0)
                             )
                           )
                     )
                    ((= v1-43 1)
                     (set! (-> self id)
                           (the-as
                             uint
                             (add-process *gui-control* self (the-as gui-channel (-> self channel)) (gui-action play) "torn062" -99.0 0)
                             )
                           )
                     )
                    )
                  )
                (set! (-> self last-speech) (the-as uint 4))
                )
              )
             ((= v1-34 4)
              (if (= (get-status *gui-control* (the-as sound-id (-> self id))) (gui-status active))
                  (set! (-> self last-speech) (the-as uint 5))
                  )
              )
             ((= v1-34 5)
              (when (< (the-as uint (get-status *gui-control* (the-as sound-id (-> self id)))) (the-as uint 3))
                (set! (-> self path-direction) (the-as basic #t))
                (set! (-> self path-mode) (the-as uint 2))
                (set! (-> self roty-min) 0.0)
                (set! (-> self roty-max) 0.0)
                (set! (-> self available-for-pickup) #f)
                (send-event *target* 'end-mode)
                (process-spawn scene-player :init scene-player-init "city-protect-blimp-res" #t #f)
                (set! (-> self last-speech) (the-as uint 0))
                (go-virtual idle)
                )
              )
             )
           )
         )
        (else
          (when (>= (+ (current-time) (seconds -2.5)) (-> self last-ship-launched))
            (let ((gp-3 (get-process *default-dead-pool* port-metal-head-boat #x4000)))
              (when gp-3
                (let ((t9-16 (method-of-type port-metal-head-boat activate)))
                  (t9-16
                    (the-as port-metal-head-boat gp-3)
                    self
                    (symbol->string (-> port-metal-head-boat symbol))
                    (the-as pointer #x70004000)
                    )
                  )
                (let ((s5-0 run-function-in-process)
                      (s4-0 gp-3)
                      (s3-0 port-metal-head-boat-init-by-other)
                      )
                  (< 25.0 (rand-vu-float-range 0.0 50.0))
                  ((the-as (function object object none) s5-0) s4-0 s3-0)
                  )
                (-> gp-3 ppointer)
                )
              )
            (set-time! (-> self last-ship-launched))
            (+! (-> self ships-launched) 1)
            (if (zero? (-> self total-ships-launched))
                (set! (-> self id)
                      (the-as
                        uint
                        (add-process *gui-control* self (the-as gui-channel (-> self channel)) (gui-action play) "torn014" -99.0 0)
                        )
                      )
                )
            (+! (-> self total-ships-launched) 1)
            (if (< 7 (-> self ships-launched))
                (new-wave-speech self)
                )
            )
          )
        )
      )
    )
  (none)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
b0

;; .endfunction

L264:
    .word 0x0
    .word 0x0
    .word 0x0
L265:
    .word 0x2000274
    .word 0x30
L266:
    .word 0x1900204
    .word 0x28
L267:
    .word 0xb00124
    .word 0x15

;------------------------------------------
;  debug segment
;------------------------------------------

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (method 3 port-turret-shot)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x20, fp? 1 ra? 1 ep? 1
  ;gprs: gp
L226:
    daddiu sp, sp, -32
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
    sq gp, 16(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! this this) [a0: port-turret-shot ] -> [gp: port-turret-shot ]
    bne s7, gp, L227          ;; [  1] (b! (truthy this) L227 (set! v1-0 #f)) [gp: port-turret-shot ] -> [v1: '#f ]
    or v1, s7, r0

B1:
    or gp, gp, r0             ;; [  2] (set! this this) [gp: port-turret-shot ] -> [gp: port-turret-shot ]
    beq r0, r0, L228          ;; [  3] (b! #t L228 (nop!)) [] -> []
    sll r0, r0, 0

B2:
    or v1, r0, r0             ;; [  4] (set! v1-1 0) [] -> [v1: <uninitialized> ]
B3:
L227:
    lw v1, turret-shot(s7)    ;; [  5] (set! v1-2 turret-shot) [] -> [v1: <the etype turret-shot> ]
    lwu t9, 28(v1)            ;; [  6] (set! t9-0 (l.wu (+ v1-2 28)))
                              ;; [v1: <the etype turret-shot> ] -> [t9: <method (function turret-shot turret-shot)> ]
    or a0, gp, r0             ;; [  7] (set! a0-1 this) [gp: port-turret-shot ] -> [a0: port-turret-shot ]
    jalr ra, t9               ;; [  8] (call! a0-1)
                              ;; [a0: port-turret-shot t9: <method (function turret-shot turret-shot)> ] -> [v0: turret-shot ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [  9] (set! t9-1 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 10] (set! a0-2 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L237       ;; [ 11] (set! a1-0 L237) [] -> [a1: <string "~2Tbackup-pos: #<vector @ #x~X>~%"> ]
                              ;; "~2Tbackup-pos: #<vector @ #x~X>~%"
    daddiu a2, gp, 492        ;; [ 12] (set! a2-0 (+ this 492)) [gp: port-turret-shot ] -> [a2: vector ]
    jalr ra, t9               ;; [ 13] (call! a0-2 a1-0 a2-0)
                              ;; [a0: <sym #t> a1: <string "~2Tbackup-pos: #<vector @ #x~X>~%"> a2: vector t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 14] (set! t9-2 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 15] (set! a0-3 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L236       ;; [ 16] (set! a1-1 L236) [] -> [a1: <string "~2Tinitial-y: ~f~%"> ] "~2Tinitial-y: ~f~%"
    lwc1 f0, 508(gp)          ;; [ 17] (set! f0-0 (l.f (+ this 508))) [gp: port-turret-shot ] -> []
    mfc1 a2, f0               ;; [ 18] (set! a2-1 (fpr->gpr f0-0)) [] -> [a2: float ]
    jalr ra, t9               ;; [ 19] (call! a0-3 a1-1 a2-1)
                              ;; [a0: <sym #t> a1: <string "~2Tinitial-y: ~f~%"> a2: float t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

B4:
L228:
    or v0, gp, r0             ;; [ 20] (set! v0-3 this) [gp: port-turret-shot ] -> [v0: port-turret-shot ]
    ld ra, 0(sp)
    ld fp, 8(sp)
    lq gp, 16(sp)
    jr ra
    daddiu sp, sp, 32

    sll r0, r0, 0
    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(defmethod inspect ((this port-turret-shot))
  (when (not this)
    (set! this this)
    (goto cfg-4)
    )
  (let ((t9-0 (method-of-type turret-shot inspect)))
    (t9-0 this)
    )
  (format #t "~2Tbackup-pos: #<vector @ #x~X>~%" (-> this hit-pos))
  (format #t "~2Tinitial-y: ~f~%" (-> this initial-y))
  (label cfg-4)
  this
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    (b0
      (break 4 b1 b2)
      )
    )
  b3
  b4
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (method 3 port-metal-head-boat)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x20, fp? 1 ra? 1 ep? 1
  ;gprs: gp
L229:
    daddiu sp, sp, -32
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
    sq gp, 16(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! this this) [a0: port-metal-head-boat ] -> [gp: port-metal-head-boat ]
    bne s7, gp, L230          ;; [  1] (b! (truthy this) L230 (set! v1-0 #f)) [gp: port-metal-head-boat ] -> [v1: '#f ]
    or v1, s7, r0

B1:
    or gp, gp, r0             ;; [  2] (set! this this) [gp: port-metal-head-boat ] -> [gp: port-metal-head-boat ]
    beq r0, r0, L231          ;; [  3] (b! #t L231 (nop!)) [] -> []
    sll r0, r0, 0

B2:
    or v1, r0, r0             ;; [  4] (set! v1-1 0) [] -> [v1: <uninitialized> ]
B3:
L230:
    lw v1, process-drawable(s7);; [  5] (set! v1-2 process-drawable) [] -> [v1: <the etype process-drawable> ]
    lwu t9, 28(v1)            ;; [  6] (set! t9-0 (l.wu (+ v1-2 28)))
                              ;; [v1: <the etype process-drawable> ] -> [t9: <method (function process-drawable process-drawable)> ]
    or a0, gp, r0             ;; [  7] (set! a0-1 this) [gp: port-metal-head-boat ] -> [a0: port-metal-head-boat ]
    jalr ra, t9               ;; [  8] (call! a0-1)
                              ;; [a0: port-metal-head-boat t9: <method (function process-drawable process-drawable)> ] -> [v0: process-drawable ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [  9] (set! t9-1 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 10] (set! a0-2 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L247       ;; [ 11] (set! a1-0 L247) [] -> [a1: <string "~2Tinit-angle: ~f~%"> ] "~2Tinit-angle: ~f~%"
    lwc1 f0, 196(gp)          ;; [ 12] (set! f0-0 (l.f (+ this 196))) [gp: port-metal-head-boat ] -> []
    mfc1 a2, f0               ;; [ 13] (set! a2-0 (fpr->gpr f0-0)) [] -> [a2: float ]
    jalr ra, t9               ;; [ 14] (call! a0-2 a1-0 a2-0)
                              ;; [a0: <sym #t> a1: <string "~2Tinit-angle: ~f~%"> a2: float t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 15] (set! t9-2 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 16] (set! a0-3 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L246       ;; [ 17] (set! a1-1 L246) [] -> [a1: <string "~2Tposition: #<vector @ #x~X>~%"> ]
                              ;; "~2Tposition: #<vector @ #x~X>~%"
    daddiu a2, gp, 204        ;; [ 18] (set! a2-1 (+ this 204)) [gp: port-metal-head-boat ] -> [a2: vector ]
    jalr ra, t9               ;; [ 19] (call! a0-3 a1-1 a2-1)
                              ;; [a0: <sym #t> a1: <string "~2Tposition: #<vector @ #x~X>~%"> a2: vector t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 20] (set! t9-3 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 21] (set! a0-4 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L245       ;; [ 22] (set! a1-2 L245) [] -> [a1: <string "~2Tforward-dir: #<vector @ #x~X>~%"> ]
                              ;; "~2Tforward-dir: #<vector @ #x~X>~%"
    daddiu a2, gp, 220        ;; [ 23] (set! a2-2 (+ this 220)) [gp: port-metal-head-boat ] -> [a2: vector ]
    jalr ra, t9               ;; [ 24] (call! a0-4 a1-2 a2-2)
                              ;; [a0: <sym #t> a1: <string "~2Tforward-dir: #<vector @ #x~X>~%"> a2: vector t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 25] (set! t9-4 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 26] (set! a0-5 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L244       ;; [ 27] (set! a1-3 L244) [] -> [a1: <string "~2Tside-dir: #<vector @ #x~X>~%"> ]
                              ;; "~2Tside-dir: #<vector @ #x~X>~%"
    daddiu a2, gp, 236        ;; [ 28] (set! a2-3 (+ this 236)) [gp: port-metal-head-boat ] -> [a2: vector ]
    jalr ra, t9               ;; [ 29] (call! a0-5 a1-3 a2-3)
                              ;; [a0: <sym #t> a1: <string "~2Tside-dir: #<vector @ #x~X>~%"> a2: vector t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 30] (set! t9-5 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 31] (set! a0-6 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L243       ;; [ 32] (set! a1-4 L243) [] -> [a1: <string "~2Thit-count: ~D~%"> ] "~2Thit-count: ~D~%"
    lw a2, 252(gp)            ;; [ 33] (set! a2-4 (l.w (+ this 252))) [gp: port-metal-head-boat ] -> [a2: int ]
    jalr ra, t9               ;; [ 34] (call! a0-6 a1-4 a2-4)
                              ;; [a0: <sym #t> a1: <string "~2Thit-count: ~D~%"> a2: int t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 35] (set! t9-6 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 36] (set! a0-7 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L242       ;; [ 37] (set! a1-5 L242) [] -> [a1: <string "~2Thit-ids[4] @ #x~X~%"> ]
                              ;; "~2Thit-ids[4] @ #x~X~%"
    daddiu a2, gp, 256        ;; [ 38] (set! a2-5 (+ this 256)) [gp: port-metal-head-boat ] -> [a2: (pointer int32) ]
    jalr ra, t9               ;; [ 39] (call! a0-7 a1-5 a2-5)
                              ;; [a0: <sym #t> a1: <string "~2Thit-ids[4] @ #x~X~%"> a2: (pointer int32) t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 40] (set! t9-7 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 41] (set! a0-8 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L241       ;; [ 42] (set! a1-6 L241) [] -> [a1: <string "~2Thit-max: ~D~%"> ] "~2Thit-max: ~D~%"
    lw a2, 272(gp)            ;; [ 43] (set! a2-6 (l.w (+ this 272))) [gp: port-metal-head-boat ] -> [a2: int ]
    jalr ra, t9               ;; [ 44] (call! a0-8 a1-6 a2-6)
                              ;; [a0: <sym #t> a1: <string "~2Thit-max: ~D~%"> a2: int t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 45] (set! t9-8 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 46] (set! a0-9 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L240       ;; [ 47] (set! a1-7 L240) [] -> [a1: <string "~2Tspeed: ~f~%"> ] "~2Tspeed: ~f~%"
    lwc1 f0, 276(gp)          ;; [ 48] (set! f0-1 (l.f (+ this 276))) [gp: port-metal-head-boat ] -> []
    mfc1 a2, f0               ;; [ 49] (set! a2-7 (fpr->gpr f0-1)) [] -> [a2: float ]
    jalr ra, t9               ;; [ 50] (call! a0-9 a1-7 a2-7)
                              ;; [a0: <sym #t> a1: <string "~2Tspeed: ~f~%"> a2: float t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 51] (set! t9-9 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 52] (set! a0-10 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L239       ;; [ 53] (set! a1-8 L239) [] -> [a1: <string "~2Tside-speed: ~f~%"> ] "~2Tside-speed: ~f~%"
    lwc1 f0, 280(gp)          ;; [ 54] (set! f0-2 (l.f (+ this 280))) [gp: port-metal-head-boat ] -> []
    mfc1 a2, f0               ;; [ 55] (set! a2-8 (fpr->gpr f0-2)) [] -> [a2: float ]
    jalr ra, t9               ;; [ 56] (call! a0-10 a1-8 a2-8)
                              ;; [a0: <sym #t> a1: <string "~2Tside-speed: ~f~%"> a2: float t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 57] (set! t9-10 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 58] (set! a0-11 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L238       ;; [ 59] (set! a1-9 L238) [] -> [a1: <string "~2Tsmall: ~A~%"> ] "~2Tsmall: ~A~%"
    lwu a2, 284(gp)           ;; [ 60] (set! a2-9 (l.wu (+ this 284))) [gp: port-metal-head-boat ] -> [a2: symbol ]
    jalr ra, t9               ;; [ 61] (call! a0-11 a1-9 a2-9)
                              ;; [a0: <sym #t> a1: <string "~2Tsmall: ~A~%"> a2: symbol t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

B4:
L231:
    or v0, gp, r0             ;; [ 62] (set! v0-11 this) [gp: port-metal-head-boat ] -> [v0: port-metal-head-boat ]
    ld ra, 0(sp)
    ld fp, 8(sp)
    lq gp, 16(sp)
    jr ra
    daddiu sp, sp, 32

    sll r0, r0, 0
    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(defmethod inspect ((this port-metal-head-boat))
  (when (not this)
    (set! this this)
    (goto cfg-4)
    )
  (let ((t9-0 (method-of-type process-drawable inspect)))
    (t9-0 this)
    )
  (format #t "~2Tinit-angle: ~f~%" (-> this init-angle))
  (format #t "~2Tposition: #<vector @ #x~X>~%" (-> this position))
  (format #t "~2Tforward-dir: #<vector @ #x~X>~%" (-> this forward-dir))
  (format #t "~2Tside-dir: #<vector @ #x~X>~%" (-> this side-dir))
  (format #t "~2Thit-count: ~D~%" (-> this hit-count))
  (format #t "~2Thit-ids[4] @ #x~X~%" (-> this hit-ids))
  (format #t "~2Thit-max: ~D~%" (-> this hit-max))
  (format #t "~2Tspeed: ~f~%" (-> this speed))
  (format #t "~2Tside-speed: ~f~%" (-> this side-speed))
  (format #t "~2Tsmall: ~A~%" (-> this small))
  (label cfg-4)
  this
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    (b0
      (break 4 b1 b2)
      )
    )
  b3
  b4
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (method 3 port-turret)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x20, fp? 1 ra? 1 ep? 1
  ;gprs: gp
L232:
    daddiu sp, sp, -32
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
    sq gp, 16(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! this this) [a0: port-turret ] -> [gp: port-turret ]
    bne s7, gp, L233          ;; [  1] (b! (truthy this) L233 (set! v1-0 #f)) [gp: port-turret ] -> [v1: '#f ]
    or v1, s7, r0

B1:
    or gp, gp, r0             ;; [  2] (set! this this) [gp: port-turret ] -> [gp: port-turret ]
    beq r0, r0, L234          ;; [  3] (b! #t L234 (nop!)) [] -> []
    sll r0, r0, 0

B2:
    or v1, r0, r0             ;; [  4] (set! v1-1 0) [] -> [v1: <uninitialized> ]
B3:
L233:
    lw v1, base-turret(s7)    ;; [  5] (set! v1-2 base-turret) [] -> [v1: <the etype base-turret> ]
    lwu t9, 28(v1)            ;; [  6] (set! t9-0 (l.wu (+ v1-2 28)))
                              ;; [v1: <the etype base-turret> ] -> [t9: <method (function base-turret base-turret)> ]
    or a0, gp, r0             ;; [  7] (set! a0-1 this) [gp: port-turret ] -> [a0: port-turret ]
    jalr ra, t9               ;; [  8] (call! a0-1)
                              ;; [a0: port-turret t9: <method (function base-turret base-turret)> ] -> [v0: base-turret ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [  9] (set! t9-1 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 10] (set! a0-2 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L263       ;; [ 11] (set! a1-0 L263) [] -> [a1: <string "~2Tfirst-ship-launched: ~D~%"> ]
                              ;; "~2Tfirst-ship-launched: ~D~%"
    ld a2, 548(gp)            ;; [ 12] (set! a2-0 (l.d (+ this 548))) [gp: port-turret ] -> [a2: time-frame ]
    jalr ra, t9               ;; [ 13] (call! a0-2 a1-0 a2-0)
                              ;; [a0: <sym #t> a1: <string "~2Tfirst-ship-launched: ~D~%"> a2: time-frame t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 14] (set! t9-2 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 15] (set! a0-3 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L262       ;; [ 16] (set! a1-1 L262) [] -> [a1: <string "~2Tlast-ship-launched: ~D~%"> ]
                              ;; "~2Tlast-ship-launched: ~D~%"
    ld a2, 556(gp)            ;; [ 17] (set! a2-1 (l.d (+ this 556))) [gp: port-turret ] -> [a2: time-frame ]
    jalr ra, t9               ;; [ 18] (call! a0-3 a1-1 a2-1)
                              ;; [a0: <sym #t> a1: <string "~2Tlast-ship-launched: ~D~%"> a2: time-frame t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 19] (set! t9-3 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 20] (set! a0-4 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L261       ;; [ 21] (set! a1-2 L261) [] -> [a1: <string "~2Tships-launched: ~D~%"> ]
                              ;; "~2Tships-launched: ~D~%"
    lw a2, 564(gp)            ;; [ 22] (set! a2-2 (l.w (+ this 564))) [gp: port-turret ] -> [a2: int ]
    jalr ra, t9               ;; [ 23] (call! a0-4 a1-2 a2-2)
                              ;; [a0: <sym #t> a1: <string "~2Tships-launched: ~D~%"> a2: int t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 24] (set! t9-4 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 25] (set! a0-5 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L260       ;; [ 26] (set! a1-3 L260) [] -> [a1: <string "~2Ttotal-ships-launched: ~D~%"> ]
                              ;; "~2Ttotal-ships-launched: ~D~%"
    lwu a2, 568(gp)           ;; [ 27] (set! a2-3 (l.wu (+ this 568))) [gp: port-turret ] -> [a2: uint ]
    jalr ra, t9               ;; [ 28] (call! a0-5 a1-3 a2-3)
                              ;; [a0: <sym #t> a1: <string "~2Ttotal-ships-launched: ~D~%"> a2: uint t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 29] (set! t9-5 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 30] (set! a0-6 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L259       ;; [ 31] (set! a1-4 L259) [] -> [a1: <string "~2Tsink-interp: ~f~%"> ]
                              ;; "~2Tsink-interp: ~f~%"
    lwc1 f0, 572(gp)          ;; [ 32] (set! f0-0 (l.f (+ this 572))) [gp: port-turret ] -> []
    mfc1 a2, f0               ;; [ 33] (set! a2-4 (fpr->gpr f0-0)) [] -> [a2: float ]
    jalr ra, t9               ;; [ 34] (call! a0-6 a1-4 a2-4)
                              ;; [a0: <sym #t> a1: <string "~2Tsink-interp: ~f~%"> a2: float t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 35] (set! t9-6 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 36] (set! a0-7 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L258       ;; [ 37] (set! a1-5 L258) [] -> [a1: <string "~2Tnum-shots-available: ~f~%"> ]
                              ;; "~2Tnum-shots-available: ~f~%"
    lwc1 f0, 576(gp)          ;; [ 38] (set! f0-1 (l.f (+ this 576))) [gp: port-turret ] -> []
    mfc1 a2, f0               ;; [ 39] (set! a2-5 (fpr->gpr f0-1)) [] -> [a2: float ]
    jalr ra, t9               ;; [ 40] (call! a0-7 a1-5 a2-5)
                              ;; [a0: <sym #t> a1: <string "~2Tnum-shots-available: ~f~%"> a2: float t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 41] (set! t9-7 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 42] (set! a0-8 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L257       ;; [ 43] (set! a1-6 L257) [] -> [a1: <string "~2Tlast-shot-gained: ~D~%"> ]
                              ;; "~2Tlast-shot-gained: ~D~%"
    ld a2, 580(gp)            ;; [ 44] (set! a2-6 (l.d (+ this 580))) [gp: port-turret ] -> [a2: time-frame ]
    jalr ra, t9               ;; [ 45] (call! a0-8 a1-6 a2-6)
                              ;; [a0: <sym #t> a1: <string "~2Tlast-shot-gained: ~D~%"> a2: time-frame t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 46] (set! t9-8 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 47] (set! a0-9 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L256       ;; [ 48] (set! a1-7 L256) [] -> [a1: <string "~2Ttorn: #x~X~%"> ] "~2Ttorn: #x~X~%"
    lwu a2, 588(gp)           ;; [ 49] (set! a2-7 (l.wu (+ this 588))) [gp: port-turret ] -> [a2: (pointer port-turret) ]
    jalr ra, t9               ;; [ 50] (call! a0-9 a1-7 a2-7)
                              ;; [a0: <sym #t> a1: <string "~2Ttorn: #x~X~%"> a2: (pointer port-turret) t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 51] (set! t9-9 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 52] (set! a0-10 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L255       ;; [ 53] (set! a1-8 L255) [] -> [a1: <string "~2Ttarget-y: ~f~%"> ] "~2Ttarget-y: ~f~%"
    lwc1 f0, 592(gp)          ;; [ 54] (set! f0-2 (l.f (+ this 592))) [gp: port-turret ] -> []
    mfc1 a2, f0               ;; [ 55] (set! a2-8 (fpr->gpr f0-2)) [] -> [a2: float ]
    jalr ra, t9               ;; [ 56] (call! a0-10 a1-8 a2-8)
                              ;; [a0: <sym #t> a1: <string "~2Ttarget-y: ~f~%"> a2: float t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 57] (set! t9-10 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 58] (set! a0-11 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L254       ;; [ 59] (set! a1-9 L254) [] -> [a1: <string "~2Tchannel: ~D~%"> ] "~2Tchannel: ~D~%"
    lbu a2, 596(gp)           ;; [ 60] (set! a2-9 (l.bu (+ this 596))) [gp: port-turret ] -> [a2: uint ]
    jalr ra, t9               ;; [ 61] (call! a0-11 a1-9 a2-9)
                              ;; [a0: <sym #t> a1: <string "~2Tchannel: ~D~%"> a2: uint t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 62] (set! t9-11 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 63] (set! a0-12 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L253       ;; [ 64] (set! a1-10 L253) [] -> [a1: <string "~2Tid: ~D~%"> ] "~2Tid: ~D~%"
    lwu a2, 600(gp)           ;; [ 65] (set! a2-10 (l.wu (+ this 600))) [gp: port-turret ] -> [a2: uint ]
    jalr ra, t9               ;; [ 66] (call! a0-12 a1-10 a2-10)
                              ;; [a0: <sym #t> a1: <string "~2Tid: ~D~%"> a2: uint t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 67] (set! t9-12 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 68] (set! a0-13 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L252       ;; [ 69] (set! a1-11 L252) [] -> [a1: <string "~2Tlast-speech: ~D~%"> ]
                              ;; "~2Tlast-speech: ~D~%"
    lwu a2, 604(gp)           ;; [ 70] (set! a2-11 (l.wu (+ this 604))) [gp: port-turret ] -> [a2: uint ]
    jalr ra, t9               ;; [ 71] (call! a0-13 a1-11 a2-11)
                              ;; [a0: <sym #t> a1: <string "~2Tlast-speech: ~D~%"> a2: uint t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 72] (set! t9-13 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 73] (set! a0-14 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L251       ;; [ 74] (set! a1-12 L251) [] -> [a1: <string "~2Tturret-state: ~D~%"> ]
                              ;; "~2Tturret-state: ~D~%"
    lwu a2, 608(gp)           ;; [ 75] (set! a2-12 (l.wu (+ this 608))) [gp: port-turret ] -> [a2: uint ]
    jalr ra, t9               ;; [ 76] (call! a0-14 a1-12 a2-12)
                              ;; [a0: <sym #t> a1: <string "~2Tturret-state: ~D~%"> a2: uint t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 77] (set! t9-14 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 78] (set! a0-15 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L250       ;; [ 79] (set! a1-13 L250) [] -> [a1: <string "~2Tnext-turret-state: ~D~%"> ]
                              ;; "~2Tnext-turret-state: ~D~%"
    lwu a2, 612(gp)           ;; [ 80] (set! a2-13 (l.wu (+ this 612))) [gp: port-turret ] -> [a2: uint ]
    jalr ra, t9               ;; [ 81] (call! a0-15 a1-13 a2-13)
                              ;; [a0: <sym #t> a1: <string "~2Tnext-turret-state: ~D~%"> a2: uint t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 82] (set! t9-15 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 83] (set! a0-16 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L249       ;; [ 84] (set! a1-14 L249) [] -> [a1: <string "~2Tprevious-turret-state: ~D~%"> ]
                              ;; "~2Tprevious-turret-state: ~D~%"
    lwu a2, 616(gp)           ;; [ 85] (set! a2-14 (l.wu (+ this 616))) [gp: port-turret ] -> [a2: uint ]
    jalr ra, t9               ;; [ 86] (call! a0-16 a1-14 a2-14)
                              ;; [a0: <sym #t> a1: <string "~2Tprevious-turret-state: ~D~%"> a2: uint t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, format(s7)         ;; [ 87] (set! t9-16 format) [] -> [t9: (function _varargs_ object) ]
    daddiu a0, s7, #t         ;; [ 88] (set! a0-17 #t) [] -> [a0: <sym #t> ]
    daddiu a1, fp, L248       ;; [ 89] (set! a1-15 L248) [] -> [a1: <string "~2Twho-am-i: ~D~%"> ] "~2Twho-am-i: ~D~%"
    lwu a2, 620(gp)           ;; [ 90] (set! a2-15 (l.wu (+ this 620))) [gp: port-turret ] -> [a2: uint ]
    jalr ra, t9               ;; [ 91] (call! a0-17 a1-15 a2-15)
                              ;; [a0: <sym #t> a1: <string "~2Twho-am-i: ~D~%"> a2: uint t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

B4:
L234:
    or v0, gp, r0             ;; [ 92] (set! v0-17 this) [gp: port-turret ] -> [v0: port-turret ]
    ld ra, 0(sp)
    ld fp, 8(sp)
    lq gp, 16(sp)
    jr ra
    daddiu sp, sp, 32



;;-*-OpenGOAL-Start-*-

(defmethod inspect ((this port-turret))
  (when (not this)
    (set! this this)
    (goto cfg-4)
    )
  (let ((t9-0 (method-of-type base-turret inspect)))
    (t9-0 this)
    )
  (format #t "~2Tfirst-ship-launched: ~D~%" (-> this first-ship-launched))
  (format #t "~2Tlast-ship-launched: ~D~%" (-> this last-ship-launched))
  (format #t "~2Tships-launched: ~D~%" (-> this ships-launched))
  (format #t "~2Ttotal-ships-launched: ~D~%" (-> this total-ships-launched))
  (format #t "~2Tsink-interp: ~f~%" (-> this sink-interp))
  (format #t "~2Tnum-shots-available: ~f~%" (-> this num-shots-available))
  (format #t "~2Tlast-shot-gained: ~D~%" (-> this last-shot-gained))
  (format #t "~2Ttorn: #x~X~%" (-> this torn))
  (format #t "~2Ttarget-y: ~f~%" (-> this target-y))
  (format #t "~2Tchannel: ~D~%" (-> this channel))
  (format #t "~2Tid: ~D~%" (-> this id))
  (format #t "~2Tlast-speech: ~D~%" (-> this last-speech))
  (format #t "~2Tturret-state: ~D~%" (-> this turret-state))
  (format #t "~2Tnext-turret-state: ~D~%" (-> this next-turret-state))
  (format #t "~2Tprevious-turret-state: ~D~%" (-> this previous-turret-state))
  (format #t "~2Twho-am-i: ~D~%" (-> this who-am-i))
  (label cfg-4)
  this
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    (b0
      (break 4 b1 b2)
      )
    )
  b3
  b4
  )

;; .endfunction

L235:
    .word 0x0
    .word 0x0
    .word 0x0
    .type string
; "~2Tinitial-y: ~f~%"
L236:
    .word 0x12
    .word 0x6954327e
    .word 0x6974696e
    .word 0x792d6c61
    .word 0x667e203a
    .word 0x257e
    .word 0x0
    .type string
; "~2Tbackup-pos: #<vector @ #x~X>~%"
L237:
    .word 0x21
    .word 0x6254327e
    .word 0x756b6361
    .word 0x6f702d70
    .word 0x23203a73
    .word 0x6365763c
    .word 0x20726f74
    .word 0x78232040
    .word 0x7e3e587e
    .word 0x25
    .word 0x0
    .type string
; "~2Tsmall: ~A~%"
L238:
    .word 0xe
    .word 0x7354327e
    .word 0x6c6c616d
    .word 0x417e203a
    .word 0x257e
    .word 0x0
    .word 0x0
    .type string
; "~2Tside-speed: ~f~%"
L239:
    .word 0x13
    .word 0x7354327e
    .word 0x2d656469
    .word 0x65657073
    .word 0x7e203a64
    .word 0x257e66
    .word 0x0
    .type string
; "~2Tspeed: ~f~%"
L240:
    .word 0xe
    .word 0x7354327e
    .word 0x64656570
    .word 0x667e203a
    .word 0x257e
    .word 0x0
    .word 0x0
    .type string
; "~2Thit-max: ~D~%"
L241:
    .word 0x10
    .word 0x6854327e
    .word 0x6d2d7469
    .word 0x203a7861
    .word 0x257e447e
    .word 0x0
    .word 0x0
    .type string
; "~2Thit-ids[4] @ #x~X~%"
L242:
    .word 0x16
    .word 0x6854327e
    .word 0x692d7469
    .word 0x345b7364
    .word 0x2040205d
    .word 0x587e7823
    .word 0x257e
    .type string
; "~2Thit-count: ~D~%"
L243:
    .word 0x12
    .word 0x6854327e
    .word 0x632d7469
    .word 0x746e756f
    .word 0x447e203a
    .word 0x257e
    .word 0x0
    .type string
; "~2Tside-dir: #<vector @ #x~X>~%"
L244:
    .word 0x1f
    .word 0x7354327e
    .word 0x2d656469
    .word 0x3a726964
    .word 0x763c2320
    .word 0x6f746365
    .word 0x20402072
    .word 0x587e7823
    .word 0x257e3e
    .word 0x0
    .word 0x0
    .type string
; "~2Tforward-dir: #<vector @ #x~X>~%"
L245:
    .word 0x22
    .word 0x6654327e
    .word 0x6177726f
    .word 0x642d6472
    .word 0x203a7269
    .word 0x65763c23
    .word 0x726f7463
    .word 0x23204020
    .word 0x3e587e78
    .word 0x257e
    .word 0x0
    .type string
; "~2Tposition: #<vector @ #x~X>~%"
L246:
    .word 0x1f
    .word 0x7054327e
    .word 0x7469736f
    .word 0x3a6e6f69
    .word 0x763c2320
    .word 0x6f746365
    .word 0x20402072
    .word 0x587e7823
    .word 0x257e3e
    .word 0x0
    .word 0x0
    .type string
; "~2Tinit-angle: ~f~%"
L247:
    .word 0x13
    .word 0x6954327e
    .word 0x2d74696e
    .word 0x6c676e61
    .word 0x7e203a65
    .word 0x257e66
    .word 0x0
    .type string
; "~2Twho-am-i: ~D~%"
L248:
    .word 0x11
    .word 0x7754327e
    .word 0x612d6f68
    .word 0x3a692d6d
    .word 0x7e447e20
    .word 0x25
    .word 0x0
    .type string
; "~2Tprevious-turret-state: ~D~%"
L249:
    .word 0x1e
    .word 0x7054327e
    .word 0x69766572
    .word 0x2d73756f
    .word 0x72727574
    .word 0x732d7465
    .word 0x65746174
    .word 0x447e203a
    .word 0x257e
    .word 0x0
    .word 0x0
    .type string
; "~2Tnext-turret-state: ~D~%"
L250:
    .word 0x1a
    .word 0x6e54327e
    .word 0x2d747865
    .word 0x72727574
    .word 0x732d7465
    .word 0x65746174
    .word 0x447e203a
    .word 0x257e
    .word 0x0
    .word 0x0
    .word 0x0
    .type string
; "~2Tturret-state: ~D~%"
L251:
    .word 0x15
    .word 0x7454327e
    .word 0x65727275
    .word 0x74732d74
    .word 0x3a657461
    .word 0x7e447e20
    .word 0x25
    .type string
; "~2Tlast-speech: ~D~%"
L252:
    .word 0x14
    .word 0x6c54327e
    .word 0x2d747361
    .word 0x65657073
    .word 0x203a6863
    .word 0x257e447e
    .word 0x0
    .type string
; "~2Tid: ~D~%"
L253:
    .word 0xb
    .word 0x6954327e
    .word 0x7e203a64
    .word 0x257e44
    .word 0x0
    .word 0x0
    .word 0x0
    .type string
; "~2Tchannel: ~D~%"
L254:
    .word 0x10
    .word 0x6354327e
    .word 0x6e6e6168
    .word 0x203a6c65
    .word 0x257e447e
    .word 0x0
    .word 0x0
    .type string
; "~2Ttarget-y: ~f~%"
L255:
    .word 0x11
    .word 0x7454327e
    .word 0x65677261
    .word 0x3a792d74
    .word 0x7e667e20
    .word 0x25
    .word 0x0
    .type string
; "~2Ttorn: #x~X~%"
L256:
    .word 0xf
    .word 0x7454327e
    .word 0x3a6e726f
    .word 0x7e782320
    .word 0x257e58
    .word 0x0
    .word 0x0
    .type string
; "~2Tlast-shot-gained: ~D~%"
L257:
    .word 0x19
    .word 0x6c54327e
    .word 0x2d747361
    .word 0x746f6873
    .word 0x6961672d
    .word 0x3a64656e
    .word 0x7e447e20
    .word 0x25
    .word 0x0
    .word 0x0
    .word 0x0
    .type string
; "~2Tnum-shots-available: ~f~%"
L258:
    .word 0x1c
    .word 0x6e54327e
    .word 0x732d6d75
    .word 0x73746f68
    .word 0x6176612d
    .word 0x62616c69
    .word 0x203a656c
    .word 0x257e667e
    .word 0x0
    .word 0x0
    .word 0x0
    .type string
; "~2Tsink-interp: ~f~%"
L259:
    .word 0x14
    .word 0x7354327e
    .word 0x2d6b6e69
    .word 0x65746e69
    .word 0x203a7072
    .word 0x257e667e
    .word 0x0
    .type string
; "~2Ttotal-ships-launched: ~D~%"
L260:
    .word 0x1d
    .word 0x7454327e
    .word 0x6c61746f
    .word 0x6968732d
    .word 0x6c2d7370
    .word 0x636e7561
    .word 0x3a646568
    .word 0x7e447e20
    .word 0x25
    .word 0x0
    .word 0x0
    .type string
; "~2Tships-launched: ~D~%"
L261:
    .word 0x17
    .word 0x7354327e
    .word 0x73706968
    .word 0x75616c2d
    .word 0x6568636e
    .word 0x7e203a64
    .word 0x257e44
    .type string
; "~2Tlast-ship-launched: ~D~%"
L262:
    .word 0x1b
    .word 0x6c54327e
    .word 0x2d747361
    .word 0x70696873
    .word 0x75616c2d
    .word 0x6568636e
    .word 0x7e203a64
    .word 0x257e44
    .word 0x0
    .word 0x0
    .word 0x0
    .type string
; "~2Tfirst-ship-launched: ~D~%"
L263:
    .word 0x1c
    .word 0x6654327e
    .word 0x74737269
    .word 0x6968732d
    .word 0x616c2d70
    .word 0x68636e75
    .word 0x203a6465
    .word 0x257e447e
    .word 0x0

;------------------------------------------
;  main segment
;------------------------------------------

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (trans active port-turret)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0xb0, fp? 1 ra? 1 ep? 1
  ;stack_vars: 80 bytes at 16
  ;gprs: gp s5 s4 s3
  ;fprs: f30
  ;internal_name: (anon-function 0 port-blimp)
;; Warnings:
;; WARN: Return type mismatch object vs none.

L1:
    daddiu sp, sp, -176
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
    sq s3, 96(sp)
    sq s4, 112(sp)
    sq s5, 128(sp)
    sq gp, 144(sp)
    swc1 f30, 160(sp)
B0:
    lw v1, base-turret(s7)    ;; [  0] (set! v1-0 base-turret) [] -> [v1: <the etype base-turret> ]
    lwu v1, 132(v1)           ;; [  1] (set! v1-1 (l.wu (+ v1-0 132)))
                              ;; [v1: <the etype base-turret> ] -> [v1: <method (state base-turret)> ]
    lwu t9, 16(v1)            ;; [  2] (set! t9-0 (l.wu (+ v1-1 16)))
                              ;; [v1: <method (state base-turret)> ] -> [t9: (function object) ]
    beq s7, t9, L2            ;; [  3] (b! (not t9-0) L2 (set! v1-2 #f)) [t9: (function object) ] -> [v1: '#f ]
    or v1, s7, r0

B1:
    jalr ra, t9               ;; [  4] (call!)     [t9: (function object) ] -> [v0: object ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [  5] (set! v1-3 v0-0) [v0: object ] -> [v1: object ]
B2:
L2:
    lwc1 f0, 320(s6)          ;; [  6] (set! f0-0 (l.f (+ self 320))) [s6: port-turret ] -> []
    lui v1, 16256             ;; [  7] (set! v1-4 1.0) [] -> [v1: float ]
    mtc1 f1, v1               ;; [  8] (set! f1-0 (gpr->fpr v1-4)) [v1: float ] -> []
    c.eq.s f0, f1             ;; [  9] (b! (!=.s f0-0 f1-0) L3 (set! v1-5 #t)) [] -> [v1: symbol ]
    bc1f L3
    daddiu v1, s7, 4

B3:
    or v1, s7, r0             ;; [ 10] (set! v1-5 #f) [] -> [v1: '#f ]
B4:
L3:
    bnel s7, v1, L4           ;; [ 11] (bl! (truthy v1-5) L4 (no-delay!)) [v1: symbol ] -> []
B5:
    or v1, v1, r0             ;; [ 12] (set! v1-6 v1-5) [v1: symbol ] -> [v1: symbol ]

B6:
    lwu v1, 420(s6)           ;; [ 13] (set! v1-7 (l.wu (+ self 420))) [s6: port-turret ] -> [v1: basic ]
    beq s7, v1, L4            ;; [ 14] (b! (not v1-7) L4 (set! v1-6 #t)) [v1: basic ] -> [v1: symbol ]
    daddiu v1, s7, 4

B7:
    or v1, s7, r0             ;; [ 15] (set! v1-6 #f) [] -> [v1: '#f ]
B8:
L4:
    beq s7, v1, L5            ;; [ 16] (b! (not v1-6) L5 (set! v1-8 #f)) [v1: symbol ] -> [v1: '#f ]
    or v1, s7, r0

B9:
    lwu v1, 8(s6)             ;; [ 17] (set! v1-9 (l.wu (+ self 8))) [s6: port-turret ] -> [v1: clock ]
    ld v1, 20(v1)             ;; [ 18] (set! v1-10 (l.d (+ v1-9 20))) [v1: clock ] -> [v1: time-frame ]
    sd v1, 548(s6)            ;; [ 19] (s.d! (+ self 548) v1-10) [v1: time-frame s6: port-turret ] -> []
    lwu v1, 8(s6)             ;; [ 20] (set! v1-11 (l.wu (+ self 8))) [s6: port-turret ] -> [v1: clock ]
    ld v1, 20(v1)             ;; [ 21] (set! v1-12 (l.d (+ v1-11 20))) [v1: clock ] -> [v1: time-frame ]
    sd v1, 556(s6)            ;; [ 22] (s.d! (+ self 556) v1-12) [v1: time-frame s6: port-turret ] -> []
B10:
L5:
    lwu v1, 420(s6)           ;; [ 23] (set! v1-13 (l.wu (+ self 420))) [s6: port-turret ] -> [v1: basic ]
    beql s7, v1, L6           ;; [ 24] (bl! (not v1-13) L6 (no-delay!)) [v1: basic ] -> []
B11:
    or v1, v1, r0             ;; [ 25] (set! v1-14 v1-13) [v1: basic ] -> [v1: basic ]

B12:
    lwc1 f0, 428(s6)          ;; [ 26] (set! f0-1 (l.f (+ self 428))) [s6: port-turret ] -> []
    lui v1, -14777            ;; [ 27] (set! v1-15 -12743.111) [] -> [v1: float ]
    ori v1, v1, 7282
    mtc1 f1, v1               ;; [ 28] (set! f1-1 (gpr->fpr v1-15)) [v1: float ] -> []
    c.lt.s f0, f1             ;; [ 29] (b! (<.s f0-1 f1-1) L6 (set! v1-14 #t)) [] -> [v1: symbol ]
    bc1t L6
    daddiu v1, s7, 4

B13:
    or v1, s7, r0             ;; [ 30] (set! v1-14 #f) [] -> [v1: '#f ]
B14:
L6:
    beq s7, v1, L7            ;; [ 31] (b! (not v1-14) L7 (set! v1-16 #f)) [v1: object ] -> [v1: '#f ]
    or v1, s7, r0

B15:
    lwc1 f0, 428(s6)          ;; [ 32] (set! f0-2 (l.f (+ self 428))) [s6: port-turret ] -> []
    swc1 f0, 440(s6)          ;; [ 33] (s.f! (+ self 440) f0-2) [s6: port-turret ] -> []
    lwc1 f0, 440(s6)          ;; [ 34] (set! f0-3 (l.f (+ self 440))) [s6: port-turret ] -> []
    lui v1, -14775            ;; [ 35] (set! v1-17 -12925.155) [] -> [v1: float ]
    ori v1, v1, 62623
    mtc1 f1, v1               ;; [ 36] (set! f1-2 (gpr->fpr v1-17)) [v1: float ] -> []
    c.lt.s f0, f1             ;; [ 37] (b! (>=.s f0-3 f1-2) L7 (set! v1-18 #f)) [] -> [v1: '#f ]
    bc1f L7
    or v1, s7, r0

B16:
    lwu v1, 8(s6)             ;; [ 38] (set! v1-19 (l.wu (+ self 8))) [s6: port-turret ] -> [v1: clock ]
    ld v1, 20(v1)             ;; [ 39] (set! v1-20 (l.d (+ v1-19 20))) [v1: clock ] -> [v1: time-frame ]
    sd v1, 548(s6)            ;; [ 40] (s.d! (+ self 548) v1-20) [v1: time-frame s6: port-turret ] -> []
    lwu v1, 8(s6)             ;; [ 41] (set! v1-21 (l.wu (+ self 8))) [s6: port-turret ] -> [v1: clock ]
    ld v1, 20(v1)             ;; [ 42] (set! v1-22 (l.d (+ v1-21 20))) [v1: clock ] -> [v1: time-frame ]
    sd v1, 556(s6)            ;; [ 43] (s.d! (+ self 556) v1-22) [v1: time-frame s6: port-turret ] -> []
B17:
L7:
    lwu v1, 8(s6)             ;; [ 44] (set! v1-23 (l.wu (+ self 8))) [s6: port-turret ] -> [v1: clock ]
    ld v1, 20(v1)             ;; [ 45] (set! v1-24 (l.d (+ v1-23 20))) [v1: clock ] -> [v1: time-frame ]
    daddiu v1, v1, -360       ;; [ 46] (set! v1-25 (+ v1-24 -360))
                              ;; [v1: time-frame ] -> [v1: <integer -360 + time-frame> ]
    ld a0, 580(s6)            ;; [ 47] (set! a0-0 (l.d (+ self 580))) [s6: port-turret ] -> [a0: time-frame ]
    slt v1, v1, a0            ;; [ 48] (b! (<.si v1-25 a0-0) L8 (set! v1-26 #f))
                              ;; [v1: <integer -360 + time-frame> a0: time-frame ] -> [v1: '#f ]
    bne v1, r0, L8
    or v1, s7, r0

B18:
    lwu v1, 8(s6)             ;; [ 49] (set! v1-27 (l.wu (+ self 8))) [s6: port-turret ] -> [v1: clock ]
    ld v1, 20(v1)             ;; [ 50] (set! v1-28 (l.d (+ v1-27 20))) [v1: clock ] -> [v1: time-frame ]
    sd v1, 580(s6)            ;; [ 51] (s.d! (+ self 580) v1-28) [v1: time-frame s6: port-turret ] -> []
    lw t9, seek(s7)           ;; [ 52] (set! t9-1 seek) [] -> [t9: (function float float float float) ]
    lwc1 f0, 576(s6)          ;; [ 53] (set! f0-4 (l.f (+ self 576))) [s6: port-turret ] -> []
    mfc1 a0, f0               ;; [ 54] (set! a0-1 (fpr->gpr f0-4)) [] -> [a0: float ]
    lui a1, 16544             ;; [ 55] (set! a1-0 5.0) [] -> [a1: float ]
    lwu v1, 8(s6)             ;; [ 56] (set! v1-29 (l.wu (+ self 8))) [s6: port-turret ] -> [v1: clock ]
    lwc1 f0, 84(v1)           ;; [ 57] (set! f0-5 (l.f (+ v1-29 84))) [v1: clock ] -> []
    mfc1 a2, f0               ;; [ 58] (set! a2-0 (fpr->gpr f0-5)) [] -> [a2: float ]
    jalr ra, t9               ;; [ 59] (call! a0-1 a1-0 a2-0)
                              ;; [a0: float a1: float a2: float t9: (function float float float float) ] -> [v0: float ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [ 60] (set! f0-6 (gpr->fpr v0-1)) [v0: float ] -> []
    swc1 f0, 576(s6)          ;; [ 61] (s.f! (+ self 576) f0-6) [s6: port-turret ] -> []
    mfc1 v1, f0               ;; [ 62] (set! v1-30 (fpr->gpr f0-6)) [] -> [v1: float ]
B19:
L8:
    lwu v1, 8(s6)             ;; [ 63] (set! v1-31 (l.wu (+ self 8))) [s6: port-turret ] -> [v1: clock ]
    ld v1, 20(v1)             ;; [ 64] (set! v1-32 (l.d (+ v1-31 20))) [v1: clock ] -> [v1: time-frame ]
    daddiu v1, v1, -27000     ;; [ 65] (set! v1-33 (+ v1-32 -27000))
                              ;; [v1: time-frame ] -> [v1: <integer -27000 + time-frame> ]
    ld a0, 548(s6)            ;; [ 66] (set! a0-2 (l.d (+ self 548))) [s6: port-turret ] -> [a0: time-frame ]
    slt v1, v1, a0            ;; [ 67] (b! (<.si v1-33 a0-2) L24 (nop!))
                              ;; [v1: <integer -27000 + time-frame> a0: time-frame ] -> []
    bne v1, r0, L24
    sll r0, r0, 0

B20:
    lwu v1, 604(s6)           ;; [ 68] (set! v1-34 (l.wu (+ self 604))) [s6: port-turret ] -> [v1: uint ]
    bne v1, r0, L10           ;; [ 69] (b! (nonzero? v1-34) L10 (set! a0-3 #f)) [v1: uint ] -> [a0: '#f ]
    or a0, s7, r0

B21:
    addiu v1, r0, 1           ;; [ 70] (set! v1-35 1) [] -> [v1: <integer 1> ]
    lw a0, 564(s6)            ;; [ 71] (set! a0-4 (l.w (+ self 564))) [s6: port-turret ] -> [a0: int ]
    bne a0, v1, L9            ;; [ 72] (b! (!= a0-4 v1-35) L9 (set! v0-2 #f)) [v1: <integer 1> a0: int ] -> [v0: '#f ]
    or v0, s7, r0

B22:
    addiu v1, r0, 1           ;; [ 73] (set! v1-36 1) [] -> [v1: <integer 1> ]
    sw v1, 604(s6)            ;; [ 74] (s.w! (+ self 604) v1-36) [v1: <integer 1> s6: port-turret ] -> []
    lw a0, *gui-control*(s7)  ;; [ 75] (set! a0-5 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 76] (set! v1-37 (l.wu (+ a0-5 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 77] (set! t9-2 (l.wu (+ v1-37 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, s6, r0             ;; [ 78] (set! a1-1 self) [s6: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(s6)           ;; [ 79] (set! a2-1 (l.bu (+ self 596))) [s6: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 80] (set! a3-0 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L160       ;; [ 81] (set! t0-0 L160) [] -> [t0: <string "torn060"> ] "torn060"
    lui t1, -15674            ;; [ 82] (set! t1-0 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 83] (set! t2-0 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 84] (call! a0-5 a1-1 a2-1 a3-0 t0-0 t1-0 t2-0)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn060"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    sw v0, 600(s6)            ;; [ 85] (s.w! (+ self 600) v0-3) [v0: sound-id s6: port-turret ] -> []
B23:
L9:
    beq r0, r0, L23           ;; [ 86] (b! #t L23 (nop!)) [] -> []
    sll r0, r0, 0

B24:
L10:
    addiu a0, r0, 1           ;; [ 87] (set! a0-6 1) [] -> [a0: <integer 1> ]
    bne v1, a0, L12           ;; [ 88] (b! (!= v1-34 a0-6) L12 (set! a0-7 #f)) [v1: uint a0: <integer 1> ] -> [a0: '#f ]
    or a0, s7, r0

B25:
    addiu gp, r0, 3           ;; [ 89] (set! gp-0 3) [] -> [gp: <integer 3> ]
    lw a0, *gui-control*(s7)  ;; [ 90] (set! a0-8 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 91] (set! v1-38 (l.wu (+ a0-8 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 84(v1)            ;; [ 92] (set! t9-3 (l.wu (+ v1-38 84)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control sound-id gui-status)> ]
    lwu a1, 600(s6)           ;; [ 93] (set! a1-2 (l.wu (+ self 600))) [s6: port-turret ] -> [a1: uint ]
    jalr ra, t9               ;; [ 94] (call! a0-8 a1-2)
                              ;; [a0: gui-control a1: uint t9: <vmethod (function gui-control sound-id gui-status)> ] -> [v0: gui-status ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 95] (set! v1-39 v0-4) [v0: gui-status ] -> [v1: gui-status ]
    bne v1, gp, L11           ;; [ 96] (b! (!= v1-39 gp-0) L11 (set! v0-5 #f))
                              ;; [v1: gui-status gp: <integer 3> ] -> [v0: '#f ]
    or v0, s7, r0

B26:
    addiu v0, r0, 2           ;; [ 97] (set! v0-6 2) [] -> [v0: <integer 2> ]
    sw v0, 604(s6)            ;; [ 98] (s.w! (+ self 604) v0-6) [v0: <integer 2> s6: port-turret ] -> []
B27:
L11:
    beq r0, r0, L23           ;; [ 99] (b! #t L23 (nop!)) [] -> []
    sll r0, r0, 0

B28:
L12:
    addiu a0, r0, 2           ;; [100] (set! a0-9 2) [] -> [a0: <integer 2> ]
    bne v1, a0, L14           ;; [101] (b! (!= v1-34 a0-9) L14 (set! a0-10 #f)) [v1: uint a0: <integer 2> ] -> [a0: '#f ]
    or a0, s7, r0

B29:
    lw a0, *gui-control*(s7)  ;; [102] (set! a0-11 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [103] (set! v1-40 (l.wu (+ a0-11 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 84(v1)            ;; [104] (set! t9-4 (l.wu (+ v1-40 84)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control sound-id gui-status)> ]
    lwu a1, 600(s6)           ;; [105] (set! a1-3 (l.wu (+ self 600))) [s6: port-turret ] -> [a1: uint ]
    jalr ra, t9               ;; [106] (call! a0-11 a1-3)
                              ;; [a0: gui-control a1: uint t9: <vmethod (function gui-control sound-id gui-status)> ] -> [v0: gui-status ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [107] (set! v1-41 v0-7) [v0: gui-status ] -> [v1: gui-status ]
    sltiu v1, v1, 3           ;; [108] (b! (>=.ui v1-41 3) L13 (set! v0-8 #f)) [v1: gui-status ] -> [v0: '#f ]
    beq v1, r0, L13
    or v0, s7, r0

B30:
    addiu v0, r0, 3           ;; [109] (set! v0-9 3) [] -> [v0: <integer 3> ]
    sw v0, 604(s6)            ;; [110] (s.w! (+ self 604) v0-9) [v0: <integer 3> s6: port-turret ] -> []
B31:
L13:
    beq r0, r0, L23           ;; [111] (b! #t L23 (nop!)) [] -> []
    sll r0, r0, 0

B32:
L14:
    addiu a0, r0, 3           ;; [112] (set! a0-12 3) [] -> [a0: <integer 3> ]
    bne v1, a0, L18           ;; [113] (b! (!= v1-34 a0-12) L18 (set! a0-13 #f))
                              ;; [v1: uint a0: <integer 3> ] -> [a0: '#f ]
    or a0, s7, r0

B33:
    lw v1, 564(s6)            ;; [114] (set! v1-42 (l.w (+ self 564))) [s6: port-turret ] -> [v1: int ]
    bne v1, r0, L17           ;; [115] (b! (nonzero? v1-42) L17 (set! v0-10 #f)) [v1: int ] -> [v0: '#f ]
    or v0, s7, r0

B34:
    lw t9, rand-vu-int-count(s7);; [116] (set! t9-5 rand-vu-int-count) [] -> [t9: (function int int) ]
    addiu a0, r0, 2           ;; [117] (set! a0-14 2) [] -> [a0: <integer 2> ]
    jalr ra, t9               ;; [118] (call! a0-14) [a0: <integer 2> t9: (function int int) ] -> [v0: int ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [119] (set! v1-43 v0-11) [v0: int ] -> [v1: int ]
    bne v1, r0, L15           ;; [120] (b! (nonzero? v1-43) L15 (set! a0-15 #f)) [v1: int ] -> [a0: '#f ]
    or a0, s7, r0

B35:
    lw a0, *gui-control*(s7)  ;; [121] (set! a0-16 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [122] (set! v1-44 (l.wu (+ a0-16 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [123] (set! t9-6 (l.wu (+ v1-44 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, s6, r0             ;; [124] (set! a1-4 self) [s6: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(s6)           ;; [125] (set! a2-2 (l.bu (+ self 596))) [s6: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [126] (set! a3-1 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L159       ;; [127] (set! t0-1 L159) [] -> [t0: <string "torn061"> ] "torn061"
    lui t1, -15674            ;; [128] (set! t1-1 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [129] (set! t2-1 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [130] (call! a0-16 a1-4 a2-2 a3-1 t0-1 t1-1 t2-1)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn061"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [131] (set! v1-45 v0-12) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(s6)            ;; [132] (s.w! (+ self 600) v1-45) [v1: sound-id s6: port-turret ] -> []
    beq r0, r0, L16           ;; [133] (b! #t L16 (nop!)) [] -> []
    sll r0, r0, 0

B36:
L15:
    addiu a0, r0, 1           ;; [134] (set! a0-17 1) [] -> [a0: <integer 1> ]
    bne v1, a0, L16           ;; [135] (b! (!= v1-43 a0-17) L16 (set! v1-46 #f)) [v1: int a0: <integer 1> ] -> [v1: '#f ]
    or v1, s7, r0

B37:
    lw a0, *gui-control*(s7)  ;; [136] (set! a0-18 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [137] (set! v1-47 (l.wu (+ a0-18 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [138] (set! t9-7 (l.wu (+ v1-47 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, s6, r0             ;; [139] (set! a1-5 self) [s6: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(s6)           ;; [140] (set! a2-3 (l.bu (+ self 596))) [s6: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [141] (set! a3-2 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L158       ;; [142] (set! t0-2 L158) [] -> [t0: <string "torn062"> ] "torn062"
    lui t1, -15674            ;; [143] (set! t1-2 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [144] (set! t2-2 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [145] (call! a0-18 a1-5 a2-3 a3-2 t0-2 t1-2 t2-2)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn062"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [146] (set! v1-48 v0-13) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(s6)            ;; [147] (s.w! (+ self 600) v1-48) [v1: sound-id s6: port-turret ] -> []
B38:
L16:
    addiu v0, r0, 4           ;; [148] (set! v0-14 4) [] -> [v0: <integer 4> ]
    sw v0, 604(s6)            ;; [149] (s.w! (+ self 604) v0-14) [v0: <integer 4> s6: port-turret ] -> []
B39:
L17:
    beq r0, r0, L23           ;; [150] (b! #t L23 (nop!)) [] -> []
    sll r0, r0, 0

B40:
L18:
    addiu a0, r0, 4           ;; [151] (set! a0-19 4) [] -> [a0: <integer 4> ]
    bne v1, a0, L20           ;; [152] (b! (!= v1-34 a0-19) L20 (set! a0-20 #f))
                              ;; [v1: uint a0: <integer 4> ] -> [a0: '#f ]
    or a0, s7, r0

B41:
    addiu gp, r0, 3           ;; [153] (set! gp-1 3) [] -> [gp: <integer 3> ]
    lw a0, *gui-control*(s7)  ;; [154] (set! a0-21 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [155] (set! v1-49 (l.wu (+ a0-21 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 84(v1)            ;; [156] (set! t9-8 (l.wu (+ v1-49 84)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control sound-id gui-status)> ]
    lwu a1, 600(s6)           ;; [157] (set! a1-6 (l.wu (+ self 600))) [s6: port-turret ] -> [a1: uint ]
    jalr ra, t9               ;; [158] (call! a0-21 a1-6)
                              ;; [a0: gui-control a1: uint t9: <vmethod (function gui-control sound-id gui-status)> ] -> [v0: gui-status ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [159] (set! v1-50 v0-15) [v0: gui-status ] -> [v1: gui-status ]
    bne v1, gp, L19           ;; [160] (b! (!= v1-50 gp-1) L19 (set! v0-16 #f))
                              ;; [v1: gui-status gp: <integer 3> ] -> [v0: '#f ]
    or v0, s7, r0

B42:
    addiu v0, r0, 5           ;; [161] (set! v0-17 5) [] -> [v0: <integer 5> ]
    sw v0, 604(s6)            ;; [162] (s.w! (+ self 604) v0-17) [v0: <integer 5> s6: port-turret ] -> []
B43:
L19:
    beq r0, r0, L23           ;; [163] (b! #t L23 (nop!)) [] -> []
    sll r0, r0, 0

B44:
L20:
    addiu a0, r0, 5           ;; [164] (set! a0-22 5) [] -> [a0: <integer 5> ]
    bne v1, a0, L23           ;; [165] (b! (!= v1-34 a0-22) L23 (set! v0-18 #f))
                              ;; [v1: uint a0: <integer 5> ] -> [v0: '#f ]
    or v0, s7, r0

B45:
    lw a0, *gui-control*(s7)  ;; [166] (set! a0-23 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [167] (set! v1-51 (l.wu (+ a0-23 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 84(v1)            ;; [168] (set! t9-9 (l.wu (+ v1-51 84)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control sound-id gui-status)> ]
    lwu a1, 600(s6)           ;; [169] (set! a1-7 (l.wu (+ self 600))) [s6: port-turret ] -> [a1: uint ]
    jalr ra, t9               ;; [170] (call! a0-23 a1-7)
                              ;; [a0: gui-control a1: uint t9: <vmethod (function gui-control sound-id gui-status)> ] -> [v0: gui-status ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [171] (set! v1-52 v0-19) [v0: gui-status ] -> [v1: gui-status ]
    sltiu v1, v1, 3           ;; [172] (b! (>=.ui v1-52 3) L23 (set! v0-20 #f)) [v1: gui-status ] -> [v0: '#f ]
    beq v1, r0, L23
    or v0, s7, r0

B46:
    daddiu v1, s7, #t         ;; [173] (set! v1-53 #t) [] -> [v1: <sym #t> ]
    sw v1, 364(s6)            ;; [174] (s.w! (+ self 364) v1-53) [v1: <sym #t> s6: port-turret ] -> []
    addiu v1, r0, 2           ;; [175] (set! v1-54 2) [] -> [v1: <integer 2> ]
    sh v1, 328(s6)            ;; [176] (s.h! (+ self 328) v1-54) [v1: <integer 2> s6: port-turret ] -> []
    mtc1 f0, r0               ;; [177] (set! f0-7 0.0) [] -> []
    swc1 f0, 440(s6)          ;; [178] (s.f! (+ self 440) f0-7) [s6: port-turret ] -> []
    mtc1 f0, r0               ;; [179] (set! f0-8 0.0) [] -> []
    swc1 f0, 444(s6)          ;; [180] (s.f! (+ self 444) f0-8) [s6: port-turret ] -> []
    sw s7, 424(s6)            ;; [181] (s.w! (+ self 424) #f) [s6: port-turret ] -> []
    daddiu a1, sp, 16         ;; [182] (set! a1-8 (+ sp-0 16)) [sp: <uninitialized> ] -> [a1: event-message-block ]
    or v1, s6, r0             ;; [183] (set! v1-55 self) [s6: port-turret ] -> [v1: port-turret ]
    beq s7, v1, L21           ;; [184] (b! (not v1-55) L21 (set! a0-24 #f)) [v1: port-turret ] -> [a0: '#f ]
    or a0, s7, r0

B47:
    lwu a0, 24(v1)            ;; [185] (set! a0-24 (l.wu (+ v1-55 24))) [v1: port-turret ] -> [a0: (pointer process) ]
B48:
L21:
    sw a0, 8(a1)              ;; [186] (s.w! (+ a1-8 8) a0-24) [a0: (pointer process) a1: event-message-block ] -> []
    sw r0, 68(a1)             ;; [187] (s.w! (+ a1-8 68) 0) [a1: event-message-block ] -> []
    daddiu v1, s7, end-mode   ;; [188] (set! v1-56 'end-mode) [] -> [v1: <sym end-mode> ]
    sw v1, 64(a1)             ;; [189] (s.w! (+ a1-8 64) v1-56) [v1: <sym end-mode> a1: event-message-block ] -> []
    lw t9, send-event-function(s7);; [190] (set! t9-10 send-event-function)
                              ;; [] -> [t9: (function process-tree event-message-block object) ]
    lw a0, *target*(s7)       ;; [191] (set! a0-25 *target*) [] -> [a0: target ]
    jalr ra, t9               ;; [192] (call! a0-25 a1-8)
                              ;; [a0: target a1: event-message-block t9: (function process-tree event-message-block object) ] -> [v0: object ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [193] (set! v1-57 v0-21) [v0: object ] -> [v1: object ]
    lw a0, *default-dead-pool*(s7);; [194] (set! a0-26 *default-dead-pool*) [] -> [a0: dead-pool ]
    lwu v1, -4(a0)            ;; [195] (set! v1-58 (l.wu (+ a0-26 -4))) [a0: dead-pool ] -> [v1: <the type dead-pool> ]
    lwu t9, 72(v1)            ;; [196] (set! t9-11 (l.wu (+ v1-58 72)))
                              ;; [v1: <the type dead-pool> ] -> [t9: <vmethod (function dead-pool type int process)> ]
    lw a1, scene-player(s7)   ;; [197] (set! a1-9 scene-player) [] -> [a1: <the etype scene-player> ]
    addiu a2, r0, 16384       ;; [198] (set! a2-4 #x4000) [] -> [a2: <integer 16384> ]
    jalr ra, t9               ;; [199] (call! a0-26 a1-9 a2-4)
                              ;; [a0: dead-pool a1: <the etype scene-player> a2: <integer 16384> t9: <vmethod (function dead-pool type int process)> ] -> [v0: process ]
    sll v0, ra, 0

    or gp, v0, r0             ;; [200] (set! gp-2 v0-22) [v0: process ] -> [gp: process ]
    beq s7, gp, L22           ;; [201] (b! (not gp-2) L22 (set! v1-59 #f)) [gp: process ] -> [v1: '#f ]
    or v1, s7, r0

B49:
    lw v1, scene-player(s7)   ;; [202] (set! v1-60 scene-player) [] -> [v1: <the etype scene-player> ]
    lwu t9, 52(v1)            ;; [203] (set! t9-12 (l.wu (+ v1-60 52)))
                              ;; [v1: <the etype scene-player> ] -> [t9: <method (function scene-player process-tree basic pointer process-tree)> ]
    or a0, gp, r0             ;; [204] (set! a0-27 gp-2) [gp: process ] -> [a0: process ]
    lw a1, *default-pool*(s7) ;; [205] (set! a1-10 *default-pool*) [] -> [a1: process-tree ]
    ori v1, r0, 65335         ;; [206] (set! v1-61 #xff37) [] -> [v1: <integer 65335> ]
    lw a2, scene-player(s7)   ;; [207] (set! a2-5 scene-player) [] -> [a2: <the etype scene-player> ]
    lwu a2, 0(a2)             ;; [208] (set! a2-6 (l.wu a2-5)) [a2: <the etype scene-player> ] -> [a2: symbol ]
    daddu v1, v1, a2          ;; [209] (set! v1-62 (+ v1-61 a2-6))
                              ;; [v1: <integer 65335> a2: symbol ] -> [v1: (pointer string) ]
    lwu a2, 0(v1)             ;; [210] (set! a2-7 (l.wu v1-62)) [v1: (pointer string) ] -> [a2: string ]
    lui v1, 28672             ;; [211] (set! a3-3 #x70004000) [] -> [a3: <integer 1879064576> ]
    ori a3, v1, 16384
    jalr ra, t9               ;; [212] (call! a0-27 a1-10 a2-7 a3-3)
                              ;; [a0: process a1: process-tree a2: string a3: <integer 1879064576> t9: <method (function scene-player process-tree basic pointer process-tree)> ] -> [v0: process-tree ]
    sll v0, ra, 0

    lw t9, run-function-in-process(s7);; [213] (set! t9-13 run-function-in-process)
                              ;; [] -> [t9: <run-function-in-process-func> ]
    or a0, gp, r0             ;; [214] (set! a0-28 gp-2) [gp: process ] -> [a0: process ]
    lw a1, scene-player-init(s7);; [215] (set! a1-11 scene-player-init)
                              ;; [] -> [a1: (function object symbol string none :behavior scene-player) ]
    daddiu a2, fp, L157       ;; [216] (set! a2-8 L157) [] -> [a2: <string "city-protect-blimp-res"> ]
                              ;; "city-protect-blimp-res"
    daddiu a3, s7, #t         ;; [217] (set! a3-4 #t) [] -> [a3: <sym #t> ]
    or t0, s7, r0             ;; [218] (set! t0-3 #f) [] -> [t0: '#f ]
    jalr ra, t9               ;; [219] (call! a0-28 a1-11 a2-8 a3-4 t0-3)
                              ;; [a0: process a1: (function object symbol string none :behavior scene-player) a2: <string "city-protect-blimp-res"> a3: <sym #t> t0: '#f t9: <run-function-in-process-func> ] -> [v0: none ]
    sll v0, ra, 0

    lwu v1, 24(gp)            ;; [220] (set! v1-63 (l.wu (+ gp-2 24))) [gp: process ] -> [v1: (pointer process) ]
B50:
L22:
    sw r0, 604(s6)            ;; [221] (s.w! (+ self 604) 0) [s6: port-turret ] -> []
    lw t9, enter-state(s7)    ;; [222] (set! t9-14 enter-state) [] -> [t9: <enter-state-func> ]
    lwu v1, -4(s6)            ;; [223] (set! v1-64 (l.wu (+ self -4)))
                              ;; [s6: port-turret ] -> [v1: <the type port-turret> ]
    lwu v1, 124(v1)           ;; [224] (set! v1-65 (l.wu (+ v1-64 124)))
                              ;; [v1: <the type port-turret> ] -> [v1: <vmethod (state port-turret)> ]
    sw v1, 64(s6)             ;; [225] (s.w! (+ self 64) v1-65)
                              ;; [v1: <vmethod (state port-turret)> s6: port-turret ] -> []
    jalr ra, t9               ;; [226] (call!)     [t9: <enter-state-func> ] -> [v0: object ]
    sll v0, ra, 0

B51:
L23:
    beq r0, r0, L28           ;; [227] (b! #t L28 (nop!)) [] -> []
    sll r0, r0, 0

B52:
L24:
    lwu v1, 8(s6)             ;; [228] (set! v1-66 (l.wu (+ self 8))) [s6: port-turret ] -> [v1: clock ]
    ld v1, 20(v1)             ;; [229] (set! v1-67 (l.d (+ v1-66 20))) [v1: clock ] -> [v1: time-frame ]
    daddiu v1, v1, -750       ;; [230] (set! v1-68 (+ v1-67 -750))
                              ;; [v1: time-frame ] -> [v1: <integer -750 + time-frame> ]
    ld a0, 556(s6)            ;; [231] (set! a0-29 (l.d (+ self 556))) [s6: port-turret ] -> [a0: time-frame ]
    slt v1, v1, a0            ;; [232] (b! (<.si v1-68 a0-29) L28 (set! v0-26 #f))
                              ;; [v1: <integer -750 + time-frame> a0: time-frame ] -> [v0: '#f ]
    bne v1, r0, L28
    or v0, s7, r0

B53:
    lw a0, *default-dead-pool*(s7);; [233] (set! a0-30 *default-dead-pool*) [] -> [a0: dead-pool ]
    lwu v1, -4(a0)            ;; [234] (set! v1-69 (l.wu (+ a0-30 -4))) [a0: dead-pool ] -> [v1: <the type dead-pool> ]
    lwu t9, 72(v1)            ;; [235] (set! t9-15 (l.wu (+ v1-69 72)))
                              ;; [v1: <the type dead-pool> ] -> [t9: <vmethod (function dead-pool type int process)> ]
    lw a1, port-metal-head-boat(s7);; [236] (set! a1-12 port-metal-head-boat)
                              ;; [] -> [a1: <the etype port-metal-head-boat> ]
    addiu a2, r0, 16384       ;; [237] (set! a2-9 #x4000) [] -> [a2: <integer 16384> ]
    jalr ra, t9               ;; [238] (call! a0-30 a1-12 a2-9)
                              ;; [a0: dead-pool a1: <the etype port-metal-head-boat> a2: <integer 16384> t9: <vmethod (function dead-pool type int process)> ] -> [v0: process ]
    sll v0, ra, 0

    or gp, v0, r0             ;; [239] (set! gp-3 v0-27) [v0: process ] -> [gp: process ]
    beq s7, gp, L26           ;; [240] (b! (not gp-3) L26 (set! v1-70 #f)) [gp: process ] -> [v1: '#f ]
    or v1, s7, r0

B54:
    lw v1, port-metal-head-boat(s7);; [241] (set! v1-71 port-metal-head-boat)
                              ;; [] -> [v1: <the etype port-metal-head-boat> ]
    lwu t9, 52(v1)            ;; [242] (set! t9-16 (l.wu (+ v1-71 52)))
                              ;; [v1: <the etype port-metal-head-boat> ] -> [t9: <method (function port-metal-head-boat process-tree basic pointer process-tree)> ]
    or a0, gp, r0             ;; [243] (set! a0-31 gp-3) [gp: process ] -> [a0: process ]
    or a1, s6, r0             ;; [244] (set! a1-13 self) [s6: port-turret ] -> [a1: port-turret ]
    ori v1, r0, 65335         ;; [245] (set! v1-72 #xff37) [] -> [v1: <integer 65335> ]
    lw a2, port-metal-head-boat(s7);; [246] (set! a2-10 port-metal-head-boat)
                              ;; [] -> [a2: <the etype port-metal-head-boat> ]
    lwu a2, 0(a2)             ;; [247] (set! a2-11 (l.wu a2-10)) [a2: <the etype port-metal-head-boat> ] -> [a2: symbol ]
    daddu v1, v1, a2          ;; [248] (set! v1-73 (+ v1-72 a2-11))
                              ;; [v1: <integer 65335> a2: symbol ] -> [v1: (pointer string) ]
    lwu a2, 0(v1)             ;; [249] (set! a2-12 (l.wu v1-73)) [v1: (pointer string) ] -> [a2: string ]
    lui v1, 28672             ;; [250] (set! a3-5 #x70004000) [] -> [a3: <integer 1879064576> ]
    ori a3, v1, 16384
    jalr ra, t9               ;; [251] (call! a0-31 a1-13 a2-12 a3-5)
                              ;; [a0: process a1: port-turret a2: string a3: <integer 1879064576> t9: <method (function port-metal-head-boat process-tree basic pointer process-tree)> ] -> [v0: process-tree ]
    sll v0, ra, 0

    lw s5, run-function-in-process(s7);; [252] (set! s5-0 run-function-in-process)
                              ;; [] -> [s5: <run-function-in-process-func> ]
    or s4, gp, r0             ;; [253] (set! s4-0 gp-3) [gp: process ] -> [s4: process ]
    lw s3, port-metal-head-boat-init-by-other(s7);; [254] (set! s3-0 port-metal-head-boat-init-by-other)
                              ;; [] -> [s3: (function none :behavior port-metal-head-boat) ]
    lui v1, 16840             ;; [255] (set! v1-74 25.0) [] -> [v1: float ]
    mtc1 f30, v1              ;; [256] (set! f30-0 (gpr->fpr v1-74)) [v1: float ] -> []
    lw t9, rand-vu-float-range(s7);; [257] (set! t9-17 rand-vu-float-range) [] -> [t9: (function float float float) ]
    addiu a0, r0, 0           ;; [258] (set! a0-32 0.0) [] -> [a0: float ]
    lui a1, 16968             ;; [259] (set! a1-14 50.0) [] -> [a1: float ]
    jalr ra, t9               ;; [260] (call! a0-32 a1-14)
                              ;; [a0: float a1: float t9: (function float float float) ] -> [v0: float ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [261] (set! f0-9 (gpr->fpr v0-29)) [v0: float ] -> []
    c.lt.s f30, f0            ;; [262] (b! (<.s f30-0 f0-9) L25 (set! a2-13 #t)) [] -> [a2: symbol ]
    bc1t L25
    daddiu a2, s7, 4

B55:
    or a2, s7, r0             ;; [263] (set! a2-14 #f) [] -> [a2: '#f ]
B56:
L25:
    or t9, s5, r0             ;; [264] (set! t9-18 s5-0)
                              ;; [s5: <run-function-in-process-func> ] -> [t9: <run-function-in-process-func> ]
    or a0, s4, r0             ;; [265] (set! a0-33 s4-0) [s4: process ] -> [a0: process ]
    or a1, s3, r0             ;; [266] (set! a1-15 s3-0)
                              ;; [s3: (function none :behavior port-metal-head-boat) ] -> [a1: (function none :behavior port-metal-head-boat) ]
    jalr ra, t9               ;; [267] (call! a0-33 a1-15)
                              ;; [a0: process a1: (function none :behavior port-metal-head-boat) t9: <run-function-in-process-func> ] -> [v0: none ]
    sll v0, ra, 0

    lwu v1, 24(gp)            ;; [268] (set! v1-75 (l.wu (+ gp-3 24))) [gp: process ] -> [v1: (pointer process) ]
B57:
L26:
    lwu v1, 8(s6)             ;; [269] (set! v1-76 (l.wu (+ self 8))) [s6: port-turret ] -> [v1: clock ]
    ld v1, 20(v1)             ;; [270] (set! v1-77 (l.d (+ v1-76 20))) [v1: clock ] -> [v1: time-frame ]
    sd v1, 556(s6)            ;; [271] (s.d! (+ self 556) v1-77) [v1: time-frame s6: port-turret ] -> []
    lw v1, 564(s6)            ;; [272] (set! v1-78 (l.w (+ self 564))) [s6: port-turret ] -> [v1: int ]
    daddiu v1, v1, 1          ;; [273] (set! v1-79 (+ v1-78 1)) [v1: int ] -> [v1: <integer 1 + int> ]
    sw v1, 564(s6)            ;; [274] (s.w! (+ self 564) v1-79) [v1: <integer 1 + int> s6: port-turret ] -> []
    lwu v1, 568(s6)           ;; [275] (set! v1-80 (l.wu (+ self 568))) [s6: port-turret ] -> [v1: uint ]
    bne v1, r0, L27           ;; [276] (b! (nonzero? v1-80) L27 (set! v1-81 #f)) [v1: uint ] -> [v1: '#f ]
    or v1, s7, r0

B58:
    lw a0, *gui-control*(s7)  ;; [277] (set! a0-34 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [278] (set! v1-82 (l.wu (+ a0-34 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [279] (set! t9-19 (l.wu (+ v1-82 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, s6, r0             ;; [280] (set! a1-16 self) [s6: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(s6)           ;; [281] (set! a2-15 (l.bu (+ self 596))) [s6: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [282] (set! a3-6 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L156       ;; [283] (set! t0-4 L156) [] -> [t0: <string "torn014"> ] "torn014"
    lui t1, -15674            ;; [284] (set! t1-3 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [285] (set! t2-3 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [286] (call! a0-34 a1-16 a2-15 a3-6 t0-4 t1-3 t2-3)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn014"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [287] (set! v1-83 v0-31) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(s6)            ;; [288] (s.w! (+ self 600) v1-83) [v1: sound-id s6: port-turret ] -> []
B59:
L27:
    lwu v1, 568(s6)           ;; [289] (set! v1-84 (l.wu (+ self 568))) [s6: port-turret ] -> [v1: uint ]
    daddiu v1, v1, 1          ;; [290] (set! v1-85 (+ v1-84 1)) [v1: uint ] -> [v1: <integer 1 + uint> ]
    sw v1, 568(s6)            ;; [291] (s.w! (+ self 568) v1-85) [v1: <integer 1 + uint> s6: port-turret ] -> []
    addiu v1, r0, 7           ;; [292] (set! v1-86 7) [] -> [v1: <integer 7> ]
    lw a0, 564(s6)            ;; [293] (set! a0-35 (l.w (+ self 564))) [s6: port-turret ] -> [a0: int ]
    slt v1, v1, a0            ;; [294] (b! (>=.si v1-86 a0-35) L28 (set! v0-32 #f))
                              ;; [v1: <integer 7> a0: int ] -> [v0: '#f ]
    beq v1, r0, L28
    or v0, s7, r0

B60:
    lw t9, new-wave-speech(s7);; [295] (set! t9-20 new-wave-speech) [] -> [t9: (function port-turret none) ]
    or a0, s6, r0             ;; [296] (set! a0-36 self) [s6: port-turret ] -> [a0: port-turret ]
    jalr ra, t9               ;; [297] (call! a0-36) [a0: port-turret t9: (function port-turret none) ] -> [v0: none ]
    sll v0, ra, 0

B61:
L28:
    ld ra, 0(sp)
    ld fp, 8(sp)
    lwc1 f30, 160(sp)
    lq gp, 144(sp)
    lq s5, 128(sp)
    lq s4, 112(sp)
    lq s3, 96(sp)
    jr ra
    daddiu sp, sp, 176

    sll r0, r0, 0
    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(state-handler
  (trans active port-turret)
  ()
  (let ((t9-0 (-> (method-of-type base-turret active) trans)))
    (if t9-0
        (t9-0)
        )
    )
  (when (or (!= (-> self path-u) 1.0) (not (-> self enable-controls)))
    (set-time! (-> self first-ship-launched))
    (set-time! (-> self last-ship-launched))
    )
  (when (and (-> self enable-controls) (< (-> self roty) -12743.111))
    (set! (-> self roty-min) (-> self roty))
    (when (< (-> self roty-min) -12925.155)
      (set-time! (-> self first-ship-launched))
      (set-time! (-> self last-ship-launched))
      )
    )
  (when (>= (+ (current-time) (seconds -1.2)) (-> self last-shot-gained))
    (set-time! (-> self last-shot-gained))
    (seek! (-> self num-shots-available) 5.0 (-> self clock time-adjust-ratio))
    )
  (cond
    ((>= (+ (current-time) (seconds -90)) (-> self first-ship-launched))
     (let ((v1-34 (-> self last-speech)))
       (cond
         ((zero? v1-34)
          (when (= (-> self ships-launched) 1)
            (set! (-> self last-speech) (the-as uint 1))
            (set! (-> self id)
                  (the-as
                    uint
                    (add-process *gui-control* self (the-as gui-channel (-> self channel)) (gui-action play) "torn060" -99.0 0)
                    )
                  )
            )
          )
         ((= v1-34 1)
          (if (= (get-status *gui-control* (the-as sound-id (-> self id))) (gui-status active))
              (set! (-> self last-speech) (the-as uint 2))
              )
          )
         ((= v1-34 2)
          (if (< (the-as uint (get-status *gui-control* (the-as sound-id (-> self id)))) (the-as uint 3))
              (set! (-> self last-speech) (the-as uint 3))
              )
          )
         ((= v1-34 3)
          (when (zero? (-> self ships-launched))
            (let ((v1-43 (rand-vu-int-count 2)))
              (cond
                ((zero? v1-43)
                 (set! (-> self id)
                       (the-as
                         uint
                         (add-process *gui-control* self (the-as gui-channel (-> self channel)) (gui-action play) "torn061" -99.0 0)
                         )
                       )
                 )
                ((= v1-43 1)
                 (set! (-> self id)
                       (the-as
                         uint
                         (add-process *gui-control* self (the-as gui-channel (-> self channel)) (gui-action play) "torn062" -99.0 0)
                         )
                       )
                 )
                )
              )
            (set! (-> self last-speech) (the-as uint 4))
            )
          )
         ((= v1-34 4)
          (if (= (get-status *gui-control* (the-as sound-id (-> self id))) (gui-status active))
              (set! (-> self last-speech) (the-as uint 5))
              )
          )
         ((= v1-34 5)
          (when (< (the-as uint (get-status *gui-control* (the-as sound-id (-> self id)))) (the-as uint 3))
            (set! (-> self path-direction) (the-as basic #t))
            (set! (-> self path-mode) (the-as uint 2))
            (set! (-> self roty-min) 0.0)
            (set! (-> self roty-max) 0.0)
            (set! (-> self available-for-pickup) #f)
            (send-event *target* 'end-mode)
            (process-spawn scene-player :init scene-player-init "city-protect-blimp-res" #t #f)
            (set! (-> self last-speech) (the-as uint 0))
            (go-virtual idle)
            )
          )
         )
       )
     )
    (else
      (when (>= (+ (current-time) (seconds -2.5)) (-> self last-ship-launched))
        (let ((gp-3 (get-process *default-dead-pool* port-metal-head-boat #x4000)))
          (when gp-3
            (let ((t9-16 (method-of-type port-metal-head-boat activate)))
              (t9-16
                (the-as port-metal-head-boat gp-3)
                self
                (symbol->string (-> port-metal-head-boat symbol))
                (the-as pointer #x70004000)
                )
              )
            (let ((s5-0 run-function-in-process)
                  (s4-0 gp-3)
                  (s3-0 port-metal-head-boat-init-by-other)
                  )
              (< 25.0 (rand-vu-float-range 0.0 50.0))
              ((the-as (function object object none) s5-0) s4-0 s3-0)
              )
            (-> gp-3 ppointer)
            )
          )
        (set-time! (-> self last-ship-launched))
        (+! (-> self ships-launched) 1)
        (if (zero? (-> self total-ships-launched))
            (set! (-> self id)
                  (the-as
                    uint
                    (add-process *gui-control* self (the-as gui-channel (-> self channel)) (gui-action play) "torn014" -99.0 0)
                    )
                  )
            )
        (+! (-> self total-ships-launched) 1)
        (if (< 7 (-> self ships-launched))
            (new-wave-speech self)
            )
        )
      )
    )
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    ((seq
       (cond
         ((seq
            (cond
              ((seq
                 (cond
                   ((seq
                      (cond
                        (b0
                          b1
                          )
                        )
                      b2
                      )
                    b3
                    )
                   )
                 (sc (b4 b5) (cond
                               (b6
                                 b7
                                 )
                               )
                     )
                 b8
                 )
               b9
               )
              )
            (sc (b10 b11) (cond
                            (b12
                              b13
                              )
                            )
                )
            b14
            )
          (cond
            (b15
              b16
              )
            )
          )
         )
       (cond
         (b17
           b18
           )
         )
       b19
       )
     (seq
       (cond
         (b20
           (seq
             (cond
               (b21
                 b22
                 )
               )
             b23
             )
           )
         (b24
           (seq
             (cond
               (b25
                 b26
                 )
               )
             b27
             )
           )
         (b28
           (seq
             (cond
               (b29
                 b30
                 )
               )
             b31
             )
           )
         (b32
           (seq
             (cond
               (b33
                 (seq
                   (cond
                     (b34
                       b35
                       )
                     (b36
                       b37
                       )
                     )
                   b38
                   )
                 )
               )
             b39
             )
           )
         (b40
           (seq
             (cond
               (b41
                 b42
                 )
               )
             b43
             )
           )
         (b44
           (cond
             (b45
               (seq
                 (cond
                   ((seq
                      (cond
                        (b46
                          b47
                          )
                        )
                      b48
                      )
                    b49
                    )
                   )
                 b50
                 )
               )
             )
           )
         )
       b51
       )
     )
    (else
      (cond
        (b52
          (seq
            (cond
              ((seq
                 (cond
                   (b53
                     (seq
                       (cond
                         (b54
                           b55
                           )
                         )
                       b56
                       )
                     )
                   )
                 b57
                 )
               b58
               )
              )
            (cond
              (b59
                b60
                )
              )
            )
          )
        )
      )
    )
  b61
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (post idle port-turret)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x10, fp? 1 ra? 1 ep? 1
  ;internal_name: (anon-function 1 port-blimp)
L29:
    daddiu sp, sp, -16
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
B0:
    lw t9, name=(s7)          ;; [  0] (set! t9-0 name=) [] -> [t9: (function object object symbol) ]
    lwu a0, 0(s6)             ;; [  1] (set! a0-0 (l.wu self)) [s6: port-turret ] -> [a0: string ]
    daddiu a1, fp, L170       ;; [  2] (set! a1-0 L170) [] -> [a1: <string "port-turret-2"> ] "port-turret-2"
    jalr ra, t9               ;; [  3] (call! a0-0 a1-0)
                              ;; [a0: string a1: <string "port-turret-2"> t9: (function object object symbol) ] -> [v0: symbol ]
    sll v0, ra, 0

    beq s7, v0, L30           ;; [  4] (b! (not v0-0) L30 (set! v1-0 #f)) [v0: symbol ] -> [v1: '#f ]
    or v1, s7, r0

B1:
    lw t9, quaternion-copy!(s7);; [  5] (set! t9-1 quaternion-copy!)
                              ;; [] -> [t9: (function quaternion quaternion quaternion) ]
    lwu v1, 588(s6)           ;; [  6] (set! v1-1 (l.wu (+ self 588))) [s6: port-turret ] -> [v1: (pointer port-turret) ]
    lwu v1, 0(v1)             ;; [  7] (set! v1-2 (l.wu v1-1)) [v1: (pointer port-turret) ] -> [v1: port-turret ]
    lwu v1, 124(v1)           ;; [  8] (set! v1-3 (l.wu (+ v1-2 124))) [v1: port-turret ] -> [v1: collide-shape ]
    daddiu a0, v1, 28         ;; [  9] (set! a0-1 (+ v1-3 28)) [v1: collide-shape ] -> [a0: quaternion ]
    lwu v1, 124(s6)           ;; [ 10] (set! v1-4 (l.wu (+ self 124))) [s6: port-turret ] -> [v1: collide-shape ]
    daddiu a1, v1, 28         ;; [ 11] (set! a1-1 (+ v1-4 28)) [v1: collide-shape ] -> [a1: quaternion ]
    jalr ra, t9               ;; [ 12] (call! a0-1 a1-1)
                              ;; [a0: quaternion a1: quaternion t9: (function quaternion quaternion quaternion) ] -> [v0: quaternion ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 13] (set! v1-5 v0-1) [v0: quaternion ] -> [v1: quaternion ]
B2:
L30:
    lw v1, base-turret(s7)    ;; [ 14] (set! v1-6 base-turret) [] -> [v1: <the etype base-turret> ]
    lwu v1, 124(v1)           ;; [ 15] (set! v1-7 (l.wu (+ v1-6 124)))
                              ;; [v1: <the etype base-turret> ] -> [v1: <method (state base-turret)> ]
    lwu t9, 20(v1)            ;; [ 16] (set! t9-2 (l.wu (+ v1-7 20)))
                              ;; [v1: <method (state base-turret)> ] -> [t9: function ]
    beq s7, t9, L31           ;; [ 17] (b! (not t9-2) L31 (set! v0-2 #f)) [t9: function ] -> [v0: '#f ]
    or v0, s7, r0

B3:
    jalr ra, t9               ;; [ 18] (call!)     [t9: (function none) ] -> [v0: none ]
    sll v0, ra, 0

B4:
L31:
    ld ra, 0(sp)
    ld fp, 8(sp)
    jr ra
    daddiu sp, sp, 16

    sll r0, r0, 0
    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(state-handler
  (post idle port-turret)
  ()
  (if (name= (-> self name) "port-turret-2")
      (quaternion-copy! (-> self torn 0 root quat) (-> self root quat))
      )
  (let ((t9-2 (-> (method-of-type base-turret idle) post)))
    (if t9-2
        ((the-as (function none) t9-2))
        )
    )
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    ((seq
       (cond
         (b0
           b1
           )
         )
       b2
       )
     b3
     )
    )
  b4
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (trans idle port-turret)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x80, fp? 1 ra? 1 ep? 1
  ;stack_vars: 80 bytes at 16
  ;gprs: gp s5
  ;internal_name: (anon-function 2 port-blimp)
;; Warnings:
;; WARN: Return type mismatch object vs none.

L32:
    daddiu sp, sp, -128
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
    sq s5, 96(sp)
    sq gp, 112(sp)
B0:
    addiu v1, r0, 1           ;; [  0] (set! v1-0 1) [] -> [v1: <integer 1> ]
    lwu a0, 620(s6)           ;; [  1] (set! a0-0 (l.wu (+ self 620))) [s6: port-turret ] -> [a0: uint ]
    bne a0, v1, L34           ;; [  2] (b! (!= a0-0 v1-0) L34 (set! v1-1 #f)) [v1: <integer 1> a0: uint ] -> [v1: '#f ]
    or v1, s7, r0

B1:
    lwu a0, 148(s6)           ;; [  3] (set! a0-1 (l.wu (+ self 148))) [s6: port-turret ] -> [a0: path-control ]
    lwu v1, -4(a0)            ;; [  4] (set! v1-2 (l.wu (+ a0-1 -4)))
                              ;; [a0: path-control ] -> [v1: <the type path-control> ]
    lwu t9, 72(v1)            ;; [  5] (set! t9-0 (l.wu (+ v1-2 72)))
                              ;; [v1: <the type path-control> ] -> [t9: <vmethod (function path-control vector float symbol vector)> ]
    lwu v1, 124(s6)           ;; [  6] (set! v1-3 (l.wu (+ self 124))) [s6: port-turret ] -> [v1: collide-shape ]
    daddiu a1, v1, 12         ;; [  7] (set! a1-0 (+ v1-3 12)) [v1: collide-shape ] -> [a1: vector ]
    addiu a2, r0, 0           ;; [  8] (set! a2-0 0.0) [] -> [a2: float ]
    daddiu a3, s7, interp     ;; [  9] (set! a3-0 'interp) [] -> [a3: <sym interp> ]
    jalr ra, t9               ;; [ 10] (call! a0-1 a1-0 a2-0 a3-0)
                              ;; [a0: path-control a1: vector a2: float a3: <sym interp> t9: <vmethod (function path-control vector float symbol vector)> ] -> [v0: vector ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 11] (set! v1-4 v0-0) [v0: vector ] -> [v1: vector ]
    lwu v1, 124(s6)           ;; [ 12] (set! v1-5 (l.wu (+ self 124))) [s6: port-turret ] -> [v1: collide-shape ]
    lwc1 f0, 16(v1)           ;; [ 13] (set! f0-0 (l.f (+ v1-5 16))) [v1: collide-shape ] -> []
    lui v1, 18416             ;; [ 14] (set! v1-6 122880.0) [] -> [v1: float ]
    mtc1 f1, v1               ;; [ 15] (set! f1-0 (gpr->fpr v1-6)) [v1: float ] -> []
    lwc1 f2, 572(s6)          ;; [ 16] (set! f2-0 (l.f (+ self 572))) [s6: port-turret ] -> []
    mul.s f1, f1, f2          ;; [ 17] (set! f1-1 (*.s f1-0 f2-0)) [] -> []
    sub.s f0, f0, f1          ;; [ 18] (set! f0-1 (-.s f0-0 f1-1)) [] -> []
    lwu v1, 124(s6)           ;; [ 19] (set! v1-7 (l.wu (+ self 124))) [s6: port-turret ] -> [v1: collide-shape ]
    swc1 f0, 16(v1)           ;; [ 20] (s.f! (+ v1-7 16) f0-1) [v1: collide-shape ] -> []
    lw t9, seek(s7)           ;; [ 21] (set! t9-1 seek) [] -> [t9: (function float float float float) ]
    lwc1 f0, 572(s6)          ;; [ 22] (set! f0-2 (l.f (+ self 572))) [s6: port-turret ] -> []
    mfc1 a0, f0               ;; [ 23] (set! a0-2 (fpr->gpr f0-2)) [] -> [a0: float ]
    addiu a1, r0, 0           ;; [ 24] (set! a1-1 0.0) [] -> [a1: float ]
    lui v1, 15267             ;; [ 25] (set! v1-8 0.005) [] -> [v1: float ]
    ori v1, v1, 55050
    mtc1 f0, v1               ;; [ 26] (set! f0-3 (gpr->fpr v1-8)) [v1: float ] -> []
    lwu v1, 8(s6)             ;; [ 27] (set! v1-9 (l.wu (+ self 8))) [s6: port-turret ] -> [v1: clock ]
    lwc1 f1, 84(v1)           ;; [ 28] (set! f1-2 (l.f (+ v1-9 84))) [v1: clock ] -> []
    mul.s f0, f0, f1          ;; [ 29] (set! f0-4 (*.s f0-3 f1-2)) [] -> []
    mfc1 a2, f0               ;; [ 30] (set! a2-1 (fpr->gpr f0-4)) [] -> [a2: float ]
    jalr ra, t9               ;; [ 31] (call! a0-2 a1-1 a2-1)
                              ;; [a0: float a1: float a2: float t9: (function float float float float) ] -> [v0: float ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [ 32] (set! f0-5 (gpr->fpr v0-1)) [v0: float ] -> []
    swc1 f0, 572(s6)          ;; [ 33] (s.f! (+ self 572) f0-5) [s6: port-turret ] -> []
    lwc1 f0, 572(s6)          ;; [ 34] (set! f0-6 (l.f (+ self 572))) [s6: port-turret ] -> []
    mtc1 f1, r0               ;; [ 35] (set! f1-3 0.0) [] -> []
    c.eq.s f0, f1             ;; [ 36] (b! (!=.s f0-6 f1-3) L33 (set! v1-10 #f)) [] -> [v1: '#f ]
    bc1f L33
    or v1, s7, r0

B2:
    daddiu v1, s7, #t         ;; [ 37] (set! v1-11 #t) [] -> [v1: <sym #t> ]
    sw v1, 424(s6)            ;; [ 38] (s.w! (+ self 424) v1-11) [v1: <sym #t> s6: port-turret ] -> []
B3:
L33:
    beq r0, r0, L51           ;; [ 39] (b! #t L51 (nop!)) [] -> []
    sll r0, r0, 0

B4:
L34:
    lwu v1, 620(s6)           ;; [ 40] (set! v1-12 (l.wu (+ self 620))) [s6: port-turret ] -> [v1: uint ]
    bne v1, r0, L51           ;; [ 41] (b! (nonzero? v1-12) L51 (set! v1-13 #f)) [v1: uint ] -> [v1: '#f ]
    or v1, s7, r0

B5:
    lw t9, seek(s7)           ;; [ 42] (set! t9-2 seek) [] -> [t9: (function float float float float) ]
    lwc1 f0, 428(s6)          ;; [ 43] (set! f0-7 (l.f (+ self 428))) [s6: port-turret ] -> []
    mfc1 a0, f0               ;; [ 44] (set! a0-3 (fpr->gpr f0-7)) [] -> [a0: degrees ]
    lwc1 f0, 592(s6)          ;; [ 45] (set! f0-8 (l.f (+ self 592))) [s6: port-turret ] -> []
    mfc1 a1, f0               ;; [ 46] (set! a1-2 (fpr->gpr f0-8)) [] -> [a1: float ]
    lui v1, 17041             ;; [ 47] (set! v1-14 72.81778) [] -> [v1: float ]
    ori v1, v1, 41652
    mtc1 f0, v1               ;; [ 48] (set! f0-9 (gpr->fpr v1-14)) [v1: float ] -> []
    lwu v1, 8(s6)             ;; [ 49] (set! v1-15 (l.wu (+ self 8))) [s6: port-turret ] -> [v1: clock ]
    lwc1 f1, 84(v1)           ;; [ 50] (set! f1-4 (l.f (+ v1-15 84))) [v1: clock ] -> []
    mul.s f0, f0, f1          ;; [ 51] (set! f0-10 (*.s f0-9 f1-4)) [] -> []
    mfc1 a2, f0               ;; [ 52] (set! a2-2 (fpr->gpr f0-10)) [] -> [a2: float ]
    jalr ra, t9               ;; [ 53] (call! a0-3 (the-as float a1-2) (the-as float a2-2))
                              ;; [a0: degrees a1: float a2: float t9: (function float float float float) ] -> [v0: float ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [ 54] (set! f0-11 (gpr->fpr v0-2)) [v0: float ] -> []
    swc1 f0, 428(s6)          ;; [ 55] (s.f! (+ self 428) f0-11) [s6: port-turret ] -> []
    lw v1, *cpad-list*(s7)    ;; [ 56] (set! v1-16 *cpad-list*) [] -> [v1: cpad-list ]
    lwu v1, 4(v1)             ;; [ 57] (set! v1-17 (l.wu (+ v1-16 4))) [v1: cpad-list ] -> [v1: cpad-info ]
    lwu v1, 56(v1)            ;; [ 58] (set! v1-18 (l.wu (+ v1-17 56))) [v1: cpad-info ] -> [v1: pad-buttons ]
    andi v1, v1, 4096         ;; [ 59] (set! v1-19 (logand v1-18 4096)) [v1: pad-buttons ] -> [v1: pad-buttons ]
    beql v1, r0, L35          ;; [ 60] (bl! (zero? v1-19) L35 (no-delay!)) [v1: pad-buttons ] -> []
B6:
    or v1, s7, r0             ;; [ 61] (set! v1-20 #f) [] -> [v1: '#f ]

B7:
    lw v1, 564(s6)            ;; [ 62] (set! v1-21 (l.w (+ self 564))) [s6: port-turret ] -> [v1: int ]
    daddiu a0, v1, -1         ;; [ 63] (set! a0-4 (+ v1-21 -1)) [v1: int ] -> [a0: <integer -1 + int> ]
    daddiu v1, s7, 4          ;; [ 64] (set! v1-20 (zero? a0-4)) [a0: <integer -1 + int> ] -> [v1: symbol ]
    movn v1, s7, a0
B8:
L35:
    beq s7, v1, L37           ;; [ 65] (b! (not v1-20) L37 (set! v1-22 #f)) [v1: symbol ] -> [v1: '#f ]
    or v1, s7, r0

B9:
    lw a0, *gui-control*(s7)  ;; [ 66] (set! a0-5 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 67] (set! v1-23 (l.wu (+ a0-5 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 80(v1)            ;; [ 68] (set! t9-3 (l.wu (+ v1-23 80)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control gui-action sound-id gui-channel gui-action string (function gui-connection symbol) process int)> ]
    addiu a1, r0, 4           ;; [ 69] (set! a1-3 4) [] -> [a1: <integer 4> ]
    addiu a2, r0, 1           ;; [ 70] (set! a2-2 1) [] -> [a2: <integer 1> ]
    lbu a3, 596(s6)           ;; [ 71] (set! a3-1 (l.bu (+ self 596))) [s6: port-turret ] -> [a3: uint ]
    addiu t0, r0, 0           ;; [ 72] (set! t0-0 0) [] -> [t0: <integer 0> ]
    or t1, s7, r0             ;; [ 73] (set! t1-0 #f) [] -> [t1: '#f ]
    or t2, s7, r0             ;; [ 74] (set! t2-0 #f) [] -> [t2: '#f ]
    or t3, s7, r0             ;; [ 75] (set! t3-0 #f) [] -> [t3: '#f ]
    jalr ra, t9               ;; [ 76] (call! a0-5 a1-3 (the-as int a2-2) a3-1 t0-0 t1-0 t2-0 t3-0)
                              ;; [a0: gui-control a1: <integer 4> a2: <integer 1> a3: uint t0: <integer 0> t1: '#f t2: '#f t3: '#f t9: <vmethod (function gui-control gui-action sound-id gui-channel gui-action string (function gui-connection symbol) process int)> ] -> [v0: int ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 77] (set! v1-24 v0-3) [v0: int ] -> [v1: int ]
    addiu v1, r0, -4097       ;; [ 78] (set! v1-25 -4097) [] -> [v1: <integer -4097> ]
    lw a0, *cpad-list*(s7)    ;; [ 79] (set! a0-6 *cpad-list*) [] -> [a0: cpad-list ]
    lwu a0, 4(a0)             ;; [ 80] (set! a0-7 (l.wu (+ a0-6 4))) [a0: cpad-list ] -> [a0: cpad-info ]
    lwu a0, 40(a0)            ;; [ 81] (set! a0-8 (l.wu (+ a0-7 40))) [a0: cpad-info ] -> [a0: pad-buttons ]
    and v1, v1, a0            ;; [ 82] (set! v1-26 (logand v1-25 a0-8))
                              ;; [v1: <integer -4097> a0: pad-buttons ] -> [v1: pad-buttons ]
    lw a0, *cpad-list*(s7)    ;; [ 83] (set! a0-9 *cpad-list*) [] -> [a0: cpad-list ]
    lwu a0, 4(a0)             ;; [ 84] (set! a0-10 (l.wu (+ a0-9 4))) [a0: cpad-list ] -> [a0: cpad-info ]
    sw v1, 40(a0)             ;; [ 85] (s.w! (+ a0-10 40) v1-26) [v1: pad-buttons a0: cpad-info ] -> []
    addiu v1, r0, -4097       ;; [ 86] (set! v1-27 -4097) [] -> [v1: <integer -4097> ]
    lw a0, *cpad-list*(s7)    ;; [ 87] (set! a0-11 *cpad-list*) [] -> [a0: cpad-list ]
    lwu a0, 4(a0)             ;; [ 88] (set! a0-12 (l.wu (+ a0-11 4))) [a0: cpad-list ] -> [a0: cpad-info ]
    lwu a0, 56(a0)            ;; [ 89] (set! a0-13 (l.wu (+ a0-12 56))) [a0: cpad-info ] -> [a0: pad-buttons ]
    and v1, v1, a0            ;; [ 90] (set! v1-28 (logand v1-27 a0-13))
                              ;; [v1: <integer -4097> a0: pad-buttons ] -> [v1: pad-buttons ]
    lw a0, *cpad-list*(s7)    ;; [ 91] (set! a0-14 *cpad-list*) [] -> [a0: cpad-list ]
    lwu a0, 4(a0)             ;; [ 92] (set! a0-15 (l.wu (+ a0-14 4))) [a0: cpad-list ] -> [a0: cpad-info ]
    sw v1, 56(a0)             ;; [ 93] (s.w! (+ a0-15 56) v1-28) [v1: pad-buttons a0: cpad-info ] -> []
    sw r0, 564(s6)            ;; [ 94] (s.w! (+ self 564) 0) [s6: port-turret ] -> []
    daddiu gp, sp, 16         ;; [ 95] (set! gp-0 (+ sp-0 16)) [sp: <uninitialized> ] -> [gp: event-message-block ]
    or v1, s6, r0             ;; [ 96] (set! v1-29 self) [s6: port-turret ] -> [v1: port-turret ]
    beq s7, v1, L36           ;; [ 97] (b! (not v1-29) L36 (set! a0-16 #f)) [v1: port-turret ] -> [a0: '#f ]
    or a0, s7, r0

B10:
    lwu a0, 24(v1)            ;; [ 98] (set! a0-16 (l.wu (+ v1-29 24))) [v1: port-turret ] -> [a0: (pointer process) ]
B11:
L36:
    sw a0, 8(gp)              ;; [ 99] (s.w! (+ gp-0 8) a0-16) [a0: (pointer process) gp: event-message-block ] -> []
    sw r0, 68(gp)             ;; [100] (s.w! (+ gp-0 68) 0) [gp: event-message-block ] -> []
    daddiu v1, s7, start-shooting;; [101] (set! v1-30 'start-shooting) [] -> [v1: <sym start-shooting> ]
    sw v1, 64(gp)             ;; [102] (s.w! (+ gp-0 64) v1-30) [v1: <sym start-shooting> gp: event-message-block ] -> []
    lw s5, send-event-function(s7);; [103] (set! s5-0 send-event-function)
                              ;; [] -> [s5: (function process-tree event-message-block object) ]
    lw t9, process-by-name(s7);; [104] (set! t9-4 process-by-name) [] -> [t9: (function string process-tree process) ]
    daddiu a0, fp, L171       ;; [105] (set! a0-17 L171) [] -> [a0: <string "port-turret-1"> ] "port-turret-1"
    lw a1, *active-pool*(s7)  ;; [106] (set! a1-4 *active-pool*) [] -> [a1: process-tree ]
    jalr ra, t9               ;; [107] (call! a0-17 a1-4)
                              ;; [a0: <string "port-turret-1"> a1: process-tree t9: (function string process-tree process) ] -> [v0: process ]
    sll v0, ra, 0

    or a0, v0, r0             ;; [108] (set! a0-18 v0-4) [v0: process ] -> [a0: process ]
    or t9, s5, r0             ;; [109] (set! t9-5 s5-0)
                              ;; [s5: (function process-tree event-message-block object) ] -> [t9: (function process-tree event-message-block object) ]
    or a1, gp, r0             ;; [110] (set! a1-2 gp-0) [gp: event-message-block ] -> [a1: event-message-block ]
    jalr ra, t9               ;; [111] (call! a0-18 (the-as event-message-block a1-2))
                              ;; [a0: process a1: event-message-block t9: (function process-tree event-message-block object) ] -> [v0: object ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [112] (set! v1-31 v0-5) [v0: object ] -> [v1: object ]
    lui v1, 16544             ;; [113] (set! v1-32 5.0) [] -> [v1: float ]
    mtc1 f0, v1               ;; [114] (set! f0-12 (gpr->fpr v1-32)) [v1: float ] -> []
    swc1 f0, 576(s6)          ;; [115] (s.f! (+ self 576) f0-12) [s6: port-turret ] -> []
    addiu v1, r0, 6           ;; [116] (set! v1-33 6) [] -> [v1: <integer 6> ]
    sw v1, 608(s6)            ;; [117] (s.w! (+ self 608) v1-33) [v1: <integer 6> s6: port-turret ] -> []
B12:
L37:
    lwu v1, 608(s6)           ;; [118] (set! v1-34 (l.wu (+ self 608))) [s6: port-turret ] -> [v1: uint ]
    addiu a0, r0, 2           ;; [119] (set! a0-19 2) [] -> [a0: <integer 2> ]
    bne v1, a0, L39           ;; [120] (b! (!= v1-34 a0-19) L39 (set! a0-20 #f))
                              ;; [v1: uint a0: <integer 2> ] -> [a0: '#f ]
    or a0, s7, r0

B13:
    addiu v1, r0, 1           ;; [121] (set! v1-35 1) [] -> [v1: <integer 1> ]
    lw a0, 564(s6)            ;; [122] (set! a0-21 (l.w (+ self 564))) [s6: port-turret ] -> [a0: int ]
    bne a0, v1, L38           ;; [123] (b! (!= a0-21 v1-35) L38 (set! v1-36 #f)) [v1: <integer 1> a0: int ] -> [v1: '#f ]
    or v1, s7, r0

B14:
    lw a0, *gui-control*(s7)  ;; [124] (set! a0-22 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [125] (set! v1-37 (l.wu (+ a0-22 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [126] (set! t9-6 (l.wu (+ v1-37 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, s6, r0             ;; [127] (set! a1-5 self) [s6: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(s6)           ;; [128] (set! a2-3 (l.bu (+ self 596))) [s6: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [129] (set! a3-2 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L165       ;; [130] (set! t0-1 L165) [] -> [t0: <string "torn010"> ] "torn010"
    lui t1, -15674            ;; [131] (set! t1-1 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [132] (set! t2-1 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [133] (call! a0-22 a1-5 a2-3 a3-2 t0-1 t1-1 t2-1)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn010"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [134] (set! v1-38 v0-6) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(s6)            ;; [135] (s.w! (+ self 600) v1-38) [v1: sound-id s6: port-turret ] -> []
    addiu v1, r0, 3           ;; [136] (set! v1-39 3) [] -> [v1: <integer 3> ]
    sw v1, 612(s6)            ;; [137] (s.w! (+ self 612) v1-39) [v1: <integer 3> s6: port-turret ] -> []
    addiu v1, r0, 8           ;; [138] (set! v1-40 8) [] -> [v1: <integer 8> ]
    sw v1, 608(s6)            ;; [139] (s.w! (+ self 608) v1-40) [v1: <integer 8> s6: port-turret ] -> []
B15:
L38:
    beq r0, r0, L51           ;; [140] (b! #t L51 (nop!)) [] -> []
    sll r0, r0, 0

B16:
L39:
    addiu a0, r0, 3           ;; [141] (set! a0-23 3) [] -> [a0: <integer 3> ]
    bne v1, a0, L42           ;; [142] (b! (!= v1-34 a0-23) L42 (set! a0-24 #f))
                              ;; [v1: uint a0: <integer 3> ] -> [a0: '#f ]
    or a0, s7, r0

B17:
    lw a0, *gui-control*(s7)  ;; [143] (set! a0-25 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [144] (set! v1-41 (l.wu (+ a0-25 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 84(v1)            ;; [145] (set! t9-7 (l.wu (+ v1-41 84)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control sound-id gui-status)> ]
    lwu a1, 600(s6)           ;; [146] (set! a1-6 (l.wu (+ self 600))) [s6: port-turret ] -> [a1: uint ]
    jalr ra, t9               ;; [147] (call! a0-25 a1-6)
                              ;; [a0: gui-control a1: uint t9: <vmethod (function gui-control sound-id gui-status)> ] -> [v0: gui-status ]
    sll v0, ra, 0

    or a2, v0, r0             ;; [148] (set! a2-4 v0-7) [v0: gui-status ] -> [a2: gui-status ]
    sltiu v1, a2, 3           ;; [149] (b! (>=.ui a2-4 3) L40 (nop!)) [a2: gui-status ] -> []
    beq v1, r0, L40
    sll r0, r0, 0

B18:
    lw t9, format(s7)         ;; [150] (set! t9-8 format) [] -> [t9: (function _varargs_ object) ]
    addiu a0, r0, 0           ;; [151] (set! a0-26 0) [] -> [a0: <integer 0> ]
    daddiu a1, fp, L199       ;; [152] (set! a1-7 L199) [] -> [a1: <string "status ~D~%"> ] "status ~D~%"
    jalr ra, t9               ;; [153] (call! a0-26 a1-7 a2-4)
                              ;; [a0: <integer 0> a1: <string "status ~D~%"> a2: gui-status t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    sw r0, 600(s6)            ;; [154] (s.w! (+ self 600) 0) [s6: port-turret ] -> []
    addiu v1, r0, 4           ;; [155] (set! v1-42 4) [] -> [v1: <integer 4> ]
    sw v1, 608(s6)            ;; [156] (s.w! (+ self 608) v1-42) [v1: <integer 4> s6: port-turret ] -> []
    beq r0, r0, L41           ;; [157] (b! #t L41 (nop!)) [] -> []
    sll r0, r0, 0

B19:
L40:
    lui v1, 18019             ;; [158] (set! v1-43 14563.556) [] -> [v1: float ]
    ori v1, v1, 36409
    mtc1 f0, v1               ;; [159] (set! f0-13 (gpr->fpr v1-43)) [v1: float ] -> []
    swc1 f0, 592(s6)          ;; [160] (s.f! (+ self 592) f0-13) [s6: port-turret ] -> []
    mfc1 v1, f0               ;; [161] (set! v1-44 (fpr->gpr f0-13)) [] -> [v1: float ]
B20:
L41:
    beq r0, r0, L51           ;; [162] (b! #t L51 (nop!)) [] -> []
    sll r0, r0, 0

B21:
L42:
    addiu a0, r0, 4           ;; [163] (set! a0-27 4) [] -> [a0: <integer 4> ]
    bne v1, a0, L43           ;; [164] (b! (!= v1-34 a0-27) L43 (set! a0-28 #f))
                              ;; [v1: uint a0: <integer 4> ] -> [a0: '#f ]
    or a0, s7, r0

B22:
    lw a0, *gui-control*(s7)  ;; [165] (set! a0-29 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [166] (set! v1-45 (l.wu (+ a0-29 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [167] (set! t9-9 (l.wu (+ v1-45 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, s6, r0             ;; [168] (set! a1-8 self) [s6: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(s6)           ;; [169] (set! a2-5 (l.bu (+ self 596))) [s6: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [170] (set! a3-3 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L164       ;; [171] (set! t0-2 L164) [] -> [t0: <string "torn011"> ] "torn011"
    lui t1, -15674            ;; [172] (set! t1-2 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [173] (set! t2-2 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [174] (call! a0-29 a1-8 a2-5 a3-3 t0-2 t1-2 t2-2)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn011"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [175] (set! v1-46 v0-9) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(s6)            ;; [176] (s.w! (+ self 600) v1-46) [v1: sound-id s6: port-turret ] -> []
    addiu v1, r0, 5           ;; [177] (set! v1-47 5) [] -> [v1: <integer 5> ]
    sw v1, 612(s6)            ;; [178] (s.w! (+ self 612) v1-47) [v1: <integer 5> s6: port-turret ] -> []
    addiu v1, r0, 7           ;; [179] (set! v1-48 7) [] -> [v1: <integer 7> ]
    sw v1, 608(s6)            ;; [180] (s.w! (+ self 608) v1-48) [v1: <integer 7> s6: port-turret ] -> []
    beq r0, r0, L51           ;; [181] (b! #t L51 (nop!)) [] -> []
    sll r0, r0, 0

B23:
L43:
    addiu a0, r0, 5           ;; [182] (set! a0-30 5) [] -> [a0: <integer 5> ]
    bne v1, a0, L45           ;; [183] (b! (!= v1-34 a0-30) L45 (set! a0-31 #f))
                              ;; [v1: uint a0: <integer 5> ] -> [a0: '#f ]
    or a0, s7, r0

B24:
    sw r0, 564(s6)            ;; [184] (s.w! (+ self 564) 0) [s6: port-turret ] -> []
    daddiu gp, sp, 16         ;; [185] (set! gp-1 (+ sp-0 16)) [sp: <uninitialized> ] -> [gp: event-message-block ]
    or v1, s6, r0             ;; [186] (set! v1-49 self) [s6: port-turret ] -> [v1: port-turret ]
    beq s7, v1, L44           ;; [187] (b! (not v1-49) L44 (set! a0-32 #f)) [v1: port-turret ] -> [a0: '#f ]
    or a0, s7, r0

B25:
    lwu a0, 24(v1)            ;; [188] (set! a0-32 (l.wu (+ v1-49 24))) [v1: port-turret ] -> [a0: (pointer process) ]
B26:
L44:
    sw a0, 8(gp)              ;; [189] (s.w! (+ gp-1 8) a0-32) [a0: (pointer process) gp: event-message-block ] -> []
    sw r0, 68(gp)             ;; [190] (s.w! (+ gp-1 68) 0) [gp: event-message-block ] -> []
    daddiu v1, s7, start-shooting;; [191] (set! v1-50 'start-shooting) [] -> [v1: <sym start-shooting> ]
    sw v1, 64(gp)             ;; [192] (s.w! (+ gp-1 64) v1-50) [v1: <sym start-shooting> gp: event-message-block ] -> []
    lw s5, send-event-function(s7);; [193] (set! s5-1 send-event-function)
                              ;; [] -> [s5: (function process-tree event-message-block object) ]
    lw t9, process-by-name(s7);; [194] (set! t9-10 process-by-name) [] -> [t9: (function string process-tree process) ]
    daddiu a0, fp, L171       ;; [195] (set! a0-33 L171) [] -> [a0: <string "port-turret-1"> ] "port-turret-1"
    lw a1, *active-pool*(s7)  ;; [196] (set! a1-9 *active-pool*) [] -> [a1: process-tree ]
    jalr ra, t9               ;; [197] (call! a0-33 a1-9)
                              ;; [a0: <string "port-turret-1"> a1: process-tree t9: (function string process-tree process) ] -> [v0: process ]
    sll v0, ra, 0

    or a0, v0, r0             ;; [198] (set! a0-34 v0-10) [v0: process ] -> [a0: process ]
    or t9, s5, r0             ;; [199] (set! t9-11 s5-1)
                              ;; [s5: (function process-tree event-message-block object) ] -> [t9: (function process-tree event-message-block object) ]
    or a1, gp, r0             ;; [200] (set! a1-10 gp-1) [gp: event-message-block ] -> [a1: event-message-block ]
    jalr ra, t9               ;; [201] (call! a0-34 a1-10)
                              ;; [a0: process a1: event-message-block t9: (function process-tree event-message-block object) ] -> [v0: object ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [202] (set! v1-51 v0-11) [v0: object ] -> [v1: object ]
    lui v1, 16544             ;; [203] (set! v1-52 5.0) [] -> [v1: float ]
    mtc1 f0, v1               ;; [204] (set! f0-14 (gpr->fpr v1-52)) [v1: float ] -> []
    swc1 f0, 576(s6)          ;; [205] (s.f! (+ self 576) f0-14) [s6: port-turret ] -> []
    mtc1 f0, r0               ;; [206] (set! f0-15 0.0) [] -> []
    swc1 f0, 592(s6)          ;; [207] (s.f! (+ self 592) f0-15) [s6: port-turret ] -> []
    lw a0, *gui-control*(s7)  ;; [208] (set! a0-35 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [209] (set! v1-53 (l.wu (+ a0-35 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [210] (set! t9-12 (l.wu (+ v1-53 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, s6, r0             ;; [211] (set! a1-11 self) [s6: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(s6)           ;; [212] (set! a2-6 (l.bu (+ self 596))) [s6: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [213] (set! a3-4 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L163       ;; [214] (set! t0-3 L163) [] -> [t0: <string "torn012"> ] "torn012"
    lui t1, -15674            ;; [215] (set! t1-3 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [216] (set! t2-3 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [217] (call! a0-35 a1-11 a2-6 a3-4 t0-3 t1-3 t2-3)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn012"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [218] (set! v1-54 v0-12) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(s6)            ;; [219] (s.w! (+ self 600) v1-54) [v1: sound-id s6: port-turret ] -> []
    addiu v1, r0, 6           ;; [220] (set! v1-55 6) [] -> [v1: <integer 6> ]
    sw v1, 608(s6)            ;; [221] (s.w! (+ self 608) v1-55) [v1: <integer 6> s6: port-turret ] -> []
    beq r0, r0, L51           ;; [222] (b! #t L51 (nop!)) [] -> []
    sll r0, r0, 0

B27:
L45:
    addiu a0, r0, 6           ;; [223] (set! a0-36 6) [] -> [a0: <integer 6> ]
    bne v1, a0, L46           ;; [224] (b! (!= v1-34 a0-36) L46 (set! a0-37 #f))
                              ;; [v1: uint a0: <integer 6> ] -> [a0: '#f ]
    or a0, s7, r0

B28:
    lw t9, manage-torn-turret(s7);; [225] (set! t9-13 manage-torn-turret)
                              ;; [] -> [t9: (function port-turret object float none) ]
    or a0, s6, r0             ;; [226] (set! a0-38 self) [s6: port-turret ] -> [a0: port-turret ]
    jalr ra, t9               ;; [227] (call! a0-38 (the-as none a1-2) (the-as none a2-2))
                              ;; [a0: port-turret a1: <uninitialized> a2: <uninitialized> t9: (function port-turret object float none) ] -> [v0: none ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [228] (set! v1-56 v0-13) [v0: none ] -> [v1: none ]
    beq r0, r0, L51           ;; [229] (b! #t L51 (nop!)) [] -> []
    sll r0, r0, 0

B29:
L46:
    addiu a0, r0, 8           ;; [230] (set! a0-39 8) [] -> [a0: <integer 8> ]
    bne v1, a0, L48           ;; [231] (b! (!= v1-34 a0-39) L48 (set! a0-40 #f))
                              ;; [v1: uint a0: <integer 8> ] -> [a0: '#f ]
    or a0, s7, r0

B30:
    lw a0, *gui-control*(s7)  ;; [232] (set! a0-41 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [233] (set! v1-57 (l.wu (+ a0-41 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 84(v1)            ;; [234] (set! t9-14 (l.wu (+ v1-57 84)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control sound-id gui-status)> ]
    lwu a1, 600(s6)           ;; [235] (set! a1-12 (l.wu (+ self 600))) [s6: port-turret ] -> [a1: uint ]
    jalr ra, t9               ;; [236] (call! a0-41 a1-12)
                              ;; [a0: gui-control a1: uint t9: <vmethod (function gui-control sound-id gui-status)> ] -> [v0: gui-status ]
    sll v0, ra, 0

    or a2, v0, r0             ;; [237] (set! a2-7 v0-14) [v0: gui-status ] -> [a2: gui-status ]
    addiu v1, r0, 3           ;; [238] (set! v1-58 3) [] -> [v1: <integer 3> ]
    bne a2, v1, L47           ;; [239] (b! (!= a2-7 v1-58) L47 (set! v1-59 #f))
                              ;; [v1: <integer 3> a2: gui-status ] -> [v1: '#f ]
    or v1, s7, r0

B31:
    lw t9, format(s7)         ;; [240] (set! t9-15 format) [] -> [t9: (function _varargs_ object) ]
    addiu a0, r0, 0           ;; [241] (set! a0-42 0) [] -> [a0: <integer 0> ]
    daddiu a1, fp, L199       ;; [242] (set! a1-13 L199) [] -> [a1: <string "status ~D~%"> ] "status ~D~%"
    jalr ra, t9               ;; [243] (call! a0-42 a1-13 a2-7)
                              ;; [a0: <integer 0> a1: <string "status ~D~%"> a2: gui-status t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lwu v1, 612(s6)           ;; [244] (set! v1-60 (l.wu (+ self 612))) [s6: port-turret ] -> [v1: uint ]
    sw v1, 608(s6)            ;; [245] (s.w! (+ self 608) v1-60) [v1: uint s6: port-turret ] -> []
    addiu v1, r0, 1           ;; [246] (set! v1-61 1) [] -> [v1: <integer 1> ]
    sw v1, 612(s6)            ;; [247] (s.w! (+ self 612) v1-61) [v1: <integer 1> s6: port-turret ] -> []
B32:
L47:
    beq r0, r0, L51           ;; [248] (b! #t L51 (nop!)) [] -> []
    sll r0, r0, 0

B33:
L48:
    addiu a0, r0, 7           ;; [249] (set! a0-43 7) [] -> [a0: <integer 7> ]
    bne v1, a0, L50           ;; [250] (b! (!= v1-34 a0-43) L50 (set! a0-44 #f))
                              ;; [v1: uint a0: <integer 7> ] -> [a0: '#f ]
    or a0, s7, r0

B34:
    lw a0, *gui-control*(s7)  ;; [251] (set! a0-45 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [252] (set! v1-62 (l.wu (+ a0-45 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 84(v1)            ;; [253] (set! t9-16 (l.wu (+ v1-62 84)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control sound-id gui-status)> ]
    lwu a1, 600(s6)           ;; [254] (set! a1-14 (l.wu (+ self 600))) [s6: port-turret ] -> [a1: uint ]
    jalr ra, t9               ;; [255] (call! a0-45 a1-14)
                              ;; [a0: gui-control a1: uint t9: <vmethod (function gui-control sound-id gui-status)> ] -> [v0: gui-status ]
    sll v0, ra, 0

    or a2, v0, r0             ;; [256] (set! a2-8 v0-16) [v0: gui-status ] -> [a2: gui-status ]
    bne a2, r0, L49           ;; [257] (b! (nonzero? a2-8) L49 (set! v1-63 #f)) [a2: gui-status ] -> [v1: '#f ]
    or v1, s7, r0

B35:
    lw t9, format(s7)         ;; [258] (set! t9-17 format) [] -> [t9: (function _varargs_ object) ]
    addiu a0, r0, 0           ;; [259] (set! a0-46 0) [] -> [a0: <integer 0> ]
    daddiu a1, fp, L199       ;; [260] (set! a1-15 L199) [] -> [a1: <string "status ~D~%"> ] "status ~D~%"
    jalr ra, t9               ;; [261] (call! a0-46 a1-15 a2-8)
                              ;; [a0: <integer 0> a1: <string "status ~D~%"> a2: gui-status t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lwu v1, 612(s6)           ;; [262] (set! v1-64 (l.wu (+ self 612))) [s6: port-turret ] -> [v1: uint ]
    sw v1, 608(s6)            ;; [263] (s.w! (+ self 608) v1-64) [v1: uint s6: port-turret ] -> []
    addiu v1, r0, 1           ;; [264] (set! v1-65 1) [] -> [v1: <integer 1> ]
    sw v1, 612(s6)            ;; [265] (s.w! (+ self 612) v1-65) [v1: <integer 1> s6: port-turret ] -> []
B36:
L49:
    beq r0, r0, L51           ;; [266] (b! #t L51 (nop!)) [] -> []
    sll r0, r0, 0

B37:
L50:
    addiu a0, r0, 1           ;; [267] (set! a0-47 1) [] -> [a0: <integer 1> ]
    bne v1, a0, L51           ;; [268] (b! (!= v1-34 a0-47) L51 (set! v1-66 #f))
                              ;; [v1: uint a0: <integer 1> ] -> [v1: '#f ]
    or v1, s7, r0

B38:
    lw t9, format(s7)         ;; [269] (set! t9-18 format) [] -> [t9: (function _varargs_ object) ]
    addiu a0, r0, 0           ;; [270] (set! a0-48 0) [] -> [a0: <integer 0> ]
    daddiu a1, fp, L162       ;; [271] (set! a1-16 L162) [] -> [a1: <string "~A invalid-state~%"> ] "~A invalid-state~%"
    lwu a2, 0(s6)             ;; [272] (set! a2-9 (l.wu self)) [s6: port-turret ] -> [a2: string ]
    jalr ra, t9               ;; [273] (call! a0-48 a1-16 a2-9)
                              ;; [a0: <integer 0> a1: <string "~A invalid-state~%"> a2: string t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [274] (set! v1-67 v0-18) [v0: object ] -> [v1: object ]
B39:
L51:
    lw v1, base-turret(s7)    ;; [275] (set! v1-68 base-turret) [] -> [v1: <the etype base-turret> ]
    lwu v1, 124(v1)           ;; [276] (set! v1-69 (l.wu (+ v1-68 124)))
                              ;; [v1: <the etype base-turret> ] -> [v1: <method (state base-turret)> ]
    lwu t9, 16(v1)            ;; [277] (set! t9-19 (l.wu (+ v1-69 16)))
                              ;; [v1: <method (state base-turret)> ] -> [t9: (function object) ]
    beq s7, t9, L52           ;; [278] (b! (not t9-19) L52 (set! v0-19 #f)) [t9: (function object) ] -> [v0: '#f ]
    or v0, s7, r0

B40:
    jalr ra, t9               ;; [279] (call!)     [t9: (function object) ] -> [v0: object ]
    sll v0, ra, 0

B41:
L52:
    ld ra, 0(sp)
    ld fp, 8(sp)
    lq gp, 112(sp)
    lq s5, 96(sp)
    jr ra
    daddiu sp, sp, 128

    sll r0, r0, 0
    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(state-handler
  (trans idle port-turret)
  ()
  (cond
    ((= (-> self who-am-i) 1)
     (get-point-at-percent-along-path! (-> self path) (-> self root trans) 0.0 'interp)
     (set! (-> self root trans y) (- (-> self root trans y) (* 122880.0 (-> self sink-interp))))
     (seek! (-> self sink-interp) 0.0 (* 0.005 (-> self clock time-adjust-ratio)))
     (if (= (-> self sink-interp) 0.0)
         (set! (-> self available-for-pickup) (the-as basic #t))
         )
     )
    ((zero? (-> self who-am-i))
     (let ((t9-2 seek)
           (a0-3 (-> self roty))
           (a1-2 (the-as object (-> self target-y)))
           (a2-2 (the-as number (* 72.81778 (-> self clock time-adjust-ratio))))
           )
       (set! (-> self roty) (t9-2 a0-3 (the-as float a1-2) (the-as float a2-2)))
       (when (and (cpad-pressed? 0 triangle) (= (-> self ships-launched) 1))
         (let* ((a0-5 *gui-control*)
                (t9-3 (method-of-object a0-5 set-action!))
                (a1-3 4)
                )
           (set! a2-2 1)
           (t9-3
             a0-5
             (the-as gui-action a1-3)
             (the-as sound-id a2-2)
             (the-as gui-channel (-> self channel))
             (gui-action none)
             (the-as string #f)
             (the-as (function gui-connection symbol) #f)
             (the-as process #f)
             )
           )
         (logclear! (-> *cpad-list* cpads 0 button0-abs 0) (pad-buttons triangle))
         (logclear! (-> *cpad-list* cpads 0 button0-rel 0) (pad-buttons triangle))
         (set! (-> self ships-launched) 0)
         (let ((gp-0 (new 'stack-no-clear 'event-message-block)))
           (set! (-> gp-0 from) (process->ppointer self))
           (set! (-> gp-0 num-params) 0)
           (set! (-> gp-0 message) 'start-shooting)
           (set! a1-2 gp-0)
           )
         (send-event-function (process-by-name "port-turret-1" *active-pool*) (the-as event-message-block a1-2))
         (set! (-> self num-shots-available) 5.0)
         (set! (-> self turret-state) (the-as uint 6))
         )
       (case (-> self turret-state)
         ((2)
          (when (= (-> self ships-launched) 1)
            (set! (-> self id)
                  (the-as
                    uint
                    (add-process *gui-control* self (the-as gui-channel (-> self channel)) (gui-action play) "torn010" -99.0 0)
                    )
                  )
            (set! (-> self next-turret-state) (the-as uint 3))
            (set! (-> self turret-state) (the-as uint 8))
            )
          )
         ((3)
          (let ((a2-4 (get-status *gui-control* (the-as sound-id (-> self id)))))
            (cond
              ((< (the-as uint a2-4) (the-as uint 3))
               (format 0 "status ~D~%" a2-4)
               (set! (-> self id) (the-as uint 0))
               (set! (-> self turret-state) (the-as uint 4))
               )
              (else
                (set! (-> self target-y) 14563.556)
                )
              )
            )
          )
         ((4)
          (set! (-> self id)
                (the-as
                  uint
                  (add-process *gui-control* self (the-as gui-channel (-> self channel)) (gui-action play) "torn011" -99.0 0)
                  )
                )
          (set! (-> self next-turret-state) (the-as uint 5))
          (set! (-> self turret-state) (the-as uint 7))
          )
         ((5)
          (set! (-> self ships-launched) 0)
          (send-event (process-by-name "port-turret-1" *active-pool*) 'start-shooting)
          (set! (-> self num-shots-available) 5.0)
          (set! (-> self target-y) 0.0)
          (set! (-> self id)
                (the-as
                  uint
                  (add-process *gui-control* self (the-as gui-channel (-> self channel)) (gui-action play) "torn012" -99.0 0)
                  )
                )
          (set! (-> self turret-state) (the-as uint 6))
          )
         ((6)
          (manage-torn-turret self (the-as none a1-2) (the-as float a2-2))
          )
         ((8)
          (let ((a2-7 (get-status *gui-control* (the-as sound-id (-> self id)))))
            (when (= a2-7 (gui-status active))
              (format 0 "status ~D~%" a2-7)
              (set! (-> self turret-state) (-> self next-turret-state))
              (set! (-> self next-turret-state) (the-as uint 1))
              )
            )
          )
         ((7)
          (let ((a2-8 (get-status *gui-control* (the-as sound-id (-> self id)))))
            (when (= a2-8 (gui-status unknown))
              (format 0 "status ~D~%" a2-8)
              (set! (-> self turret-state) (-> self next-turret-state))
              (set! (-> self next-turret-state) (the-as uint 1))
              )
            )
          )
         ((1)
          (format 0 "~A invalid-state~%" (-> self name))
          )
         )
       )
     )
    )
  (let ((t9-19 (-> (method-of-type base-turret idle) trans)))
    (if t9-19
        (t9-19)
        )
    )
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    (b0
      (seq
        (cond
          (b1
            b2
            )
          )
        b3
        )
      )
    (b4
      (seq
        (cond
          ((seq (sc (b5 b6) b7) b8)
           (seq
             (cond
               (b9
                 b10
                 )
               )
             b11
             )
           )
          )
        (cond
          (b12
            (seq
              (cond
                (b13
                  b14
                  )
                )
              b15
              )
            )
          (b16
            (seq
              (cond
                (b17
                  b18
                  )
                (else
                  b19
                  )
                )
              b20
              )
            )
          (b21
            b22
            )
          (b23
            (seq
              (cond
                (b24
                  b25
                  )
                )
              b26
              )
            )
          (b27
            b28
            )
          (b29
            (seq
              (cond
                (b30
                  b31
                  )
                )
              b32
              )
            )
          (b33
            (seq
              (cond
                (b34
                  b35
                  )
                )
              b36
              )
            )
          (b37
            b38
            )
          )
        )
      )
    )
  (cond
    (b39
      b40
      )
    )
  b41
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function manage-torn-turret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x30, fp? 0 ra? 1 ep? 1
  ;stack_vars: 8 bytes at 8
  ;gprs: gp s5
L53:
    daddiu sp, sp, -48
    sd ra, 0(sp)
    sq s5, 16(sp)
    sq gp, 32(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! arg0 arg0) [a0: port-turret ] -> [gp: port-turret ]
    mtc1 f0, r0               ;; [  1] (set! f0-0 0.0) [] -> []
    lwc1 f1, 576(gp)          ;; [  2] (set! f1-0 (l.f (+ arg0 576))) [gp: port-turret ] -> []
    c.lt.s f0, f1             ;; [  3] (b! (<.s f0-0 f1-0) L54 (set! v1-0 #t)) [] -> [v1: symbol ]
    bc1t L54
    daddiu v1, s7, 4

B1:
    or v1, s7, r0             ;; [  4] (set! v1-0 #f) [] -> [v1: '#f ]
B2:
L54:
    beql s7, v1, L55          ;; [  5] (bl! (not v1-0) L55 (no-delay!)) [v1: symbol ] -> []
B3:
    or v1, v1, r0             ;; [  6] (set! v1-1 v1-0) [v1: symbol ] -> [v1: symbol ]

B4:
    lwc1 f0, 428(gp)          ;; [  7] (set! f0-1 (l.f (+ arg0 428))) [gp: port-turret ] -> []
    lui v1, 17706             ;; [  8] (set! v1-2 2730.6667) [] -> [v1: float ]
    ori v1, v1, 43691
    mtc1 f1, v1               ;; [  9] (set! f1-1 (gpr->fpr v1-2)) [v1: float ] -> []
    c.lt.s f0, f1             ;; [ 10] (b! (<.s f0-1 f1-1) L55 (set! v1-1 #t)) [] -> [v1: symbol ]
    bc1t L55
    daddiu v1, s7, 4

B5:
    or v1, s7, r0             ;; [ 11] (set! v1-1 #f) [] -> [v1: '#f ]
B6:
L55:
    beq s7, v1, L56           ;; [ 12] (b! (not v1-1) L56 (set! v1-3 #f)) [v1: symbol ] -> [v1: '#f ]
    or v1, s7, r0

B7:
    lw t9, seek(s7)           ;; [ 13] (set! t9-0 seek) [] -> [t9: (function float float float float) ]
    lwc1 f0, 448(gp)          ;; [ 14] (set! f0-2 (l.f (+ arg0 448))) [gp: port-turret ] -> []
    mfc1 a0, f0               ;; [ 15] (set! a0-1 (fpr->gpr f0-2)) [] -> [a0: degrees ]
    lui v1, 17635             ;; [ 16] (set! a1-1 1820.4445) [] -> [a1: float ]
    ori a1, v1, 36409
    lui v1, 16745             ;; [ 17] (set! v1-4 14.563555) [] -> [v1: float ]
    ori v1, v1, 1106
    mtc1 f0, v1               ;; [ 18] (set! f0-3 (gpr->fpr v1-4)) [v1: float ] -> []
    lwu v1, 8(s6)             ;; [ 19] (set! v1-5 (l.wu (+ pp 8))) [s6: process ] -> [v1: clock ]
    lwc1 f1, 84(v1)           ;; [ 20] (set! f1-2 (l.f (+ v1-5 84))) [v1: clock ] -> []
    mul.s f0, f0, f1          ;; [ 21] (set! f0-4 (*.s f0-3 f1-2)) [] -> []
    mfc1 a2, f0               ;; [ 22] (set! arg2 (fpr->gpr f0-4)) [] -> [a2: float ]
    jalr ra, t9               ;; [ 23] (call! a0-1 a1-1 arg2)
                              ;; [a0: degrees a1: float a2: float t9: (function float float float float) ] -> [v0: float ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [ 24] (set! f0-5 (gpr->fpr v0-0)) [v0: float ] -> []
    swc1 f0, 448(gp)          ;; [ 25] (s.f! (+ arg0 448) f0-5) [gp: port-turret ] -> []
    mfc1 v1, f0               ;; [ 26] (set! v1-6 (fpr->gpr f0-5)) [] -> [v1: float ]
B8:
L56:
    lwc1 f0, 428(gp)          ;; [ 27] (set! f0-6 (l.f (+ arg0 428))) [gp: port-turret ] -> []
    lwc1 f1, 592(gp)          ;; [ 28] (set! f1-3 (l.f (+ arg0 592))) [gp: port-turret ] -> []
    c.eq.s f0, f1             ;; [ 29] (b! (=.s f0-6 f1-3) L57 (set! v1-7 #t)) [] -> [v1: symbol ]
    bc1t L57
    daddiu v1, s7, 4

B9:
    or v1, s7, r0             ;; [ 30] (set! v1-7 #f) [] -> [v1: '#f ]
B10:
L57:
    beql s7, v1, L58          ;; [ 31] (bl! (not v1-7) L58 (no-delay!)) [v1: symbol ] -> []
B11:
    or v1, v1, r0             ;; [ 32] (set! v1-8 v1-7) [v1: symbol ] -> [v1: symbol ]

B12:
    lwu v1, 8(s6)             ;; [ 33] (set! v1-9 (l.wu (+ pp 8))) [s6: process ] -> [v1: clock ]
    ld v1, 20(v1)             ;; [ 34] (set! v1-10 (l.d (+ v1-9 20))) [v1: clock ] -> [v1: time-frame ]
    daddiu v1, v1, -300       ;; [ 35] (set! v1-11 (+ v1-10 -300))
                              ;; [v1: time-frame ] -> [v1: <integer -300 + time-frame> ]
    ld a0, 396(gp)            ;; [ 36] (set! a0-2 (l.d (+ arg0 396))) [gp: port-turret ] -> [a0: time-frame ]
    slt a0, v1, a0            ;; [ 37] (set! v1-8 (>=.si v1-11 a0-2))
                              ;; [v1: <integer -300 + time-frame> a0: time-frame ] -> [v1: symbol ]
    daddiu v1, s7, 4
    movn v1, s7, a0
B13:
L58:
    beq s7, v1, L59           ;; [ 38] (b! (not v1-8) L59 (set! v0-1 #f)) [v1: symbol ] -> [v0: '#f ]
    or v0, s7, r0

B14:
    lwu v1, 8(s6)             ;; [ 39] (set! v1-12 (l.wu (+ pp 8))) [s6: process ] -> [v1: clock ]
    ld s5, 20(v1)             ;; [ 40] (set! s5-0 (l.d (+ v1-12 20))) [v1: clock ] -> [s5: time-frame ]
    lw t9, rand-vu-int-range(s7);; [ 41] (set! t9-1 rand-vu-int-range) [] -> [t9: (function int int int) ]
    addiu a0, r0, 0           ;; [ 42] (set! a0-3 0) [] -> [a0: <integer 0> ]
    addiu a1, r0, 600         ;; [ 43] (set! a1-2 600) [] -> [a1: <integer 600> ]
    jalr ra, t9               ;; [ 44] (call! a0-3 a1-2)
                              ;; [a0: <integer 0> a1: <integer 600> t9: (function int int int) ] -> [v0: int ]
    sll v0, ra, 0

    daddu v1, s5, v0          ;; [ 45] (set! v1-13 (+ s5-0 v0-2)) [v0: int s5: time-frame ] -> [v1: time-frame ]
    sd v1, 396(gp)            ;; [ 46] (s.d! (+ arg0 396) v1-13) [v1: time-frame gp: port-turret ] -> []
    lw t9, rand-vu-float-range(s7);; [ 47] (set! t9-2 rand-vu-float-range) [] -> [t9: (function float float float) ]
    lui v1, -14962            ;; [ 48] (set! a0-4 -4551.1113) [] -> [a0: float ]
    ori a0, v1, 14564
    addiu a1, r0, 0           ;; [ 49] (set! a1-3 0.0) [] -> [a1: float ]
    jalr ra, t9               ;; [ 50] (call! a0-4 a1-3)
                              ;; [a0: float a1: float t9: (function float float float) ] -> [v0: float ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [ 51] (set! f0-7 (gpr->fpr v0-3)) [v0: float ] -> []
    swc1 f0, 592(gp)          ;; [ 52] (s.f! (+ arg0 592) f0-7) [gp: port-turret ] -> []
    lwu v1, -4(gp)            ;; [ 53] (set! v1-14 (l.wu (+ arg0 -4)))
                              ;; [gp: port-turret ] -> [v1: <the type port-turret> ]
    lwu t9, 188(v1)           ;; [ 54] (set! t9-3 (l.wu (+ v1-14 188)))
                              ;; [v1: <the type port-turret> ] -> [t9: <vmethod (function port-turret vector vector none)> ]
    or a0, gp, r0             ;; [ 55] (set! a0-5 arg0) [gp: port-turret ] -> [a0: port-turret ]
    jalr ra, t9               ;; [ 56] (call! a0-5 (the-as none a1-3) (the-as none arg2))
                              ;; [a0: port-turret a1: <uninitialized> a2: <uninitialized> t9: <vmethod (function port-turret vector vector none)> ] -> [v0: none ]
    sll v0, ra, 0

B15:
L59:
    ld ra, 0(sp)
    lq gp, 32(sp)
    lq s5, 16(sp)
    jr ra
    daddiu sp, sp, 48

    sll r0, r0, 0
    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(defun manage-torn-turret ((arg0 port-turret) (arg1 object) (arg2 float))
  (with-pp
    (when (and (< 0.0 (-> arg0 num-shots-available)) (< (-> arg0 roty) 2730.6667))
      (let ((t9-0 seek)
            (a0-1 (-> arg0 rotx))
            (a1-1 1820.4445)
            )
        (set! arg2 (* 14.563555 (-> pp clock time-adjust-ratio)))
        (set! (-> arg0 rotx) (t9-0 a0-1 a1-1 arg2))
        )
      )
    (when (and (= (-> arg0 roty) (-> arg0 target-y)) (>= (+ (current-time) (seconds -1)) (-> arg0 shot-timeout)))
      (set! (-> arg0 shot-timeout) (+ (current-time) (rand-vu-int-range 0 (seconds 2))))
      (let ((t9-2 rand-vu-float-range)
            (a0-4 -4551.1113)
            (a1-3 0.0)
            )
        (set! (-> arg0 target-y) (t9-2 a0-4 a1-3))
        (base-turret-method-44 arg0 (the-as vector a1-3) (the-as vector arg2))
        )
      )
    (none)
    )
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    ((seq
       (sc
         ((seq
            (cond
              (b0
                b1
                )
              )
            b2
            )
          b3
          )
         (cond
           (b4
             b5
             )
           )
         )
       b6
       )
     b7
     )
    )
  (cond
    ((seq
       (cond
         (b8
           b9
           )
         )
       (sc (b10 b11) b12)
       b13
       )
     b14
     )
    )
  b15
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (method 46 port-turret)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x20, fp? 0 ra? 1 ep? 1
  ;stack_vars: 8 bytes at 8
  ;gprs: gp
;; Warnings:
;; ERROR: failed type prop at 28: Could not figure out load: (set! a2 (l.d (+ t0 16)))
;; WARN: Return type mismatch number vs none.
;; ERROR: Function may read a register that is not set: a3
;; ERROR: Function may read a register that is not set: t0

L60:
    daddiu sp, sp, -32
    sd ra, 0(sp)
    sq gp, 16(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! a0-0 a0-0) [a0: port-turret ] -> [gp: port-turret ]
    or v1, a3, r0             ;; [  1] (set! v1-0 a3-0) [a3: <uninitialized> ] -> [v1: <uninitialized> ]
    daddiu a0, s7, start-talking;; [  2] (set! a0-1 'start-talking) [] -> [a0: <sym start-talking> ]
    bne v1, a0, L61           ;; [  3] (b! (!= v1-0 a0-1) L61 (nop!))
                              ;; [v1: <uninitialized> a0: <sym start-talking> ] -> []
    sll r0, r0, 0

B1:
    addiu v1, r0, 1           ;; [  4] (set! v1-1 1) [] -> [v1: <integer 1> ]
    sw v1, 564(gp)            ;; [  5] (s.w! (+ a0-0 564) v1-1) [v1: <integer 1> gp: port-turret ] -> []
    lwu v1, 8(s6)             ;; [  6] (set! v1-2 (l.wu (+ s6-0 8))) [s6: process ] -> [v1: clock ]
    ld v0, 20(v1)             ;; [  7] (set! v0-0 (l.d (+ v1-2 20))) [v1: clock ] -> [v0: time-frame ]
    sd v0, 188(gp)            ;; [  8] (s.d! (+ a0-0 188) v0-0) [v0: time-frame gp: port-turret ] -> []
    beq r0, r0, L67           ;; [  9] (b! #t L67 (nop!)) [] -> []
    sll r0, r0, 0

B2:
L61:
    daddiu a0, s7, start-shooting;; [ 10] (set! a0-2 'start-shooting) [] -> [a0: <sym start-shooting> ]
    bne v1, a0, L62           ;; [ 11] (b! (!= v1-0 a0-2) L62 (nop!))
                              ;; [v1: <uninitialized> a0: <sym start-shooting> ] -> []
    sll r0, r0, 0

B3:
    daddiu v1, s7, #t         ;; [ 12] (set! v1-3 #t) [] -> [v1: <sym #t> ]
    sw v1, 420(gp)            ;; [ 13] (s.w! (+ a0-0 420) v1-3) [v1: <sym #t> gp: port-turret ] -> []
    lui v1, -14592            ;; [ 14] (set! v1-4 -956301312) [] -> [v1: <integer -956301312> ]
    mtc1 f0, v1               ;; [ 15] (set! f0-0 (gpr->fpr v1-4)) [v1: <integer -956301312> ] -> []
    swc1 f0, 440(gp)          ;; [ 16] (s.f! (+ a0-0 440) f0-0) [gp: port-turret ] -> []
    lui v1, 17991             ;; [ 17] (set! v1-5 #x46471c72) [] -> [v1: <integer 1179065458> ]
    ori v1, v1, 7282
    mtc1 f0, v1               ;; [ 18] (set! f0-1 (gpr->fpr v1-5)) [v1: <integer 1179065458> ] -> []
    swc1 f0, 444(gp)          ;; [ 19] (s.f! (+ a0-0 444) f0-1) [gp: port-turret ] -> []
    mfc1 v0, f0               ;; [ 20] (set! v0-1 (fpr->gpr f0-1)) [] -> [v0: float ]
    beq r0, r0, L67           ;; [ 21] (b! #t L67 (nop!)) [] -> []
    sll r0, r0, 0

B4:
L62:
    daddiu a0, s7, boom       ;; [ 22] (set! a0-3 'boom) [] -> [a0: <sym boom> ]
    bne v1, a0, L63           ;; [ 23] (b! (!= v1-0 a0-3) L63 (nop!)) [v1: <uninitialized> a0: <sym boom> ] -> []
    sll r0, r0, 0

B5:
    lw t9, seek(s7)           ;; [ 24] (set! t9-0 seek) [] -> [t9: (function float float float float) ]
    lwc1 f0, 508(gp)          ;; [ 25] (set! f0-2 (l.f (+ a0-0 508))) [gp: port-turret ] -> []
    mfc1 a0, f0               ;; [ 26] (set! a0-4 (fpr->gpr f0-2)) [] -> [a0: float ]
    addiu a1, r0, 0           ;; [ 27] (set! a1-0 0) [] -> [a1: <integer 0> ]
    ld a2, 16(t0)             ;; [ 28] (set! a2-0 (l.d (+ t0-0 16))) [t0: <uninitialized> ] -> [a2: <uninitialized> ]
    jalr ra, t9               ;; [ 29] (call!)     [t9: (function float float float float) ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [ 30] (set! f0-3 (gpr->fpr v0-2)) [v0: <uninitialized> ] -> []
    swc1 f0, 508(gp)          ;; [ 31] (s.f! (+ a0-0 508) f0-3) [gp: port-turret ] -> []
    daddiu a0, gp, 244        ;; [ 32] (set! a0-5 (+ a0-0 244)) [gp: port-turret ] -> [a0: <uninitialized> ]
    lw v1, smush-control(s7)  ;; [ 33] (set! v1-6 smush-control) [] -> [v1: <uninitialized> ]
    lwu t9, 64(v1)            ;; [ 34] (set! t9-1 (l.wu (+ v1-6 64))) [v1: <uninitialized> ] -> [t9: <uninitialized> ]
    lui v1, 15948             ;; [ 35] (set! a1-1 #x3e4ccccd) [] -> [a1: <uninitialized> ]
    ori a1, v1, 52429
    addiu a2, r0, 30          ;; [ 36] (set! a2-1 30) [] -> [a2: <uninitialized> ]
    addiu a3, r0, 240         ;; [ 37] (set! a3-1 240) [] -> [a3: <uninitialized> ]
    lui v1, 16204             ;; [ 38] (set! t0-1 #x3f4ccccd) [] -> [t0: <uninitialized> ]
    ori t0, v1, 52429
    lui v1, 16204             ;; [ 39] (set! t1-0 #x3f4ccccd) [] -> [t1: <uninitialized> ]
    ori t1, v1, 52429
    lw v1, *display*(s7)      ;; [ 40] (set! v1-7 *display*) [] -> [v1: <uninitialized> ]
    lwu t2, 64(v1)            ;; [ 41] (set! t2-0 (l.wu (+ v1-7 64))) [v1: <uninitialized> ] -> [t2: <uninitialized> ]
    jalr ra, t9               ;; [ 42] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 43] (set! v1-8 v0-3) [v0: <uninitialized> ] -> [v1: <uninitialized> ]
    lw t9, cpad-set-buzz!(s7) ;; [ 44] (set! t9-2 cpad-set-buzz!) [] -> [t9: <uninitialized> ]
    lw v1, *cpad-list*(s7)    ;; [ 45] (set! v1-9 *cpad-list*) [] -> [v1: <uninitialized> ]
    lwu a0, 4(v1)             ;; [ 46] (set! a0-6 (l.wu (+ v1-9 4))) [v1: <uninitialized> ] -> [a0: <uninitialized> ]
    addiu a1, r0, 1           ;; [ 47] (set! a1-2 1) [] -> [a1: <uninitialized> ]
    addiu a2, r0, 255         ;; [ 48] (set! a2-2 255) [] -> [a2: <uninitialized> ]
    addiu a3, r0, 150         ;; [ 49] (set! a3-2 150) [] -> [a3: <uninitialized> ]
    jalr ra, t9               ;; [ 50] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    beq r0, r0, L67           ;; [ 51] (b! #t L67 (nop!)) [] -> []
    sll r0, r0, 0

B6:
L63:
    daddiu a0, s7, exit       ;; [ 52] (set! a0-7 'exit) [] -> [a0: <uninitialized> ]
    bne v1, a0, L66           ;; [ 53] (b! (!= v1-0 a0-7) L66 (nop!)) [v1: <uninitialized> a0: <uninitialized> ] -> []
    sll r0, r0, 0

B7:
    lwc1 f0, 320(gp)          ;; [ 54] (set! f0-4 (l.f (+ a0-0 320))) [gp: <uninitialized> ] -> []
    mtc1 f1, r0               ;; [ 55] (set! f1-0 0) [] -> []
    c.eq.s f0, f1             ;; [ 56] (b! (!=.s f0-4 f1-0) L64 (nop!)) [] -> []
    bc1f L64
    sll r0, r0, 0

B8:
    daddiu v0, s7, #t         ;; [ 57] (set! v0-5 #t) [] -> [v0: <uninitialized> ]
    beq r0, r0, L65           ;; [ 58] (b! #t L65 (nop!)) [] -> []
    sll r0, r0, 0

B9:
L64:
    or v0, s7, r0             ;; [ 59] (set! v0-6 #f) [] -> [v0: <uninitialized> ]
B10:
L65:
    beq r0, r0, L67           ;; [ 60] (b! #t L67 (nop!)) [] -> []
    sll r0, r0, 0

B11:
L66:
    lw v1, base-turret(s7)    ;; [ 61] (set! v1-10 base-turret) [] -> [v1: <uninitialized> ]
    lwu t9, 200(v1)           ;; [ 62] (set! t9-3 (l.wu (+ v1-10 200))) [v1: <uninitialized> ] -> [t9: <uninitialized> ]
    or a0, gp, r0             ;; [ 63] (set! a0-8 a0-0) [gp: <uninitialized> ] -> [a0: <uninitialized> ]
    jalr ra, t9               ;; [ 64] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

B12:
L67:
    ld ra, 0(sp)
    lq gp, 16(sp)
    jr ra
    daddiu sp, sp, 32

    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(defmethod base-turret-method-47 ((a0-0 port-turret))
  (local-vars
    (v0-0 time-frame)
    (v0-2 none)
    (v0-3 none)
    (v0-4 none)
    (v0-5 none)
    (v0-7 none)
    (v1-0 none)
    (v1-1 int)
    (v1-2 clock)
    (v1-3 symbol)
    (v1-4 int)
    (v1-5 int)
    (v1-6 none)
    (v1-7 none)
    (v1-9 none)
    (v1-10 none)
    (a0-1 symbol)
    (a0-2 symbol)
    (a0-3 symbol)
    (a0-5 none)
    (a0-6 none)
    (a0-7 none)
    (a1-0 int)
    (a1-1 none)
    (a1-2 none)
    (a2-0 none)
    (a2-1 none)
    (a2-2 none)
    (a3-0 none)
    (a3-1 none)
    (a3-2 none)
    (t0-0 none)
    (t0-1 none)
    (t1-0 none)
    (t2-0 none)
    (t9-0 (function float float float float))
    (t9-1 none)
    (t9-2 none)
    (t9-3 none)
    (f0-0 float)
    (f0-1 float)
    (f0-2 float)
    (f0-3 none)
    (f0-4 none)
    (f1-0 none)
    )
  (with-pp
    (cond
      ((begin (set! v1-0 a3-0) (set! a0-1 'start-talking) (= v1-0 a0-1))
       (set! v1-1 1)
       (set! (-> a0-0 ships-launched) v1-1)
       (set! v1-2 (-> s6-0 clock))
       (set! v0-0 (-> v1-2 frame-counter))
       (set! (-> a0-0 state-time) v0-0)
       )
      ((begin (set! a0-2 'start-shooting) (= v1-0 a0-2))
       (set! v1-3 #t)
       (set! (-> a0-0 enable-controls) (the-as basic v1-3))
       (set! v1-4 -956301312)
       (set! f0-0 (the-as float (gpr->fpr v1-4)))
       (set! (-> a0-0 roty-min) f0-0)
       (set! v1-5 #x46471c72)
       (set! f0-1 (the-as float (gpr->fpr v1-5)))
       (set! (-> a0-0 roty-max) f0-1)
       (set! v0-1 (fpr->gpr f0-1))
       )
      ((begin (set! a0-3 'boom) (= v1-0 a0-3))
       (set! t9-0 seek)
       (set! f0-2 (-> a0-0 health))
       (set! a0-4 (fpr->gpr f0-2))
       (set! a1-0 0)
       (set! a2-0 (the-as none (l.d (+ t0-0 16))))
       (set! v0-2 (the-as none (call!)))
       (set! f0-3 (the-as none (gpr->fpr v0-2)))
       (set! (-> a0-0 health) (the-as float f0-3))
       (set! a0-5 (the-as none (-> a0-0 smush-control)))
       (set! v1-6 (the-as none smush-control))
       (set! t9-1 (the-as none (l.wu (+ v1-6 64))))
       (set! a1-1 (the-as none #x3e4ccccd))
       (set! a2-1 (the-as none 30))
       (set! a3-1 (the-as none 240))
       (set! t0-1 (the-as none #x3f4ccccd))
       (set! t1-0 (the-as none #x3f4ccccd))
       (set! v1-7 (the-as none *display*))
       (set! t2-0 (the-as none (l.wu (+ v1-7 64))))
       (call!)
       (set! v1-8 (the-as none v0-3))
       (set! t9-2 (the-as none cpad-set-buzz!))
       (set! v1-9 (the-as none *cpad-list*))
       (set! a0-6 (the-as none (l.wu (+ v1-9 4))))
       (set! a1-2 (the-as none 1))
       (set! a2-2 (the-as none 255))
       (set! a3-2 (the-as none 150))
       (call!)
       )
      ((begin (set! a0-7 (the-as none 'exit)) (= v1-0 a0-7))
       (cond
         ((begin (set! f0-4 (the-as none (l.f (+ a0-0 320)))) (set! f1-0 (the-as none 0)) (=.s f0-4 f1-0))
          (set! v0-5 (the-as none #t))
          )
         (else
           )
         )
       )
      (else
        (set! v1-10 (the-as none base-turret))
        (set! t9-3 (the-as none (l.wu (+ v1-10 200))))
        (set! a0-8 (the-as none a0-0))
        (call!)
        )
      )
    (ret-none)
    )
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    (b0
      b1
      )
    (b2
      b3
      )
    (b4
      b5
      )
    (b6
      (seq
        (cond
          (b7
            b8
            )
          (else
            b9
            )
          )
        b10
        )
      )
    (else
      b11
      )
    )
  b12
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (method 43 port-turret)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x140, fp? 1 ra? 1 ep? 1
  ;stack_vars: 192 bytes at 16
  ;gprs: gp s5 s4 s3 s2 s1 s0
;; Warnings:
;; INFO: Used lq/sq
;; WARN: Return type mismatch smush-control vs none.

L68:
    daddiu sp, sp, -320
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
    sq s0, 208(sp)
    sq s1, 224(sp)
    sq s2, 240(sp)
    sq s3, 256(sp)
    sq s4, 272(sp)
    sq s5, 288(sp)
    sq gp, 304(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! this this) [a0: port-turret ] -> [gp: port-turret ]
    lwc1 f0, 320(gp)          ;; [  1] (set! f0-0 (l.f (+ this 320))) [gp: port-turret ] -> []
    lui v1, 16256             ;; [  2] (set! v1-0 1.0) [] -> [v1: float ]
    mtc1 f1, v1               ;; [  3] (set! f1-0 (gpr->fpr v1-0)) [v1: float ] -> []
    c.eq.s f0, f1             ;; [  4] (b! (=.s f0-0 f1-0) L69 (set! v1-1 #t)) [] -> [v1: symbol ]
    bc1t L69
    daddiu v1, s7, 4

B1:
    or v1, s7, r0             ;; [  5] (set! v1-1 #f) [] -> [v1: '#f ]
B2:
L69:
    bnel s7, v1, L70          ;; [  6] (bl! (truthy v1-1) L70 (no-delay!)) [v1: symbol ] -> []
B3:
    or v1, v1, r0             ;; [  7] (set! v1-2 v1-1) [v1: symbol ] -> [v1: symbol ]

B4:
    daddiu v1, s7, 4          ;; [  8] (set! v1-3 #t) [] -> [v1: <sym #t> ]
    lwu a0, 620(gp)           ;; [  9] (set! a0-1 (l.wu (+ this 620))) [gp: port-turret ] -> [a0: uint ]
    movn v1, s7, a0           ;; [ 10] (cmove-#f-nonzero v1-2 a0-1 v1-3) [v1: <sym #t> a0: uint ] -> [v1: symbol ]
B5:
L70:
    beql s7, v1, L71          ;; [ 11] (bl! (not v1-2) L71 (no-delay!)) [v1: symbol ] -> []
B6:
    or v1, v1, r0             ;; [ 12] (set! v1-4 v1-2) [v1: symbol ] -> [v1: symbol ]

B7:
    mtc1 f0, r0               ;; [ 13] (set! f0-1 0.0) [] -> []
    lwc1 f1, 576(gp)          ;; [ 14] (set! f1-1 (l.f (+ this 576))) [gp: port-turret ] -> []
    c.lt.s f0, f1             ;; [ 15] (b! (<.s f0-1 f1-1) L71 (set! v1-4 #t)) [] -> [v1: symbol ]
    bc1t L71
    daddiu v1, s7, 4

B8:
    or v1, s7, r0             ;; [ 16] (set! v1-4 #f) [] -> [v1: '#f ]
B9:
L71:
    beq s7, v1, L72           ;; [ 17] (b! (not v1-4) L72 (set! v0-0 #f)) [v1: symbol ] -> [v0: '#f ]
    or v0, s7, r0

B10:
    daddiu s5, fp, L166       ;; [ 18] (set! s5-0 L166) [] -> [s5: (pointer int8) ]
    lw t9, vector-z-quaternion!(s7);; [ 19] (set! t9-0 vector-z-quaternion!)
                              ;; [] -> [t9: (function vector quaternion vector) ]
    daddiu a0, sp, 16         ;; [ 20] (set! a0-2 (+ sp-0 16)) [sp: <uninitialized> ] -> [a0: vector ]
    lwu v1, 124(gp)           ;; [ 21] (set! v1-5 (l.wu (+ this 124))) [gp: port-turret ] -> [v1: collide-shape ]
    daddiu a1, v1, 28         ;; [ 22] (set! a1-1 (+ v1-5 28)) [v1: collide-shape ] -> [a1: quaternion ]
    jalr ra, t9               ;; [ 23] (call! a0-2 a1-1)
                              ;; [a0: vector a1: quaternion t9: (function vector quaternion vector) ] -> [v0: vector ]
    sll v0, ra, 0

    or s4, v0, r0             ;; [ 24] (set! s4-0 v0-1) [v0: vector ] -> [s4: vector ]
    lw t9, set-recoil(s7)     ;; [ 25] (set! t9-1 set-recoil) [] -> [t9: (function joint-mod float symbol none) ]
    lw v1, 388(gp)            ;; [ 26] (set! v1-6 (l.w (+ this 388))) [gp: port-turret ] -> [v1: int ]
    dsll v1, v1, 2            ;; [ 27] (set! v1-7 (sll v1-6 2)) [v1: int ] -> [v1: <value x 4> ]
    daddu v1, v1, gp          ;; [ 28] (set! v1-8 (+ v1-7 this))
                              ;; [v1: <value x 4> gp: port-turret ] -> [v1: <port-turret + (value x 4)> ]
    lwu a0, 372(v1)           ;; [ 29] (set! a0-3 (l.wu (+ v1-8 372)))
                              ;; [v1: <port-turret + (value x 4)> ] -> [a0: joint-mod-add-local ]
    lui v1, -15284            ;; [ 30] (set! a1-2 -819.2) [] -> [a1: float ]
    ori a1, v1, 52429
    jalr ra, t9               ;; [ 31] (call! a0-3 a1-2 (the-as none arg1))
                              ;; [a0: joint-mod-add-local a1: float a2: <uninitialized> t9: (function joint-mod float symbol none) ] -> [v0: none ]
    sll v0, ra, 0

    lw t9, vector<-cspace!(s7);; [ 32] (set! t9-2 vector<-cspace!) [] -> [t9: (function vector cspace vector) ]
    daddiu a0, sp, 32         ;; [ 33] (set! a0-4 (+ sp-0 32)) [sp: <uninitialized> ] -> [a0: vector ]
    lw v1, 388(gp)            ;; [ 34] (set! v1-9 (l.w (+ this 388))) [gp: port-turret ] -> [v1: int ]
    dsll v1, v1, 2            ;; [ 35] (set! v1-10 (sll v1-9 2)) [v1: int ] -> [v1: <value x 4> ]
    daddu v1, s5, v1          ;; [ 36] (set! v1-11 (+ s5-0 v1-10))
                              ;; [v1: <value x 4> s5: (pointer int8) ] -> [v1: <(pointer int8) + (value x 4)> ]
    lw v1, 0(v1)              ;; [ 37] (set! v1-12 (l.w v1-11)) [v1: <(pointer int8) + (value x 4)> ] -> [v1: int ]
    dsll v1, v1, 5            ;; [ 38] (set! v1-13 (sll v1-12 5)) [v1: int ] -> [v1: <value x 32> ]
    daddiu v1, v1, 12         ;; [ 39] (set! v1-14 (+ v1-13 12)) [v1: <value x 32> ] -> [v1: <integer 12 + (32 x int)> ]
    lwu a1, 128(gp)           ;; [ 40] (set! a1-3 (l.wu (+ this 128))) [gp: port-turret ] -> [a1: cspace-array ]
    daddu a1, v1, a1          ;; [ 41] (set! a1-4 (+ v1-14 a1-3))
                              ;; [v1: <integer 12 + (32 x int)> a1: cspace-array ] -> [a1: cspace ]
    jalr ra, t9               ;; [ 42] (call! a0-4 a1-4)
                              ;; [a0: vector a1: cspace t9: (function vector cspace vector) ] -> [v0: vector ]
    sll v0, ra, 0

    or s3, v0, r0             ;; [ 43] (set! s3-0 v0-3) [v0: vector ] -> [s3: vector ]
    lw t9, vector<-cspace!(s7);; [ 44] (set! t9-3 vector<-cspace!) [] -> [t9: (function vector cspace vector) ]
    daddiu a0, sp, 48         ;; [ 45] (set! a0-5 (+ sp-0 48)) [sp: <uninitialized> ] -> [a0: vector ]
    lwu v1, 128(gp)           ;; [ 46] (set! v1-15 (l.wu (+ this 128))) [gp: port-turret ] -> [v1: cspace-array ]
    daddiu a1, v1, 396        ;; [ 47] (set! a1-5 (+ v1-15 396)) [v1: cspace-array ] -> [a1: cspace ]
    jalr ra, t9               ;; [ 48] (call! a0-5 a1-5)
                              ;; [a0: vector a1: cspace t9: (function vector cspace vector) ] -> [v0: vector ]
    sll v0, ra, 0

    or s2, v0, r0             ;; [ 49] (set! s2-0 v0-4) [v0: vector ] -> [s2: vector ]
    daddiu s5, sp, 64         ;; [ 50] (set! s5-1 (+ sp-0 64)) [sp: <uninitialized> ] -> [s5: vector ]
    or s1, s2, r0             ;; [ 51] (set! s1-0 s2-0) [s2: vector ] -> [s1: vector ]
    or s0, s2, r0             ;; [ 52] (set! s0-0 s2-0) [s2: vector ] -> [s0: vector ]
    sq s4, 192(sp)            ;; [ 53] (stack-store s4-0 :offset 192 :sz 16) [s4: vector ] -> []
    or a0, gp, r0             ;; [ 54] (set! a0-6 this) [gp: port-turret ] -> [a0: port-turret ]
    lwu v1, -4(a0)            ;; [ 55] (set! v1-16 (l.wu (+ a0-6 -4)))
                              ;; [a0: port-turret ] -> [v1: <the type port-turret> ]
    lwu t9, 176(v1)           ;; [ 56] (set! t9-4 (l.wu (+ v1-16 176)))
                              ;; [v1: <the type port-turret> ] -> [t9: <vmethod (function port-turret vector symbol)> ]
    or a1, s2, r0             ;; [ 57] (set! a1-6 s2-0) [s2: vector ] -> [a1: vector ]
    lui a3, 18760             ;; [ 58] (set! a3-0 #x49480000) [] -> [a3: <integer 1229455360> ]
    or a2, s4, r0             ;; [ 59] (set! a2-1 s4-0) [s4: vector ] -> [a2: vector ]
    jalr ra, t9               ;; [ 60] (call! a0-6 a1-6)
                              ;; [a0: port-turret a1: vector t9: <vmethod (function port-turret vector symbol)> ] -> [v0: symbol ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [ 61] (set! f0-2 (gpr->fpr v0-5)) [v0: symbol ] -> []
    lq v1, 192(sp)            ;; [ 62] (stack-load v1-17 :offset 192 :sz 16 :sext #f) [] -> [v1: vector ]
    lqc2 vf2, 0(v1)           ;; [ 63] (set! s1-1 (vecplusfloattimes s1-0 s0-0 v1-17 f0-2))
                              ;; [v1: vector s0: vector s1: vector ] -> [s1: vector ]
    lqc2 vf1, 0(s0)
    mfc1 v1, f0
    qmtc2.i vf3, v1
    vaddx.w vf4, vf0, vf0
    vmulax.xyzw acc, vf2, vf3
    vmaddw.xyz vf4, vf1, vf0
    sqc2 vf4, 0(s1)
    or a0, s5, r0             ;; [ 64] (set! a0-7 s5-1) [s5: vector ] -> [a0: vector ]
    or v1, s3, r0             ;; [ 65] (set! v1-18 s3-0) [s3: vector ] -> [v1: vector ]
    lqc2 vf4, 0(s2)           ;; [ 66] (set! a0-8 (vector-!2 a0-7 s2-0 v1-18))
                              ;; [v1: vector a0: vector s2: vector ] -> [a0: vector ]
    lqc2 vf5, 0(v1)
    vmove.w vf6, vf0
    vsub.xyz vf6, vf4, vf5
    sqc2 vf6, 0(a0)
    lw t9, vector-normalize!(s7);; [ 67] (set! t9-5 vector-normalize!) [] -> [t9: (function vector float vector) ]
    or a0, s5, r0             ;; [ 68] (set! a0-9 s5-1) [s5: vector ] -> [a0: vector ]
    lui a1, 16256             ;; [ 69] (set! a1-7 1.0) [] -> [a1: float ]
    jalr ra, t9               ;; [ 70] (call! a0-9 a1-7)
                              ;; [a0: vector a1: float t9: (function vector float vector) ] -> [v0: vector ]
    sll v0, ra, 0

    daddiu s4, sp, 80         ;; [ 71] (set! s4-1 (+ sp-0 80))
                              ;; [sp: <uninitialized> ] -> [s4: projectile-init-by-other-params ]
    lwu v1, 52(gp)            ;; [ 72] (set! v1-19 (l.wu (+ this 52))) [gp: port-turret ] -> [v1: entity-actor ]
    sw v1, 0(s4)              ;; [ 73] (s.w! s4-1 v1-19) [v1: entity-actor s4: projectile-init-by-other-params ] -> []
    lui v1, 16256             ;; [ 74] (set! v1-20 1.0) [] -> [v1: float ]
    mtc1 f0, v1               ;; [ 75] (set! f0-3 (gpr->fpr v1-20)) [v1: float ] -> []
    swc1 f0, 4(s4)            ;; [ 76] (s.f! (+ s4-1 4) f0-3) [s4: projectile-init-by-other-params ] -> []
    ori v1, r0, 40960         ;; [ 77] (set! v1-21 #xa000) [] -> [v1: <integer 40960> ]
    sd v1, 16(s4)             ;; [ 78] (s.d! (+ s4-1 16) v1-21)
                              ;; [v1: <integer 40960> s4: projectile-init-by-other-params ] -> []
    daddiu v1, s4, 48         ;; [ 79] (set! v1-22 (+ s4-1 48)) [s4: projectile-init-by-other-params ] -> [v1: vector ]
    lq a0, 0(s3)              ;; [ 80] (set! a0-10 (l.q s3-0)) [s3: vector ] -> [a0: uint128 ]
    sq a0, 0(v1)              ;; [ 81] (s.q! v1-22 a0-10) [v1: vector a0: uint128 ] -> []
    daddiu s3, s4, 64         ;; [ 82] (set! s3-1 (+ s4-1 64)) [s4: projectile-init-by-other-params ] -> [s3: vector ]
    lw t9, vector-normalize-copy!(s7);; [ 83] (set! t9-6 vector-normalize-copy!)
                              ;; [] -> [t9: (function vector vector float vector) ]
    daddiu a0, sp, 176        ;; [ 84] (set! a0-11 (+ sp-0 176)) [sp: <uninitialized> ] -> [a0: vector ]
    lui v1, 18790             ;; [ 85] (set! a2-2 945230.8) [] -> [a2: float ]
    ori a2, v1, 50413
    or a1, s5, r0             ;; [ 86] (set! a1-8 s5-1) [s5: vector ] -> [a1: vector ]
    jalr ra, t9               ;; [ 87] (call! a0-11 a1-8 a2-2)
                              ;; [a0: vector a1: vector a2: float t9: (function vector vector float vector) ] -> [v0: vector ]
    sll v0, ra, 0

    lq v1, 0(v0)              ;; [ 88] (set! v1-23 (l.q v0-7)) [v0: vector ] -> [v1: uint128 ]
    sq v1, 0(s3)              ;; [ 89] (s.q! s3-1 v1-23) [v1: uint128 s3: vector ] -> []
    sd s7, 24(s4)             ;; [ 90] (s.d! (+ s4-1 24) #f) [s4: projectile-init-by-other-params ] -> []
    sd s7, 32(s4)             ;; [ 91] (s.d! (+ s4-1 32) #f) [s4: projectile-init-by-other-params ] -> []
    lw v1, *game-info*(s7)    ;; [ 92] (set! v1-24 *game-info*) [] -> [v1: game-info ]
    lwu a0, 224(v1)           ;; [ 93] (set! a0-12 (l.wu (+ v1-24 224))) [v1: game-info ] -> [a0: uint ]
    daddiu a0, a0, 1          ;; [ 94] (set! a0-13 (+ a0-12 1)) [a0: uint ] -> [a0: <integer 1 + uint> ]
    sw a0, 224(v1)            ;; [ 95] (s.w! (+ v1-24 224) a0-13) [v1: game-info a0: <integer 1 + uint> ] -> []
    sw a0, 8(s4)              ;; [ 96] (s.w! (+ s4-1 8) a0-13)
                              ;; [a0: <integer 1 + uint> s4: projectile-init-by-other-params ] -> []
    ld v1, 396(gp)            ;; [ 97] (set! v1-25 (l.d (+ this 396))) [gp: port-turret ] -> [v1: time-frame ]
    dsll v1, v1, 1            ;; [ 98] (set! v1-26 (sll v1-25 1)) [v1: time-frame ] -> [v1: (<time-frame> << 1) ]
    sd v1, 80(s4)             ;; [ 99] (s.d! (+ s4-1 80) v1-26)
                              ;; [v1: (<time-frame> << 1) s4: projectile-init-by-other-params ] -> []
    lw t9, spawn-projectile(s7);; [100] (set! t9-7 spawn-projectile)
                              ;; [] -> [t9: (function type projectile-init-by-other-params process-tree dead-pool (pointer process)) ]
    lw a0, port-turret-shot(s7);; [101] (set! a0-14 port-turret-shot) [] -> [a0: <the etype port-turret-shot> ]
    or a2, gp, r0             ;; [102] (set! a2-3 this) [gp: port-turret ] -> [a2: port-turret ]
    lw a3, *default-dead-pool*(s7);; [103] (set! a3-1 *default-dead-pool*) [] -> [a3: dead-pool ]
    or a1, s4, r0             ;; [104] (set! a1-9 s4-1)
                              ;; [s4: projectile-init-by-other-params ] -> [a1: projectile-init-by-other-params ]
    jalr ra, t9               ;; [105] (call! a0-14 a1-9 a2-3 a3-1)
                              ;; [a0: <the etype port-turret-shot> a1: projectile-init-by-other-params a2: port-turret a3: dead-pool t9: (function type projectile-init-by-other-params process-tree dead-pool (pointer process)) ] -> [v0: (pointer process) ]
    sll v0, ra, 0

    addiu v1, r0, 1           ;; [106] (set! v1-27 1) [] -> [v1: <integer 1> ]
    lw a0, 388(gp)            ;; [107] (set! a0-15 (l.w (+ this 388))) [gp: port-turret ] -> [a0: int ]
    dsubu v1, v1, a0          ;; [108] (set! v1-28 (- v1-27 a0-15)) [v1: <integer 1> a0: int ] -> [v1: int ]
    sw v1, 388(gp)            ;; [109] (s.w! (+ this 388) v1-28) [v1: int gp: port-turret ] -> []
    daddiu a0, gp, 244        ;; [110] (set! a0-16 (+ this 244)) [gp: port-turret ] -> [a0: smush-control ]
    lw v1, smush-control(s7)  ;; [111] (set! v1-29 smush-control) [] -> [v1: <the etype smush-control> ]
    lwu t9, 64(v1)            ;; [112] (set! t9-8 (l.wu (+ v1-29 64)))
                              ;; [v1: <the etype smush-control> ] -> [t9: <method (function smush-control float int int float float clock smush-control)> ]
    lui v1, 15820             ;; [113] (set! a1-10 0.1) [] -> [a1: float ]
    ori a1, v1, 52429
    addiu a2, r0, 30          ;; [114] (set! a2-4 30) [] -> [a2: <integer 30> ]
    addiu a3, r0, 120         ;; [115] (set! a3-2 120) [] -> [a3: <integer 120> ]
    lui v1, 16204             ;; [116] (set! t0-0 0.8) [] -> [t0: float ]
    ori t0, v1, 52429
    lui v1, 16230             ;; [117] (set! t1-0 0.9) [] -> [t1: float ]
    ori t1, v1, 26214
    lw v1, *display*(s7)      ;; [118] (set! v1-30 *display*) [] -> [v1: display ]
    lwu t2, 64(v1)            ;; [119] (set! t2-0 (l.wu (+ v1-30 64))) [v1: display ] -> [t2: clock ]
    jalr ra, t9               ;; [120] (call! a0-16 a1-10 a2-4 a3-2 t0-0 t1-0 t2-0)
                              ;; [a0: smush-control a1: float a2: <integer 30> a3: <integer 120> t0: float t1: float t2: clock t9: <method (function smush-control float int int float float clock smush-control)> ] -> [v0: smush-control ]
    sll v0, ra, 0

B11:
L72:
    ld ra, 0(sp)
    ld fp, 8(sp)
    lq gp, 304(sp)
    lq s5, 288(sp)
    lq s4, 272(sp)
    lq s3, 256(sp)
    lq s2, 240(sp)
    lq s1, 224(sp)
    lq s0, 208(sp)
    jr ra
    daddiu sp, sp, 320

    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(defmethod base-turret-method-44 ((this port-turret) (arg0 vector) (arg1 vector))
  (local-vars (sv-192 vector))
  (when (and (or (= (-> this path-u) 1.0) (zero? (-> this who-am-i))) (< 0.0 (-> this num-shots-available)))
    (let ((s5-0 (new 'static 'array int8 4 5 0 0 0))
          (s4-0 (vector-z-quaternion! (new 'stack-no-clear 'vector) (-> this root quat)))
          )
      (set-recoil (the-as joint-mod (-> this gun-recoil-jmod (-> this gun-index))) -819.2 (the-as symbol arg1))
      (let ((s3-0 (vector<-cspace!
                    (new 'stack-no-clear 'vector)
                    (-> this node-list data (-> (the-as (pointer int32) (&+ s5-0 (* (-> this gun-index) 4)))))
                    )
                  )
            (s2-0 (vector<-cspace! (new 'stack-no-clear 'vector) (-> this node-list data 12)))
            (s5-1 (new 'stack-no-clear 'vector))
            )
        (let ((s1-0 s2-0)
              (s0-0 s2-0)
              )
          (set! sv-192 s4-0)
          (let* ((a0-6 this)
                 (t9-4 (method-of-object a0-6 base-turret-method-41))
                 (a1-6 s2-0)
                 )
            #x49480000
            (let ((f0-2 (gpr->fpr (t9-4 a0-6 a1-6))))
              (vector+float*! s1-0 s0-0 sv-192 (the-as float f0-2))
              )
            )
          )
        (vector-! s5-1 s2-0 s3-0)
        (vector-normalize! s5-1 1.0)
        (let ((s4-1 (new 'stack-no-clear 'projectile-init-by-other-params)))
          (set! (-> s4-1 ent) (-> this entity))
          (set! (-> s4-1 charge) 1.0)
          (set! (-> s4-1 options) (projectile-options account-for-target-velocity proj-options-8000))
          (set! (-> s4-1 pos quad) (-> s3-0 quad))
          (set! (-> s4-1 vel quad) (-> (vector-normalize-copy! (new 'stack-no-clear 'vector) s5-1 945230.8) quad))
          (set! (-> s4-1 notify-handle) (the-as handle #f))
          (set! (-> s4-1 owner-handle) (the-as handle #f))
          (let* ((v1-24 *game-info*)
                 (a0-13 (+ (-> v1-24 attack-id) 1))
                 )
            (set! (-> v1-24 attack-id) a0-13)
            (set! (-> s4-1 attack-id) a0-13)
            )
          (set! (-> s4-1 timeout) (the-as time-frame (* (-> this shot-timeout) 2)))
          (spawn-projectile port-turret-shot s4-1 this *default-dead-pool*)
          )
        )
      )
    (set! (-> this gun-index) (- 1 (-> this gun-index)))
    (activate! (-> this smush-control) 0.1 30 120 0.8 0.9 (-> *display* entity-clock))
    )
  (none)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    ((seq
       (sc
         ((seq
            (cond
              (b0
                b1
                )
              )
            (sc (b2 b3) b4)
            b5
            )
          b6
          )
         (cond
           (b7
             b8
             )
           )
         )
       b9
       )
     b10
     )
    )
  b11
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (method 33 port-turret)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x40, fp? 0 ra? 1 ep? 1
  ;stack_vars: 8 bytes at 8
  ;gprs: gp s5 s4
;; Warnings:
;; WARN: Return type mismatch int vs none.

L73:
    daddiu sp, sp, -64
    sd ra, 0(sp)
    sq s4, 16(sp)
    sq s5, 32(sp)
    sq gp, 48(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! this this) [a0: port-turret ] -> [gp: port-turret ]
    or s5, a1, r0             ;; [  1] (set! arg0 arg0) [a1: process ] -> [s5: process ]
    lw a0, *default-dead-pool*(s7);; [  2] (set! a0-1 *default-dead-pool*) [] -> [a0: dead-pool ]
    lwu v1, -4(a0)            ;; [  3] (set! v1-0 (l.wu (+ a0-1 -4))) [a0: dead-pool ] -> [v1: <the type dead-pool> ]
    lwu t9, 72(v1)            ;; [  4] (set! t9-0 (l.wu (+ v1-0 72)))
                              ;; [v1: <the type dead-pool> ] -> [t9: <vmethod (function dead-pool type int process)> ]
    lw a1, hud-port-turret-health(s7);; [  5] (set! a1-1 hud-port-turret-health)
                              ;; [] -> [a1: <the etype hud-port-turret-health> ]
    addiu a2, r0, 16384       ;; [  6] (set! a2-0 #x4000) [] -> [a2: <integer 16384> ]
    jalr ra, t9               ;; [  7] (call! a0-1 a1-1 a2-0)
                              ;; [a0: dead-pool a1: <the etype hud-port-turret-health> a2: <integer 16384> t9: <vmethod (function dead-pool type int process)> ] -> [v0: process ]
    sll v0, ra, 0

    or s4, v0, r0             ;; [  8] (set! s4-0 v0-0) [v0: process ] -> [s4: process ]
    beq s7, s4, L74           ;; [  9] (b! (not s4-0) L74 (set! v1-1 #f)) [s4: process ] -> [v1: '#f ]
    or v1, s7, r0

B1:
    lw v1, hud-port-turret-health(s7);; [ 10] (set! v1-2 hud-port-turret-health)
                              ;; [] -> [v1: <the etype hud-port-turret-health> ]
    lwu t9, 52(v1)            ;; [ 11] (set! t9-1 (l.wu (+ v1-2 52)))
                              ;; [v1: <the etype hud-port-turret-health> ] -> [t9: <method (function hud-port-turret-health process-tree basic pointer process-tree)> ]
    or a0, s4, r0             ;; [ 12] (set! a0-2 s4-0) [s4: process ] -> [a0: process ]
    ori v1, r0, 65335         ;; [ 13] (set! v1-3 #xff37) [] -> [v1: <integer 65335> ]
    lw a1, hud-port-turret-health(s7);; [ 14] (set! a1-2 hud-port-turret-health)
                              ;; [] -> [a1: <the etype hud-port-turret-health> ]
    lwu a1, 0(a1)             ;; [ 15] (set! a1-3 (l.wu a1-2)) [a1: <the etype hud-port-turret-health> ] -> [a1: symbol ]
    daddu v1, v1, a1          ;; [ 16] (set! v1-4 (+ v1-3 a1-3))
                              ;; [v1: <integer 65335> a1: symbol ] -> [v1: (pointer string) ]
    lwu a2, 0(v1)             ;; [ 17] (set! a2-1 (l.wu v1-4)) [v1: (pointer string) ] -> [a2: string ]
    lui v1, 28672             ;; [ 18] (set! a3-0 #x70004000) [] -> [a3: <integer 1879064576> ]
    ori a3, v1, 16384
    or a1, s5, r0             ;; [ 19] (set! a1-4 arg0) [s5: process ] -> [a1: process ]
    jalr ra, t9               ;; [ 20] (call! a0-2 a1-4 a2-1 a3-0)
                              ;; [a0: process a1: process a2: string a3: <integer 1879064576> t9: <method (function hud-port-turret-health process-tree basic pointer process-tree)> ] -> [v0: process-tree ]
    sll v0, ra, 0

    lw t9, run-function-in-process(s7);; [ 21] (set! t9-2 run-function-in-process)
                              ;; [] -> [t9: <run-function-in-process-func> ]
    or a0, s4, r0             ;; [ 22] (set! a0-3 s4-0) [s4: process ] -> [a0: process ]
    lw a1, hud-init-by-other(s7);; [ 23] (set! a1-5 hud-init-by-other) [] -> [a1: (function object :behavior hud) ]
    jalr ra, t9               ;; [ 24] (call! a0-3 a1-5)
                              ;; [a0: process a1: (function object :behavior hud) t9: <run-function-in-process-func> ] -> [v0: none ]
    sll v0, ra, 0

    lwu v1, 24(s4)            ;; [ 25] (set! v1-1 (l.wu (+ s4-0 24))) [s4: process ] -> [v1: (pointer process) ]
B2:
L74:
    beq s7, v1, L75           ;; [ 26] (b! (not v1-1) L75 (nop!)) [v1: (pointer process) ] -> []
    sll r0, r0, 0

B3:
    lwu a0, 0(v1)             ;; [ 27] (set! a0-4 (l.wu v1-1)) [v1: (pointer process) ] -> [a0: process ]
    lw a0, 40(a0)             ;; [ 28] (set! a0-5 (l.w (+ a0-4 40))) [a0: process ] -> [a0: int ]
    dsll32 a0, a0, 0          ;; [ 29] (set! a0-6 (sll a0-5 32)) [a0: int ] -> [a0: <value x 4294967296> ]
    beq r0, r0, L76           ;; [ 30] (b! #t L76 (nop!)) [] -> []
    sll r0, r0, 0

B4:
L75:
    addiu a0, r0, 0           ;; [ 31] (set! a0-6 0) [] -> [a0: <integer 0> ]
B5:
L76:
    sllv v1, v1, r0           ;; [ 32] (.sllv v1-5 v1-1 r0) [v1: (pointer process) ] -> [v1: int ]
    or v1, a0, v1             ;; [ 33] (set! v1-6 (logior a0-6 v1-5)) [v1: int a0: int ] -> [v1: int ]
    sd v1, 204(gp)            ;; [ 34] (s.d! (+ this 204) v1-6) [v1: int gp: port-turret ] -> []
    or v0, r0, r0             ;; [ 35] (set! v0-3 0) [] -> [v0: <integer 0> ]
    ld ra, 0(sp)
    lq gp, 48(sp)
    lq s5, 32(sp)
    lq s4, 16(sp)
    jr ra
    daddiu sp, sp, 64

    sll r0, r0, 0
    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(defmethod base-turret-method-34 ((this port-turret) (arg0 process))
  (set! (-> this hud)
        (ppointer->handle (process-spawn hud-port-turret-health :init hud-init-by-other :to arg0))
        )
  0
  (none)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    (b0
      b1
      )
    )
  (cond
    (b2
      b3
      )
    (else
      b4
      )
    )
  b5
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (method 32 port-turret)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0xd0, fp? 1 ra? 1 ep? 1
  ;stack_vars: 80 bytes at 16
  ;gprs: gp s5 s4 s3 s2 s1 s0
;; Warnings:
;; WARN: Return type mismatch int vs none.
;; ERROR: Function may read a register that is not set: t2

L77:
    daddiu sp, sp, -208
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
    sq s0, 96(sp)
    sq s1, 112(sp)
    sq s2, 128(sp)
    sq s3, 144(sp)
    sq s4, 160(sp)
    sq s5, 176(sp)
    sq gp, 192(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! this this) [a0: port-turret ] -> [gp: port-turret ]
    lw v1, base-turret(s7)    ;; [  1] (set! v1-0 base-turret) [] -> [v1: <the etype base-turret> ]
    lwu t9, 144(v1)           ;; [  2] (set! t9-0 (l.wu (+ v1-0 144)))
                              ;; [v1: <the etype base-turret> ] -> [t9: <method (function base-turret entity-actor matrix none)> ]
    or a0, gp, r0             ;; [  3] (set! a0-1 this) [gp: port-turret ] -> [a0: port-turret ]
    jalr ra, t9               ;; [  4] (call! a0-1 arg0 arg1)
                              ;; [a0: port-turret a1: entity-actor a2: matrix t9: <method (function base-turret entity-actor matrix none)> ] -> [v0: none ]
    sll v0, ra, 0

    sd r0, 548(gp)            ;; [  5] (s.d! (+ this 548) 0) [gp: port-turret ] -> []
    sd r0, 556(gp)            ;; [  6] (s.d! (+ this 556) 0) [gp: port-turret ] -> []
    addiu v1, r0, 800         ;; [  7] (set! v1-1 800) [] -> [v1: <integer 800> ]
    sd v1, 396(gp)            ;; [  8] (s.d! (+ this 396) v1-1) [v1: <integer 800> gp: port-turret ] -> []
    lui v1, 16256             ;; [  9] (set! v1-2 1.0) [] -> [v1: float ]
    mtc1 f0, v1               ;; [ 10] (set! f0-0 (gpr->fpr v1-2)) [v1: float ] -> []
    swc1 f0, 572(gp)          ;; [ 11] (s.f! (+ this 572) f0-0) [gp: port-turret ] -> []
    mtc1 f0, r0               ;; [ 12] (set! f0-1 0.0) [] -> []
    swc1 f0, 440(gp)          ;; [ 13] (s.f! (+ this 440) f0-1) [gp: port-turret ] -> []
    mtc1 f0, r0               ;; [ 14] (set! f0-2 0.0) [] -> []
    swc1 f0, 444(gp)          ;; [ 15] (s.f! (+ this 444) f0-2) [gp: port-turret ] -> []
    mtc1 f0, r0               ;; [ 16] (set! f0-3 0.0) [] -> []
    swc1 f0, 460(gp)          ;; [ 17] (s.f! (+ this 460) f0-3) [gp: port-turret ] -> []
    lui v1, 17991             ;; [ 18] (set! v1-3 12743.111) [] -> [v1: float ]
    ori v1, v1, 7282
    mtc1 f0, v1               ;; [ 19] (set! f0-4 (gpr->fpr v1-3)) [v1: float ] -> []
    swc1 f0, 464(gp)          ;; [ 20] (s.f! (+ this 464) f0-4) [gp: port-turret ] -> []
    addiu v1, r0, 6000        ;; [ 21] (set! v1-4 6000) [] -> [v1: <integer 6000> ]
    sd v1, 412(gp)            ;; [ 22] (s.d! (+ this 412) v1-4) [v1: <integer 6000> gp: port-turret ] -> []
    sw r0, 564(gp)            ;; [ 23] (s.w! (+ this 564) 0) [gp: port-turret ] -> []
    sw r0, 568(gp)            ;; [ 24] (s.w! (+ this 568) 0) [gp: port-turret ] -> []
    lui v1, 16544             ;; [ 25] (set! v1-5 5.0) [] -> [v1: float ]
    mtc1 f0, v1               ;; [ 26] (set! f0-5 (gpr->fpr v1-5)) [v1: float ] -> []
    swc1 f0, 576(gp)          ;; [ 27] (s.f! (+ this 576) f0-5) [gp: port-turret ] -> []
    sw s7, 424(gp)            ;; [ 28] (s.w! (+ this 424) #f) [gp: port-turret ] -> []
    mtc1 f0, r0               ;; [ 29] (set! f0-6 0.0) [] -> []
    swc1 f0, 592(gp)          ;; [ 30] (s.f! (+ this 592) f0-6) [gp: port-turret ] -> []
    sw s7, 420(gp)            ;; [ 31] (s.w! (+ this 420) #f) [gp: port-turret ] -> []
    sw r0, 604(gp)            ;; [ 32] (s.w! (+ this 604) 0) [gp: port-turret ] -> []
    sw r0, 600(gp)            ;; [ 33] (s.w! (+ this 600) 0) [gp: port-turret ] -> []
    lw t9, name=(s7)          ;; [ 34] (set! t9-1 name=) [] -> [t9: (function object object symbol) ]
    lwu a0, 0(gp)             ;; [ 35] (set! a0-2 (l.wu this)) [gp: port-turret ] -> [a0: string ]
    daddiu a1, fp, L171       ;; [ 36] (set! a1-1 L171) [] -> [a1: <string "port-turret-1"> ] "port-turret-1"
    jalr ra, t9               ;; [ 37] (call! a0-2 a1-1)
                              ;; [a0: string a1: <string "port-turret-1"> t9: (function object object symbol) ] -> [v0: symbol ]
    sll v0, ra, 0

    beq s7, v0, L78           ;; [ 38] (b! (not v0-1) L78 (set! v1-6 #f)) [v0: symbol ] -> [v1: '#f ]
    or v1, s7, r0

B1:
    addiu v1, r0, 1           ;; [ 39] (set! v1-7 1) [] -> [v1: <integer 1> ]
    sw v1, 620(gp)            ;; [ 40] (s.w! (+ this 620) v1-7) [v1: <integer 1> gp: port-turret ] -> []
    lw v1, *port-turret-1-path*(s7);; [ 41] (set! v1-8 *port-turret-1-path*) [] -> [v1: turret-path ]
    sw v1, 316(gp)            ;; [ 42] (s.w! (+ this 316) v1-8) [v1: turret-path gp: port-turret ] -> []
    addiu v1, r0, 19          ;; [ 43] (set! v1-9 19) [] -> [v1: <integer 19> ]
    sb v1, 596(gp)            ;; [ 44] (s.b! (+ this 596) v1-9) [v1: <integer 19> gp: port-turret ] -> []
    sw r0, 608(gp)            ;; [ 45] (s.w! (+ this 608) 0) [gp: port-turret ] -> []
    addiu v1, r0, 1           ;; [ 46] (set! v1-10 1) [] -> [v1: <integer 1> ]
    sw v1, 616(gp)            ;; [ 47] (s.w! (+ this 616) v1-10) [v1: <integer 1> gp: port-turret ] -> []
    beq r0, r0, L84           ;; [ 48] (b! #t L84 (nop!)) [] -> []
    sll r0, r0, 0

B2:
L78:
    lw t9, name=(s7)          ;; [ 49] (set! t9-2 name=) [] -> [t9: (function object object symbol) ]
    lwu a0, 0(gp)             ;; [ 50] (set! a0-3 (l.wu this)) [gp: port-turret ] -> [a0: string ]
    daddiu a1, fp, L170       ;; [ 51] (set! a1-2 L170) [] -> [a1: <string "port-turret-2"> ] "port-turret-2"
    jalr ra, t9               ;; [ 52] (call! a0-3 a1-2)
                              ;; [a0: string a1: <string "port-turret-2"> t9: (function object object symbol) ] -> [v0: symbol ]
    sll v0, ra, 0

    beq s7, v0, L84           ;; [ 53] (b! (not v0-2) L84 (set! v1-11 #f)) [v0: symbol ] -> [v1: '#f ]
    or v1, s7, r0

B3:
    sw r0, 620(gp)            ;; [ 54] (s.w! (+ this 620) 0) [gp: port-turret ] -> []
    lw a0, *default-dead-pool*(s7);; [ 55] (set! a0-4 *default-dead-pool*) [] -> [a0: dead-pool ]
    lwu v1, -4(a0)            ;; [ 56] (set! v1-12 (l.wu (+ a0-4 -4))) [a0: dead-pool ] -> [v1: <the type dead-pool> ]
    lwu t9, 72(v1)            ;; [ 57] (set! t9-3 (l.wu (+ v1-12 72)))
                              ;; [v1: <the type dead-pool> ] -> [t9: <vmethod (function dead-pool type int process)> ]
    lw a1, manipy(s7)         ;; [ 58] (set! a1-3 manipy) [] -> [a1: <the etype manipy> ]
    addiu a2, r0, 16384       ;; [ 59] (set! a2-1 #x4000) [] -> [a2: <integer 16384> ]
    jalr ra, t9               ;; [ 60] (call! a0-4 a1-3 a2-1)
                              ;; [a0: dead-pool a1: <the etype manipy> a2: <integer 16384> t9: <vmethod (function dead-pool type int process)> ] -> [v0: process ]
    sll v0, ra, 0

    or s5, v0, r0             ;; [ 61] (set! s5-0 v0-3) [v0: process ] -> [s5: process ]
    beq s7, s5, L79           ;; [ 62] (b! (not s5-0) L79 (set! v1-13 #f)) [s5: process ] -> [v1: '#f ]
    or v1, s7, r0

B4:
    lw v1, manipy(s7)         ;; [ 63] (set! v1-14 manipy) [] -> [v1: <the etype manipy> ]
    lwu t9, 52(v1)            ;; [ 64] (set! t9-4 (l.wu (+ v1-14 52)))
                              ;; [v1: <the etype manipy> ] -> [t9: <method (function manipy process-tree basic pointer process-tree)> ]
    or a0, s5, r0             ;; [ 65] (set! a0-5 s5-0) [s5: process ] -> [a0: process ]
    or a1, gp, r0             ;; [ 66] (set! a1-4 this) [gp: port-turret ] -> [a1: port-turret ]
    daddiu a2, fp, L169       ;; [ 67] (set! a2-2 L169) [] -> [a2: <string "torn-highres"> ] "torn-highres"
    lui v1, 28672             ;; [ 68] (set! a3-0 #x70004000) [] -> [a3: <integer 1879064576> ]
    ori a3, v1, 16384
    jalr ra, t9               ;; [ 69] (call! a0-5 a1-4 a2-2 a3-0)
                              ;; [a0: process a1: port-turret a2: <string "torn-highres"> a3: <integer 1879064576> t9: <method (function manipy process-tree basic pointer process-tree)> ] -> [v0: process-tree ]
    sll v0, ra, 0

    lw s4, run-function-in-process(s7);; [ 70] (set! s4-0 run-function-in-process)
                              ;; [] -> [s4: <run-function-in-process-func> ]
    or s3, s5, r0             ;; [ 71] (set! s3-0 s5-0) [s5: process ] -> [s3: process ]
    lw s2, manipy-init(s7)    ;; [ 72] (set! s2-0 manipy-init)
                              ;; [] -> [s2: (function vector entity-actor skeleton-group vector object none :behavior manipy) ]
    lwu v1, 124(gp)           ;; [ 73] (set! v1-15 (l.wu (+ this 124))) [gp: port-turret ] -> [v1: collide-shape ]
    daddiu s1, v1, 12         ;; [ 74] (set! s1-0 (+ v1-15 12)) [v1: collide-shape ] -> [s1: vector ]
    lwu s0, 52(gp)            ;; [ 75] (set! s0-0 (l.wu (+ this 52))) [gp: port-turret ] -> [s0: entity-actor ]
    lw a0, *level*(s7)        ;; [ 76] (set! a0-6 *level*) [] -> [a0: level-group ]
    lwu v1, -4(a0)            ;; [ 77] (set! v1-16 (l.wu (+ a0-6 -4)))
                              ;; [a0: level-group ] -> [v1: <the type level-group> ]
    lwu t9, 108(v1)           ;; [ 78] (set! t9-5 (l.wu (+ v1-16 108)))
                              ;; [v1: <the type level-group> ] -> [t9: <vmethod (function level-group string (pointer uint32) art-group)> ]
    daddiu a1, fp, L168       ;; [ 79] (set! a1-5 L168) [] -> [a1: <string "skel-torn-highres"> ] "skel-torn-highres"
    or a2, s7, r0             ;; [ 80] (set! a2-3 #f) [] -> [a2: '#f ]
    jalr ra, t9               ;; [ 81] (call! a0-6 a1-5 a2-3)
                              ;; [a0: level-group a1: <string "skel-torn-highres"> a2: '#f t9: <vmethod (function level-group string (pointer uint32) art-group)> ] -> [v0: art-group ]
    sll v0, ra, 0

    or t0, v0, r0             ;; [ 82] (set! t0-0 v0-5) [v0: art-group ] -> [t0: art-group ]
    or t1, s7, r0             ;; [ 83] (set! t1-0 #f) [] -> [t1: '#f ]
    or t9, s4, r0             ;; [ 84] (set! t9-6 s4-0)
                              ;; [s4: <run-function-in-process-func> ] -> [t9: <run-function-in-process-func> ]
    or a0, s3, r0             ;; [ 85] (set! a0-7 s3-0) [s3: process ] -> [a0: process ]
    or a1, s2, r0             ;; [ 86] (set! a1-6 s2-0)
                              ;; [s2: (function vector entity-actor skeleton-group vector object none :behavior manipy) ] -> [a1: (function vector entity-actor skeleton-group vector object none :behavior manipy) ]
    or a2, s1, r0             ;; [ 87] (set! a2-4 s1-0) [s1: vector ] -> [a2: vector ]
    or a3, s0, r0             ;; [ 88] (set! a3-1 s0-0) [s0: entity-actor ] -> [a3: entity-actor ]
    jalr ra, t9               ;; [ 89] (call! a0-7 a1-6 a2-4 a3-1 t0-0 t1-0 t2-0)
                              ;; [a0: process a1: (function vector entity-actor skeleton-group vector object none :behavior manipy) a2: vector a3: entity-actor t0: art-group t1: '#f t2: <uninitialized> t9: <run-function-in-process-func> ] -> [v0: none ]
    sll v0, ra, 0

    lwu v1, 24(s5)            ;; [ 90] (set! v1-13 (l.wu (+ s5-0 24))) [s5: process ] -> [v1: (pointer process) ]
B5:
L79:
    sw v1, 588(gp)            ;; [ 91] (s.w! (+ this 588) v1-13) [v1: (pointer process) gp: port-turret ] -> []
    daddiu a1, sp, 16         ;; [ 92] (set! a1-7 (+ sp-0 16)) [sp: <uninitialized> ] -> [a1: event-message-block ]
    or v1, s6, r0             ;; [ 93] (set! v1-17 pp) [s6: process ] -> [v1: process ]
    beq s7, v1, L80           ;; [ 94] (b! (not v1-17) L80 (set! a0-8 #f)) [v1: process ] -> [a0: '#f ]
    or a0, s7, r0

B6:
    lwu a0, 24(v1)            ;; [ 95] (set! a0-8 (l.wu (+ v1-17 24))) [v1: process ] -> [a0: (pointer process) ]
B7:
L80:
    sw a0, 8(a1)              ;; [ 96] (s.w! (+ a1-7 8) a0-8) [a0: (pointer process) a1: event-message-block ] -> []
    addiu v1, r0, 2           ;; [ 97] (set! v1-18 2) [] -> [v1: <integer 2> ]
    sw v1, 68(a1)             ;; [ 98] (s.w! (+ a1-7 68) v1-18) [v1: <integer 2> a1: event-message-block ] -> []
    daddiu v1, s7, art-joint-anim;; [ 99] (set! v1-19 'art-joint-anim) [] -> [v1: <sym art-joint-anim> ]
    sw v1, 64(a1)             ;; [100] (s.w! (+ a1-7 64) v1-19) [v1: <sym art-joint-anim> a1: event-message-block ] -> []
    daddiu v1, fp, L167       ;; [101] (set! v1-20 L167) [] -> [v1: <string "idle-turret"> ] "idle-turret"
    sd v1, 16(a1)             ;; [102] (s.d! (+ a1-7 16) v1-20)
                              ;; [v1: <string "idle-turret"> a1: event-message-block ] -> []
    addiu v1, r0, 0           ;; [103] (set! v1-21 0) [] -> [v1: <integer 0> ]
    sd v1, 24(a1)             ;; [104] (s.d! (+ a1-7 24) v1-21) [v1: <integer 0> a1: event-message-block ] -> []
    lw t9, send-event-function(s7);; [105] (set! t9-7 send-event-function)
                              ;; [] -> [t9: (function process-tree event-message-block object) ]
    lwu v1, 588(gp)           ;; [106] (set! v1-22 (l.wu (+ this 588)))
                              ;; [gp: port-turret ] -> [v1: (pointer port-turret) ]
    beq s7, v1, L81           ;; [107] (b! (not v1-22) L81 (set! a0-9 #f)) [v1: (pointer port-turret) ] -> [a0: '#f ]
    or a0, s7, r0

B8:
    lwu v1, 0(v1)             ;; [108] (set! v1-23 (l.wu v1-22)) [v1: (pointer port-turret) ] -> [v1: port-turret ]
    lwu a0, 28(v1)            ;; [109] (set! a0-9 (l.wu (+ v1-23 28))) [v1: port-turret ] -> [a0: process ]
B9:
L81:
    jalr ra, t9               ;; [110] (call! a0-9 a1-7)
                              ;; [a0: process a1: event-message-block t9: (function process-tree event-message-block object) ] -> [v0: object ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [111] (set! v1-24 v0-7) [v0: object ] -> [v1: object ]
    daddiu a1, sp, 16         ;; [112] (set! a1-8 (+ sp-0 16)) [sp: <uninitialized> ] -> [a1: event-message-block ]
    or v1, s6, r0             ;; [113] (set! v1-25 pp) [s6: process ] -> [v1: process ]
    beq s7, v1, L82           ;; [114] (b! (not v1-25) L82 (set! a0-10 #f)) [v1: process ] -> [a0: '#f ]
    or a0, s7, r0

B10:
    lwu a0, 24(v1)            ;; [115] (set! a0-10 (l.wu (+ v1-25 24))) [v1: process ] -> [a0: (pointer process) ]
B11:
L82:
    sw a0, 8(a1)              ;; [116] (s.w! (+ a1-8 8) a0-10) [a0: (pointer process) a1: event-message-block ] -> []
    addiu v1, r0, 1           ;; [117] (set! v1-26 1) [] -> [v1: <integer 1> ]
    sw v1, 68(a1)             ;; [118] (s.w! (+ a1-8 68) v1-26) [v1: <integer 1> a1: event-message-block ] -> []
    daddiu v1, s7, anim-mode  ;; [119] (set! v1-27 'anim-mode) [] -> [v1: <sym anim-mode> ]
    sw v1, 64(a1)             ;; [120] (s.w! (+ a1-8 64) v1-27) [v1: <sym anim-mode> a1: event-message-block ] -> []
    daddiu v1, s7, loop       ;; [121] (set! v1-28 'loop) [] -> [v1: <sym loop> ]
    sd v1, 16(a1)             ;; [122] (s.d! (+ a1-8 16) v1-28) [v1: <sym loop> a1: event-message-block ] -> []
    lw t9, send-event-function(s7);; [123] (set! t9-8 send-event-function)
                              ;; [] -> [t9: (function process-tree event-message-block object) ]
    lwu v1, 588(gp)           ;; [124] (set! v1-29 (l.wu (+ this 588)))
                              ;; [gp: port-turret ] -> [v1: (pointer port-turret) ]
    beq s7, v1, L83           ;; [125] (b! (not v1-29) L83 (set! a0-11 #f)) [v1: (pointer port-turret) ] -> [a0: '#f ]
    or a0, s7, r0

B12:
    lwu v1, 0(v1)             ;; [126] (set! v1-30 (l.wu v1-29)) [v1: (pointer port-turret) ] -> [v1: port-turret ]
    lwu a0, 28(v1)            ;; [127] (set! a0-11 (l.wu (+ v1-30 28))) [v1: port-turret ] -> [a0: process ]
B13:
L83:
    jalr ra, t9               ;; [128] (call! a0-11 a1-8)
                              ;; [a0: process a1: event-message-block t9: (function process-tree event-message-block object) ] -> [v0: object ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [129] (set! v1-31 v0-8) [v0: object ] -> [v1: object ]
    lui v1, 17834             ;; [130] (set! v1-32 5461.3335) [] -> [v1: float ]
    ori v1, v1, 43691
    mtc1 f0, v1               ;; [131] (set! f0-7 (gpr->fpr v1-32)) [v1: float ] -> []
    swc1 f0, 428(gp)          ;; [132] (s.f! (+ this 428) f0-7) [gp: port-turret ] -> []
    mtc1 f0, r0               ;; [133] (set! f0-8 0.0) [] -> []
    swc1 f0, 576(gp)          ;; [134] (s.f! (+ this 576) f0-8) [gp: port-turret ] -> []
    addiu v1, r0, 21          ;; [135] (set! v1-33 21) [] -> [v1: <integer 21> ]
    sb v1, 596(gp)            ;; [136] (s.b! (+ this 596) v1-33) [v1: <integer 21> gp: port-turret ] -> []
    addiu v1, r0, 2           ;; [137] (set! v1-34 2) [] -> [v1: <integer 2> ]
    sw v1, 608(gp)            ;; [138] (s.w! (+ this 608) v1-34) [v1: <integer 2> gp: port-turret ] -> []
    addiu v1, r0, 1           ;; [139] (set! v1-35 1) [] -> [v1: <integer 1> ]
    sw v1, 616(gp)            ;; [140] (s.w! (+ this 616) v1-35) [v1: <integer 1> gp: port-turret ] -> []
B14:
L84:
    or v0, r0, r0             ;; [141] (set! v0-9 0) [] -> [v0: <integer 0> ]
    ld ra, 0(sp)
    ld fp, 8(sp)
    lq gp, 192(sp)
    lq s5, 176(sp)
    lq s4, 160(sp)
    lq s3, 144(sp)
    lq s2, 128(sp)
    lq s1, 112(sp)
    lq s0, 96(sp)
    jr ra
    daddiu sp, sp, 208

    sll r0, r0, 0
    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(defmethod turret-init! ((this port-turret) (arg0 entity-actor) (arg1 matrix))
  (local-vars (t2-0 none))
  (let ((t9-0 (method-of-type base-turret turret-init!)))
    (t9-0 this arg0 arg1)
    )
  (set! (-> this first-ship-launched) 0)
  (set! (-> this last-ship-launched) 0)
  (set! (-> this shot-timeout) (seconds 2.667))
  (set! (-> this sink-interp) 1.0)
  (set! (-> this roty-min) 0.0)
  (set! (-> this roty-max) 0.0)
  (set! (-> this rotx-min) 0.0)
  (set! (-> this rotx-max) 12743.111)
  (set! (-> this fire-time-interval) (seconds 20))
  (set! (-> this ships-launched) 0)
  (set! (-> this total-ships-launched) (the-as uint 0))
  (set! (-> this num-shots-available) 5.0)
  (set! (-> this available-for-pickup) #f)
  (set! (-> this target-y) 0.0)
  (set! (-> this enable-controls) #f)
  (set! (-> this last-speech) (the-as uint 0))
  (set! (-> this id) (the-as uint 0))
  (cond
    ((name= (-> this name) "port-turret-1")
     (set! (-> this who-am-i) (the-as uint 1))
     (set! (-> this path-event) *port-turret-1-path*)
     (set! (-> this channel) (the-as uint 19))
     (set! (-> this turret-state) (the-as uint 0))
     (set! (-> this previous-turret-state) (the-as uint 1))
     )
    ((name= (-> this name) "port-turret-2")
     (set! (-> this who-am-i) (the-as uint 0))
     (set! (-> this torn) (the-as
                            (pointer port-turret)
                            (process-spawn
                              manipy
                              :init manipy-init
                              (-> this root trans)
                              (-> this entity)
                              (art-group-get-by-name *level* "skel-torn-highres" (the-as (pointer uint32) #f))
                              #f
                              t2-0
                              :name "torn-highres"
                              :to this
                              )
                            )
           )
     (send-event (ppointer->process (-> this torn)) 'art-joint-anim "idle-turret" 0)
     (send-event (ppointer->process (-> this torn)) 'anim-mode 'loop)
     (set! (-> this roty) 5461.3335)
     (set! (-> this num-shots-available) 0.0)
     (set! (-> this channel) (the-as uint 21))
     (set! (-> this turret-state) (the-as uint 2))
     (set! (-> this previous-turret-state) (the-as uint 1))
     )
    )
  0
  (none)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    (b0
      b1
      )
    (b2
      (seq
        (cond
          ((seq
             (cond
               ((seq
                  (cond
                    (b3
                      b4
                      )
                    )
                  b5
                  )
                b6
                )
               )
             (cond
               (b7
                 b8
                 )
               )
             b9
             )
           b10
           )
          )
        (cond
          (b11
            b12
            )
          )
        b13
        )
      )
    )
  b14
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (method 31 port-turret-shot)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x20, fp? 0 ra? 1 ep? 1
  ;stack_vars: 8 bytes at 8
  ;gprs: gp
;; Warnings:
;; INFO: Used lq/sq
;; WARN: Return type mismatch float vs none.
;; ERROR: Failed store: (s.w! (+ this 336) v1-2) at op 11

L85:
    daddiu sp, sp, -32
    sd ra, 0(sp)
    sq gp, 16(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! this this) [a0: port-turret-shot ] -> [gp: port-turret-shot ]
    lw v1, turret-shot(s7)    ;; [  1] (set! v1-0 turret-shot) [] -> [v1: <the etype turret-shot> ]
    lwu t9, 140(v1)           ;; [  2] (set! t9-0 (l.wu (+ v1-0 140)))
                              ;; [v1: <the etype turret-shot> ] -> [t9: <method (function turret-shot none)> ]
    or a0, gp, r0             ;; [  3] (set! a0-1 this) [gp: port-turret-shot ] -> [a0: port-turret-shot ]
    jalr ra, t9               ;; [  4] (call! a0-1)
                              ;; [a0: port-turret-shot t9: <method (function turret-shot none)> ] -> [v0: none ]
    sll v0, ra, 0

    daddiu v1, gp, 492        ;; [  5] (set! v1-1 (+ this 492)) [gp: port-turret-shot ] -> [v1: vector ]
    lwu a0, 124(gp)           ;; [  6] (set! a0-2 (l.wu (+ this 124)))
                              ;; [gp: port-turret-shot ] -> [a0: collide-shape-moving ]
    daddiu a0, a0, 12         ;; [  7] (set! a0-3 (+ a0-2 12)) [a0: collide-shape-moving ] -> [a0: vector ]
    lq a0, 0(a0)              ;; [  8] (set! a0-4 (l.q a0-3)) [a0: vector ] -> [a0: uint128 ]
    sq a0, 0(v1)              ;; [  9] (s.q! v1-1 a0-4) [v1: vector a0: uint128 ] -> []
    lw v1, port-turret-shot-move(s7);; [ 10] (set! v1-2 port-turret-shot-move)
                              ;; [] -> [v1: (function port-turret-shot none) ]
    sw v1, 336(gp)            ;; [ 11] (s.w! (+ this 336) v1-2)
                              ;; [v1: (function port-turret-shot none) gp: port-turret-shot ] -> []
    lwu v1, 124(gp)           ;; [ 12] (set! v1-3 (l.wu (+ this 124)))
                              ;; [gp: port-turret-shot ] -> [v1: collide-shape-moving ]
    lwc1 f0, 16(v1)           ;; [ 13] (set! f0-0 (l.f (+ v1-3 16))) [v1: collide-shape-moving ] -> []
    swc1 f0, 508(gp)          ;; [ 14] (s.f! (+ this 508) f0-0) [gp: port-turret-shot ] -> []
    mfc1 v0, f0               ;; [ 15] (set! v0-1 (fpr->gpr f0-0)) [] -> [v0: float ]
    ld ra, 0(sp)
    lq gp, 16(sp)
    jr ra
    daddiu sp, sp, 32

    sll r0, r0, 0
    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(defmethod init-proj-settings! ((this port-turret-shot))
  "Init relevant settings for the [[projectile]] such as gravity, speed, timeout, etc"
  (let ((t9-0 (method-of-type turret-shot init-proj-settings!)))
    (t9-0 this)
    )
  (set! (-> this hit-pos quad) (-> this root trans quad))
  (let ((v1-2 port-turret-shot-move))
    (s.w! (+ this 336) v1-2)
    )
  (set! (-> this initial-y) (-> this root trans y))
  (none)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
b0

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function port-turret-shot-move
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x60, fp? 0 ra? 1 ep? 1
  ;stack_vars: 24 bytes at 8
  ;gprs: gp s5 s4
  ;fprs: f30 f28
;; Warnings:
;; INFO: Used lq/sq
;; WARN: Return type mismatch int vs none.

L86:
    daddiu sp, sp, -96
    sd ra, 0(sp)
    sq s4, 32(sp)
    sq s5, 48(sp)
    sq gp, 64(sp)
    swc1 f28, 80(sp)
    swc1 f30, 84(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! arg0 arg0) [a0: port-turret-shot ] -> [gp: port-turret-shot ]
    lwu v1, 124(gp)           ;; [  1] (set! v1-0 (l.wu (+ arg0 124)))
                              ;; [gp: port-turret-shot ] -> [v1: collide-shape-moving ]
    daddiu v1, v1, 12         ;; [  2] (set! v1-1 (+ v1-0 12)) [v1: collide-shape-moving ] -> [v1: vector ]
    daddiu a0, gp, 492        ;; [  3] (set! a0-1 (+ arg0 492)) [gp: port-turret-shot ] -> [a0: vector ]
    lq a0, 0(a0)              ;; [  4] (set! a0-2 (l.q a0-1)) [a0: vector ] -> [a0: uint128 ]
    sq a0, 0(v1)              ;; [  5] (s.q! v1-1 a0-2) [v1: vector a0: uint128 ] -> []
    lw t9, projectile-move-fill-line-sphere(s7);; [  6] (set! t9-0 projectile-move-fill-line-sphere)
                              ;; [] -> [t9: (function projectile none) ]
    or a0, gp, r0             ;; [  7] (set! a0-3 arg0) [gp: port-turret-shot ] -> [a0: port-turret-shot ]
    jalr ra, t9               ;; [  8] (call! a0-3) [a0: port-turret-shot t9: (function projectile none) ] -> [v0: none ]
    sll v0, ra, 0

    mtc1 f0, r0               ;; [  9] (set! f0-0 0.0) [] -> []
    lwu v1, 124(gp)           ;; [ 10] (set! v1-2 (l.wu (+ arg0 124)))
                              ;; [gp: port-turret-shot ] -> [v1: collide-shape-moving ]
    lwc1 f1, 16(v1)           ;; [ 11] (set! f1-0 (l.f (+ v1-2 16))) [v1: collide-shape-moving ] -> []
    c.lt.s f0, f1             ;; [ 12] (b! (>=.s f0-0 f1-0) L87 (set! v1-3 #t)) [] -> [v1: symbol ]
    bc1f L87
    daddiu v1, s7, 4

B1:
    or v1, s7, r0             ;; [ 13] (set! v1-3 #f) [] -> [v1: '#f ]
B2:
L87:
    bnel s7, v1, L88          ;; [ 14] (bl! (truthy v1-3) L88 (no-delay!)) [v1: symbol ] -> []
B3:
    or v1, v1, r0             ;; [ 15] (set! v1-4 v1-3) [v1: symbol ] -> [v1: symbol ]

B4:
    daddiu v1, s7, 4          ;; [ 16] (set! v1-5 #t) [] -> [v1: <sym #t> ]
    lwu a0, 124(gp)           ;; [ 17] (set! a0-4 (l.wu (+ arg0 124)))
                              ;; [gp: port-turret-shot ] -> [a0: collide-shape-moving ]
    ld a0, 284(a0)            ;; [ 18] (set! a0-5 (l.d (+ a0-4 284)))
                              ;; [a0: collide-shape-moving ] -> [a0: collide-status ]
    andi a0, a0, 4            ;; [ 19] (set! a0-6 (logand a0-5 4)) [a0: collide-status ] -> [a0: collide-status ]
    movz v1, s7, a0           ;; [ 20] (cmove-#f-zero v1-4 a0-6 v1-5) [v1: <sym #t> a0: collide-status ] -> [v1: symbol ]
B5:
L88:
    beq s7, v1, L89           ;; [ 21] (b! (not v1-4) L89 (set! v1-6 #f)) [v1: symbol ] -> [v1: '#f ]
    or v1, s7, r0

B6:
    lw t9, enter-state(s7)    ;; [ 22] (set! t9-1 enter-state) [] -> [t9: <enter-state-func> ]
    lwu v1, -4(gp)            ;; [ 23] (set! v1-7 (l.wu (+ arg0 -4)))
                              ;; [gp: port-turret-shot ] -> [v1: <the type port-turret-shot> ]
    lwu v1, 104(v1)           ;; [ 24] (set! v1-8 (l.wu (+ v1-7 104)))
                              ;; [v1: <the type port-turret-shot> ] -> [v1: <vmethod (state port-turret-shot)> ]
    sw v1, 64(s6)             ;; [ 25] (s.w! (+ pp 64) v1-8) [v1: <vmethod (state port-turret-shot)> s6: process ] -> []
    jalr ra, t9               ;; [ 26] (call!)     [t9: <enter-state-func> ] -> [v0: object ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 27] (set! v1-9 v0-1) [v0: object ] -> [v1: object ]
B7:
L89:
    daddiu v1, gp, 492        ;; [ 28] (set! v1-10 (+ arg0 492)) [gp: port-turret-shot ] -> [v1: vector ]
    lwu a0, 124(gp)           ;; [ 29] (set! a0-7 (l.wu (+ arg0 124)))
                              ;; [gp: port-turret-shot ] -> [a0: collide-shape-moving ]
    daddiu a0, a0, 12         ;; [ 30] (set! a0-8 (+ a0-7 12)) [a0: collide-shape-moving ] -> [a0: vector ]
    lq a0, 0(a0)              ;; [ 31] (set! a0-9 (l.q a0-8)) [a0: vector ] -> [a0: uint128 ]
    sq a0, 0(v1)              ;; [ 32] (s.q! v1-10 a0-9) [v1: vector a0: uint128 ] -> []
    lwu v1, 124(gp)           ;; [ 33] (set! v1-11 (l.wu (+ arg0 124)))
                              ;; [gp: port-turret-shot ] -> [v1: collide-shape-moving ]
    lwc1 f30, 16(v1)          ;; [ 34] (set! f30-0 (l.f (+ v1-11 16))) [v1: collide-shape-moving ] -> []
    lui v1, 18288             ;; [ 35] (set! v1-12 61440.0) [] -> [v1: float ]
    mtc1 f28, v1              ;; [ 36] (set! f28-0 (gpr->fpr v1-12)) [v1: float ] -> []
    lw t9, sin(s7)            ;; [ 37] (set! t9-2 sin) [] -> [t9: (function float float) ]
    lui v1, 18176             ;; [ 38] (set! v1-13 32768.0) [] -> [v1: float ]
    mtc1 f0, v1               ;; [ 39] (set! f0-1 (gpr->fpr v1-13)) [v1: float ] -> []
    lwu v1, 124(gp)           ;; [ 40] (set! v1-14 (l.wu (+ arg0 124)))
                              ;; [gp: port-turret-shot ] -> [v1: collide-shape-moving ]
    lwc1 f1, 16(v1)           ;; [ 41] (set! f1-1 (l.f (+ v1-14 16))) [v1: collide-shape-moving ] -> []
    lwc1 f2, 508(gp)          ;; [ 42] (set! f2-0 (l.f (+ arg0 508))) [gp: port-turret-shot ] -> []
    div.s f1, f1, f2          ;; [ 43] (set! f1-2 (/.s f1-1 f2-0)) [] -> []
    mul.s f0, f0, f1          ;; [ 44] (set! f0-2 (*.s f0-1 f1-2)) [] -> []
    mfc1 a0, f0               ;; [ 45] (set! a0-10 (fpr->gpr f0-2)) [] -> [a0: float ]
    jalr ra, t9               ;; [ 46] (call! a0-10) [a0: float t9: (function float float) ] -> [v0: float ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [ 47] (set! f0-3 (gpr->fpr v0-2)) [v0: float ] -> []
    mul.s f0, f28, f0         ;; [ 48] (set! f0-4 (*.s f28-0 f0-3)) [] -> []
    add.s f0, f30, f0         ;; [ 49] (set! f0-5 (+.s f30-0 f0-4)) [] -> []
    lwu v1, 124(gp)           ;; [ 50] (set! v1-15 (l.wu (+ arg0 124)))
                              ;; [gp: port-turret-shot ] -> [v1: collide-shape-moving ]
    swc1 f0, 16(v1)           ;; [ 51] (s.f! (+ v1-15 16) f0-5) [v1: collide-shape-moving ] -> []
    lwu s4, 124(gp)           ;; [ 52] (set! s4-0 (l.wu (+ arg0 124)))
                              ;; [gp: port-turret-shot ] -> [s4: collide-shape-moving ]
    daddiu s5, sp, 16         ;; [ 53] (set! s5-0 (+ sp-0 16)) [sp: <uninitialized> ] -> [s5: vector ]
    or a1, s5, r0             ;; [ 54] (set! a1-0 s5-0) [s5: vector ] -> [a1: vector ]
    daddiu v1, gp, 460        ;; [ 55] (set! v1-16 (+ arg0 460)) [gp: port-turret-shot ] -> [v1: (pointer time-frame) ]
    daddiu a0, s4, 12         ;; [ 56] (set! a0-11 (+ s4-0 12)) [s4: collide-shape-moving ] -> [a0: vector ]
    lqc2 vf4, 0(v1)           ;; [ 57] (set! a1-1 (vector-!2 a1-0 v1-16 a0-11))
                              ;; [v1: (pointer time-frame) a0: vector a1: vector ] -> [a1: vector ]
    lqc2 vf5, 0(a0)
    vmove.w vf6, vf0
    vsub.xyz vf6, vf4, vf5
    sqc2 vf6, 0(a1)
    or v1, s5, r0             ;; [ 58] (set! v1-17 s5-0) [s5: vector ] -> [v1: vector ]
    lqc2 vf1, 0(v1)           ;; [ 59] (set! v1-18 (veclength v1-17)) [v1: vector ] -> [v1: float ]
    vmul.xyzw vf1, vf1, vf1
    vmulax.w acc, vf0, vf1
    vmadday.w acc, vf0, vf1
    vmaddz.w vf1, vf0, vf1
    vsqrt Q, vf1.w
    vaddw.x vf1, vf0, vf0
    vwaitq
    vmulq.x vf1, vf1, Q
    vnop
    vnop
    qmfc2.i v1, vf1
    mtc1 f0, v1               ;; [ 60] (set! f0-6 (gpr->fpr v1-18)) [v1: float ] -> []
    lui v1, 18192             ;; [ 61] (set! v1-19 36864.0) [] -> [v1: float ]
    mtc1 f1, v1               ;; [ 62] (set! f1-3 (gpr->fpr v1-19)) [v1: float ] -> []
    c.lt.s f1, f0             ;; [ 63] (b! (>=.s f1-3 f0-6) L90 (set! v1-20 #f)) [] -> [v1: '#f ]
    bc1f L90
    or v1, s7, r0

B8:
    lw t9, vector-normalize!(s7);; [ 64] (set! t9-3 vector-normalize!) [] -> [t9: (function vector float vector) ]
    or a0, s5, r0             ;; [ 65] (set! a0-12 s5-0) [s5: vector ] -> [a0: vector ]
    lui a1, 18192             ;; [ 66] (set! a1-2 36864.0) [] -> [a1: float ]
    jalr ra, t9               ;; [ 67] (call! a0-12 a1-2)
                              ;; [a0: vector a1: float t9: (function vector float vector) ] -> [v0: vector ]
    sll v0, ra, 0

    daddiu v1, gp, 460        ;; [ 68] (set! v1-21 (+ arg0 460)) [gp: port-turret-shot ] -> [v1: (pointer time-frame) ]
    daddiu a0, s4, 12         ;; [ 69] (set! a0-13 (+ s4-0 12)) [s4: collide-shape-moving ] -> [a0: vector ]
    vmove.w vf6, vf0          ;; [ 70] (set! v1-22 (vector+!2 v1-21 a0-13 s5-0))
                              ;; [v1: (pointer time-frame) a0: vector s5: vector ] -> [v1: vector ]
    lqc2 vf4, 0(a0)
    lqc2 vf5, 0(s5)
    vadd.xyz vf6, vf4, vf5
    sqc2 vf6, 0(v1)
B9:
L90:
    or v0, r0, r0             ;; [ 71] (set! v0-4 0) [] -> [v0: <integer 0> ]
    ld ra, 0(sp)
    lwc1 f30, 84(sp)
    lwc1 f28, 80(sp)
    lq gp, 64(sp)
    lq s5, 48(sp)
    lq s4, 32(sp)
    jr ra
    daddiu sp, sp, 96

    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(defun port-turret-shot-move ((arg0 port-turret-shot))
  (set! (-> arg0 root trans quad) (-> arg0 hit-pos quad))
  (projectile-move-fill-line-sphere arg0)
  (if (or (>= 0.0 (-> arg0 root trans y)) (logtest? (-> arg0 root status) (collide-status touch-surface)))
      (go (method-of-object arg0 impact))
      )
  (set! (-> arg0 hit-pos quad) (-> arg0 root trans quad))
  (+! (-> arg0 root trans y) (* 61440.0 (sin (* 32768.0 (/ (-> arg0 root trans y) (-> arg0 initial-y))))))
  (let ((s4-0 (-> arg0 root))
        (s5-0 (new 'stack-no-clear 'vector))
        )
    (vector-! s5-0 (the-as vector (&-> arg0 invinc-time)) (-> s4-0 trans))
    (let ((f0-6 (vector-length s5-0)))
      (when (< 36864.0 f0-6)
        (vector-normalize! s5-0 36864.0)
        (vector+! (the-as vector (&-> arg0 invinc-time)) (-> s4-0 trans) s5-0)
        )
      )
    )
  0
  (none)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    ((seq
       (cond
         (b0
           b1
           )
         )
       (sc (b2 b3) b4)
       b5
       )
     b6
     )
    )
  (cond
    (b7
      b8
      )
    )
  b9
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (code impact port-turret-shot)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x40, fp? 0 ra? 1 ep? 1
  ;stack_vars: 40 bytes at 8
  ;fprs: f30
  ;internal_name: (anon-function 10 port-blimp)
;; Warnings:
;; ERROR: failed type prop at 5: Could not figure out load: (set! a0 (l.wu (+ v1 64)))

L91:
    daddiu sp, sp, -64
    sd ra, 0(sp)
    swc1 f30, 48(sp)
B0:
    lui v1, 17920             ;; [  0] (set! v1-0 #x46000000) [] -> [v1: <integer 1174405120> ]
    mtc1 f30, v1              ;; [  1] (set! f30-0 (gpr->fpr v1-0)) [v1: <integer 1174405120> ] -> []
B1:
L92:
    lwu v1, 124(s6)           ;; [  2] (set! v1-1 (l.wu (+ s6-0 124)))
                              ;; [s6: port-turret-shot ] -> [v1: collide-shape-moving ]
    lwu v1, 156(v1)           ;; [  3] (set! v1-2 (l.wu (+ v1-1 156)))
                              ;; [v1: collide-shape-moving ] -> [v1: collide-shape-prim ]
    swc1 f30, 24(v1)          ;; [  4] (s.f! (+ v1-2 24) f30-0) [v1: collide-shape-prim ] -> []
    lwu a0, 64(v1)            ;; [  5] (set! a0-0 (l.wu (+ v1-2 64))) [v1: collide-shape-prim ] -> [a0: <uninitialized> ]
    swc1 f30, 104(a0)         ;; [  6] (s.f! (+ a0-0 104) f30-0) [a0: <uninitialized> ] -> []
    lw t9, add-debug-sphere(s7);; [  7] (set! t9-0 add-debug-sphere) [] -> [t9: <uninitialized> ]
    daddiu a0, s7, #t         ;; [  8] (set! a0-1 #t) [] -> [a0: <uninitialized> ]
    addiu a1, r0, 317         ;; [  9] (set! a1-0 317) [] -> [a1: <uninitialized> ]
    daddiu a2, v1, 12         ;; [ 10] (set! a2-0 (+ v1-2 12)) [v1: collide-shape-prim ] -> [a2: <uninitialized> ]
    lwc1 f0, 24(v1)           ;; [ 11] (set! f0-0 (l.f (+ v1-2 24))) [v1: collide-shape-prim ] -> []
    mfc1 a3, f0               ;; [ 12] (set! a3-0 (fpr->gpr f0-0)) [] -> [a3: <uninitialized> ]
    lw t0, *color-green*(s7)  ;; [ 13] (set! t0-0 *color-green*) [] -> [t0: <uninitialized> ]
    jalr ra, t9               ;; [ 14] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 15] (set! v1-3 v0-0) [v0: <uninitialized> ] -> [v1: <uninitialized> ]
    daddiu a1, sp, 16         ;; [ 16] (set! a1-1 (+ sp-0 16)) [sp: <uninitialized> ] -> [a1: <uninitialized> ]
    sw r0, 0(a1)              ;; [ 17] (s.w! a1-1 0) [a1: <uninitialized> ] -> []
    addiu v1, r0, -1          ;; [ 18] (set! v1-4 -1) [] -> [v1: <uninitialized> ]
    sw v1, 4(a1)              ;; [ 19] (s.w! (+ a1-1 4) v1-4) [v1: <uninitialized> a1: <uninitialized> ] -> []
    lw v1, *touching-list*(s7);; [ 20] (set! v1-5 *touching-list*) [] -> [v1: <uninitialized> ]
    sw v1, 8(a1)              ;; [ 21] (s.w! (+ a1-1 8) v1-5) [v1: <uninitialized> a1: <uninitialized> ] -> []
    lwu a0, 124(s6)           ;; [ 22] (set! a0-2 (l.wu (+ s6-0 124))) [s6: port-turret-shot ] -> [a0: <uninitialized> ]
    lwu v1, -4(a0)            ;; [ 23] (set! v1-6 (l.wu (+ a0-2 -4))) [a0: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu t9, 176(v1)           ;; [ 24] (set! t9-1 (l.wu (+ v1-6 176))) [v1: <uninitialized> ] -> [t9: <uninitialized> ]
    jalr ra, t9               ;; [ 25] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 26] (set! v1-7 v0-1) [v0: <uninitialized> ] -> [v1: <uninitialized> ]
    lw t9, seek(s7)           ;; [ 27] (set! t9-2 seek) [] -> [t9: <uninitialized> ]
    mfc1 a0, f30              ;; [ 28] (set! a0-3 (fpr->gpr f30-0)) [] -> [a0: <uninitialized> ]
    lui a1, 18336             ;; [ 29] (set! a1-2 #x47a00000) [] -> [a1: <uninitialized> ]
    lui v1, 17664             ;; [ 30] (set! v1-8 #x45000000) [] -> [v1: <uninitialized> ]
    mtc1 f0, v1               ;; [ 31] (set! f0-1 (gpr->fpr v1-8)) [v1: <uninitialized> ] -> []
    lwu v1, 8(s6)             ;; [ 32] (set! v1-9 (l.wu (+ s6-0 8))) [s6: port-turret-shot ] -> [v1: <uninitialized> ]
    lwc1 f1, 84(v1)           ;; [ 33] (set! f1-0 (l.f (+ v1-9 84))) [v1: <uninitialized> ] -> []
    mul.s f0, f0, f1          ;; [ 34] (set! f0-2 (*.s f0-1 f1-0)) [] -> []
    mfc1 a2, f0               ;; [ 35] (set! a2-1 (fpr->gpr f0-2)) [] -> [a2: <uninitialized> ]
    jalr ra, t9               ;; [ 36] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    mtc1 f30, v0              ;; [ 37] (set! f30-0 (gpr->fpr v0-2)) [v0: <uninitialized> ] -> []
    lui v1, 18336             ;; [ 38] (set! v1-10 #x47a00000) [] -> [v1: <uninitialized> ]
    mtc1 f0, v1               ;; [ 39] (set! f0-3 (gpr->fpr v1-10)) [v1: <uninitialized> ] -> []
    c.eq.s f30, f0            ;; [ 40] (b! (!=.s f30-0 f0-3) L93 (set! v1-11 #f)) [] -> [v1: <uninitialized> ]
    bc1f L93
    or v1, s7, r0

B2:
    lw t9, enter-state(s7)    ;; [ 41] (set! t9-3 enter-state) [] -> [t9: <uninitialized> ]
    lwu v1, -4(s6)            ;; [ 42] (set! v1-12 (l.wu (+ s6-0 -4))) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu v1, 96(v1)            ;; [ 43] (set! v1-13 (l.wu (+ v1-12 96))) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    sw v1, 64(s6)             ;; [ 44] (s.w! (+ s6-0 64) v1-13) [v1: <uninitialized> s6: <uninitialized> ] -> []
    jalr ra, t9               ;; [ 45] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 46] (set! v1-14 v0-3) [v0: <uninitialized> ] -> [v1: <uninitialized> ]
B3:
L93:
    lwu s6, 48(s6)            ;; [ 47] (suspend)   [] -> []
    mtlo1 s6
    lwu s6, 12(s6)
    jalr ra, s6
    mflo1 s6

    beq s7, s7, L92           ;; [ 48] (b! (not #f) L92 (set! v0-4 #f)) [] -> [v0: <uninitialized> ]
    or v0, s7, r0

B4:
    ld ra, 0(sp)
    lwc1 f30, 48(sp)
    jr ra
    daddiu sp, sp, 64

    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(state-handler
  (code impact port-turret-shot)
  ()
  (local-vars
    (v0-0 none)
    (v0-1 none)
    (v0-2 none)
    (v0-3 none)
    (v1-0 int)
    (v1-1 collide-shape-moving)
    (v1-2 collide-shape-prim)
    (v1-4 none)
    (v1-5 none)
    (v1-6 none)
    (v1-8 none)
    (v1-9 none)
    (v1-10 none)
    (v1-12 none)
    (v1-13 none)
    (a0-0 none)
    (a0-1 none)
    (a0-2 none)
    (a1-0 none)
    (a1-1 none)
    (a1-2 none)
    (a2-0 none)
    (t0-0 none)
    (t9-0 none)
    (t9-1 none)
    (t9-2 none)
    (t9-3 none)
    (sp-0 none)
    (f0-0 none)
    (f0-1 none)
    (f0-2 none)
    (f0-3 none)
    (f1-0 none)
    (f30-0 int)
    )
  (set! v1-0 #x46000000)
  (set! f30-0 (gpr->fpr v1-0))
  (until (begin (suspend) #f)
    (when (begin
            (set! v1-1 (-> s6-0 root))
            (set! v1-2 (-> v1-1 root-prim))
            (set! (-> v1-2 prim-core world-sphere w) (the-as float f30-0))
            (set! a0-0 (the-as none (l.wu (+ v1-2 64))))
            (s.f! (+ a0-0 104) f30-0)
            (set! t9-0 (the-as none add-debug-sphere))
            (set! a0-1 (the-as none #t))
            (set! a1-0 (the-as none 317))
            (set! a2-0 (the-as none (-> v1-2 prim-core)))
            (set! f0-0 (the-as none (-> v1-2 prim-core world-sphere w)))
            (set! a3-0 (the-as none (fpr->gpr f0-0)))
            (set! t0-0 (the-as none *color-green*))
            (call!)
            (set! v1-3 (the-as none v0-0))
            (set! a1-1 (the-as none (+ sp-0 16)))
            (s.w! a1-1 0)
            (set! v1-4 (the-as none -1))
            (s.w! (+ a1-1 4) v1-4)
            (set! v1-5 (the-as none *touching-list*))
            (s.w! (+ a1-1 8) v1-5)
            (set! a0-2 (the-as none (-> s6-0 root)))
            (set! v1-6 (the-as none (l.wu (+ a0-2 -4))))
            (set! t9-1 (the-as none (l.wu (+ v1-6 176))))
            (call!)
            (set! v1-7 (the-as none v0-1))
            (set! t9-2 (the-as none seek))
            (set! a0-3 (the-as none (fpr->gpr f30-0)))
            (set! a1-2 (the-as none #x47a00000))
            (set! v1-8 (the-as none #x45000000))
            (set! f0-1 (the-as none (gpr->fpr v1-8)))
            (set! v1-9 (the-as none (-> s6-0 clock)))
            (set! f1-0 (the-as none (l.f (+ v1-9 84))))
            (set! f0-2 (the-as none (*.s f0-1 f1-0)))
            (set! a2-1 (the-as none (fpr->gpr f0-2)))
            (set! v0-2 (the-as none (call!)))
            (set! f30-0 (the-as int (gpr->fpr v0-2)))
            (set! v1-10 (the-as none #x47a00000))
            (set! f0-3 (the-as none (gpr->fpr v1-10)))
            (=.s f30-0 f0-3)
            )
      (set! t9-3 (the-as none enter-state))
      (set! v1-12 (the-as none (l.wu (+ s6-0 -4))))
      (set! v1-13 (the-as none (l.wu (+ v1-12 96))))
      (s.w! (+ s6-0 64) v1-13)
      (call!)
      (set! v1-14 (the-as none v0-3))
      )
    )
  (ret-none)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  b0
  (until b3
    (cond
      (b1
        b2
        )
      )
    )
  b4
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (post idle port-metal-head-boat)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x290, fp? 0 ra? 1 ep? 1
  ;stack_vars: 632 bytes at 8
  ;gprs: gp
  ;internal_name: (anon-function 11 port-blimp)
;; Warnings:
;; ERROR: failed type prop at 2: Could not figure out load: (set! v1 (l.wu (+ gp 156)))
;; ERROR: Failed to guess stack use for 16 in (post idle port-metal-head-boat):0

L94:
    daddiu sp, sp, -656
    sd ra, 0(sp)
    sq gp, 640(sp)
B0:
    daddiu a2, sp, 16         ;; [  0] (set! a2-0 (+ sp-0 16)) [sp: <uninitialized> ] -> [a2: <uninitialized> ]
    lwu gp, 124(s6)           ;; [  1] (set! gp-0 (l.wu (+ s6-0 124))) [s6: port-metal-head-boat ] -> [gp: trsqv ]
    lwu v1, 156(gp)           ;; [  2] (set! v1-0 (l.wu (+ gp-0 156))) [gp: trsqv ] -> [v1: <uninitialized> ]
    lwu v1, 32(v1)            ;; [  3] (set! v1-1 (l.wu (+ v1-0 32))) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    sw v1, 100(a2)            ;; [  4] (s.w! (+ a2-0 100) v1-1) [v1: <uninitialized> a2: <uninitialized> ] -> []
    sw s6, 88(a2)             ;; [  5] (s.w! (+ a2-0 88) s6-0) [a2: <uninitialized> s6: port-metal-head-boat ] -> []
    sw s7, 92(a2)             ;; [  6] (s.w! (+ a2-0 92) #f) [a2: <uninitialized> ] -> []
    lwu v1, 144(gp)           ;; [  7] (set! v1-2 (l.wu (+ gp-0 144))) [gp: trsqv ] -> [v1: <uninitialized> ]
    sw v1, 96(a2)             ;; [  8] (s.w! (+ a2-0 96) v1-2) [v1: <uninitialized> a2: <uninitialized> ] -> []
    addiu v1, r0, 1           ;; [  9] (set! v1-3 1) [] -> [v1: <uninitialized> ]
    sw v1, 352(a2)            ;; [ 10] (s.w! (+ a2-0 352) v1-3) [v1: <uninitialized> a2: <uninitialized> ] -> []
    or a0, gp, r0             ;; [ 11] (set! a0-0 gp-0) [gp: trsqv ] -> [a0: <uninitialized> ]
    lwu v1, -4(a0)            ;; [ 12] (set! v1-4 (l.wu (+ a0-0 -4))) [a0: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu t9, 144(v1)           ;; [ 13] (set! t9-0 (l.wu (+ v1-4 144))) [v1: <uninitialized> ] -> [t9: <uninitialized> ]
    daddiu a1, gp, 60         ;; [ 14] (set! a1-0 (+ gp-0 60)) [gp: trsqv ] -> [a1: <uninitialized> ]
    addiu a3, r0, 0           ;; [ 15] (set! a3-0 0) [] -> [a3: <uninitialized> ]
    jalr ra, t9               ;; [ 16] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 17] (set! v1-5 v0-0) [v0: <uninitialized> ] -> [v1: <uninitialized> ]
    ld v1, 284(gp)            ;; [ 18] (set! v1-6 (l.d (+ gp-0 284))) [gp: trsqv ] -> [v1: <uninitialized> ]
    andi v1, v1, 4            ;; [ 19] (set! v1-7 (logand v1-6 4)) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    beql v1, r0, L95          ;; [ 20] (bl! (zero? v1-7) L95 (no-delay!)) [v1: <uninitialized> ] -> []
B1:
    or v1, s7, r0             ;; [ 21] (set! v1-8 #f) [] -> [v1: <uninitialized> ]

B2:
    lwu v1, 8(s6)             ;; [ 22] (set! v1-9 (l.wu (+ s6-0 8))) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    ld v1, 20(v1)             ;; [ 23] (set! v1-10 (l.d (+ v1-9 20))) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    ld a0, 188(s6)            ;; [ 24] (set! a0-1 (l.d (+ s6-0 188))) [s6: <uninitialized> ] -> [a0: <uninitialized> ]
    dsubu v1, v1, a0          ;; [ 25] (set! v1-11 (- v1-10 a0-1))
                              ;; [v1: <uninitialized> a0: <uninitialized> ] -> [v1: <uninitialized> ]
    slti a0, v1, 3            ;; [ 26] (set! v1-8 (>=.si v1-11 3)) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    daddiu v1, s7, 4
    movn v1, s7, a0
B3:
L95:
    beq s7, v1, L100          ;; [ 27] (b! (not v1-8) L100 (set! v1-12 #f))
                              ;; [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    or v1, s7, r0

B4:
    daddiu a1, sp, 560        ;; [ 28] (set! a1-1 (+ sp-0 560)) [sp: <uninitialized> ] -> [a1: <uninitialized> ]
    or v1, s6, r0             ;; [ 29] (set! v1-13 s6-0) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    beq s7, v1, L96           ;; [ 30] (b! (not v1-13) L96 (set! a0-2 #f))
                              ;; [v1: <uninitialized> ] -> [a0: <uninitialized> ]
    or a0, s7, r0

B5:
    lwu a0, 24(v1)            ;; [ 31] (set! a0-2 (l.wu (+ v1-13 24))) [v1: <uninitialized> ] -> [a0: <uninitialized> ]
B6:
L96:
    sw a0, 8(a1)              ;; [ 32] (s.w! (+ a1-1 8) a0-2) [a0: <uninitialized> a1: <uninitialized> ] -> []
    addiu v1, r0, 1           ;; [ 33] (set! v1-14 1) [] -> [v1: <uninitialized> ]
    sw v1, 68(a1)             ;; [ 34] (s.w! (+ a1-1 68) v1-14) [v1: <uninitialized> a1: <uninitialized> ] -> []
    daddiu v1, s7, boom       ;; [ 35] (set! v1-15 'boom) [] -> [v1: <uninitialized> ]
    sw v1, 64(a1)             ;; [ 36] (s.w! (+ a1-1 64) v1-15) [v1: <uninitialized> a1: <uninitialized> ] -> []
    addiu v1, r0, 1           ;; [ 37] (set! v1-16 1) [] -> [v1: <uninitialized> ]
    lw a0, 272(s6)            ;; [ 38] (set! a0-3 (l.w (+ s6-0 272))) [s6: <uninitialized> ] -> [a0: <uninitialized> ]
    bne a0, v1, L97           ;; [ 39] (b! (!= a0-3 v1-16) L97 (nop!)) [v1: <uninitialized> a0: <uninitialized> ] -> []
    sll r0, r0, 0

B7:
    lui v1, 16256             ;; [ 40] (set! v1-17 #x3f800000) [] -> [v1: <uninitialized> ]
    beq r0, r0, L98           ;; [ 41] (b! #t L98 (nop!)) [] -> []
    sll r0, r0, 0

B8:
L97:
    lui v1, 16384             ;; [ 42] (set! v1-17 #x40000000) [] -> [v1: <uninitialized> ]
B9:
L98:
    sd v1, 16(a1)             ;; [ 43] (s.d! (+ a1-1 16) v1-17) [v1: <uninitialized> a1: <uninitialized> ] -> []
    lw t9, send-event-function(s7);; [ 44] (set! t9-1 send-event-function) [] -> [t9: <uninitialized> ]
    lwu v1, 12(s6)            ;; [ 45] (set! v1-18 (l.wu (+ s6-0 12))) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    beq s7, v1, L99           ;; [ 46] (b! (not v1-18) L99 (set! a0-4 #f))
                              ;; [v1: <uninitialized> ] -> [a0: <uninitialized> ]
    or a0, s7, r0

B10:
    lwu v1, 0(v1)             ;; [ 47] (set! v1-19 (l.wu v1-18)) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu a0, 28(v1)            ;; [ 48] (set! a0-5 (l.wu (+ v1-19 28))) [v1: <uninitialized> ] -> [a0: <uninitialized> ]
B11:
L99:
    jalr ra, t9               ;; [ 49] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 50] (set! v1-20 v0-1) [v0: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu v1, 12(s6)            ;; [ 51] (set! v1-21 (l.wu (+ s6-0 12))) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu v1, 0(v1)             ;; [ 52] (set! v1-22 (l.wu v1-21)) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    lw v1, 564(v1)            ;; [ 53] (set! v1-23 (l.w (+ v1-22 564))) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    daddiu v1, v1, -1         ;; [ 54] (set! v1-24 (+ v1-23 -1)) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu a0, 12(s6)            ;; [ 55] (set! a0-6 (l.wu (+ s6-0 12))) [s6: <uninitialized> ] -> [a0: <uninitialized> ]
    lwu a0, 0(a0)             ;; [ 56] (set! a0-7 (l.wu a0-6)) [a0: <uninitialized> ] -> [a0: <uninitialized> ]
    sw v1, 564(a0)            ;; [ 57] (s.w! (+ a0-7 564) v1-24) [v1: <uninitialized> a0: <uninitialized> ] -> []
    or a0, s6, r0             ;; [ 58] (set! a0-8 s6-0) [s6: <uninitialized> ] -> [a0: <uninitialized> ]
    lwu v1, -4(a0)            ;; [ 59] (set! v1-25 (l.wu (+ a0-8 -4))) [a0: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu t9, 56(v1)            ;; [ 60] (set! t9-2 (l.wu (+ v1-25 56))) [v1: <uninitialized> ] -> [t9: <uninitialized> ]
    jalr ra, t9               ;; [ 61] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 62] (set! v1-26 v0-2) [v0: <uninitialized> ] -> [v1: <uninitialized> ]
B12:
L100:
    lw t9, ja-post(s7)        ;; [ 63] (set! t9-3 ja-post) [] -> [t9: <uninitialized> ]
    jalr ra, t9               ;; [ 64] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    ld ra, 0(sp)
    lq gp, 640(sp)
    jr ra
    daddiu sp, sp, 656

    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(state-handler
  (post idle port-metal-head-boat)
  ()
  (local-vars
    (v0-0 none)
    (v0-1 none)
    (v0-2 none)
    (v0-3 none)
    (v1-0 none)
    (v1-1 none)
    (v1-2 none)
    (v1-3 none)
    (v1-4 none)
    (v1-6 none)
    (v1-7 none)
    (v1-8 none)
    (v1-9 none)
    (v1-10 none)
    (v1-11 none)
    (v1-13 none)
    (v1-14 none)
    (v1-15 none)
    (v1-16 none)
    (v1-17 none)
    (v1-18 none)
    (v1-19 none)
    (v1-21 none)
    (v1-22 none)
    (v1-23 none)
    (v1-24 none)
    (v1-25 none)
    (a0-0 none)
    (a0-1 none)
    (a0-2 none)
    (a0-3 none)
    (a0-5 none)
    (a0-6 none)
    (a0-7 none)
    (a0-8 none)
    (a1-0 none)
    (a1-1 none)
    (a2-0 none)
    (a3-0 none)
    (t9-0 none)
    (t9-1 none)
    (t9-2 none)
    (t9-3 none)
    (gp-0 trsqv)
    (sp-0 none)
    )
  (when (begin
          (and (begin
                 (set! a2-0 (the-as none (+ sp-0 16)))
                 (set! gp-0 (-> s6-0 root))
                 (set! v1-0 (the-as none (l.wu (+ gp-0 156))))
                 (set! v1-1 (the-as none (l.wu (+ v1-0 32))))
                 (s.w! (+ a2-0 100) v1-1)
                 (s.w! (+ a2-0 88) s6-0)
                 (s.w! (+ a2-0 92) #f)
                 (set! v1-2 (the-as none (l.wu (+ gp-0 144))))
                 (s.w! (+ a2-0 96) v1-2)
                 (set! v1-3 (the-as none 1))
                 (s.w! (+ a2-0 352) v1-3)
                 (set! a0-0 (the-as none gp-0))
                 (set! v1-4 (the-as none (l.wu (+ a0-0 -4))))
                 (set! t9-0 (the-as none (l.wu (+ v1-4 144))))
                 (set! a1-0 (the-as none (-> gp-0 transv)))
                 (set! a3-0 (the-as none 0))
                 (call!)
                 (set! v1-5 (the-as none v0-0))
                 (set! v1-6 (the-as none (l.d (+ gp-0 284))))
                 (set! v1-7 (the-as none (logand v1-6 4)))
                 (nonzero? v1-7)
                 )
               (begin
                 (set! v1-9 (the-as none (l.wu (+ s6-0 8))))
                 (set! v1-10 (the-as none (l.d (+ v1-9 20))))
                 (set! a0-1 (the-as none (l.d (+ s6-0 188))))
                 (set! v1-11 (the-as none (- v1-10 a0-1)))
                 (set! v1-8 (the-as none (>=.si v1-11 3)))
                 )
               )
          v1-8
          )
    (when (begin
            (if (begin (set! a1-1 (the-as none (+ sp-0 560))) (set! v1-13 (the-as none s6-0)) v1-13)
                (set! a0-2 (the-as none (l.wu (+ v1-13 24))))
                )
            (if (begin
                  (s.w! (+ a1-1 8) a0-2)
                  (set! v1-14 (the-as none 1))
                  (s.w! (+ a1-1 68) v1-14)
                  (set! v1-15 (the-as none 'boom))
                  (s.w! (+ a1-1 64) v1-15)
                  (set! v1-16 (the-as none 1))
                  (set! a0-3 (the-as none (l.w (+ s6-0 272))))
                  (= a0-3 v1-16)
                  )
                (set! v1-17 (the-as none #x3f800000))
                (set! v1-17 (the-as none #x40000000))
                )
            (s.d! (+ a1-1 16) v1-17)
            (set! t9-1 (the-as none send-event-function))
            (set! v1-18 (the-as none (l.wu (+ s6-0 12))))
            v1-18
            )
      (set! v1-19 (the-as none (l.wu v1-18)))
      (set! a0-5 (the-as none (l.wu (+ v1-19 28))))
      )
    (call!)
    (set! v1-20 (the-as none v0-1))
    (set! v1-21 (the-as none (l.wu (+ s6-0 12))))
    (set! v1-22 (the-as none (l.wu v1-21)))
    (set! v1-23 (the-as none (l.w (+ v1-22 564))))
    (set! v1-24 (the-as none (+ v1-23 -1)))
    (set! a0-6 (the-as none (l.wu (+ s6-0 12))))
    (set! a0-7 (the-as none (l.wu a0-6)))
    (s.w! (+ a0-7 564) v1-24)
    (set! a0-8 (the-as none s6-0))
    (set! v1-25 (the-as none (l.wu (+ a0-8 -4))))
    (set! t9-2 (the-as none (l.wu (+ v1-25 56))))
    (call!)
    (set! v1-26 (the-as none v0-2))
    )
  (set! t9-3 (the-as none ja-post))
  (call!)
  (ret-none)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    ((seq (sc (b0 b1) b2) b3)
     (seq
       (cond
         ((seq
            (cond
              (b4
                b5
                )
              )
            (cond
              (b6
                b7
                )
              (else
                b8
                )
              )
            b9
            )
          b10
          )
         )
       b11
       )
     )
    )
  b12
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (code idle port-metal-head-boat)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0xa0, fp? 0 ra? 1 ep? 1
  ;stack_vars: 88 bytes at 8
  ;gprs: gp s5 s4
  ;fprs: f30 f28 f26 f24
  ;internal_name: (anon-function 12 port-blimp)
;; Warnings:
;; ERROR: failed type prop at 151: Could not figure out load: (set! v1 (l.w (+ v1 564)))
;; ERROR: Failed to guess stack use for 16 in (code idle port-metal-head-boat):127

L101:
    daddiu sp, sp, -160
    sd ra, 0(sp)
    sq s4, 96(sp)
    sq s5, 112(sp)
    sq gp, 128(sp)
    swc1 f24, 144(sp)
    swc1 f26, 148(sp)
    swc1 f28, 152(sp)
    swc1 f30, 156(sp)
B0:
L102:
    lwu v1, 136(s6)           ;; [  0] (set! v1-0 (l.wu (+ s6-0 136)))
                              ;; [s6: port-metal-head-boat ] -> [v1: joint-control ]
    lwu v1, 12(v1)            ;; [  1] (set! v1-1 (l.wu (+ v1-0 12)))
                              ;; [v1: joint-control ] -> [v1: (inline-array joint-control-channel) ]
    daddu v1, r0, v1          ;; [  2] (set! v1-2 (+ v1-1 0))
                              ;; [v1: (inline-array joint-control-channel) ] -> [v1: joint-control-channel ]
    lw a0, num-func-identity(s7);; [  3] (set! a0-0 num-func-identity)
                              ;; [] -> [a0: (function joint-control-channel float float float float :behavior process) ]
    sw a0, 16(v1)             ;; [  4] (s.w! (+ v1-2 16) a0-0)
                              ;; [v1: joint-control-channel a0: (function joint-control-channel float float float float :behavior process) ] -> []
    mtc1 f0, r0               ;; [  5] (set! f0-0 0) [] -> []
    swc1 f0, 8(v1)            ;; [  6] (s.f! (+ v1-2 8) f0-0) [v1: joint-control-channel ] -> []
    mfc1 v1, f0               ;; [  7] (set! v1-3 (fpr->gpr f0-0)) [] -> [v1: float ]
    lw t9, seek(s7)           ;; [  8] (set! t9-0 seek) [] -> [t9: (function float float float float) ]
    lwc1 f0, 208(s6)          ;; [  9] (set! f0-1 (l.f (+ s6-0 208))) [s6: port-metal-head-boat ] -> []
    mfc1 a0, f0               ;; [ 10] (set! a0-1 (fpr->gpr f0-1)) [] -> [a0: float ]
    addiu a1, r0, 0           ;; [ 11] (set! a1-0 0) [] -> [a1: float ]
    lui v1, 17484             ;; [ 12] (set! v1-4 #x444ccccd) [] -> [v1: <integer 1145883853> ]
    ori v1, v1, 52429
    mtc1 f0, v1               ;; [ 13] (set! f0-2 (gpr->fpr v1-4)) [v1: <integer 1145883853> ] -> []
    lwu v1, 8(s6)             ;; [ 14] (set! v1-5 (l.wu (+ s6-0 8))) [s6: port-metal-head-boat ] -> [v1: clock ]
    lwc1 f1, 84(v1)           ;; [ 15] (set! f1-0 (l.f (+ v1-5 84))) [v1: clock ] -> []
    mul.s f0, f0, f1          ;; [ 16] (set! f0-3 (*.s f0-2 f1-0)) [] -> []
    mfc1 a2, f0               ;; [ 17] (set! a2-0 (fpr->gpr f0-3)) [] -> [a2: float ]
    jalr ra, t9               ;; [ 18] (call! a0-1 a1-0 a2-0)
                              ;; [a0: float a1: float a2: float t9: (function float float float float) ] -> [v0: float ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [ 19] (set! f0-4 (gpr->fpr v0-0)) [v0: float ] -> []
    swc1 f0, 208(s6)          ;; [ 20] (s.f! (+ s6-0 208) f0-4) [s6: port-metal-head-boat ] -> []
    lui v1, 16128             ;; [ 21] (set! v1-6 #x3f000000) [] -> [v1: <integer 1056964608> ]
    mtc1 f0, v1               ;; [ 22] (set! f0-5 (gpr->fpr v1-6)) [v1: <integer 1056964608> ] -> []
    lui v1, 13338             ;; [ 23] (set! v1-7 #x341a33cd) [] -> [v1: <integer 874132429> ]
    ori v1, v1, 13261
    mtc1 f1, v1               ;; [ 24] (set! f1-1 (gpr->fpr v1-7)) [v1: <integer 874132429> ] -> []
    lui v1, -13581            ;; [ 25] (set! v1-8 -889995264) [] -> [v1: <integer -889995264> ]
    ori v1, v1, 49152
    mtc1 f2, v1               ;; [ 26] (set! f2-0 (gpr->fpr v1-8)) [v1: <integer -889995264> ] -> []
    lwc1 f3, 212(s6)          ;; [ 27] (set! f3-0 (l.f (+ s6-0 212))) [s6: port-metal-head-boat ] -> []
    add.s f2, f2, f3          ;; [ 28] (set! f2-1 (+.s f2-0 f3-0)) [] -> []
    mul.s f1, f1, f2          ;; [ 29] (set! f1-2 (*.s f1-1 f2-1)) [] -> []
    add.s f30, f0, f1         ;; [ 30] (set! f30-0 (+.s f0-5 f1-2)) [] -> []
    lui v1, 17206             ;; [ 31] (set! v1-9 #x43360b61) [] -> [v1: <integer 1127615329> ]
    ori v1, v1, 2913
    mtc1 f0, v1               ;; [ 32] (set! f0-6 (gpr->fpr v1-9)) [v1: <integer 1127615329> ] -> []
    lw v1, *display*(s7)      ;; [ 33] (set! v1-10 *display*) [] -> [v1: display ]
    lwu v1, 40(v1)            ;; [ 34] (set! v1-11 (l.wu (+ v1-10 40))) [v1: display ] -> [v1: clock ]
    ld v1, 20(v1)             ;; [ 35] (set! v1-12 (l.d (+ v1-11 20))) [v1: clock ] -> [v1: time-frame ]
    mtc1 f1, v1               ;; [ 36] (set! f1-3 (gpr->fpr v1-12)) [v1: time-frame ] -> []
    cvt.s.w f1, f1            ;; [ 37] (set! f1-4 (i2f f1-3)) [] -> []
    lwc1 f2, 280(s6)          ;; [ 38] (set! f2-2 (l.f (+ s6-0 280))) [s6: port-metal-head-boat ] -> []
    mul.s f1, f1, f2          ;; [ 39] (set! f1-5 (*.s f1-4 f2-2)) [] -> []
    mul.s f28, f0, f1         ;; [ 40] (set! f28-0 (*.s f0-6 f1-5)) [] -> []
    lwc1 f0, 280(s6)          ;; [ 41] (set! f0-7 (l.f (+ s6-0 280))) [s6: port-metal-head-boat ] -> []
    mtc1 f1, r0               ;; [ 42] (set! f1-6 0) [] -> []
    c.eq.s f0, f1             ;; [ 43] (b! (!=.s f0-7 f1-6) L103 (nop!)) [] -> []
    bc1f L103
    sll r0, r0, 0

B1:
    addiu v1, r0, 0           ;; [ 44] (set! v1-13 0) [] -> [v1: <integer 0> ]
    beq r0, r0, L104          ;; [ 45] (b! #t L104 (nop!)) [] -> []
    sll r0, r0, 0

B2:
L103:
    lui v1, 17206             ;; [ 46] (set! v1-14 #x43360b61) [] -> [v1: <uninitialized> ]
    ori v1, v1, 2913
    mtc1 f26, v1              ;; [ 47] (set! f26-0 (gpr->fpr v1-14)) [v1: <uninitialized> ] -> []
    lui v1, 16880             ;; [ 48] (set! v1-15 #x41f00000) [] -> [v1: <uninitialized> ]
    mtc1 f24, v1              ;; [ 49] (set! f24-0 (gpr->fpr v1-15)) [v1: <uninitialized> ] -> []
    lw t9, cos(s7)            ;; [ 50] (set! t9-1 cos) [] -> [t9: <uninitialized> ]
    mfc1 a0, f28              ;; [ 51] (set! a0-2 (fpr->gpr f28-0)) [] -> [a0: <uninitialized> ]
    jalr ra, t9               ;; [ 52] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [ 53] (set! f0-8 (gpr->fpr v0-1)) [v0: <uninitialized> ] -> []
    mul.s f0, f24, f0         ;; [ 54] (set! f0-9 (*.s f24-0 f0-8)) [] -> []
    mul.s f0, f0, f30         ;; [ 55] (set! f0-10 (*.s f0-9 f30-0)) [] -> []
    mul.s f0, f26, f0         ;; [ 56] (set! f0-11 (*.s f26-0 f0-10)) [] -> []
    mfc1 v1, f0               ;; [ 57] (set! v1-13 (fpr->gpr f0-11)) [] -> [v1: <uninitialized> ]
B3:
L104:
    mtc1 f26, v1              ;; [ 58] (set! f26-1 (gpr->fpr v1-13)) [v1: <uninitialized> ] -> []
    lw t9, quaternion-axis-angle!(s7);; [ 59] (set! t9-2 quaternion-axis-angle!)
                              ;; [] -> [t9: (function quaternion float float float float quaternion) ]
    lwu v1, 124(s6)           ;; [ 60] (set! v1-16 (l.wu (+ s6-0 124))) [s6: port-metal-head-boat ] -> [v1: trsqv ]
    daddiu a0, v1, 28         ;; [ 61] (set! a0-3 (+ v1-16 28)) [v1: trsqv ] -> [a0: quaternion ]
    addiu a1, r0, 0           ;; [ 62] (set! a1-1 0) [] -> [a1: float ]
    lui a2, 16256             ;; [ 63] (set! a2-1 #x3f800000) [] -> [a2: float ]
    addiu a3, r0, 0           ;; [ 64] (set! a3-0 0) [] -> [a3: float ]
    lwc1 f0, 196(s6)          ;; [ 65] (set! f0-12 (l.f (+ s6-0 196))) [s6: port-metal-head-boat ] -> []
    sub.s f0, f0, f26         ;; [ 66] (set! f0-13 (-.s f0-12 f26-1)) [] -> []
    mfc1 t0, f0               ;; [ 67] (set! t0-0 (fpr->gpr f0-13)) [] -> [t0: float ]
    jalr ra, t9               ;; [ 68] (call! a0-3 a1-1 a2-1 a3-0 t0-0)
                              ;; [a0: quaternion a1: float a2: float a3: float t0: float t9: (function quaternion float float float float quaternion) ] -> [v0: quaternion ]
    sll v0, ra, 0

    daddiu v1, s6, 204        ;; [ 69] (set! v1-17 (+ s6-0 204)) [s6: port-metal-head-boat ] -> [v1: vector ]
    daddiu a0, s6, 204        ;; [ 70] (set! a0-4 (+ s6-0 204)) [s6: port-metal-head-boat ] -> [a0: vector ]
    daddiu a1, s6, 220        ;; [ 71] (set! a1-2 (+ s6-0 220)) [s6: port-metal-head-boat ] -> [a1: vector ]
    lwc1 f0, 276(s6)          ;; [ 72] (set! f0-14 (l.f (+ s6-0 276))) [s6: port-metal-head-boat ] -> []
    lui a2, 16256             ;; [ 73] (set! a2-2 #x3f800000) [] -> [a2: <integer 1065353216> ]
    mtc1 f1, a2               ;; [ 74] (set! f1-7 (gpr->fpr a2-2)) [a2: <integer 1065353216> ] -> []
    lui a2, 14464             ;; [ 75] (set! a2-3 #x38800000) [] -> [a2: <integer 947912704> ]
    mtc1 f2, a2               ;; [ 76] (set! f2-3 (gpr->fpr a2-3)) [a2: <integer 947912704> ] -> []
    abs.s f3, f26             ;; [ 77] (set! f3-1 (abs.s f26-1)) [] -> []
    mul.s f2, f2, f3          ;; [ 78] (set! f2-4 (*.s f2-3 f3-1)) [] -> []
    sub.s f1, f1, f2          ;; [ 79] (set! f1-8 (-.s f1-7 f2-4)) [] -> []
    mul.s f0, f0, f1          ;; [ 80] (set! f0-15 (*.s f0-14 f1-8)) [] -> []
    lqc2 vf2, 0(a1)           ;; [ 81] (set! v1-18 (vecplusfloattimes v1-17 a0-4 a1-2 f0-15))
                              ;; [v1: vector a0: vector a1: vector ] -> [v1: vector ]
    lqc2 vf1, 0(a0)
    mfc1 a0, f0
    qmtc2.i vf3, a0
    vaddx.w vf4, vf0, vf0
    vmulax.xyzw acc, vf2, vf3
    vmaddw.xyz vf4, vf1, vf0
    sqc2 vf4, 0(v1)
    lwu v1, 124(s6)           ;; [ 82] (set! v1-19 (l.wu (+ s6-0 124))) [s6: port-metal-head-boat ] -> [v1: trsqv ]
    daddiu gp, v1, 60         ;; [ 83] (set! gp-0 (+ v1-19 60)) [v1: trsqv ] -> [gp: vector ]
    daddiu s5, s6, 204        ;; [ 84] (set! s5-0 (+ s6-0 204)) [s6: port-metal-head-boat ] -> [s5: vector ]
    daddiu s4, s6, 236        ;; [ 85] (set! s4-0 (+ s6-0 236)) [s6: port-metal-head-boat ] -> [s4: vector ]
    lui v1, 16672             ;; [ 86] (set! v1-20 #x41200000) [] -> [v1: <integer 1092616192> ]
    mtc1 f26, v1              ;; [ 87] (set! f26-2 (gpr->fpr v1-20)) [v1: <integer 1092616192> ] -> []
    lw t9, sin(s7)            ;; [ 88] (set! t9-3 sin) [] -> [t9: (function float float) ]
    mfc1 a0, f28              ;; [ 89] (set! a0-5 (fpr->gpr f28-0)) [] -> [a0: float ]
    jalr ra, t9               ;; [ 90] (call! a0-5) [a0: float t9: (function float float) ] -> [v0: float ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [ 91] (set! f0-16 (gpr->fpr v0-3)) [v0: float ] -> []
    mul.s f0, f26, f0         ;; [ 92] (set! f0-17 (*.s f26-2 f0-16)) [] -> []
    mul.s f0, f0, f30         ;; [ 93] (set! f0-18 (*.s f0-17 f30-0)) [] -> []
    lqc2 vf2, 0(s4)           ;; [ 94] (set! gp-1 (vecplusfloattimes gp-0 s5-0 s4-0 f0-18))
                              ;; [s4: vector s5: vector gp: vector ] -> [gp: vector ]
    lqc2 vf1, 0(s5)
    mfc1 v1, f0
    qmtc2.i vf3, v1
    vaddx.w vf4, vf0, vf0
    vmulax.xyzw acc, vf2, vf3
    vmaddw.xyz vf4, vf1, vf0
    sqc2 vf4, 0(gp)
    lwu v1, 124(s6)           ;; [ 95] (set! v1-21 (l.wu (+ s6-0 124))) [s6: port-metal-head-boat ] -> [v1: trsqv ]
    daddiu v1, v1, 60         ;; [ 96] (set! v1-22 (+ v1-21 60)) [v1: trsqv ] -> [v1: vector ]
    lwu a0, 124(s6)           ;; [ 97] (set! a0-6 (l.wu (+ s6-0 124))) [s6: port-metal-head-boat ] -> [a0: trsqv ]
    daddiu a0, a0, 60         ;; [ 98] (set! a0-7 (+ a0-6 60)) [a0: trsqv ] -> [a0: vector ]
    lwu a1, 124(s6)           ;; [ 99] (set! a1-3 (l.wu (+ s6-0 124))) [s6: port-metal-head-boat ] -> [a1: trsqv ]
    daddiu a1, a1, 12         ;; [100] (set! a1-4 (+ a1-3 12)) [a1: trsqv ] -> [a1: vector ]
    lqc2 vf4, 0(a0)           ;; [101] (set! v1-23 (vector-!2 v1-22 a0-7 a1-4))
                              ;; [v1: vector a0: vector a1: vector ] -> [v1: vector ]
    lqc2 vf5, 0(a1)
    vmove.w vf6, vf0
    vsub.xyz vf6, vf4, vf5
    sqc2 vf6, 0(v1)
    lwu v1, 124(s6)           ;; [102] (set! v1-24 (l.wu (+ s6-0 124))) [s6: port-metal-head-boat ] -> [v1: trsqv ]
    daddiu v1, v1, 60         ;; [103] (set! v1-25 (+ v1-24 60)) [v1: trsqv ] -> [v1: vector ]
    lwu a0, 124(s6)           ;; [104] (set! a0-8 (l.wu (+ s6-0 124))) [s6: port-metal-head-boat ] -> [a0: trsqv ]
    daddiu a0, a0, 60         ;; [105] (set! a0-9 (+ a0-8 60)) [a0: trsqv ] -> [a0: vector ]
    lqc2 vf1, 0(a0)           ;; [106] (set! vf1 (l.vf a0-9)) [a0: vector ] -> []
    lwu a0, 8(s6)             ;; [107] (set! a0-10 (l.wu (+ s6-0 8))) [s6: port-metal-head-boat ] -> [a0: clock ]
    lwc1 f0, 80(a0)           ;; [108] (set! f0-19 (l.f (+ a0-10 80))) [a0: clock ] -> []
    mfc1 at, f0               ;; [109] (.mfc1 at-0 f0-19) [] -> [at: int ]
    qmtc2.i vf2, at           ;; [110] (.qmtc2.i vf2 at-0) [at: int ] -> []
    vmove.w vf1, vf0          ;; [111] (.vmove.w vf1 vf0) [] -> []
    vmulx.xyz vf1, vf1, vf2   ;; [112] (.vmulx.xyz vf1 vf1 vf2) [] -> []
    sqc2 vf1, 0(v1)           ;; [113] (s.vf! v1-25 vf1) [v1: vector ] -> []
    lwc1 f0, 212(s6)          ;; [114] (set! f0-20 (l.f (+ s6-0 212))) [s6: port-metal-head-boat ] -> []
    lui v1, 19198             ;; [115] (set! v1-26 #x4afe6000) [] -> [v1: <integer 1258184704> ]
    ori v1, v1, 24576
    mtc1 f1, v1               ;; [116] (set! f1-9 (gpr->fpr v1-26)) [v1: <integer 1258184704> ] -> []
    c.lt.s f0, f1             ;; [117] (b! (>=.s f0-20 f1-9) L105 (set! v1-27 #f)) [] -> [v1: '#f ]
    bc1f L105
    or v1, s7, r0

B4:
    lw t9, ship-close-speech(s7);; [118] (set! t9-4 ship-close-speech) [] -> [t9: (function port-turret none) ]
    lwu v1, 12(s6)            ;; [119] (set! v1-28 (l.wu (+ s6-0 12)))
                              ;; [s6: port-metal-head-boat ] -> [v1: (pointer process-tree) ]
    lwu a0, 0(v1)             ;; [120] (set! a0-11 (l.wu v1-28)) [v1: (pointer process-tree) ] -> [a0: process-tree ]
    jalr ra, t9               ;; [121] (call! a0-11) [a0: process-tree t9: (function port-turret none) ] -> [v0: none ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [122] (set! v1-29 v0-4) [v0: none ] -> [v1: none ]
B5:
L105:
    lui v1, 19187             ;; [123] (set! v1-30 #x4af3c000) [] -> [v1: <integer 1257488384> ]
    ori v1, v1, 49152
    mtc1 f0, v1               ;; [124] (set! f0-21 (gpr->fpr v1-30)) [v1: <integer 1257488384> ] -> []
    lwc1 f1, 212(s6)          ;; [125] (set! f1-10 (l.f (+ s6-0 212))) [s6: port-metal-head-boat ] -> []
    c.lt.s f0, f1             ;; [126] (b! (<.s f0-21 f1-10) L110 (set! v1-31 #f)) [] -> [v1: '#f ]
    bc1t L110
    or v1, s7, r0

B6:
    daddiu a1, sp, 16         ;; [127] (set! a1-5 (+ sp-0 16)) [sp: <uninitialized> ] -> [a1: <uninitialized> ]
    beq s7, s6, L106          ;; [128] (b! (not s6-0) L106 (set! v1-32 #f)) [s6: port-metal-head-boat ] -> [v1: '#f ]
    or v1, s7, r0

B7:
    lwu v1, 24(s6)            ;; [129] (set! v1-32 (l.wu (+ s6-0 24)))
                              ;; [s6: port-metal-head-boat ] -> [v1: (pointer process) ]
B8:
L106:
    sw v1, 8(a1)              ;; [130] (s.w! (+ a1-5 8) v1-32) [v1: (pointer process) a1: <uninitialized> ] -> []
    addiu v1, r0, 1           ;; [131] (set! v1-33 1) [] -> [v1: <integer 1> ]
    sw v1, 68(a1)             ;; [132] (s.w! (+ a1-5 68) v1-33) [v1: <integer 1> a1: <uninitialized> ] -> []
    daddiu v1, s7, boom       ;; [133] (set! v1-34 'boom) [] -> [v1: <sym boom> ]
    sw v1, 64(a1)             ;; [134] (s.w! (+ a1-5 64) v1-34) [v1: <sym boom> a1: <uninitialized> ] -> []
    addiu v1, r0, 1           ;; [135] (set! v1-35 1) [] -> [v1: <integer 1> ]
    lw a0, 272(s6)            ;; [136] (set! a0-12 (l.w (+ s6-0 272))) [s6: port-metal-head-boat ] -> [a0: int ]
    bne a0, v1, L107          ;; [137] (b! (!= a0-12 v1-35) L107 (nop!)) [v1: <integer 1> a0: int ] -> []
    sll r0, r0, 0

B9:
    lui v1, 16256             ;; [138] (set! v1-36 #x3f800000) [] -> [v1: <integer 1065353216> ]
    beq r0, r0, L108          ;; [139] (b! #t L108 (nop!)) [] -> []
    sll r0, r0, 0

B10:
L107:
    lui v1, 16384             ;; [140] (set! v1-36 #x40000000) [] -> [v1: <uninitialized> ]
B11:
L108:
    sd v1, 16(a1)             ;; [141] (s.d! (+ a1-5 16) v1-36) [v1: <integer 1065353216> a1: <uninitialized> ] -> []
    lw t9, send-event-function(s7);; [142] (set! t9-5 send-event-function)
                              ;; [] -> [t9: (function process-tree event-message-block object) ]
    lwu v1, 12(s6)            ;; [143] (set! v1-37 (l.wu (+ s6-0 12)))
                              ;; [s6: port-metal-head-boat ] -> [v1: (pointer process-tree) ]
    beq s7, v1, L109          ;; [144] (b! (not v1-37) L109 (set! a0-13 #f)) [v1: (pointer process-tree) ] -> [a0: '#f ]
    or a0, s7, r0

B12:
    lwu v1, 0(v1)             ;; [145] (set! v1-38 (l.wu v1-37)) [v1: (pointer process-tree) ] -> [v1: process-tree ]
    lwu a0, 28(v1)            ;; [146] (set! a0-13 (l.wu (+ v1-38 28))) [v1: process-tree ] -> [a0: process-tree ]
B13:
L109:
    jalr ra, t9               ;; [147] (call! a0-13 a1-5)
                              ;; [a0: process-tree a1: <uninitialized> t9: (function process-tree event-message-block object) ] -> [v0: object ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [148] (set! v1-39 v0-5) [v0: object ] -> [v1: object ]
    lwu v1, 12(s6)            ;; [149] (set! v1-40 (l.wu (+ s6-0 12)))
                              ;; [s6: port-metal-head-boat ] -> [v1: (pointer process-tree) ]
    lwu v1, 0(v1)             ;; [150] (set! v1-41 (l.wu v1-40)) [v1: (pointer process-tree) ] -> [v1: process-tree ]
    lw v1, 564(v1)            ;; [151] (set! v1-42 (l.w (+ v1-41 564))) [v1: process-tree ] -> [v1: <uninitialized> ]
    daddiu v1, v1, -1         ;; [152] (set! v1-43 (+ v1-42 -1)) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu a0, 12(s6)            ;; [153] (set! a0-14 (l.wu (+ s6-0 12)))
                              ;; [s6: port-metal-head-boat ] -> [a0: <uninitialized> ]
    lwu a0, 0(a0)             ;; [154] (set! a0-15 (l.wu a0-14)) [a0: <uninitialized> ] -> [a0: <uninitialized> ]
    sw v1, 564(a0)            ;; [155] (s.w! (+ a0-15 564) v1-43) [v1: <uninitialized> a0: <uninitialized> ] -> []
    lw v1, 272(s6)            ;; [156] (set! v1-44 (l.w (+ s6-0 272)))
                              ;; [s6: port-metal-head-boat ] -> [v1: <uninitialized> ]
    sw v1, 252(s6)            ;; [157] (s.w! (+ s6-0 252) v1-44) [v1: <uninitialized> s6: port-metal-head-boat ] -> []
    lwu v1, -4(s6)            ;; [158] (set! v1-45 (l.wu (+ s6-0 -4)))
                              ;; [s6: port-metal-head-boat ] -> [v1: <uninitialized> ]
    lwu t9, 56(v1)            ;; [159] (set! t9-6 (l.wu (+ v1-45 56))) [v1: <uninitialized> ] -> [t9: <uninitialized> ]
    or a0, s6, r0             ;; [160] (set! a0-16 s6-0) [s6: port-metal-head-boat ] -> [a0: <uninitialized> ]
    jalr ra, t9               ;; [161] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [162] (set! v1-46 v0-6) [v0: <uninitialized> ] -> [v1: <uninitialized> ]
B14:
L110:
    lwu s6, 48(s6)            ;; [163] (suspend)   [] -> []
    mtlo1 s6
    lwu s6, 12(s6)
    jalr ra, s6
    mflo1 s6

    beq s7, s7, L102          ;; [164] (b! (not #f) L102 (set! v0-7 #f)) [] -> [v0: <uninitialized> ]
    or v0, s7, r0

B15:
    ld ra, 0(sp)
    lwc1 f30, 156(sp)
    lwc1 f28, 152(sp)
    lwc1 f26, 148(sp)
    lwc1 f24, 144(sp)
    lq gp, 128(sp)
    lq s5, 112(sp)
    lq s4, 96(sp)
    jr ra
    daddiu sp, sp, 160

    sll r0, r0, 0
    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(state-handler
  (code idle port-metal-head-boat)
  ()
  (local-vars
    (at-0 int)
    (v0-0 float)
    (v0-1 none)
    (v0-2 quaternion)
    (v0-3 float)
    (v0-4 none)
    (v0-5 object)
    (v0-6 none)
    (v1-0 joint-control)
    (v1-1 (inline-array joint-control-channel))
    (v1-2 joint-control-channel)
    (v1-4 int)
    (v1-5 clock)
    (v1-6 int)
    (v1-7 int)
    (v1-8 int)
    (v1-9 int)
    (v1-10 display)
    (v1-11 clock)
    (v1-12 time-frame)
    (v1-13 int)
    (v1-14 none)
    (v1-15 none)
    (v1-16 trsqv)
    (v1-17 vector)
    (v1-18 vector)
    (v1-19 trsqv)
    (v1-20 int)
    (v1-21 trsqv)
    (v1-22 vector)
    (v1-23 vector)
    (v1-24 trsqv)
    (v1-25 vector)
    (v1-26 int)
    (v1-28 (pointer process-tree))
    (v1-30 int)
    (v1-32 (pointer process))
    (v1-33 int)
    (v1-34 symbol)
    (v1-35 int)
    (v1-36 int)
    (v1-37 (pointer process-tree))
    (v1-38 process-tree)
    (v1-40 (pointer process-tree))
    (v1-41 process-tree)
    (v1-42 none)
    (v1-43 none)
    (v1-44 none)
    (v1-45 none)
    (a0-0 (function joint-control-channel float float float float :behavior process))
    (a0-1 float)
    (a0-3 quaternion)
    (a0-4 vector)
    (a0-5 float)
    (a0-6 trsqv)
    (a0-7 vector)
    (a0-8 trsqv)
    (a0-9 vector)
    (a0-10 clock)
    (a0-11 process-tree)
    (a0-12 int)
    (a0-13 process-tree)
    (a0-14 none)
    (a0-15 none)
    (a0-16 none)
    (a1-0 float)
    (a1-1 float)
    (a1-2 vector)
    (a1-3 trsqv)
    (a1-4 vector)
    (a1-5 none)
    (a2-0 float)
    (a2-1 float)
    (a2-2 int)
    (a2-3 int)
    (a3-0 float)
    (t0-0 float)
    (s4-0 vector)
    (s5-0 vector)
    (t9-0 (function float float float float))
    (t9-1 none)
    (t9-2 (function quaternion float float float float quaternion))
    (t9-3 (function float float))
    (t9-4 (function port-turret none))
    (t9-5 (function process-tree event-message-block object))
    (t9-6 none)
    (gp-0 vector)
    (gp-1 vector)
    (sp-0 none)
    (f0-0 float)
    (f0-1 float)
    (f0-2 float)
    (f0-3 float)
    (f0-4 float)
    (f0-5 float)
    (f0-6 float)
    (f0-7 float)
    (f0-8 none)
    (f0-9 none)
    (f0-10 none)
    (f0-11 none)
    (f0-12 float)
    (f0-13 float)
    (f0-14 float)
    (f0-15 float)
    (f0-16 float)
    (f0-17 float)
    (f0-18 float)
    (f0-19 float)
    (f0-20 float)
    (f0-21 float)
    (f1-0 float)
    (f1-1 float)
    (f1-2 float)
    (f1-3 time-frame)
    (f1-4 float)
    (f1-5 float)
    (f1-6 float)
    (f1-7 float)
    (f1-8 float)
    (f1-9 float)
    (f1-10 float)
    (f2-0 float)
    (f2-1 float)
    (f2-2 float)
    (f2-3 float)
    (f2-4 float)
    (f3-0 float)
    (f3-1 float)
    (f24-0 none)
    (f26-0 none)
    (f26-1 int)
    (f26-2 float)
    (f28-0 float)
    (f30-0 float)
    )
  (rlet ((vf0 :class vf)
         (vf1 :class vf)
         (vf2 :class vf)
         )
    (init-vf0-vector)
    (until (begin (suspend) #f)
      (when (begin
              (when (begin
                      (cond
                        ((begin
                           (set! v1-0 (-> s6-0 skel))
                           (set! v1-1 (-> v1-0 root-channel))
                           (set! v1-2 (-> v1-1 0))
                           (set! a0-0 num-func-identity)
                           (set! (-> v1-2 num-func) a0-0)
                           (set! f0-0 (the-as float 0))
                           (set! (-> v1-2 frame-num) f0-0)
                           (set! v1-3 (fpr->gpr f0-0))
                           (set! t9-0 seek)
                           (set! f0-1 (-> s6-0 position y))
                           (set! a0-1 (fpr->gpr f0-1))
                           (set! a1-0 (the-as float 0))
                           (set! v1-4 #x444ccccd)
                           (set! f0-2 (the-as float (gpr->fpr v1-4)))
                           (set! v1-5 (-> s6-0 clock))
                           (set! f1-0 (-> v1-5 time-adjust-ratio))
                           (set! f0-3 (*.s f0-2 f1-0))
                           (set! a2-0 (fpr->gpr f0-3))
                           (set! v0-0 (call! a0-1 a1-0 a2-0))
                           (set! f0-4 (gpr->fpr v0-0))
                           (set! (-> s6-0 position y) f0-4)
                           (set! v1-6 #x3f000000)
                           (set! f0-5 (the-as float (gpr->fpr v1-6)))
                           (set! v1-7 #x341a33cd)
                           (set! f1-1 (the-as float (gpr->fpr v1-7)))
                           (set! v1-8 -889995264)
                           (set! f2-0 (the-as float (gpr->fpr v1-8)))
                           (set! f3-0 (-> s6-0 position z))
                           (set! f2-1 (+.s f2-0 f3-0))
                           (set! f1-2 (*.s f1-1 f2-1))
                           (set! f30-0 (+.s f0-5 f1-2))
                           (set! v1-9 #x43360b61)
                           (set! f0-6 (the-as float (gpr->fpr v1-9)))
                           (set! v1-10 *display*)
                           (set! v1-11 (-> v1-10 game-clock))
                           (set! v1-12 (-> v1-11 frame-counter))
                           (set! f1-3 (gpr->fpr v1-12))
                           (set! f1-4 (i2f f1-3))
                           (set! f2-2 (-> s6-0 side-speed))
                           (set! f1-5 (*.s f1-4 f2-2))
                           (set! f28-0 (*.s f0-6 f1-5))
                           (set! f0-7 (-> s6-0 side-speed))
                           (set! f1-6 (the-as float 0))
                           (=.s f0-7 f1-6)
                           )
                         (set! v1-13 0)
                         )
                        (else
                          (set! v1-14 (the-as none #x43360b61))
                          (set! f26-0 (the-as none (gpr->fpr v1-14)))
                          (set! v1-15 (the-as none #x41f00000))
                          (set! f24-0 (the-as none (gpr->fpr v1-15)))
                          (set! t9-1 (the-as none cos))
                          (set! a0-2 (the-as none (fpr->gpr f28-0)))
                          (set! v0-1 (the-as none (call!)))
                          (set! f0-8 (the-as none (gpr->fpr v0-1)))
                          (set! f0-9 (the-as none (*.s f24-0 f0-8)))
                          (set! f0-10 (the-as none (*.s f0-9 f30-0)))
                          (set! f0-11 (the-as none (*.s f26-0 f0-10)))
                          (set! v1-13 (the-as int (fpr->gpr f0-11)))
                          )
                        )
                      (set! f26-1 (gpr->fpr v1-13))
                      (set! t9-2 quaternion-axis-angle!)
                      (set! v1-16 (-> s6-0 root))
                      (set! a0-3 (-> v1-16 quat))
                      (set! a1-1 (the-as float 0))
                      (set! a2-1 (the-as float #x3f800000))
                      (set! a3-0 (the-as float 0))
                      (set! f0-12 (-> s6-0 init-angle))
                      (set! f0-13 (-.s f0-12 f26-1))
                      (set! t0-0 (fpr->gpr f0-13))
                      (call! a0-3 a1-1 a2-1 a3-0 t0-0)
                      (set! v1-17 (-> s6-0 position))
                      (set! a0-4 (-> s6-0 position))
                      (set! a1-2 (-> s6-0 forward-dir))
                      (set! f0-14 (-> s6-0 speed))
                      (set! a2-2 #x3f800000)
                      (set! f1-7 (the-as float (gpr->fpr a2-2)))
                      (set! a2-3 #x38800000)
                      (set! f2-3 (the-as float (gpr->fpr a2-3)))
                      (set! f3-1 (abs.s f26-1))
                      (set! f2-4 (*.s f2-3 f3-1))
                      (set! f1-8 (-.s f1-7 f2-4))
                      (set! f0-15 (*.s f0-14 f1-8))
                      (set! v1-18 (vecplusfloattimes v1-17 a0-4 a1-2 f0-15))
                      (set! v1-19 (-> s6-0 root))
                      (set! gp-0 (-> v1-19 transv))
                      (set! s5-0 (-> s6-0 position))
                      (set! s4-0 (-> s6-0 side-dir))
                      (set! v1-20 #x41200000)
                      (set! f26-2 (the-as float (gpr->fpr v1-20)))
                      (set! t9-3 sin)
                      (set! a0-5 (fpr->gpr f28-0))
                      (set! v0-3 (call! a0-5))
                      (set! f0-16 (gpr->fpr v0-3))
                      (set! f0-17 (*.s f26-2 f0-16))
                      (set! f0-18 (*.s f0-17 f30-0))
                      (set! gp-1 (vecplusfloattimes gp-0 s5-0 s4-0 f0-18))
                      (set! v1-21 (-> s6-0 root))
                      (set! v1-22 (-> v1-21 transv))
                      (set! a0-6 (-> s6-0 root))
                      (set! a0-7 (-> a0-6 transv))
                      (set! a1-3 (-> s6-0 root))
                      (set! a1-4 (-> a1-3 trans))
                      (set! v1-23 (vector-!2 v1-22 a0-7 a1-4))
                      (set! v1-24 (-> s6-0 root))
                      (set! v1-25 (-> v1-24 transv))
                      (set! a0-8 (-> s6-0 root))
                      (set! a0-9 (-> a0-8 transv))
                      (.lvf vf1 (&-> a0-9 quad))
                      (set! a0-10 (-> s6-0 clock))
                      (set! f0-19 (-> a0-10 frames-per-second))
                      (.mov at-0 f0-19)
                      (.mov vf2 at-0)
                      (.mov.vf vf1 vf0 :mask #b1000)
                      (.mul.x.vf vf1 vf1 vf2 :mask #b111)
                      (.svf (&-> v1-25 quad) vf1)
                      (set! f0-20 (-> s6-0 position z))
                      (set! v1-26 #x4afe6000)
                      (set! f1-9 (the-as float (gpr->fpr v1-26)))
                      (<.s f0-20 f1-9)
                      )
                (set! t9-4 ship-close-speech)
                (set! v1-28 (-> s6-0 parent))
                (set! a0-11 (-> v1-28 0))
                (call! a0-11)
                (set! v1-29 v0-4)
                )
              (set! v1-30 #x4af3c000)
              (set! f0-21 (the-as float (gpr->fpr v1-30)))
              (set! f1-10 (-> s6-0 position z))
              (>=.s f0-21 f1-10)
              )
        (when (begin
                (if (begin (set! a1-5 (the-as none (+ sp-0 16))) s6-0)
                    (set! v1-32 (-> s6-0 ppointer))
                    )
                (if (begin
                      (s.w! (+ a1-5 8) v1-32)
                      (set! v1-33 1)
                      (s.w! (+ a1-5 68) v1-33)
                      (set! v1-34 'boom)
                      (s.w! (+ a1-5 64) v1-34)
                      (set! v1-35 1)
                      (set! a0-12 (-> s6-0 hit-max))
                      (= a0-12 v1-35)
                      )
                    (set! v1-36 #x3f800000)
                    (set! v1-36 (the-as int #x40000000))
                    )
                (s.d! (+ a1-5 16) v1-36)
                (set! t9-5 send-event-function)
                (set! v1-37 (-> s6-0 parent))
                v1-37
                )
          (set! v1-38 (-> v1-37 0))
          (set! a0-13 (-> v1-38 self))
          )
        (call! a0-13 a1-5)
        (set! v1-39 v0-5)
        (set! v1-40 (-> s6-0 parent))
        (set! v1-41 (-> v1-40 0))
        (set! v1-42 (the-as none (l.w (+ v1-41 564))))
        (set! v1-43 (the-as none (+ v1-42 -1)))
        (set! a0-14 (the-as none (-> s6-0 parent)))
        (set! a0-15 (the-as none (l.wu a0-14)))
        (s.w! (+ a0-15 564) v1-43)
        (set! v1-44 (the-as none (-> s6-0 hit-max)))
        (set! (-> s6-0 hit-count) (the-as int v1-44))
        (set! v1-45 (the-as none (-> s6-0 type)))
        (set! t9-6 (the-as none (l.wu (+ v1-45 56))))
        (set! a0-16 (the-as none s6-0))
        (call!)
        (set! v1-46 (the-as none v0-6))
        )
      )
    (ret-none)
    )
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (until b14
    (cond
      ((seq
         (cond
           ((seq
              (cond
                (b0
                  b1
                  )
                (else
                  b2
                  )
                )
              b3
              )
            b4
            )
           )
         b5
         )
       (seq
         (cond
           ((seq
              (cond
                (b6
                  b7
                  )
                )
              (cond
                (b8
                  b9
                  )
                (else
                  b10
                  )
                )
              b11
              )
            b12
            )
           )
         b13
         )
       )
      )
    )
  b15
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function (event idle port-metal-head-boat)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x20, fp? 0 ra? 1 ep? 1
  ;stack_vars: 8 bytes at 8
  ;gprs: gp
  ;internal_name: (anon-function 13 port-blimp)
;; Warnings:
;; INFO: Used lq/sq
;; ERROR: failed type prop at 20: Could not figure out load: (set! v1 (l.wu (+ v1 128)))
;; WARN: Return type mismatch symbol vs object.

L111:
    daddiu sp, sp, -32
    sd ra, 0(sp)
    sq gp, 16(sp)
B0:
    or v1, a2, r0             ;; [  0] (set! v1-0 a2-0) [a2: symbol ] -> [v1: symbol ]
    daddiu a0, s7, attack     ;; [  1] (set! a0-1 'attack) [] -> [a0: <sym attack> ]
    bne v1, a0, L118          ;; [  2] (b! (!= v1-0 a0-1) L118 (set! v0-0 #f))
                              ;; [v1: symbol a0: <sym attack> ] -> [v0: '#f ]
    or v0, s7, r0

B1:
    ld v1, 24(a3)             ;; [  3] (set! v1-1 (l.d (+ a3-0 24))) [a3: event-message-block ] -> [v1: uint ]
    daddiu a0, s7, #t         ;; [  4] (set! a0-2 #t) [] -> [a0: <sym #t> ]
    addiu a1, r0, 0           ;; [  5] (set! a1-1 0) [] -> [a1: <integer 0> ]
    beq r0, r0, L114          ;; [  6] (b! #t L114 (nop!)) [] -> []
    sll r0, r0, 0

B2:
L112:
    lwu a2, 128(v1)           ;; [  7] (set! a2-1 (l.wu (+ v1-1 128))) [v1: uint ] -> [a2: <uninitialized> ]
    dsll a3, a1, 2            ;; [  8] (set! a3-1 (sll a1-1 2)) [a1: <integer 0> ] -> [a3: <uninitialized> ]
    daddu a3, a3, s6          ;; [  9] (set! a3-2 (+ a3-1 s6-0))
                              ;; [a3: <uninitialized> s6: port-metal-head-boat ] -> [a3: <uninitialized> ]
    lwu a3, 256(a3)           ;; [ 10] (set! a3-3 (l.wu (+ a3-2 256))) [a3: <uninitialized> ] -> [a3: <uninitialized> ]
    bne a3, a2, L113          ;; [ 11] (b! (!= a3-3 a2-1) L113 (set! a2-2 #f))
                              ;; [a2: <uninitialized> a3: <uninitialized> ] -> [a2: <uninitialized> ]
    or a2, s7, r0

B3:
    or a0, s7, r0             ;; [ 12] (set! a0-2 #f) [] -> [a0: <uninitialized> ]
    or a2, a0, r0             ;; [ 13] (set! a2-3 a0-2) [a0: <uninitialized> ] -> [a2: <uninitialized> ]
B4:
L113:
    daddiu a1, a1, 1          ;; [ 14] (set! a1-1 (+ a1-1 1)) [a1: <uninitialized> ] -> [a1: <uninitialized> ]
B5:
L114:
    lw a2, 252(s6)            ;; [ 15] (set! a2-4 (l.w (+ s6-0 252))) [s6: port-metal-head-boat ] -> [a2: int ]
    slt a2, a1, a2            ;; [ 16] (b! (<.si a1-1 a2-4) L112 (nop!)) [a1: <integer 0> a2: int ] -> []
    bne a2, r0, L112
    sll r0, r0, 0

B6:
    or a1, s7, r0             ;; [ 17] (set! a1-2 #f) [] -> [a1: '#f ]
    or a1, s7, r0             ;; [ 18] (set! a1-3 #f) [] -> [a1: '#f ]
    beq s7, a0, L118          ;; [ 19] (b! (not a0-2) L118 (set! v0-0 #f)) [a0: <sym #t> ] -> [v0: '#f ]
    or v0, s7, r0

B7:
    lwu v1, 128(v1)           ;; [ 20] (set! v1-2 (l.wu (+ v1-1 128))) [v1: uint ] -> [v1: <uninitialized> ]
    lw a0, 252(s6)            ;; [ 21] (set! a0-3 (l.w (+ s6-0 252)))
                              ;; [s6: port-metal-head-boat ] -> [a0: <uninitialized> ]
    dsll a0, a0, 2            ;; [ 22] (set! a0-4 (sll a0-3 2)) [a0: <uninitialized> ] -> [a0: <uninitialized> ]
    daddu a0, a0, s6          ;; [ 23] (set! a0-5 (+ a0-4 s6-0))
                              ;; [a0: <uninitialized> s6: port-metal-head-boat ] -> [a0: <uninitialized> ]
    sw v1, 256(a0)            ;; [ 24] (s.w! (+ a0-5 256) v1-2) [v1: <uninitialized> a0: <uninitialized> ] -> []
    lw v1, 252(s6)            ;; [ 25] (set! v1-3 (l.w (+ s6-0 252)))
                              ;; [s6: port-metal-head-boat ] -> [v1: <uninitialized> ]
    daddiu v1, v1, 1          ;; [ 26] (set! v1-4 (+ v1-3 1)) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    sw v1, 252(s6)            ;; [ 27] (s.w! (+ s6-0 252) v1-4) [v1: <uninitialized> s6: port-metal-head-boat ] -> []
    lw v1, 252(s6)            ;; [ 28] (set! v1-5 (l.w (+ s6-0 252)))
                              ;; [s6: port-metal-head-boat ] -> [v1: <uninitialized> ]
    lw a0, 272(s6)            ;; [ 29] (set! a0-6 (l.w (+ s6-0 272)))
                              ;; [s6: port-metal-head-boat ] -> [a0: <uninitialized> ]
    slt v1, v1, a0            ;; [ 30] (b! (<.si v1-5 a0-6) L116 (nop!)) [v1: <uninitialized> a0: <uninitialized> ] -> []
    bne v1, r0, L116
    sll r0, r0, 0

B8:
    lw t9, jak-hit-speech(s7) ;; [ 31] (set! t9-0 jak-hit-speech) [] -> [t9: <uninitialized> ]
    lwu v1, 12(s6)            ;; [ 32] (set! v1-6 (l.wu (+ s6-0 12))) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu a0, 0(v1)             ;; [ 33] (set! a0-7 (l.wu v1-6)) [v1: <uninitialized> ] -> [a0: <uninitialized> ]
    jalr ra, t9               ;; [ 34] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    lwu v1, 12(s6)            ;; [ 35] (set! v1-7 (l.wu (+ s6-0 12))) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu v1, 0(v1)             ;; [ 36] (set! v1-8 (l.wu v1-7)) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    lw v1, 564(v1)            ;; [ 37] (set! v1-9 (l.w (+ v1-8 564))) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    daddiu v1, v1, -1         ;; [ 38] (set! v1-10 (+ v1-9 -1)) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu a0, 12(s6)            ;; [ 39] (set! a0-8 (l.wu (+ s6-0 12))) [s6: <uninitialized> ] -> [a0: <uninitialized> ]
    lwu a0, 0(a0)             ;; [ 40] (set! a0-9 (l.wu a0-8)) [a0: <uninitialized> ] -> [a0: <uninitialized> ]
    sw v1, 564(a0)            ;; [ 41] (s.w! (+ a0-9 564) v1-10) [v1: <uninitialized> a0: <uninitialized> ] -> []
    lw a0, *default-dead-pool*(s7);; [ 42] (set! a0-10 *default-dead-pool*) [] -> [a0: <uninitialized> ]
    lwu v1, -4(a0)            ;; [ 43] (set! v1-11 (l.wu (+ a0-10 -4))) [a0: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu t9, 72(v1)            ;; [ 44] (set! t9-1 (l.wu (+ v1-11 72))) [v1: <uninitialized> ] -> [t9: <uninitialized> ]
    lw a1, part-tracker(s7)   ;; [ 45] (set! a1-4 part-tracker) [] -> [a1: <uninitialized> ]
    addiu a2, r0, 16384       ;; [ 46] (set! a2-5 #x4000) [] -> [a2: <uninitialized> ]
    jalr ra, t9               ;; [ 47] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or gp, v0, r0             ;; [ 48] (set! gp-0 v0-2) [v0: <uninitialized> ] -> [gp: <uninitialized> ]
    beq s7, gp, L115          ;; [ 49] (b! (not gp-0) L115 (set! v1-12 #f))
                              ;; [gp: <uninitialized> ] -> [v1: <uninitialized> ]
    or v1, s7, r0

B9:
    lw v1, part-tracker(s7)   ;; [ 50] (set! v1-13 part-tracker) [] -> [v1: <uninitialized> ]
    lwu t9, 52(v1)            ;; [ 51] (set! t9-2 (l.wu (+ v1-13 52))) [v1: <uninitialized> ] -> [t9: <uninitialized> ]
    or a0, gp, r0             ;; [ 52] (set! a0-11 gp-0) [gp: <uninitialized> ] -> [a0: <uninitialized> ]
    lw a1, *entity-pool*(s7)  ;; [ 53] (set! a1-5 *entity-pool*) [] -> [a1: <uninitialized> ]
    ori v1, r0, 65335         ;; [ 54] (set! v1-14 #xff37) [] -> [v1: <uninitialized> ]
    lw a2, part-tracker(s7)   ;; [ 55] (set! a2-6 part-tracker) [] -> [a2: <uninitialized> ]
    lwu a2, 0(a2)             ;; [ 56] (set! a2-7 (l.wu a2-6)) [a2: <uninitialized> ] -> [a2: <uninitialized> ]
    daddu v1, v1, a2          ;; [ 57] (set! v1-15 (+ v1-14 a2-7))
                              ;; [v1: <uninitialized> a2: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu a2, 0(v1)             ;; [ 58] (set! a2-8 (l.wu v1-15)) [v1: <uninitialized> ] -> [a2: <uninitialized> ]
    lui v1, 28672             ;; [ 59] (set! a3-4 #x70004000) [] -> [a3: <uninitialized> ]
    ori a3, v1, 16384
    jalr ra, t9               ;; [ 60] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    lw t9, run-function-in-process(s7);; [ 61] (set! t9-3 run-function-in-process) [] -> [t9: <uninitialized> ]
    or a0, gp, r0             ;; [ 62] (set! a0-12 gp-0) [gp: <uninitialized> ] -> [a0: <uninitialized> ]
    lw a1, part-tracker-init(s7);; [ 63] (set! a1-6 part-tracker-init) [] -> [a1: <uninitialized> ]
    lw v1, *part-group-id-table*(s7);; [ 64] (set! v1-16 *part-group-id-table*) [] -> [v1: <uninitialized> ]
    lwu a2, 4524(v1)          ;; [ 65] (set! a2-9 (l.wu (+ v1-16 4524))) [v1: <uninitialized> ] -> [a2: <uninitialized> ]
    addiu a3, r0, 0           ;; [ 66] (set! a3-5 0) [] -> [a3: <uninitialized> ]
    or t0, s7, r0             ;; [ 67] (set! t0-0 #f) [] -> [t0: <uninitialized> ]
    or t1, s7, r0             ;; [ 68] (set! t1-0 #f) [] -> [t1: <uninitialized> ]
    or t2, s7, r0             ;; [ 69] (set! t2-0 #f) [] -> [t2: <uninitialized> ]
    lw t3, *launch-matrix*(s7);; [ 70] (set! t3-0 *launch-matrix*) [] -> [t3: <uninitialized> ]
    daddiu v1, t3, 48         ;; [ 71] (set! v1-17 (+ t3-0 48)) [t3: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu t4, 124(s6)           ;; [ 72] (set! t4-0 (l.wu (+ s6-0 124))) [s6: <uninitialized> ] -> [t4: <uninitialized> ]
    daddiu t4, t4, 12         ;; [ 73] (set! t4-1 (+ t4-0 12)) [t4: <uninitialized> ] -> [t4: <uninitialized> ]
    lq t4, 0(t4)              ;; [ 74] (set! t4-2 (l.q t4-1)) [t4: <uninitialized> ] -> [t4: <uninitialized> ]
    sq t4, 0(v1)              ;; [ 75] (s.q! v1-17 t4-2) [v1: <uninitialized> t4: <uninitialized> ] -> []
    jalr ra, t9               ;; [ 76] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    lwu v1, 24(gp)            ;; [ 77] (set! v1-18 (l.wu (+ gp-0 24))) [gp: <uninitialized> ] -> [v1: <uninitialized> ]
B10:
L115:
    or a0, s6, r0             ;; [ 78] (set! a0-13 s6-0) [s6: <uninitialized> ] -> [a0: <uninitialized> ]
    lwu v1, -4(a0)            ;; [ 79] (set! v1-19 (l.wu (+ a0-13 -4))) [a0: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu t9, 56(v1)            ;; [ 80] (set! t9-4 (l.wu (+ v1-19 56))) [v1: <uninitialized> ] -> [t9: <uninitialized> ]
    jalr ra, t9               ;; [ 81] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    beq r0, r0, L118          ;; [ 82] (b! #t L118 (nop!)) [] -> []
    sll r0, r0, 0

B11:
L116:
    lw a0, *default-dead-pool*(s7);; [ 83] (set! a0-14 *default-dead-pool*) [] -> [a0: <uninitialized> ]
    lwu v1, -4(a0)            ;; [ 84] (set! v1-20 (l.wu (+ a0-14 -4))) [a0: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu t9, 72(v1)            ;; [ 85] (set! t9-5 (l.wu (+ v1-20 72))) [v1: <uninitialized> ] -> [t9: <uninitialized> ]
    lw a1, part-tracker(s7)   ;; [ 86] (set! a1-7 part-tracker) [] -> [a1: <uninitialized> ]
    addiu a2, r0, 16384       ;; [ 87] (set! a2-10 #x4000) [] -> [a2: <uninitialized> ]
    jalr ra, t9               ;; [ 88] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or gp, v0, r0             ;; [ 89] (set! gp-1 v0-5) [v0: <uninitialized> ] -> [gp: <uninitialized> ]
    beq s7, gp, L117          ;; [ 90] (b! (not gp-1) L117 (set! v1-21 #f))
                              ;; [gp: <uninitialized> ] -> [v1: <uninitialized> ]
    or v1, s7, r0

B12:
    lw v1, part-tracker(s7)   ;; [ 91] (set! v1-22 part-tracker) [] -> [v1: <uninitialized> ]
    lwu t9, 52(v1)            ;; [ 92] (set! t9-6 (l.wu (+ v1-22 52))) [v1: <uninitialized> ] -> [t9: <uninitialized> ]
    or a0, gp, r0             ;; [ 93] (set! a0-15 gp-1) [gp: <uninitialized> ] -> [a0: <uninitialized> ]
    lw a1, *entity-pool*(s7)  ;; [ 94] (set! a1-8 *entity-pool*) [] -> [a1: <uninitialized> ]
    ori v1, r0, 65335         ;; [ 95] (set! v1-23 #xff37) [] -> [v1: <uninitialized> ]
    lw a2, part-tracker(s7)   ;; [ 96] (set! a2-11 part-tracker) [] -> [a2: <uninitialized> ]
    lwu a2, 0(a2)             ;; [ 97] (set! a2-12 (l.wu a2-11)) [a2: <uninitialized> ] -> [a2: <uninitialized> ]
    daddu v1, v1, a2          ;; [ 98] (set! v1-24 (+ v1-23 a2-12))
                              ;; [v1: <uninitialized> a2: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu a2, 0(v1)             ;; [ 99] (set! a2-13 (l.wu v1-24)) [v1: <uninitialized> ] -> [a2: <uninitialized> ]
    lui v1, 28672             ;; [100] (set! a3-6 #x70004000) [] -> [a3: <uninitialized> ]
    ori a3, v1, 16384
    jalr ra, t9               ;; [101] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    lw t9, run-function-in-process(s7);; [102] (set! t9-7 run-function-in-process) [] -> [t9: <uninitialized> ]
    or a0, gp, r0             ;; [103] (set! a0-16 gp-1) [gp: <uninitialized> ] -> [a0: <uninitialized> ]
    lw a1, part-tracker-init(s7);; [104] (set! a1-9 part-tracker-init) [] -> [a1: <uninitialized> ]
    lw v1, *part-group-id-table*(s7);; [105] (set! v1-25 *part-group-id-table*) [] -> [v1: <uninitialized> ]
    lwu a2, 4524(v1)          ;; [106] (set! a2-14 (l.wu (+ v1-25 4524)))
                              ;; [v1: <uninitialized> ] -> [a2: <uninitialized> ]
    addiu a3, r0, 0           ;; [107] (set! a3-7 0) [] -> [a3: <uninitialized> ]
    or t0, s7, r0             ;; [108] (set! t0-1 #f) [] -> [t0: <uninitialized> ]
    or t1, s7, r0             ;; [109] (set! t1-1 #f) [] -> [t1: <uninitialized> ]
    or t2, s6, r0             ;; [110] (set! t2-1 s6-0) [s6: <uninitialized> ] -> [t2: <uninitialized> ]
    addiu t3, r0, 3           ;; [111] (set! t3-1 3) [] -> [t3: <uninitialized> ]
    jalr ra, t9               ;; [112] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    lwu v1, 24(gp)            ;; [113] (set! v1-26 (l.wu (+ gp-1 24))) [gp: <uninitialized> ] -> [v1: <uninitialized> ]
B13:
L117:
    lwu v1, 132(s6)           ;; [114] (set! v1-27 (l.wu (+ s6-0 132))) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    daddiu v0, v1, 156        ;; [115] (set! v0-0 (+ v1-27 156)) [v1: <uninitialized> ] -> [v0: <uninitialized> ]
    lui v1, 17152             ;; [116] (set! v1-28 #x43000000) [] -> [v1: <uninitialized> ]
    mtc1 f0, v1               ;; [117] (set! f0-0 (gpr->fpr v1-28)) [v1: <uninitialized> ] -> []
    swc1 f0, 0(v0)            ;; [118] (s.f! v0-0 f0-0) [v0: <uninitialized> ] -> []
    mtc1 f0, r0               ;; [119] (set! f0-1 0) [] -> []
    swc1 f0, 4(v0)            ;; [120] (s.f! (+ v0-0 4) f0-1) [v0: <uninitialized> ] -> []
    mtc1 f0, r0               ;; [121] (set! f0-2 0) [] -> []
    swc1 f0, 8(v0)            ;; [122] (s.f! (+ v0-0 8) f0-2) [v0: <uninitialized> ] -> []
    lui v1, 16256             ;; [123] (set! v1-29 #x3f800000) [] -> [v1: <uninitialized> ]
    mtc1 f0, v1               ;; [124] (set! f0-3 (gpr->fpr v1-29)) [v1: <uninitialized> ] -> []
    swc1 f0, 12(v0)           ;; [125] (s.f! (+ v0-0 12) f0-3) [v0: <uninitialized> ] -> []
B14:
L118:
    ld ra, 0(sp)
    lq gp, 16(sp)
    jr ra
    daddiu sp, sp, 32

    sll r0, r0, 0
    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(state-handler
  (event idle port-metal-head-boat)
  ((a0-0 process) (a1-0 int) (a2-0 symbol) (a3-0 event-message-block))
  (local-vars
    (v0-0 symbol)
    (v0-1 none)
    (v0-2 none)
    (v0-3 none)
    (v0-4 none)
    (v0-5 none)
    (v0-6 none)
    (v0-7 none)
    (v1-0 symbol)
    (v1-1 uint)
    (v1-2 none)
    (v1-3 none)
    (v1-4 none)
    (v1-5 none)
    (v1-6 none)
    (v1-7 none)
    (v1-8 none)
    (v1-9 none)
    (v1-10 none)
    (v1-11 none)
    (v1-13 none)
    (v1-14 none)
    (v1-15 none)
    (v1-16 none)
    (v1-17 none)
    (v1-18 none)
    (v1-19 none)
    (v1-20 none)
    (v1-22 none)
    (v1-23 none)
    (v1-24 none)
    (v1-25 none)
    (v1-26 none)
    (v1-27 none)
    (v1-28 none)
    (v1-29 none)
    (a0-1 symbol)
    (a0-2 symbol)
    (a0-3 none)
    (a0-4 none)
    (a0-5 none)
    (a0-6 none)
    (a0-7 none)
    (a0-8 none)
    (a0-9 none)
    (a0-10 none)
    (a0-13 none)
    (a0-14 none)
    (a1-1 int)
    (a1-4 none)
    (a1-5 none)
    (a1-6 none)
    (a1-7 none)
    (a1-8 none)
    (a1-9 none)
    (a2-1 none)
    (a2-4 int)
    (a2-5 none)
    (a2-6 none)
    (a2-7 none)
    (a2-8 none)
    (a2-9 none)
    (a2-10 none)
    (a2-11 none)
    (a2-12 none)
    (a2-13 none)
    (a2-14 none)
    (a3-1 none)
    (a3-2 none)
    (a3-3 none)
    (a3-4 none)
    (a3-5 none)
    (a3-6 none)
    (a3-7 none)
    (t2-1 none)
    (t3-0 none)
    (t3-1 none)
    (t4-0 none)
    (t4-1 none)
    (t4-2 none)
    (t9-0 none)
    (t9-1 none)
    (t9-2 none)
    (t9-3 none)
    (t9-4 none)
    (t9-5 none)
    (t9-6 none)
    (t9-7 none)
    (gp-0 none)
    (gp-1 none)
    (f0-0 none)
    (f0-1 none)
    (f0-2 none)
    (f0-3 none)
    )
  (when (begin (set! v1-0 a2-0) (set! a0-1 'attack) (= v1-0 a0-1))
    (when (begin
            (set! v1-1 (-> a3-0 param 1))
            (set! a0-2 #t)
            (set! a1-1 0)
            (while (begin (set! a2-4 (-> s6-0 hit-count)) (<.si a1-1 a2-4))
              (when (begin
                      (set! a2-1 (the-as none (l.wu (+ v1-1 128))))
                      (set! a3-1 (the-as none (sll a1-1 2)))
                      (set! a3-2 (the-as none (+ a3-1 s6-0)))
                      (set! a3-3 (the-as none (l.wu (+ a3-2 256))))
                      (= a3-3 a2-1)
                      )
                (set! a0-2 (the-as symbol #f))
                (set! a2-3 (the-as none a0-2))
                )
              (set! a1-1 (the-as int (+ a1-1 1)))
              )
            a0-2
            )
      (cond
        ((begin
           (set! v1-2 (the-as none (l.wu (+ v1-1 128))))
           (set! a0-3 (the-as none (-> s6-0 hit-count)))
           (set! a0-4 (the-as none (sll a0-3 2)))
           (set! a0-5 (the-as none (+ a0-4 s6-0)))
           (s.w! (+ a0-5 256) v1-2)
           (set! v1-3 (the-as none (-> s6-0 hit-count)))
           (set! v1-4 (the-as none (+ v1-3 1)))
           (set! (-> s6-0 hit-count) (the-as int v1-4))
           (set! v1-5 (the-as none (-> s6-0 hit-count)))
           (set! a0-6 (the-as none (-> s6-0 hit-max)))
           (>=.si v1-5 a0-6)
           )
         (when (begin
                 (set! t9-0 (the-as none jak-hit-speech))
                 (set! v1-6 (the-as none (l.wu (+ s6-0 12))))
                 (set! a0-7 (the-as none (l.wu v1-6)))
                 (call!)
                 (set! v1-7 (the-as none (l.wu (+ s6-0 12))))
                 (set! v1-8 (the-as none (l.wu v1-7)))
                 (set! v1-9 (the-as none (l.w (+ v1-8 564))))
                 (set! v1-10 (the-as none (+ v1-9 -1)))
                 (set! a0-8 (the-as none (l.wu (+ s6-0 12))))
                 (set! a0-9 (the-as none (l.wu a0-8)))
                 (s.w! (+ a0-9 564) v1-10)
                 (set! a0-10 (the-as none *default-dead-pool*))
                 (set! v1-11 (the-as none (l.wu (+ a0-10 -4))))
                 (set! t9-1 (the-as none (l.wu (+ v1-11 72))))
                 (set! a1-4 (the-as none part-tracker))
                 (set! a2-5 (the-as none #x4000))
                 (set! v0-2 (the-as none (call!)))
                 (set! gp-0 (the-as none v0-2))
                 gp-0
                 )
           (set! v1-13 (the-as none part-tracker))
           (set! t9-2 (the-as none (l.wu (+ v1-13 52))))
           (set! a0-11 (the-as none gp-0))
           (set! a1-5 (the-as none *entity-pool*))
           (set! v1-14 (the-as none #xff37))
           (set! a2-6 (the-as none part-tracker))
           (set! a2-7 (the-as none (l.wu a2-6)))
           (set! v1-15 (the-as none (+ v1-14 a2-7)))
           (set! a2-8 (the-as none (l.wu v1-15)))
           (set! a3-4 (the-as none #x70004000))
           (call!)
           (set! t9-3 (the-as none run-function-in-process))
           (set! a0-12 (the-as none gp-0))
           (set! a1-6 (the-as none part-tracker-init))
           (set! v1-16 (the-as none *part-group-id-table*))
           (set! a2-9 (the-as none (l.wu (+ v1-16 4524))))
           (set! a3-5 (the-as none 0))
           (set! t3-0 (the-as none *launch-matrix*))
           (set! v1-17 (the-as none (+ t3-0 48)))
           (set! t4-0 (the-as none (l.wu (+ s6-0 124))))
           (set! t4-1 (the-as none (+ t4-0 12)))
           (set! t4-2 (the-as none (l.q t4-1)))
           (s.q! v1-17 t4-2)
           (call!)
           (set! v1-18 (the-as none (l.wu (+ gp-0 24))))
           )
         (set! a0-13 (the-as none s6-0))
         (set! v1-19 (the-as none (l.wu (+ a0-13 -4))))
         (set! t9-4 (the-as none (l.wu (+ v1-19 56))))
         (set! v0-0 (the-as symbol (call!)))
         )
        (else
          (when (begin
                  (set! a0-14 (the-as none *default-dead-pool*))
                  (set! v1-20 (the-as none (l.wu (+ a0-14 -4))))
                  (set! t9-5 (the-as none (l.wu (+ v1-20 72))))
                  (set! a1-7 (the-as none part-tracker))
                  (set! a2-10 (the-as none #x4000))
                  (set! v0-5 (the-as none (call!)))
                  (set! gp-1 (the-as none v0-5))
                  gp-1
                  )
            (set! v1-22 (the-as none part-tracker))
            (set! t9-6 (the-as none (l.wu (+ v1-22 52))))
            (set! a0-15 (the-as none gp-1))
            (set! a1-8 (the-as none *entity-pool*))
            (set! v1-23 (the-as none #xff37))
            (set! a2-11 (the-as none part-tracker))
            (set! a2-12 (the-as none (l.wu a2-11)))
            (set! v1-24 (the-as none (+ v1-23 a2-12)))
            (set! a2-13 (the-as none (l.wu v1-24)))
            (set! a3-6 (the-as none #x70004000))
            (call!)
            (set! t9-7 (the-as none run-function-in-process))
            (set! a0-16 (the-as none gp-1))
            (set! a1-9 (the-as none part-tracker-init))
            (set! v1-25 (the-as none *part-group-id-table*))
            (set! a2-14 (the-as none (l.wu (+ v1-25 4524))))
            (set! a3-7 (the-as none 0))
            (set! t2-1 (the-as none s6-0))
            (set! t3-1 (the-as none 3))
            (call!)
            (set! v1-26 (the-as none (l.wu (+ gp-1 24))))
            )
          (set! v1-27 (the-as none (l.wu (+ s6-0 132))))
          (set! v0-0 (the-as symbol (+ v1-27 156)))
          (set! v1-28 (the-as none #x43000000))
          (set! f0-0 (the-as none (gpr->fpr v1-28)))
          (s.f! v0-0 f0-0)
          (set! f0-1 (the-as none 0))
          (s.f! (+ v0-0 4) f0-1)
          (set! f0-2 (the-as none 0))
          (s.f! (+ v0-0 8) f0-2)
          (set! v1-29 (the-as none #x3f800000))
          (set! f0-3 (the-as none (gpr->fpr v1-29)))
          (s.f! (+ v0-0 12) f0-3)
          )
        )
      )
    )
  (ret-value v0-0)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    (b0
      (cond
        ((seq
           b1
           (while b5
             (seq
               (cond
                 (b2
                   b3
                   )
                 )
               b4
               )
             )
           b6
           )
         (cond
           (b7
             (seq
               (cond
                 (b8
                   b9
                   )
                 )
               b10
               )
             )
           (else
             (seq
               (cond
                 (b11
                   b12
                   )
                 )
               b13
               )
             )
           )
         )
        )
      )
    )
  b14
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function port-metal-head-boat-init-by-other
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0xe0, fp? 1 ra? 1 ep? 1
  ;stack_vars: 144 bytes at 16
  ;gprs: gp s5 s4
  ;fprs: f30
;; Warnings:
;; INFO: Used lq/sq
;; ERROR: failed type prop at 73: Could not figure out load: (set! v1 (l.wu (+ v1 124)))
;; ERROR: Failed to guess stack use for 16 in port-metal-head-boat-init-by-other:70
;; ERROR: Function may read a register that is not set: a0

L119:
    daddiu sp, sp, -224
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
    sq s4, 160(sp)
    sq s5, 176(sp)
    sq gp, 192(sp)
    swc1 f30, 208(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! a0-0 a0-0) [a0: <uninitialized> ] -> [gp: <uninitialized> ]
    lw v1, collide-shape-moving(s7);; [  1] (set! v1-0 collide-shape-moving)
                              ;; [] -> [v1: <the etype collide-shape-moving> ]
    lwu t9, 16(v1)            ;; [  2] (set! t9-0 (l.wu (+ v1-0 16)))
                              ;; [v1: <the etype collide-shape-moving> ] -> [t9: <new collide-shape-moving (function symbol type process-drawable collide-list-enum collide-shape-moving)> ]
    daddiu a0, s7, process    ;; [  3] (set! a0-1 'process) [] -> [a0: <sym process> ]
    lw a1, collide-shape-moving(s7);; [  4] (set! a1-0 collide-shape-moving)
                              ;; [] -> [a1: <the etype collide-shape-moving> ]
    or a2, s6, r0             ;; [  5] (set! a2-0 s6-0) [s6: port-metal-head-boat ] -> [a2: port-metal-head-boat ]
    addiu a3, r0, 1           ;; [  6] (set! a3-0 1) [] -> [a3: <integer 1> ]
    jalr ra, t9               ;; [  7] (call! a0-1 a1-0 a2-0 a3-0)
                              ;; [a0: <sym process> a1: <the etype collide-shape-moving> a2: port-metal-head-boat a3: <integer 1> t9: <new collide-shape-moving (function symbol type process-drawable collide-list-enum collide-shape-moving)> ] -> [v0: collide-shape-moving ]
    sll v0, ra, 0

    or s5, v0, r0             ;; [  8] (set! s5-0 v0-0) [v0: collide-shape-moving ] -> [s5: collide-shape-moving ]
    lw a0, *standard-dynamics*(s7);; [  9] (set! a0-2 *standard-dynamics*) [] -> [a0: dynamics ]
    lwu v1, -4(a0)            ;; [ 10] (set! v1-1 (l.wu (+ a0-2 -4))) [a0: dynamics ] -> [v1: <the type dynamics> ]
    lwu t9, 40(v1)            ;; [ 11] (set! t9-1 (l.wu (+ v1-1 40)))
                              ;; [v1: <the type dynamics> ] -> [t9: <vmethod (function dynamics symbol dynamics)> ]
    daddiu a1, s7, process    ;; [ 12] (set! a1-1 'process) [] -> [a1: <sym process> ]
    jalr ra, t9               ;; [ 13] (call! a0-2 a1-1)
                              ;; [a0: dynamics a1: <sym process> t9: <vmethod (function dynamics symbol dynamics)> ] -> [v0: dynamics ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 14] (set! v1-2 v0-1) [v0: dynamics ] -> [v1: dynamics ]
    sw v1, 464(s5)            ;; [ 15] (s.w! (+ s5-0 464) v1-2) [v1: dynamics s5: collide-shape-moving ] -> []
    lw v1, cshape-reaction-just-move(s7);; [ 16] (set! v1-3 cshape-reaction-just-move)
                              ;; [] -> [v1: (function control-info collide-query vector collide-status) ]
    sw v1, 312(s5)            ;; [ 17] (s.w! (+ s5-0 312) v1-3)
                              ;; [v1: (function control-info collide-query vector collide-status) s5: collide-shape-moving ] -> []
    lw v1, nothing(s7)        ;; [ 18] (set! v1-4 nothing) [] -> [v1: (function none) ]
    sw v1, 316(s5)            ;; [ 19] (s.w! (+ s5-0 316) v1-4) [v1: (function none) s5: collide-shape-moving ] -> []
    lw v1, collide-shape-prim-sphere(s7);; [ 20] (set! v1-5 collide-shape-prim-sphere)
                              ;; [] -> [v1: <the etype collide-shape-prim-sphere> ]
    lwu t9, 16(v1)            ;; [ 21] (set! t9-2 (l.wu (+ v1-5 16)))
                              ;; [v1: <the etype collide-shape-prim-sphere> ] -> [t9: <new collide-shape-prim-sphere (function symbol type collide-shape uint collide-shape-prim-sphere)> ]
    daddiu a0, s7, process    ;; [ 22] (set! a0-3 'process) [] -> [a0: <sym process> ]
    lw a1, collide-shape-prim-sphere(s7);; [ 23] (set! a1-2 collide-shape-prim-sphere)
                              ;; [] -> [a1: <the etype collide-shape-prim-sphere> ]
    or a2, s5, r0             ;; [ 24] (set! a2-1 s5-0) [s5: collide-shape-moving ] -> [a2: collide-shape-moving ]
    addiu a3, r0, 0           ;; [ 25] (set! a3-1 0) [] -> [a3: <integer 0> ]
    jalr ra, t9               ;; [ 26] (call! a0-3 a1-2 a2-1 a3-1)
                              ;; [a0: <sym process> a1: <the etype collide-shape-prim-sphere> a2: collide-shape-moving a3: <integer 0> t9: <new collide-shape-prim-sphere (function symbol type collide-shape uint collide-shape-prim-sphere)> ] -> [v0: collide-shape-prim-sphere ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 27] (set! v1-6 v0-2)
                              ;; [v0: collide-shape-prim-sphere ] -> [v1: collide-shape-prim-sphere ]
    lui a0, 512               ;; [ 28] (set! a0-4 #x2000000) [] -> [a0: <integer 33554432> ]
    sw a0, 28(v1)             ;; [ 29] (s.w! (+ v1-6 28) a0-4)
                              ;; [v1: collide-shape-prim-sphere a0: <integer 33554432> ] -> []
    addiu a0, r0, 1031        ;; [ 30] (set! a0-5 1031) [] -> [a0: <integer 1031> ]
    sw a0, 32(v1)             ;; [ 31] (s.w! (+ v1-6 32) a0-5) [v1: collide-shape-prim-sphere a0: <integer 1031> ] -> []
    addiu a0, r0, 1           ;; [ 32] (set! a0-6 1) [] -> [a0: <integer 1> ]
    sw a0, 36(v1)             ;; [ 33] (s.w! (+ v1-6 36) a0-6) [v1: collide-shape-prim-sphere a0: <integer 1> ] -> []
    addiu a0, r0, 3           ;; [ 34] (set! a0-7 3) [] -> [a0: <integer 3> ]
    sb a0, 8(v1)              ;; [ 35] (s.b! (+ v1-6 8) a0-7) [v1: collide-shape-prim-sphere a0: <integer 3> ] -> []
    daddiu a0, v1, 44         ;; [ 36] (set! a0-8 (+ v1-6 44)) [v1: collide-shape-prim-sphere ] -> [a0: vector ]
    mtc1 f0, r0               ;; [ 37] (set! f0-0 0) [] -> []
    swc1 f0, 0(a0)            ;; [ 38] (s.f! a0-8 f0-0) [a0: vector ] -> []
    mtc1 f0, r0               ;; [ 39] (set! f0-1 0) [] -> []
    swc1 f0, 4(a0)            ;; [ 40] (s.f! (+ a0-8 4) f0-1) [a0: vector ] -> []
    mtc1 f0, r0               ;; [ 41] (set! f0-2 0) [] -> []
    swc1 f0, 8(a0)            ;; [ 42] (s.f! (+ a0-8 8) f0-2) [a0: vector ] -> []
    lui a1, 17792             ;; [ 43] (set! a1-3 #x45800000) [] -> [a1: <integer 1166016512> ]
    mtc1 f0, a1               ;; [ 44] (set! f0-3 (gpr->fpr a1-3)) [a1: <integer 1166016512> ] -> []
    lui a1, 16752             ;; [ 45] (set! a1-4 #x41700000) [] -> [a1: <integer 1097859072> ]
    mtc1 f1, a1               ;; [ 46] (set! f1-0 (gpr->fpr a1-4)) [a1: <integer 1097859072> ] -> []
    beq s7, gp, L120          ;; [ 47] (b! (not a0-0) L120 (nop!)) [gp: <uninitialized> ] -> []
    sll r0, r0, 0

B1:
    lui a1, 16076             ;; [ 48] (set! a1-5 #x3ecccccd) [] -> [a1: <integer 1053609165> ]
    ori a1, a1, 52429
    beq r0, r0, L121          ;; [ 49] (b! #t L121 (nop!)) [] -> []
    sll r0, r0, 0

B2:
L120:
    lui a1, 16256             ;; [ 50] (set! a1-5 #x3f800000) [] -> [a1: <uninitialized> ]
B3:
L121:
    mtc1 f2, a1               ;; [ 51] (set! f2-0 (gpr->fpr a1-5)) [a1: <integer 1053609165> ] -> []
    mul.s f1, f1, f2          ;; [ 52] (set! f1-1 (*.s f1-0 f2-0)) [] -> []
    mul.s f0, f0, f1          ;; [ 53] (set! f0-4 (*.s f0-3 f1-1)) [] -> []
    swc1 f0, 12(a0)           ;; [ 54] (s.f! (+ a0-8 12) f0-4) [a0: vector ] -> []
    addiu a0, r0, 1           ;; [ 55] (set! a0-9 1) [] -> [a0: <integer 1> ]
    sb a0, 142(s5)            ;; [ 56] (s.b! (+ s5-0 142) a0-9) [a0: <integer 1> s5: collide-shape-moving ] -> []
    sw v1, 156(s5)            ;; [ 57] (s.w! (+ s5-0 156) v1-6)
                              ;; [v1: collide-shape-prim-sphere s5: collide-shape-moving ] -> []
    lui v1, 16192             ;; [ 58] (set! v1-7 #x3f400000) [] -> [v1: <integer 1061158912> ]
    mtc1 f0, v1               ;; [ 59] (set! f0-5 (gpr->fpr v1-7)) [v1: <integer 1061158912> ] -> []
    lwu v1, 156(s5)           ;; [ 60] (set! v1-8 (l.wu (+ s5-0 156)))
                              ;; [s5: collide-shape-moving ] -> [v1: collide-shape-prim ]
    lwc1 f1, 56(v1)           ;; [ 61] (set! f1-2 (l.f (+ v1-8 56))) [v1: collide-shape-prim ] -> []
    mul.s f0, f0, f1          ;; [ 62] (set! f0-6 (*.s f0-5 f1-2)) [] -> []
    swc1 f0, 4(s5)            ;; [ 63] (s.f! (+ s5-0 4) f0-6) [s5: collide-shape-moving ] -> []
    lwu v1, 156(s5)           ;; [ 64] (set! v1-9 (l.wu (+ s5-0 156)))
                              ;; [s5: collide-shape-moving ] -> [v1: collide-shape-prim ]
    lwu a0, 28(v1)            ;; [ 65] (set! a0-10 (l.wu (+ v1-9 28))) [v1: collide-shape-prim ] -> [a0: collide-spec ]
    sw a0, 180(s5)            ;; [ 66] (s.w! (+ s5-0 180) a0-10) [a0: collide-spec s5: collide-shape-moving ] -> []
    lwu v1, 32(v1)            ;; [ 67] (set! v1-10 (l.wu (+ v1-9 32))) [v1: collide-shape-prim ] -> [v1: collide-spec ]
    sw v1, 184(s5)            ;; [ 68] (s.w! (+ s5-0 184) v1-10) [v1: collide-spec s5: collide-shape-moving ] -> []
    sw s5, 124(s6)            ;; [ 69] (s.w! (+ s6-0 124) s5-0)
                              ;; [s5: collide-shape-moving s6: port-metal-head-boat ] -> []
    daddiu s5, sp, 16         ;; [ 70] (set! s5-1 (+ sp-0 16)) [sp: <uninitialized> ] -> [s5: <uninitialized> ]
    lwu v1, 12(s6)            ;; [ 71] (set! v1-11 (l.wu (+ s6-0 12)))
                              ;; [s6: port-metal-head-boat ] -> [v1: (pointer process-tree) ]
    lwu v1, 0(v1)             ;; [ 72] (set! v1-12 (l.wu v1-11)) [v1: (pointer process-tree) ] -> [v1: process-tree ]
    lwu v1, 124(v1)           ;; [ 73] (set! v1-13 (l.wu (+ v1-12 124))) [v1: process-tree ] -> [v1: <uninitialized> ]
    lwc1 f30, 12(v1)          ;; [ 74] (set! f30-0 (l.f (+ v1-13 12))) [v1: <uninitialized> ] -> []
    lw t9, rand-vu-float-range(s7);; [ 75] (set! t9-3 rand-vu-float-range) [] -> [t9: <uninitialized> ]
    lui a0, -13958            ;; [ 76] (set! a0-11 -914751488) [] -> [a0: <uninitialized> ]
    lui a1, 18810             ;; [ 77] (set! a1-6 #x497a0000) [] -> [a1: <uninitialized> ]
    jalr ra, t9               ;; [ 78] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [ 79] (set! f0-7 (gpr->fpr v0-3)) [v0: <uninitialized> ] -> []
    add.s f0, f30, f0         ;; [ 80] (set! f0-8 (+.s f30-0 f0-7)) [] -> []
    swc1 f0, 0(s5)            ;; [ 81] (s.f! s5-1 f0-8) [s5: <uninitialized> ] -> []
    lui v1, -14560            ;; [ 82] (set! v1-14 -954204160) [] -> [v1: <uninitialized> ]
    mtc1 f0, v1               ;; [ 83] (set! f0-9 (gpr->fpr v1-14)) [v1: <uninitialized> ] -> []
    swc1 f0, 4(s5)            ;; [ 84] (s.f! (+ s5-1 4) f0-9) [s5: <uninitialized> ] -> []
    lui v1, 19247             ;; [ 85] (set! v1-15 #x4b2f0000) [] -> [v1: <uninitialized> ]
    mtc1 f0, v1               ;; [ 86] (set! f0-10 (gpr->fpr v1-15)) [v1: <uninitialized> ] -> []
    swc1 f0, 8(s5)            ;; [ 87] (s.f! (+ s5-1 8) f0-10) [s5: <uninitialized> ] -> []
    lui v1, 16256             ;; [ 88] (set! v1-16 #x3f800000) [] -> [v1: <uninitialized> ]
    mtc1 f0, v1               ;; [ 89] (set! f0-11 (gpr->fpr v1-16)) [v1: <uninitialized> ] -> []
    swc1 f0, 12(s5)           ;; [ 90] (s.f! (+ s5-1 12) f0-11) [s5: <uninitialized> ] -> []
    lwu v1, 124(s6)           ;; [ 91] (set! v1-17 (l.wu (+ s6-0 124)))
                              ;; [s6: port-metal-head-boat ] -> [v1: <uninitialized> ]
    daddiu v1, v1, 12         ;; [ 92] (set! v1-18 (+ v1-17 12)) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    or a0, s5, r0             ;; [ 93] (set! a0-12 s5-1) [s5: <uninitialized> ] -> [a0: <uninitialized> ]
    lq a0, 0(a0)              ;; [ 94] (set! a0-13 (l.q a0-12)) [a0: <uninitialized> ] -> [a0: <uninitialized> ]
    sq a0, 0(v1)              ;; [ 95] (s.q! v1-18 a0-13) [v1: <uninitialized> a0: <uninitialized> ] -> []
    daddiu v1, s6, 204        ;; [ 96] (set! v1-19 (+ s6-0 204)) [s6: port-metal-head-boat ] -> [v1: <uninitialized> ]
    lq a0, 0(s5)              ;; [ 97] (set! a0-14 (l.q s5-1)) [s5: <uninitialized> ] -> [a0: <uninitialized> ]
    sq a0, 0(v1)              ;; [ 98] (s.q! v1-19 a0-14) [v1: <uninitialized> a0: <uninitialized> ] -> []
    lw t9, quaternion-axis-angle!(s7);; [ 99] (set! t9-4 quaternion-axis-angle!) [] -> [t9: <uninitialized> ]
    lwu v1, 124(s6)           ;; [100] (set! v1-20 (l.wu (+ s6-0 124)))
                              ;; [s6: port-metal-head-boat ] -> [v1: <uninitialized> ]
    daddiu a0, v1, 28         ;; [101] (set! a0-15 (+ v1-20 28)) [v1: <uninitialized> ] -> [a0: <uninitialized> ]
    addiu a1, r0, 0           ;; [102] (set! a1-7 0) [] -> [a1: <uninitialized> ]
    lui a2, 16256             ;; [103] (set! a2-2 #x3f800000) [] -> [a2: <uninitialized> ]
    addiu a3, r0, 0           ;; [104] (set! a3-2 0) [] -> [a3: <uninitialized> ]
    addiu t0, r0, 0           ;; [105] (set! t0-0 0) [] -> [t0: <uninitialized> ]
    jalr ra, t9               ;; [106] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    sw r0, 252(s6)            ;; [107] (s.w! (+ s6-0 252) 0) [s6: port-metal-head-boat ] -> []
    sw gp, 284(s6)            ;; [108] (s.w! (+ s6-0 284) a0-0) [s6: port-metal-head-boat gp: <uninitialized> ] -> []
    beq s7, gp, L122          ;; [109] (b! (not a0-0) L122 (nop!)) [gp: <uninitialized> ] -> []
    sll r0, r0, 0

B4:
    lwu v1, 124(s6)           ;; [110] (set! v1-21 (l.wu (+ s6-0 124))) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    daddiu v1, v1, 44         ;; [111] (set! v1-22 (+ v1-21 44)) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    lui a0, 16076             ;; [112] (set! a0-16 #x3ecccccd) [] -> [a0: <uninitialized> ]
    ori a0, a0, 52429
    mtc1 f0, a0               ;; [113] (set! f0-12 (gpr->fpr a0-16)) [a0: <uninitialized> ] -> []
    swc1 f0, 0(v1)            ;; [114] (s.f! v1-22 f0-12) [v1: <uninitialized> ] -> []
    lui a0, 16076             ;; [115] (set! a0-17 #x3ecccccd) [] -> [a0: <uninitialized> ]
    ori a0, a0, 52429
    mtc1 f0, a0               ;; [116] (set! f0-13 (gpr->fpr a0-17)) [a0: <uninitialized> ] -> []
    swc1 f0, 4(v1)            ;; [117] (s.f! (+ v1-22 4) f0-13) [v1: <uninitialized> ] -> []
    lui a0, 16076             ;; [118] (set! a0-18 #x3ecccccd) [] -> [a0: <uninitialized> ]
    ori a0, a0, 52429
    mtc1 f0, a0               ;; [119] (set! f0-14 (gpr->fpr a0-18)) [a0: <uninitialized> ] -> []
    swc1 f0, 8(v1)            ;; [120] (s.f! (+ v1-22 8) f0-14) [v1: <uninitialized> ] -> []
    lui a0, 16256             ;; [121] (set! a0-19 #x3f800000) [] -> [a0: <uninitialized> ]
    mtc1 f0, a0               ;; [122] (set! f0-15 (gpr->fpr a0-19)) [a0: <uninitialized> ] -> []
    swc1 f0, 12(v1)           ;; [123] (s.f! (+ v1-22 12) f0-15) [v1: <uninitialized> ] -> []
    addiu v1, r0, 2           ;; [124] (set! v1-23 2) [] -> [v1: <uninitialized> ]
    sw v1, 272(s6)            ;; [125] (s.w! (+ s6-0 272) v1-23) [v1: <uninitialized> s6: <uninitialized> ] -> []
    lui v1, 16128             ;; [126] (set! v1-24 #x3f000000) [] -> [v1: <uninitialized> ]
    mtc1 f0, v1               ;; [127] (set! f0-16 (gpr->fpr v1-24)) [v1: <uninitialized> ] -> []
    swc1 f0, 276(s6)          ;; [128] (s.f! (+ s6-0 276) f0-16) [s6: <uninitialized> ] -> []
    lui v1, 16025             ;; [129] (set! v1-25 #x3e99999a) [] -> [v1: <uninitialized> ]
    ori v1, v1, 39322
    mtc1 f0, v1               ;; [130] (set! f0-17 (gpr->fpr v1-25)) [v1: <uninitialized> ] -> []
    swc1 f0, 280(s6)          ;; [131] (s.f! (+ s6-0 280) f0-17) [s6: <uninitialized> ] -> []
    mfc1 v1, f0               ;; [132] (set! v1-26 (fpr->gpr f0-17)) [] -> [v1: <uninitialized> ]
    beq r0, r0, L123          ;; [133] (b! #t L123 (nop!)) [] -> []
    sll r0, r0, 0

B5:
L122:
    lw t9, vector-identity!(s7);; [134] (set! t9-5 vector-identity!) [] -> [t9: <uninitialized> ]
    lwu v1, 124(s6)           ;; [135] (set! v1-27 (l.wu (+ s6-0 124))) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    daddiu a0, v1, 44         ;; [136] (set! a0-20 (+ v1-27 44)) [v1: <uninitialized> ] -> [a0: <uninitialized> ]
    jalr ra, t9               ;; [137] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    addiu v1, r0, 4           ;; [138] (set! v1-28 4) [] -> [v1: <uninitialized> ]
    sw v1, 272(s6)            ;; [139] (s.w! (+ s6-0 272) v1-28) [v1: <uninitialized> s6: <uninitialized> ] -> []
    lui v1, 16025             ;; [140] (set! v1-29 #x3e99999a) [] -> [v1: <uninitialized> ]
    ori v1, v1, 39322
    mtc1 f0, v1               ;; [141] (set! f0-18 (gpr->fpr v1-29)) [v1: <uninitialized> ] -> []
    swc1 f0, 276(s6)          ;; [142] (s.f! (+ s6-0 276) f0-18) [s6: <uninitialized> ] -> []
    mtc1 f0, r0               ;; [143] (set! f0-19 0) [] -> []
    swc1 f0, 280(s6)          ;; [144] (s.f! (+ s6-0 280) f0-19) [s6: <uninitialized> ] -> []
    mfc1 v1, f0               ;; [145] (set! v1-30 (fpr->gpr f0-19)) [] -> [v1: <uninitialized> ]
B6:
L123:
    daddiu s5, sp, 32         ;; [146] (set! s5-2 (+ sp-0 32)) [sp: <uninitialized> ] -> [s5: <uninitialized> ]
    lw t9, target-pos(s7)     ;; [147] (set! t9-6 target-pos) [] -> [t9: <uninitialized> ]
    addiu a0, r0, 0           ;; [148] (set! a0-21 0) [] -> [a0: <uninitialized> ]
    jalr ra, t9               ;; [149] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [150] (set! v1-31 v0-6) [v0: <uninitialized> ] -> [v1: <uninitialized> ]
    lq v1, 0(v1)              ;; [151] (set! v1-32 (l.q v1-31)) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    sq v1, 0(s5)              ;; [152] (s.q! s5-2 v1-32) [v1: <uninitialized> s5: <uninitialized> ] -> []
    lwu v1, 12(s6)            ;; [153] (set! v1-33 (l.wu (+ s6-0 12))) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu v1, 0(v1)             ;; [154] (set! v1-34 (l.wu v1-33)) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu v1, 124(v1)           ;; [155] (set! v1-35 (l.wu (+ v1-34 124))) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    lwc1 f30, 12(v1)          ;; [156] (set! f30-1 (l.f (+ v1-35 12))) [v1: <uninitialized> ] -> []
    lw t9, rand-vu-float-range(s7);; [157] (set! t9-7 rand-vu-float-range) [] -> [t9: <uninitialized> ]
    lui a0, -14136            ;; [158] (set! a0-22 -926416896) [] -> [a0: <uninitialized> ]
    lui a1, 18632             ;; [159] (set! a1-8 #x48c80000) [] -> [a1: <uninitialized> ]
    jalr ra, t9               ;; [160] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [161] (set! f0-20 (gpr->fpr v0-7)) [v0: <uninitialized> ] -> []
    add.s f0, f30, f0         ;; [162] (set! f0-21 (+.s f30-1 f0-20)) [] -> []
    swc1 f0, 0(s5)            ;; [163] (s.f! s5-2 f0-21) [s5: <uninitialized> ] -> []
    daddiu gp, s6, 220        ;; [164] (set! gp-1 (+ s6-0 220)) [s6: <uninitialized> ] -> [gp: <uninitialized> ]
    daddiu v1, s6, 204        ;; [165] (set! v1-36 (+ s6-0 204)) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    lqc2 vf4, 0(s5)           ;; [166] (set! gp-2 (vector-!2 gp-1 s5-2 v1-36))
                              ;; [v1: <uninitialized> s5: <uninitialized> gp: <uninitialized> ] -> [gp: <uninitialized> ]
    lqc2 vf5, 0(v1)
    vmove.w vf6, vf0
    vsub.xyz vf6, vf4, vf5
    sqc2 vf6, 0(gp)
    lw t9, quaternion->matrix(s7);; [167] (set! t9-8 quaternion->matrix) [] -> [t9: <uninitialized> ]
    daddiu a0, sp, 48         ;; [168] (set! a0-23 (+ sp-0 48)) [sp: <uninitialized> ] -> [a0: <uninitialized> ]
    sq r0, 0(a0)              ;; [169] (s.q! a0-23 0) [a0: <uninitialized> ] -> []
    sq r0, 16(a0)             ;; [170] (s.q! (+ a0-23 16) 0) [a0: <uninitialized> ] -> []
    sq r0, 32(a0)             ;; [171] (s.q! (+ a0-23 32) 0) [a0: <uninitialized> ] -> []
    sq r0, 48(a0)             ;; [172] (s.q! (+ a0-23 48) 0) [a0: <uninitialized> ] -> []
    lwu v1, 124(s6)           ;; [173] (set! v1-37 (l.wu (+ s6-0 124))) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    daddiu a1, v1, 28         ;; [174] (set! a1-9 (+ v1-37 28)) [v1: <uninitialized> ] -> [a1: <uninitialized> ]
    jalr ra, t9               ;; [175] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or s5, v0, r0             ;; [176] (set! s5-3 v0-8) [v0: <uninitialized> ] -> [s5: <uninitialized> ]
    lw t9, vector-normalize!(s7);; [177] (set! t9-9 vector-normalize!) [] -> [t9: <uninitialized> ]
    or a0, gp, r0             ;; [178] (set! a0-24 gp-2) [gp: <uninitialized> ] -> [a0: <uninitialized> ]
    lui a1, 16256             ;; [179] (set! a1-10 #x3f800000) [] -> [a1: <uninitialized> ]
    jalr ra, t9               ;; [180] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    daddiu v1, s6, 236        ;; [181] (set! v1-38 (+ s6-0 236)) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    daddu a0, r0, s5          ;; [182] (set! a0-25 (+ s5-3 0)) [s5: <uninitialized> ] -> [a0: <uninitialized> ]
    lui a1, 17920             ;; [183] (set! a1-11 #x46000000) [] -> [a1: <uninitialized> ]
    mtc1 f0, a1               ;; [184] (set! f0-22 (gpr->fpr a1-11)) [a1: <uninitialized> ] -> []
    lqc2 vf1, 0(a0)           ;; [185] (set! v1-39 (vector-float*!2 v1-38 a0-25 f0-22))
                              ;; [v1: <uninitialized> a0: <uninitialized> ] -> [v1: <uninitialized> ]
    mfc1 a0, f0
    qmtc2.i vf2, a0
    vaddx.w vf1, vf0, vf0
    vmulx.xyz vf1, vf1, vf2
    sqc2 vf1, 0(v1)
    lw t9, vector-normalize-copy!(s7);; [186] (set! t9-10 vector-normalize-copy!) [] -> [t9: <uninitialized> ]
    daddiu a0, sp, 112        ;; [187] (set! a0-26 (+ sp-0 112)) [sp: <uninitialized> ] -> [a0: <uninitialized> ]
    daddiu a1, s5, 16         ;; [188] (set! a1-12 (+ s5-3 16)) [s5: <uninitialized> ] -> [a1: <uninitialized> ]
    lui a2, 16256             ;; [189] (set! a2-3 #x3f800000) [] -> [a2: <uninitialized> ]
    jalr ra, t9               ;; [190] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or s4, v0, r0             ;; [191] (set! s4-0 v0-10) [v0: <uninitialized> ] -> [s4: <uninitialized> ]
    lw t9, vector-normalize-copy!(s7);; [192] (set! t9-11 vector-normalize-copy!) [] -> [t9: <uninitialized> ]
    daddiu a0, sp, 128        ;; [193] (set! a0-27 (+ sp-0 128)) [sp: <uninitialized> ] -> [a0: <uninitialized> ]
    daddiu a1, s5, 32         ;; [194] (set! a1-13 (+ s5-3 32)) [s5: <uninitialized> ] -> [a1: <uninitialized> ]
    lui a2, 16256             ;; [195] (set! a2-4 #x3f800000) [] -> [a2: <uninitialized> ]
    jalr ra, t9               ;; [196] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [197] (set! v1-40 v0-11) [v0: <uninitialized> ] -> [v1: <uninitialized> ]
    lw s5, vector-normalize!(s7);; [198] (set! s5-4 vector-normalize!) [] -> [s5: <uninitialized> ]
    lw t9, vector-flatten!(s7);; [199] (set! t9-12 vector-flatten!) [] -> [t9: <uninitialized> ]
    daddiu a0, sp, 144        ;; [200] (set! a0-28 (+ sp-0 144)) [sp: <uninitialized> ] -> [a0: <uninitialized> ]
    or a1, gp, r0             ;; [201] (set! a1-14 gp-2) [gp: <uninitialized> ] -> [a1: <uninitialized> ]
    or a2, s4, r0             ;; [202] (set! a2-5 s4-0) [s4: <uninitialized> ] -> [a2: <uninitialized> ]
    jalr ra, t9               ;; [203] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or a0, v0, r0             ;; [204] (set! a0-29 v0-12) [v0: <uninitialized> ] -> [a0: <uninitialized> ]
    lui a1, 16256             ;; [205] (set! a1-15 #x3f800000) [] -> [a1: <uninitialized> ]
    or t9, s5, r0             ;; [206] (set! t9-13 s5-4) [s5: <uninitialized> ] -> [t9: <uninitialized> ]
    jalr ra, t9               ;; [207] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or a0, v0, r0             ;; [208] (set! a0-30 v0-13) [v0: <uninitialized> ] -> [a0: <uninitialized> ]
    lw t9, vector-y-angle(s7) ;; [209] (set! t9-14 vector-y-angle) [] -> [t9: <uninitialized> ]
    jalr ra, t9               ;; [210] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    mtc1 f0, v0               ;; [211] (set! f0-23 (gpr->fpr v0-14)) [v0: <uninitialized> ] -> []
    swc1 f0, 196(s6)          ;; [212] (s.f! (+ s6-0 196) f0-23) [s6: <uninitialized> ] -> []
    mfc1 v1, f0               ;; [213] (set! v1-41 (fpr->gpr f0-23)) [] -> [v1: <uninitialized> ]
    daddiu v1, s6, 220        ;; [214] (set! v1-42 (+ s6-0 220)) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    daddiu a0, s6, 220        ;; [215] (set! a0-31 (+ s6-0 220)) [s6: <uninitialized> ] -> [a0: <uninitialized> ]
    lui a1, 17920             ;; [216] (set! a1-16 #x46000000) [] -> [a1: <uninitialized> ]
    mtc1 f0, a1               ;; [217] (set! f0-24 (gpr->fpr a1-16)) [a1: <uninitialized> ] -> []
    lqc2 vf1, 0(a0)           ;; [218] (set! v1-43 (vector-float*!2 v1-42 a0-31 f0-24))
                              ;; [v1: <uninitialized> a0: <uninitialized> ] -> [v1: <uninitialized> ]
    mfc1 a0, f0
    qmtc2.i vf2, a0
    vaddx.w vf1, vf0, vf0
    vmulx.xyz vf1, vf1, vf2
    sqc2 vf1, 0(v1)
    addiu v1, r0, -33         ;; [219] (set! v1-44 -33) [] -> [v1: <uninitialized> ]
    lwu a0, 4(s6)             ;; [220] (set! a0-32 (l.wu (+ s6-0 4))) [s6: <uninitialized> ] -> [a0: <uninitialized> ]
    and v1, v1, a0            ;; [221] (set! v1-45 (logand v1-44 a0-32))
                              ;; [v1: <uninitialized> a0: <uninitialized> ] -> [v1: <uninitialized> ]
    sw v1, 4(s6)              ;; [222] (s.w! (+ s6-0 4) v1-45) [v1: <uninitialized> s6: <uninitialized> ] -> []
    lui v1, 8                 ;; [223] (set! v1-46 #x80000) [] -> [v1: <uninitialized> ]
    lwu a0, 4(s6)             ;; [224] (set! a0-33 (l.wu (+ s6-0 4))) [s6: <uninitialized> ] -> [a0: <uninitialized> ]
    or v1, v1, a0             ;; [225] (set! v1-47 (logior v1-46 a0-33))
                              ;; [v1: <uninitialized> a0: <uninitialized> ] -> [v1: <uninitialized> ]
    sw v1, 4(s6)              ;; [226] (s.w! (+ s6-0 4) v1-47) [v1: <uninitialized> s6: <uninitialized> ] -> []
    lw t9, process-entity-status!(s7);; [227] (set! t9-15 process-entity-status!) [] -> [t9: <uninitialized> ]
    or a0, s6, r0             ;; [228] (set! a0-34 s6-0) [s6: <uninitialized> ] -> [a0: <uninitialized> ]
    addiu a1, r0, 8           ;; [229] (set! a1-17 8) [] -> [a1: <uninitialized> ]
    daddiu a2, s7, #t         ;; [230] (set! a2-6 #t) [] -> [a2: <uninitialized> ]
    jalr ra, t9               ;; [231] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or gp, s6, r0             ;; [232] (set! gp-3 s6-0) [s6: <uninitialized> ] -> [gp: <uninitialized> ]
    lwu v1, -4(gp)            ;; [233] (set! v1-48 (l.wu (+ gp-3 -4))) [gp: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu s5, 72(v1)            ;; [234] (set! s5-5 (l.wu (+ v1-48 72))) [v1: <uninitialized> ] -> [s5: <uninitialized> ]
    lw a0, *level*(s7)        ;; [235] (set! a0-35 *level*) [] -> [a0: <uninitialized> ]
    lwu v1, -4(a0)            ;; [236] (set! v1-49 (l.wu (+ a0-35 -4))) [a0: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu t9, 108(v1)           ;; [237] (set! t9-16 (l.wu (+ v1-49 108))) [v1: <uninitialized> ] -> [t9: <uninitialized> ]
    daddiu a1, fp, L174       ;; [238] (set! a1-18 L174) [] -> [a1: <uninitialized> ] "skel-port-metal-head-boat"
    or a2, s7, r0             ;; [239] (set! a2-7 #f) [] -> [a2: <uninitialized> ]
    jalr ra, t9               ;; [240] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or a1, v0, r0             ;; [241] (set! a1-19 v0-16) [v0: <uninitialized> ] -> [a1: <uninitialized> ]
    addiu a2, r0, 0           ;; [242] (set! a2-8 0) [] -> [a2: <uninitialized> ]
    or t9, s5, r0             ;; [243] (set! t9-17 s5-5) [s5: <uninitialized> ] -> [t9: <uninitialized> ]
    or a0, gp, r0             ;; [244] (set! a0-36 gp-3) [gp: <uninitialized> ] -> [a0: <uninitialized> ]
    jalr ra, t9               ;; [245] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [246] (set! v1-50 v0-17) [v0: <uninitialized> ] -> [v1: <uninitialized> ]
    lw t9, enter-state(s7)    ;; [247] (set! t9-18 enter-state) [] -> [t9: <uninitialized> ]
    lwu v1, -4(s6)            ;; [248] (set! v1-51 (l.wu (+ s6-0 -4))) [s6: <uninitialized> ] -> [v1: <uninitialized> ]
    lwu v1, 96(v1)            ;; [249] (set! v1-52 (l.wu (+ v1-51 96))) [v1: <uninitialized> ] -> [v1: <uninitialized> ]
    sw v1, 64(s6)             ;; [250] (s.w! (+ s6-0 64) v1-52) [v1: <uninitialized> s6: <uninitialized> ] -> []
    jalr ra, t9               ;; [251] (call!)     [t9: <uninitialized> ] -> [v0: <uninitialized> ]
    sll v0, ra, 0

    ld ra, 0(sp)
    ld fp, 8(sp)
    lwc1 f30, 208(sp)
    lq gp, 192(sp)
    lq s5, 176(sp)
    lq s4, 160(sp)
    jr ra
    daddiu sp, sp, 224

    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(defbehavior port-metal-head-boat-init-by-other port-metal-head-boat ()
  (local-vars
    (v0-0 collide-shape-moving)
    (v0-1 dynamics)
    (v0-2 collide-shape-prim-sphere)
    (v0-3 none)
    (v0-4 none)
    (v0-5 none)
    (v0-6 none)
    (v0-7 none)
    (v0-8 none)
    (v0-9 none)
    (v0-10 none)
    (v0-11 none)
    (v0-12 none)
    (v0-13 none)
    (v0-14 none)
    (v0-15 none)
    (v0-16 none)
    (v0-17 none)
    (v0-18 none)
    (v1-0 type)
    (v1-1 type)
    (v1-2 dynamics)
    (v1-3 (function control-info collide-query vector collide-status))
    (v1-4 (function none))
    (v1-5 type)
    (v1-6 collide-shape-prim-sphere)
    (v1-7 int)
    (v1-8 collide-shape-prim)
    (v1-9 collide-shape-prim)
    (v1-10 collide-spec)
    (v1-11 (pointer process-tree))
    (v1-12 process-tree)
    (v1-13 none)
    (v1-14 none)
    (v1-15 none)
    (v1-16 none)
    (v1-17 none)
    (v1-18 none)
    (v1-19 none)
    (v1-20 none)
    (v1-21 none)
    (v1-22 none)
    (v1-23 none)
    (v1-24 none)
    (v1-25 none)
    (v1-27 none)
    (v1-28 none)
    (v1-29 none)
    (v1-31 none)
    (v1-32 none)
    (v1-33 none)
    (v1-34 none)
    (v1-35 none)
    (v1-36 none)
    (v1-37 none)
    (v1-38 none)
    (v1-39 none)
    (v1-42 none)
    (v1-43 none)
    (v1-44 none)
    (v1-45 none)
    (v1-46 none)
    (v1-47 none)
    (v1-48 none)
    (v1-49 none)
    (v1-51 none)
    (v1-52 none)
    (a0-0 none)
    (a0-1 symbol)
    (a0-2 dynamics)
    (a0-3 symbol)
    (a0-4 int)
    (a0-5 int)
    (a0-6 int)
    (a0-7 int)
    (a0-8 vector)
    (a0-9 int)
    (a0-10 collide-spec)
    (a0-11 none)
    (a0-12 none)
    (a0-13 none)
    (a0-14 none)
    (a0-15 none)
    (a0-16 none)
    (a0-17 none)
    (a0-18 none)
    (a0-19 none)
    (a0-20 none)
    (a0-21 none)
    (a0-22 none)
    (a0-23 none)
    (a0-25 none)
    (a0-26 none)
    (a0-27 none)
    (a0-28 none)
    (a0-31 none)
    (a0-32 none)
    (a0-33 none)
    (a0-34 none)
    (a0-35 none)
    (a1-0 type)
    (a1-1 symbol)
    (a1-2 type)
    (a1-3 int)
    (a1-4 int)
    (a1-5 int)
    (a1-6 none)
    (a1-7 none)
    (a1-8 none)
    (a1-9 none)
    (a1-10 none)
    (a1-11 none)
    (a1-12 none)
    (a1-13 none)
    (a1-15 none)
    (a1-16 none)
    (a1-17 none)
    (a1-18 none)
    (a2-0 port-metal-head-boat)
    (a2-1 collide-shape-moving)
    (a2-2 none)
    (a2-3 none)
    (a2-4 none)
    (a2-6 none)
    (a2-8 none)
    (a3-0 int)
    (a3-1 int)
    (a3-2 none)
    (t0-0 none)
    (s5-0 collide-shape-moving)
    (s5-1 none)
    (s5-2 none)
    (s5-3 none)
    (s5-4 none)
    (s5-5 none)
    (t9-0 (function symbol type process-drawable collide-list-enum collide-shape-moving))
    (t9-1 (function dynamics symbol dynamics))
    (t9-2 (function symbol type collide-shape uint collide-shape-prim-sphere))
    (t9-3 none)
    (t9-4 none)
    (t9-5 none)
    (t9-6 none)
    (t9-7 none)
    (t9-8 none)
    (t9-9 none)
    (t9-10 none)
    (t9-11 none)
    (t9-12 none)
    (t9-13 none)
    (t9-14 none)
    (t9-15 none)
    (t9-16 none)
    (t9-17 none)
    (t9-18 none)
    (gp-1 none)
    (gp-2 none)
    (gp-3 none)
    (sp-0 none)
    (f0-0 float)
    (f0-1 float)
    (f0-2 float)
    (f0-3 int)
    (f0-4 float)
    (f0-5 float)
    (f0-6 float)
    (f0-7 none)
    (f0-8 none)
    (f0-9 none)
    (f0-10 none)
    (f0-11 none)
    (f0-12 none)
    (f0-13 none)
    (f0-14 none)
    (f0-15 none)
    (f0-16 none)
    (f0-17 none)
    (f0-18 none)
    (f0-19 none)
    (f0-20 none)
    (f0-21 none)
    (f0-22 none)
    (f0-23 none)
    (f0-24 none)
    (f1-0 int)
    (f1-1 float)
    (f1-2 float)
    (f2-0 int)
    (f30-0 none)
    (f30-1 none)
    )
  (if (begin
        (set! v1-0 collide-shape-moving)
        (set! t9-0 (method-of-type v1-0 new))
        (set! a0-1 'process)
        (set! a1-0 collide-shape-moving)
        (set! a2-0 s6-0)
        (set! a3-0 1)
        (set! v0-0 (call! a0-1 a1-0 a2-0 a3-0))
        (set! s5-0 v0-0)
        (set! a0-2 *standard-dynamics*)
        (set! v1-1 (-> a0-2 type))
        (set! t9-1 (method-of-type v1-1 copy))
        (set! a1-1 'process)
        (set! v0-1 (call! a0-2 a1-1))
        (set! v1-2 v0-1)
        (set! (-> s5-0 dynam) v1-2)
        (set! v1-3 cshape-reaction-just-move)
        (set! (-> s5-0 reaction) (the-as (function control-info collide-query vector vector collide-status) v1-3))
        (set! v1-4 nothing)
        (set! (-> s5-0 no-reaction) (the-as (function collide-shape-moving collide-query vector vector object) v1-4))
        (set! v1-5 collide-shape-prim-sphere)
        (set! t9-2 (method-of-type v1-5 new))
        (set! a0-3 'process)
        (set! a1-2 collide-shape-prim-sphere)
        (set! a2-1 s5-0)
        (set! a3-1 0)
        (set! v0-2 (call! a0-3 a1-2 a2-1 a3-1))
        (set! v1-6 v0-2)
        (set! a0-4 #x2000000)
        (set! (-> v1-6 prim-core collide-as) (the-as collide-spec a0-4))
        (set! a0-5 1031)
        (set! (-> v1-6 prim-core collide-with) (the-as collide-spec a0-5))
        (set! a0-6 1)
        (set! (-> v1-6 prim-core action) (the-as collide-action a0-6))
        (set! a0-7 3)
        (set! (-> v1-6 transform-index) a0-7)
        (set! a0-8 (-> v1-6 local-sphere))
        (set! f0-0 (the-as float 0))
        (set! (-> a0-8 x) f0-0)
        (set! f0-1 (the-as float 0))
        (set! (-> a0-8 y) f0-1)
        (set! f0-2 (the-as float 0))
        (set! (-> a0-8 z) f0-2)
        (set! a1-3 #x45800000)
        (set! f0-3 (gpr->fpr a1-3))
        (set! a1-4 #x41700000)
        (set! f1-0 (gpr->fpr a1-4))
        a0-0
        )
      (set! a1-5 #x3ecccccd)
      (set! a1-5 (the-as int #x3f800000))
      )
  (cond
    ((begin
       (set! f2-0 (gpr->fpr a1-5))
       (set! f1-1 (*.s f1-0 f2-0))
       (set! f0-4 (*.s f0-3 f1-1))
       (set! (-> a0-8 w) f0-4)
       (set! a0-9 1)
       (set! (-> s5-0 total-prims) (the-as uint a0-9))
       (set! (-> s5-0 root-prim) v1-6)
       (set! v1-7 #x3f400000)
       (set! f0-5 (the-as float (gpr->fpr v1-7)))
       (set! v1-8 (-> s5-0 root-prim))
       (set! f1-2 (-> v1-8 local-sphere w))
       (set! f0-6 (*.s f0-5 f1-2))
       (set! (-> s5-0 nav-radius) f0-6)
       (set! v1-9 (-> s5-0 root-prim))
       (set! a0-10 (-> v1-9 prim-core collide-as))
       (set! (-> s5-0 backup-collide-as) a0-10)
       (set! v1-10 (-> v1-9 prim-core collide-with))
       (set! (-> s5-0 backup-collide-with) v1-10)
       (set! (-> s6-0 root) s5-0)
       (set! s5-1 (the-as none (+ sp-0 16)))
       (set! v1-11 (-> s6-0 parent))
       (set! v1-12 (-> v1-11 0))
       (set! v1-13 (the-as none (l.wu (+ v1-12 124))))
       (set! f30-0 (the-as none (l.f (+ v1-13 12))))
       (set! t9-3 (the-as none rand-vu-float-range))
       (set! a0-11 (the-as none -914751488))
       (set! a1-6 (the-as none #x497a0000))
       (set! v0-3 (the-as none (call!)))
       (set! f0-7 (the-as none (gpr->fpr v0-3)))
       (set! f0-8 (the-as none (+.s f30-0 f0-7)))
       (s.f! s5-1 f0-8)
       (set! v1-14 (the-as none -954204160))
       (set! f0-9 (the-as none (gpr->fpr v1-14)))
       (s.f! (+ s5-1 4) f0-9)
       (set! v1-15 (the-as none #x4b2f0000))
       (set! f0-10 (the-as none (gpr->fpr v1-15)))
       (s.f! (+ s5-1 8) f0-10)
       (set! v1-16 (the-as none #x3f800000))
       (set! f0-11 (the-as none (gpr->fpr v1-16)))
       (s.f! (+ s5-1 12) f0-11)
       (set! v1-17 (the-as none (-> s6-0 root)))
       (set! v1-18 (the-as none (+ v1-17 12)))
       (set! a0-12 (the-as none s5-1))
       (set! a0-13 (the-as none (l.q a0-12)))
       (s.q! v1-18 a0-13)
       (set! v1-19 (the-as none (-> s6-0 position)))
       (set! a0-14 (the-as none (l.q s5-1)))
       (s.q! v1-19 a0-14)
       (set! t9-4 (the-as none quaternion-axis-angle!))
       (set! v1-20 (the-as none (-> s6-0 root)))
       (set! a0-15 (the-as none (+ v1-20 28)))
       (set! a1-7 (the-as none 0))
       (set! a2-2 (the-as none #x3f800000))
       (set! a3-2 (the-as none 0))
       (set! t0-0 (the-as none 0))
       (call!)
       (set! (-> s6-0 hit-count) 0)
       (set! (-> s6-0 small) (the-as symbol a0-0))
       a0-0
       )
     (set! v1-21 (the-as none (l.wu (+ s6-0 124))))
     (set! v1-22 (the-as none (+ v1-21 44)))
     (set! a0-16 (the-as none #x3ecccccd))
     (set! f0-12 (the-as none (gpr->fpr a0-16)))
     (s.f! v1-22 f0-12)
     (set! a0-17 (the-as none #x3ecccccd))
     (set! f0-13 (the-as none (gpr->fpr a0-17)))
     (s.f! (+ v1-22 4) f0-13)
     (set! a0-18 (the-as none #x3ecccccd))
     (set! f0-14 (the-as none (gpr->fpr a0-18)))
     (s.f! (+ v1-22 8) f0-14)
     (set! a0-19 (the-as none #x3f800000))
     (set! f0-15 (the-as none (gpr->fpr a0-19)))
     (s.f! (+ v1-22 12) f0-15)
     (set! v1-23 (the-as none 2))
     (s.w! (+ s6-0 272) v1-23)
     (set! v1-24 (the-as none #x3f000000))
     (set! f0-16 (the-as none (gpr->fpr v1-24)))
     (s.f! (+ s6-0 276) f0-16)
     (set! v1-25 (the-as none #x3e99999a))
     (set! f0-17 (the-as none (gpr->fpr v1-25)))
     (s.f! (+ s6-0 280) f0-17)
     (set! v1-26 (the-as none (fpr->gpr f0-17)))
     )
    (else
      (set! t9-5 (the-as none vector-identity!))
      (set! v1-27 (the-as none (l.wu (+ s6-0 124))))
      (set! a0-20 (the-as none (+ v1-27 44)))
      (call!)
      (set! v1-28 (the-as none 4))
      (s.w! (+ s6-0 272) v1-28)
      (set! v1-29 (the-as none #x3e99999a))
      (set! f0-18 (the-as none (gpr->fpr v1-29)))
      (s.f! (+ s6-0 276) f0-18)
      (set! f0-19 (the-as none 0))
      (s.f! (+ s6-0 280) f0-19)
      (set! v1-30 (the-as none (fpr->gpr f0-19)))
      )
    )
  (set! s5-2 (the-as none (+ sp-0 32)))
  (set! t9-6 (the-as none target-pos))
  (set! a0-21 (the-as none 0))
  (set! v0-6 (the-as none (call!)))
  (set! v1-31 (the-as none v0-6))
  (set! v1-32 (the-as none (l.q v1-31)))
  (s.q! s5-2 v1-32)
  (set! v1-33 (the-as none (l.wu (+ s6-0 12))))
  (set! v1-34 (the-as none (l.wu v1-33)))
  (set! v1-35 (the-as none (l.wu (+ v1-34 124))))
  (set! f30-1 (the-as none (l.f (+ v1-35 12))))
  (set! t9-7 (the-as none rand-vu-float-range))
  (set! a0-22 (the-as none -926416896))
  (set! a1-8 (the-as none #x48c80000))
  (set! v0-7 (the-as none (call!)))
  (set! f0-20 (the-as none (gpr->fpr v0-7)))
  (set! f0-21 (the-as none (+.s f30-1 f0-20)))
  (s.f! s5-2 f0-21)
  (set! gp-1 (the-as none (+ s6-0 220)))
  (set! v1-36 (the-as none (+ s6-0 204)))
  (set! gp-2 (the-as none (vector-!2 gp-1 s5-2 v1-36)))
  (set! t9-8 (the-as none quaternion->matrix))
  (set! a0-23 (the-as none (+ sp-0 48)))
  (s.q! a0-23 0)
  (s.q! (+ a0-23 16) 0)
  (s.q! (+ a0-23 32) 0)
  (s.q! (+ a0-23 48) 0)
  (set! v1-37 (the-as none (l.wu (+ s6-0 124))))
  (set! a1-9 (the-as none (+ v1-37 28)))
  (set! v0-8 (the-as none (call!)))
  (set! s5-3 (the-as none v0-8))
  (set! t9-9 (the-as none vector-normalize!))
  (set! a0-24 (the-as none gp-2))
  (set! a1-10 (the-as none #x3f800000))
  (call!)
  (set! v1-38 (the-as none (+ s6-0 236)))
  (set! a0-25 (the-as none (+ s5-3 0)))
  (set! a1-11 (the-as none #x46000000))
  (set! f0-22 (the-as none (gpr->fpr a1-11)))
  (set! v1-39 (the-as none (vector-float*!2 v1-38 a0-25 f0-22)))
  (set! t9-10 (the-as none vector-normalize-copy!))
  (set! a0-26 (the-as none (+ sp-0 112)))
  (set! a1-12 (the-as none (+ s5-3 16)))
  (set! a2-3 (the-as none #x3f800000))
  (set! v0-10 (the-as none (call!)))
  (set! s4-0 (the-as none v0-10))
  (set! t9-11 (the-as none vector-normalize-copy!))
  (set! a0-27 (the-as none (+ sp-0 128)))
  (set! a1-13 (the-as none (+ s5-3 32)))
  (set! a2-4 (the-as none #x3f800000))
  (call!)
  (set! v1-40 (the-as none v0-11))
  (set! s5-4 (the-as none vector-normalize!))
  (set! t9-12 (the-as none vector-flatten!))
  (set! a0-28 (the-as none (+ sp-0 144)))
  (set! a1-14 (the-as none gp-2))
  (set! a2-5 (the-as none s4-0))
  (call!)
  (set! a0-29 (the-as none v0-12))
  (set! a1-15 (the-as none #x3f800000))
  (set! t9-13 (the-as none s5-4))
  (call!)
  (set! a0-30 (the-as none v0-13))
  (set! t9-14 (the-as none vector-y-angle))
  (set! v0-14 (the-as none (call!)))
  (set! f0-23 (the-as none (gpr->fpr v0-14)))
  (s.f! (+ s6-0 196) f0-23)
  (set! v1-41 (the-as none (fpr->gpr f0-23)))
  (set! v1-42 (the-as none (+ s6-0 220)))
  (set! a0-31 (the-as none (+ s6-0 220)))
  (set! a1-16 (the-as none #x46000000))
  (set! f0-24 (the-as none (gpr->fpr a1-16)))
  (set! v1-43 (the-as none (vector-float*!2 v1-42 a0-31 f0-24)))
  (set! v1-44 (the-as none -33))
  (set! a0-32 (the-as none (l.wu (+ s6-0 4))))
  (set! v1-45 (the-as none (logand v1-44 a0-32)))
  (s.w! (+ s6-0 4) v1-45)
  (set! v1-46 (the-as none #x80000))
  (set! a0-33 (the-as none (l.wu (+ s6-0 4))))
  (set! v1-47 (the-as none (logior v1-46 a0-33)))
  (s.w! (+ s6-0 4) v1-47)
  (set! t9-15 (the-as none process-entity-status!))
  (set! a0-34 (the-as none s6-0))
  (set! a1-17 (the-as none 8))
  (set! a2-6 (the-as none #t))
  (call!)
  (set! gp-3 (the-as none s6-0))
  (set! v1-48 (the-as none (l.wu (+ gp-3 -4))))
  (set! s5-5 (the-as none (l.wu (+ v1-48 72))))
  (set! a0-35 (the-as none *level*))
  (set! v1-49 (the-as none (l.wu (+ a0-35 -4))))
  (set! t9-16 (the-as none (l.wu (+ v1-49 108))))
  (set! a1-18 (the-as none L174))
  (call!)
  (set! a1-19 (the-as none v0-16))
  (set! a2-8 (the-as none 0))
  (set! t9-17 (the-as none s5-5))
  (set! a0-36 (the-as none gp-3))
  (call!)
  (set! v1-50 (the-as none v0-17))
  (set! t9-18 (the-as none enter-state))
  (set! v1-51 (the-as none (l.wu (+ s6-0 -4))))
  (set! v1-52 (the-as none (l.wu (+ v1-51 96))))
  (s.w! (+ s6-0 64) v1-52)
  (call!)
  (ret-none)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    (b0
      b1
      )
    (else
      b2
      )
    )
  (cond
    (b3
      b4
      )
    (else
      b5
      )
    )
  b6
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function help-speech
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x20, fp? 1 ra? 1 ep? 1
  ;gprs: gp
;; Warnings:
;; WARN: Return type mismatch int vs none.

L124:
    daddiu sp, sp, -32
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
    sq gp, 16(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! arg0 arg0) [a0: port-turret ] -> [gp: port-turret ]
    lw a0, *gui-control*(s7)  ;; [  1] (set! a0-1 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [  2] (set! v1-0 (l.wu (+ a0-1 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 84(v1)            ;; [  3] (set! t9-0 (l.wu (+ v1-0 84)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control sound-id gui-status)> ]
    lwu a1, 600(gp)           ;; [  4] (set! a1-0 (l.wu (+ arg0 600))) [gp: port-turret ] -> [a1: uint ]
    jalr ra, t9               ;; [  5] (call! a0-1 a1-0)
                              ;; [a0: gui-control a1: uint t9: <vmethod (function gui-control sound-id gui-status)> ] -> [v0: gui-status ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [  6] (set! v1-1 v0-0) [v0: gui-status ] -> [v1: gui-status ]
    bne v1, r0, L126          ;; [  7] (b! (nonzero? v1-1) L126 (set! v1-2 #f)) [v1: gui-status ] -> [v1: '#f ]
    or v1, s7, r0

B1:
    lw t9, rand-vu-int-count(s7);; [  8] (set! t9-1 rand-vu-int-count) [] -> [t9: (function int int) ]
    addiu a0, r0, 2           ;; [  9] (set! a0-2 2) [] -> [a0: <integer 2> ]
    jalr ra, t9               ;; [ 10] (call! a0-2) [a0: <integer 2> t9: (function int int) ] -> [v0: int ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 11] (set! v1-3 v0-1) [v0: int ] -> [v1: int ]
    bne v1, r0, L125          ;; [ 12] (b! (nonzero? v1-3) L125 (set! a0-3 #f)) [v1: int ] -> [a0: '#f ]
    or a0, s7, r0

B2:
    lw a0, *gui-control*(s7)  ;; [ 13] (set! a0-4 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 14] (set! v1-4 (l.wu (+ a0-4 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 15] (set! t9-2 (l.wu (+ v1-4 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 16] (set! a1-1 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 17] (set! a2-0 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 18] (set! a3-0 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L193       ;; [ 19] (set! t0-0 L193) [] -> [t0: <string "torn017"> ] "torn017"
    lui t1, -15674            ;; [ 20] (set! t1-0 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 21] (set! t2-0 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 22] (call! a0-4 a1-1 a2-0 a3-0 t0-0 t1-0 t2-0)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn017"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 23] (set! v1-5 v0-2) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 24] (s.w! (+ arg0 600) v1-5) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L126          ;; [ 25] (b! #t L126 (nop!)) [] -> []
    sll r0, r0, 0

B3:
L125:
    addiu a0, r0, 1           ;; [ 26] (set! a0-5 1) [] -> [a0: <integer 1> ]
    bne v1, a0, L126          ;; [ 27] (b! (!= v1-3 a0-5) L126 (set! v1-6 #f)) [v1: int a0: <integer 1> ] -> [v1: '#f ]
    or v1, s7, r0

B4:
    lw a0, *gui-control*(s7)  ;; [ 28] (set! a0-6 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 29] (set! v1-7 (l.wu (+ a0-6 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 30] (set! t9-3 (l.wu (+ v1-7 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 31] (set! a1-2 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 32] (set! a2-1 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 33] (set! a3-1 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L192       ;; [ 34] (set! t0-1 L192) [] -> [t0: <string "torn020"> ] "torn020"
    lui t1, -15674            ;; [ 35] (set! t1-1 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 36] (set! t2-1 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 37] (call! a0-6 a1-2 a2-1 a3-1 t0-1 t1-1 t2-1)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn020"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 38] (set! v1-8 v0-3) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 39] (s.w! (+ arg0 600) v1-8) [v1: sound-id gp: port-turret ] -> []
B5:
L126:
    or v0, r0, r0             ;; [ 40] (set! v0-4 0) [] -> [v0: <integer 0> ]
    ld ra, 0(sp)
    ld fp, 8(sp)
    lq gp, 16(sp)
    jr ra
    daddiu sp, sp, 32

    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(defun help-speech ((arg0 port-turret))
  (when (= (get-status *gui-control* (the-as sound-id (-> arg0 id))) (gui-status unknown))
    (let ((v1-3 (rand-vu-int-count 2)))
      (cond
        ((zero? v1-3)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn017" -99.0 0)
                 )
               )
         )
        ((= v1-3 1)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn020" -99.0 0)
                 )
               )
         )
        )
      )
    )
  0
  (none)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    (b0
      (cond
        (b1
          b2
          )
        (b3
          b4
          )
        )
      )
    )
  b5
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function ship-close-speech
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x20, fp? 1 ra? 1 ep? 1
  ;gprs: gp
;; Warnings:
;; WARN: Return type mismatch int vs none.

L127:
    daddiu sp, sp, -32
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
    sq gp, 16(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! arg0 arg0) [a0: port-turret ] -> [gp: port-turret ]
    lw a0, *gui-control*(s7)  ;; [  1] (set! a0-1 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [  2] (set! v1-0 (l.wu (+ a0-1 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 84(v1)            ;; [  3] (set! t9-0 (l.wu (+ v1-0 84)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control sound-id gui-status)> ]
    lwu a1, 600(gp)           ;; [  4] (set! a1-0 (l.wu (+ arg0 600))) [gp: port-turret ] -> [a1: uint ]
    jalr ra, t9               ;; [  5] (call! a0-1 a1-0)
                              ;; [a0: gui-control a1: uint t9: <vmethod (function gui-control sound-id gui-status)> ] -> [v0: gui-status ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [  6] (set! v1-1 v0-0) [v0: gui-status ] -> [v1: gui-status ]
    bne v1, r0, L130          ;; [  7] (b! (nonzero? v1-1) L130 (set! v1-2 #f)) [v1: gui-status ] -> [v1: '#f ]
    or v1, s7, r0

B1:
    lw t9, rand-vu-int-count(s7);; [  8] (set! t9-1 rand-vu-int-count) [] -> [t9: (function int int) ]
    addiu a0, r0, 3           ;; [  9] (set! a0-2 3) [] -> [a0: <integer 3> ]
    jalr ra, t9               ;; [ 10] (call! a0-2) [a0: <integer 3> t9: (function int int) ] -> [v0: int ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 11] (set! v1-3 v0-1) [v0: int ] -> [v1: int ]
    bne v1, r0, L128          ;; [ 12] (b! (nonzero? v1-3) L128 (set! a0-3 #f)) [v1: int ] -> [a0: '#f ]
    or a0, s7, r0

B2:
    lw a0, *gui-control*(s7)  ;; [ 13] (set! a0-4 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 14] (set! v1-4 (l.wu (+ a0-4 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 15] (set! t9-2 (l.wu (+ v1-4 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 16] (set! a1-1 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 17] (set! a2-0 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 18] (set! a3-0 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L196       ;; [ 19] (set! t0-0 L196) [] -> [t0: <string "torn028"> ] "torn028"
    lui t1, -15674            ;; [ 20] (set! t1-0 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 21] (set! t2-0 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 22] (call! a0-4 a1-1 a2-0 a3-0 t0-0 t1-0 t2-0)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn028"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 23] (set! v1-5 v0-2) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 24] (s.w! (+ arg0 600) v1-5) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L130          ;; [ 25] (b! #t L130 (nop!)) [] -> []
    sll r0, r0, 0

B3:
L128:
    addiu a0, r0, 1           ;; [ 26] (set! a0-5 1) [] -> [a0: <integer 1> ]
    bne v1, a0, L129          ;; [ 27] (b! (!= v1-3 a0-5) L129 (set! a0-6 #f)) [v1: int a0: <integer 1> ] -> [a0: '#f ]
    or a0, s7, r0

B4:
    lw a0, *gui-control*(s7)  ;; [ 28] (set! a0-7 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 29] (set! v1-6 (l.wu (+ a0-7 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 30] (set! t9-3 (l.wu (+ v1-6 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 31] (set! a1-2 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 32] (set! a2-1 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 33] (set! a3-1 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L195       ;; [ 34] (set! t0-1 L195) [] -> [t0: <string "torn053"> ] "torn053"
    lui t1, -15674            ;; [ 35] (set! t1-1 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 36] (set! t2-1 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 37] (call! a0-7 a1-2 a2-1 a3-1 t0-1 t1-1 t2-1)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn053"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 38] (set! v1-7 v0-3) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 39] (s.w! (+ arg0 600) v1-7) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L130          ;; [ 40] (b! #t L130 (nop!)) [] -> []
    sll r0, r0, 0

B5:
L129:
    addiu a0, r0, 2           ;; [ 41] (set! a0-8 2) [] -> [a0: <integer 2> ]
    bne v1, a0, L130          ;; [ 42] (b! (!= v1-3 a0-8) L130 (set! v1-8 #f)) [v1: int a0: <integer 2> ] -> [v1: '#f ]
    or v1, s7, r0

B6:
    lw a0, *gui-control*(s7)  ;; [ 43] (set! a0-9 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 44] (set! v1-9 (l.wu (+ a0-9 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 45] (set! t9-4 (l.wu (+ v1-9 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 46] (set! a1-3 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 47] (set! a2-2 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 48] (set! a3-2 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L194       ;; [ 49] (set! t0-2 L194) [] -> [t0: <string "torn057"> ] "torn057"
    lui t1, -15674            ;; [ 50] (set! t1-2 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 51] (set! t2-2 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 52] (call! a0-9 a1-3 a2-2 a3-2 t0-2 t1-2 t2-2)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn057"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 53] (set! v1-10 v0-4) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 54] (s.w! (+ arg0 600) v1-10) [v1: sound-id gp: port-turret ] -> []
B7:
L130:
    or v0, r0, r0             ;; [ 55] (set! v0-5 0) [] -> [v0: <integer 0> ]
    ld ra, 0(sp)
    ld fp, 8(sp)
    lq gp, 16(sp)
    jr ra
    daddiu sp, sp, 32

    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(defun ship-close-speech ((arg0 port-turret))
  (when (= (get-status *gui-control* (the-as sound-id (-> arg0 id))) (gui-status unknown))
    (let ((v1-3 (rand-vu-int-count 3)))
      (cond
        ((zero? v1-3)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn028" -99.0 0)
                 )
               )
         )
        ((= v1-3 1)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn053" -99.0 0)
                 )
               )
         )
        ((= v1-3 2)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn057" -99.0 0)
                 )
               )
         )
        )
      )
    )
  0
  (none)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    (b0
      (cond
        (b1
          b2
          )
        (b3
          b4
          )
        (b5
          b6
          )
        )
      )
    )
  b7
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function jak-miss-speech
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x20, fp? 1 ra? 1 ep? 1
  ;gprs: gp
;; Warnings:
;; WARN: Return type mismatch int vs none.

L131:
    daddiu sp, sp, -32
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
    sq gp, 16(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! arg0 arg0) [a0: port-turret ] -> [gp: port-turret ]
    lw a0, *gui-control*(s7)  ;; [  1] (set! a0-1 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [  2] (set! v1-0 (l.wu (+ a0-1 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 84(v1)            ;; [  3] (set! t9-0 (l.wu (+ v1-0 84)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control sound-id gui-status)> ]
    lwu a1, 600(gp)           ;; [  4] (set! a1-0 (l.wu (+ arg0 600))) [gp: port-turret ] -> [a1: uint ]
    jalr ra, t9               ;; [  5] (call! a0-1 a1-0)
                              ;; [a0: gui-control a1: uint t9: <vmethod (function gui-control sound-id gui-status)> ] -> [v0: gui-status ]
    sll v0, ra, 0

    or a2, v0, r0             ;; [  6] (set! a2-0 v0-0) [v0: gui-status ] -> [a2: gui-status ]
    bne a2, r0, L133          ;; [  7] (b! (nonzero? a2-0) L133 (set! v1-1 #f)) [a2: gui-status ] -> [v1: '#f ]
    or v1, s7, r0

B1:
    lw t9, format(s7)         ;; [  8] (set! t9-1 format) [] -> [t9: (function _varargs_ object) ]
    addiu a0, r0, 0           ;; [  9] (set! a0-2 0) [] -> [a0: <integer 0> ]
    daddiu a1, fp, L199       ;; [ 10] (set! a1-1 L199) [] -> [a1: <string "status ~D~%"> ] "status ~D~%"
    jalr ra, t9               ;; [ 11] (call! a0-2 a1-1 a2-0)
                              ;; [a0: <integer 0> a1: <string "status ~D~%"> a2: gui-status t9: (function _varargs_ object) ] -> [v0: object ]
    sll v0, ra, 0

    lw t9, rand-vu-int-count(s7);; [ 12] (set! t9-2 rand-vu-int-count) [] -> [t9: (function int int) ]
    addiu a0, r0, 2           ;; [ 13] (set! a0-3 2) [] -> [a0: <integer 2> ]
    jalr ra, t9               ;; [ 14] (call! a0-3) [a0: <integer 2> t9: (function int int) ] -> [v0: int ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 15] (set! v1-2 v0-2) [v0: int ] -> [v1: int ]
    bne v1, r0, L132          ;; [ 16] (b! (nonzero? v1-2) L132 (set! a0-4 #f)) [v1: int ] -> [a0: '#f ]
    or a0, s7, r0

B2:
    lw a0, *gui-control*(s7)  ;; [ 17] (set! a0-5 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 18] (set! v1-3 (l.wu (+ a0-5 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 19] (set! t9-3 (l.wu (+ v1-3 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 20] (set! a1-2 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 21] (set! a2-1 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 22] (set! a3-0 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L198       ;; [ 23] (set! t0-0 L198) [] -> [t0: <string "torn048"> ] "torn048"
    lui t1, -15674            ;; [ 24] (set! t1-0 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 25] (set! t2-0 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 26] (call! a0-5 a1-2 a2-1 a3-0 t0-0 t1-0 t2-0)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn048"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 27] (set! v1-4 v0-3) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 28] (s.w! (+ arg0 600) v1-4) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L133          ;; [ 29] (b! #t L133 (nop!)) [] -> []
    sll r0, r0, 0

B3:
L132:
    addiu a0, r0, 1           ;; [ 30] (set! a0-6 1) [] -> [a0: <integer 1> ]
    bne v1, a0, L133          ;; [ 31] (b! (!= v1-2 a0-6) L133 (set! v1-5 #f)) [v1: int a0: <integer 1> ] -> [v1: '#f ]
    or v1, s7, r0

B4:
    lw a0, *gui-control*(s7)  ;; [ 32] (set! a0-7 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 33] (set! v1-6 (l.wu (+ a0-7 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 34] (set! t9-4 (l.wu (+ v1-6 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 35] (set! a1-3 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 36] (set! a2-2 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 37] (set! a3-1 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L197       ;; [ 38] (set! t0-1 L197) [] -> [t0: <string "torn051"> ] "torn051"
    lui t1, -15674            ;; [ 39] (set! t1-1 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 40] (set! t2-1 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 41] (call! a0-7 a1-3 a2-2 a3-1 t0-1 t1-1 t2-1)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn051"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 42] (set! v1-7 v0-4) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 43] (s.w! (+ arg0 600) v1-7) [v1: sound-id gp: port-turret ] -> []
B5:
L133:
    or v0, r0, r0             ;; [ 44] (set! v0-5 0) [] -> [v0: <integer 0> ]
    ld ra, 0(sp)
    ld fp, 8(sp)
    lq gp, 16(sp)
    jr ra
    daddiu sp, sp, 32

    sll r0, r0, 0
    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(defun jak-miss-speech ((arg0 port-turret))
  (let ((a2-0 (get-status *gui-control* (the-as sound-id (-> arg0 id)))))
    (when (= a2-0 (gui-status unknown))
      (format 0 "status ~D~%" a2-0)
      (let ((v1-2 (rand-vu-int-count 2)))
        (cond
          ((zero? v1-2)
           (set! (-> arg0 id)
                 (the-as
                   uint
                   (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn048" -99.0 0)
                   )
                 )
           )
          ((= v1-2 1)
           (set! (-> arg0 id)
                 (the-as
                   uint
                   (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn051" -99.0 0)
                   )
                 )
           )
          )
        )
      )
    )
  0
  (none)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    (b0
      (cond
        (b1
          b2
          )
        (b3
          b4
          )
        )
      )
    )
  b5
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function jak-hit-speech
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x20, fp? 1 ra? 1 ep? 1
  ;gprs: gp
;; Warnings:
;; WARN: Return type mismatch int vs none.

L134:
    daddiu sp, sp, -32
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
    sq gp, 16(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! arg0 arg0) [a0: port-turret ] -> [gp: port-turret ]
    lw a0, *gui-control*(s7)  ;; [  1] (set! a0-1 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [  2] (set! v1-0 (l.wu (+ a0-1 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 84(v1)            ;; [  3] (set! t9-0 (l.wu (+ v1-0 84)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control sound-id gui-status)> ]
    lwu a1, 600(gp)           ;; [  4] (set! a1-0 (l.wu (+ arg0 600))) [gp: port-turret ] -> [a1: uint ]
    jalr ra, t9               ;; [  5] (call! a0-1 a1-0)
                              ;; [a0: gui-control a1: uint t9: <vmethod (function gui-control sound-id gui-status)> ] -> [v0: gui-status ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [  6] (set! v1-1 v0-0) [v0: gui-status ] -> [v1: gui-status ]
    bne v1, r0, L143          ;; [  7] (b! (nonzero? v1-1) L143 (set! v1-2 #f)) [v1: gui-status ] -> [v1: '#f ]
    or v1, s7, r0

B1:
    lw t9, rand-vu-int-count(s7);; [  8] (set! t9-1 rand-vu-int-count) [] -> [t9: (function int int) ]
    addiu a0, r0, 9           ;; [  9] (set! a0-2 9) [] -> [a0: <integer 9> ]
    jalr ra, t9               ;; [ 10] (call! a0-2) [a0: <integer 9> t9: (function int int) ] -> [v0: int ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 11] (set! v1-3 v0-1) [v0: int ] -> [v1: int ]
    bne v1, r0, L135          ;; [ 12] (b! (nonzero? v1-3) L135 (set! a0-3 #f)) [v1: int ] -> [a0: '#f ]
    or a0, s7, r0

B2:
    lw a0, *gui-control*(s7)  ;; [ 13] (set! a0-4 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 14] (set! v1-4 (l.wu (+ a0-4 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 15] (set! t9-2 (l.wu (+ v1-4 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 16] (set! a1-1 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 17] (set! a2-0 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 18] (set! a3-0 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L208       ;; [ 19] (set! t0-0 L208) [] -> [t0: <string "torn019"> ] "torn019"
    lui t1, -15674            ;; [ 20] (set! t1-0 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 21] (set! t2-0 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 22] (call! a0-4 a1-1 a2-0 a3-0 t0-0 t1-0 t2-0)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn019"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 23] (set! v1-5 v0-2) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 24] (s.w! (+ arg0 600) v1-5) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L143          ;; [ 25] (b! #t L143 (nop!)) [] -> []
    sll r0, r0, 0

B3:
L135:
    addiu a0, r0, 1           ;; [ 26] (set! a0-5 1) [] -> [a0: <integer 1> ]
    bne v1, a0, L136          ;; [ 27] (b! (!= v1-3 a0-5) L136 (set! a0-6 #f)) [v1: int a0: <integer 1> ] -> [a0: '#f ]
    or a0, s7, r0

B4:
    lw a0, *gui-control*(s7)  ;; [ 28] (set! a0-7 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 29] (set! v1-6 (l.wu (+ a0-7 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 30] (set! t9-3 (l.wu (+ v1-6 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 31] (set! a1-2 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 32] (set! a2-1 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 33] (set! a3-1 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L207       ;; [ 34] (set! t0-1 L207) [] -> [t0: <string "torn029"> ] "torn029"
    lui t1, -15674            ;; [ 35] (set! t1-1 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 36] (set! t2-1 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 37] (call! a0-7 a1-2 a2-1 a3-1 t0-1 t1-1 t2-1)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn029"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 38] (set! v1-7 v0-3) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 39] (s.w! (+ arg0 600) v1-7) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L143          ;; [ 40] (b! #t L143 (nop!)) [] -> []
    sll r0, r0, 0

B5:
L136:
    addiu a0, r0, 2           ;; [ 41] (set! a0-8 2) [] -> [a0: <integer 2> ]
    bne v1, a0, L137          ;; [ 42] (b! (!= v1-3 a0-8) L137 (set! a0-9 #f)) [v1: int a0: <integer 2> ] -> [a0: '#f ]
    or a0, s7, r0

B6:
    lw a0, *gui-control*(s7)  ;; [ 43] (set! a0-10 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 44] (set! v1-8 (l.wu (+ a0-10 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 45] (set! t9-4 (l.wu (+ v1-8 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 46] (set! a1-3 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 47] (set! a2-2 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 48] (set! a3-2 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L206       ;; [ 49] (set! t0-2 L206) [] -> [t0: <string "torn030"> ] "torn030"
    lui t1, -15674            ;; [ 50] (set! t1-2 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 51] (set! t2-2 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 52] (call! a0-10 a1-3 a2-2 a3-2 t0-2 t1-2 t2-2)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn030"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 53] (set! v1-9 v0-4) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 54] (s.w! (+ arg0 600) v1-9) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L143          ;; [ 55] (b! #t L143 (nop!)) [] -> []
    sll r0, r0, 0

B7:
L137:
    addiu a0, r0, 3           ;; [ 56] (set! a0-11 3) [] -> [a0: <integer 3> ]
    bne v1, a0, L138          ;; [ 57] (b! (!= v1-3 a0-11) L138 (set! a0-12 #f)) [v1: int a0: <integer 3> ] -> [a0: '#f ]
    or a0, s7, r0

B8:
    lw a0, *gui-control*(s7)  ;; [ 58] (set! a0-13 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 59] (set! v1-10 (l.wu (+ a0-13 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 60] (set! t9-5 (l.wu (+ v1-10 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 61] (set! a1-4 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 62] (set! a2-3 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 63] (set! a3-3 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L205       ;; [ 64] (set! t0-3 L205) [] -> [t0: <string "torn034"> ] "torn034"
    lui t1, -15674            ;; [ 65] (set! t1-3 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 66] (set! t2-3 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 67] (call! a0-13 a1-4 a2-3 a3-3 t0-3 t1-3 t2-3)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn034"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 68] (set! v1-11 v0-5) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 69] (s.w! (+ arg0 600) v1-11) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L143          ;; [ 70] (b! #t L143 (nop!)) [] -> []
    sll r0, r0, 0

B9:
L138:
    addiu a0, r0, 4           ;; [ 71] (set! a0-14 4) [] -> [a0: <integer 4> ]
    bne v1, a0, L139          ;; [ 72] (b! (!= v1-3 a0-14) L139 (set! a0-15 #f)) [v1: int a0: <integer 4> ] -> [a0: '#f ]
    or a0, s7, r0

B10:
    lw a0, *gui-control*(s7)  ;; [ 73] (set! a0-16 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 74] (set! v1-12 (l.wu (+ a0-16 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 75] (set! t9-6 (l.wu (+ v1-12 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 76] (set! a1-5 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 77] (set! a2-4 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 78] (set! a3-4 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L204       ;; [ 79] (set! t0-4 L204) [] -> [t0: <string "torn035"> ] "torn035"
    lui t1, -15674            ;; [ 80] (set! t1-4 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 81] (set! t2-4 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 82] (call! a0-16 a1-5 a2-4 a3-4 t0-4 t1-4 t2-4)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn035"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 83] (set! v1-13 v0-6) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 84] (s.w! (+ arg0 600) v1-13) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L143          ;; [ 85] (b! #t L143 (nop!)) [] -> []
    sll r0, r0, 0

B11:
L139:
    addiu a0, r0, 5           ;; [ 86] (set! a0-17 5) [] -> [a0: <integer 5> ]
    bne v1, a0, L140          ;; [ 87] (b! (!= v1-3 a0-17) L140 (set! a0-18 #f)) [v1: int a0: <integer 5> ] -> [a0: '#f ]
    or a0, s7, r0

B12:
    lw a0, *gui-control*(s7)  ;; [ 88] (set! a0-19 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 89] (set! v1-14 (l.wu (+ a0-19 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 90] (set! t9-7 (l.wu (+ v1-14 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 91] (set! a1-6 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 92] (set! a2-5 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 93] (set! a3-5 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L203       ;; [ 94] (set! t0-5 L203) [] -> [t0: <string "torn040"> ] "torn040"
    lui t1, -15674            ;; [ 95] (set! t1-5 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 96] (set! t2-5 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 97] (call! a0-19 a1-6 a2-5 a3-5 t0-5 t1-5 t2-5)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn040"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 98] (set! v1-15 v0-7) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 99] (s.w! (+ arg0 600) v1-15) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L143          ;; [100] (b! #t L143 (nop!)) [] -> []
    sll r0, r0, 0

B13:
L140:
    addiu a0, r0, 6           ;; [101] (set! a0-20 6) [] -> [a0: <integer 6> ]
    bne v1, a0, L141          ;; [102] (b! (!= v1-3 a0-20) L141 (set! a0-21 #f)) [v1: int a0: <integer 6> ] -> [a0: '#f ]
    or a0, s7, r0

B14:
    lw a0, *gui-control*(s7)  ;; [103] (set! a0-22 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [104] (set! v1-16 (l.wu (+ a0-22 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [105] (set! t9-8 (l.wu (+ v1-16 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [106] (set! a1-7 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [107] (set! a2-6 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [108] (set! a3-6 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L202       ;; [109] (set! t0-6 L202) [] -> [t0: <string "torn049"> ] "torn049"
    lui t1, -15674            ;; [110] (set! t1-6 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [111] (set! t2-6 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [112] (call! a0-22 a1-7 a2-6 a3-6 t0-6 t1-6 t2-6)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn049"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [113] (set! v1-17 v0-8) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [114] (s.w! (+ arg0 600) v1-17) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L143          ;; [115] (b! #t L143 (nop!)) [] -> []
    sll r0, r0, 0

B15:
L141:
    addiu a0, r0, 7           ;; [116] (set! a0-23 7) [] -> [a0: <integer 7> ]
    bne v1, a0, L142          ;; [117] (b! (!= v1-3 a0-23) L142 (set! a0-24 #f)) [v1: int a0: <integer 7> ] -> [a0: '#f ]
    or a0, s7, r0

B16:
    lw a0, *gui-control*(s7)  ;; [118] (set! a0-25 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [119] (set! v1-18 (l.wu (+ a0-25 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [120] (set! t9-9 (l.wu (+ v1-18 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [121] (set! a1-8 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [122] (set! a2-7 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [123] (set! a3-7 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L201       ;; [124] (set! t0-7 L201) [] -> [t0: <string "torn052"> ] "torn052"
    lui t1, -15674            ;; [125] (set! t1-7 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [126] (set! t2-7 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [127] (call! a0-25 a1-8 a2-7 a3-7 t0-7 t1-7 t2-7)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn052"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [128] (set! v1-19 v0-9) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [129] (s.w! (+ arg0 600) v1-19) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L143          ;; [130] (b! #t L143 (nop!)) [] -> []
    sll r0, r0, 0

B17:
L142:
    addiu a0, r0, 8           ;; [131] (set! a0-26 8) [] -> [a0: <integer 8> ]
    bne v1, a0, L143          ;; [132] (b! (!= v1-3 a0-26) L143 (set! v1-20 #f)) [v1: int a0: <integer 8> ] -> [v1: '#f ]
    or v1, s7, r0

B18:
    lw a0, *gui-control*(s7)  ;; [133] (set! a0-27 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [134] (set! v1-21 (l.wu (+ a0-27 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [135] (set! t9-10 (l.wu (+ v1-21 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [136] (set! a1-9 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [137] (set! a2-8 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [138] (set! a3-8 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L200       ;; [139] (set! t0-8 L200) [] -> [t0: <string "torn056"> ] "torn056"
    lui t1, -15674            ;; [140] (set! t1-8 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [141] (set! t2-8 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [142] (call! a0-27 a1-9 a2-8 a3-8 t0-8 t1-8 t2-8)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn056"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [143] (set! v1-22 v0-10) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [144] (s.w! (+ arg0 600) v1-22) [v1: sound-id gp: port-turret ] -> []
B19:
L143:
    or v0, r0, r0             ;; [145] (set! v0-11 0) [] -> [v0: <integer 0> ]
    ld ra, 0(sp)
    ld fp, 8(sp)
    lq gp, 16(sp)
    jr ra
    daddiu sp, sp, 32

    sll r0, r0, 0
    sll r0, r0, 0


;;-*-OpenGOAL-Start-*-

(defun jak-hit-speech ((arg0 port-turret))
  (when (= (get-status *gui-control* (the-as sound-id (-> arg0 id))) (gui-status unknown))
    (let ((v1-3 (rand-vu-int-count 9)))
      (cond
        ((zero? v1-3)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn019" -99.0 0)
                 )
               )
         )
        ((= v1-3 1)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn029" -99.0 0)
                 )
               )
         )
        ((= v1-3 2)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn030" -99.0 0)
                 )
               )
         )
        ((= v1-3 3)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn034" -99.0 0)
                 )
               )
         )
        ((= v1-3 4)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn035" -99.0 0)
                 )
               )
         )
        ((= v1-3 5)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn040" -99.0 0)
                 )
               )
         )
        ((= v1-3 6)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn049" -99.0 0)
                 )
               )
         )
        ((= v1-3 7)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn052" -99.0 0)
                 )
               )
         )
        ((= v1-3 8)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn056" -99.0 0)
                 )
               )
         )
        )
      )
    )
  0
  (none)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    (b0
      (cond
        (b1
          b2
          )
        (b3
          b4
          )
        (b5
          b6
          )
        (b7
          b8
          )
        (b9
          b10
          )
        (b11
          b12
          )
        (b13
          b14
          )
        (b15
          b16
          )
        (b17
          b18
          )
        )
      )
    )
  b19
  )

;; .endfunction

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; .function new-wave-speech
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;stack: total 0x20, fp? 1 ra? 1 ep? 1
  ;gprs: gp
;; Warnings:
;; WARN: Return type mismatch int vs none.

L144:
    daddiu sp, sp, -32
    sd ra, 0(sp)
    sd fp, 8(sp)
    or fp, t9, r0
    sq gp, 16(sp)
B0:
    or gp, a0, r0             ;; [  0] (set! arg0 arg0) [a0: port-turret ] -> [gp: port-turret ]
    lw a0, *gui-control*(s7)  ;; [  1] (set! a0-1 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [  2] (set! v1-0 (l.wu (+ a0-1 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 84(v1)            ;; [  3] (set! t9-0 (l.wu (+ v1-0 84)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control sound-id gui-status)> ]
    lwu a1, 600(gp)           ;; [  4] (set! a1-0 (l.wu (+ arg0 600))) [gp: port-turret ] -> [a1: uint ]
    jalr ra, t9               ;; [  5] (call! a0-1 a1-0)
                              ;; [a0: gui-control a1: uint t9: <vmethod (function gui-control sound-id gui-status)> ] -> [v0: gui-status ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [  6] (set! v1-1 v0-0) [v0: gui-status ] -> [v1: gui-status ]
    bne v1, r0, L153          ;; [  7] (b! (nonzero? v1-1) L153 (set! v1-2 #f)) [v1: gui-status ] -> [v1: '#f ]
    or v1, s7, r0

B1:
    lw t9, rand-vu-int-count(s7);; [  8] (set! t9-1 rand-vu-int-count) [] -> [t9: (function int int) ]
    addiu a0, r0, 9           ;; [  9] (set! a0-2 9) [] -> [a0: <integer 9> ]
    jalr ra, t9               ;; [ 10] (call! a0-2) [a0: <integer 9> t9: (function int int) ] -> [v0: int ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 11] (set! v1-3 v0-1) [v0: int ] -> [v1: int ]
    bne v1, r0, L145          ;; [ 12] (b! (nonzero? v1-3) L145 (set! a0-3 #f)) [v1: int ] -> [a0: '#f ]
    or a0, s7, r0

B2:
    lw a0, *gui-control*(s7)  ;; [ 13] (set! a0-4 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 14] (set! v1-4 (l.wu (+ a0-4 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 15] (set! t9-2 (l.wu (+ v1-4 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 16] (set! a1-1 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 17] (set! a2-0 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 18] (set! a3-0 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L217       ;; [ 19] (set! t0-0 L217) [] -> [t0: <string "torn018"> ] "torn018"
    lui t1, -15674            ;; [ 20] (set! t1-0 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 21] (set! t2-0 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 22] (call! a0-4 a1-1 a2-0 a3-0 t0-0 t1-0 t2-0)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn018"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 23] (set! v1-5 v0-2) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 24] (s.w! (+ arg0 600) v1-5) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L153          ;; [ 25] (b! #t L153 (nop!)) [] -> []
    sll r0, r0, 0

B3:
L145:
    addiu a0, r0, 1           ;; [ 26] (set! a0-5 1) [] -> [a0: <integer 1> ]
    bne v1, a0, L146          ;; [ 27] (b! (!= v1-3 a0-5) L146 (set! a0-6 #f)) [v1: int a0: <integer 1> ] -> [a0: '#f ]
    or a0, s7, r0

B4:
    lw a0, *gui-control*(s7)  ;; [ 28] (set! a0-7 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 29] (set! v1-6 (l.wu (+ a0-7 -4))) [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 30] (set! t9-3 (l.wu (+ v1-6 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 31] (set! a1-2 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 32] (set! a2-1 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 33] (set! a3-1 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L216       ;; [ 34] (set! t0-1 L216) [] -> [t0: <string "torn022"> ] "torn022"
    lui t1, -15674            ;; [ 35] (set! t1-1 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 36] (set! t2-1 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 37] (call! a0-7 a1-2 a2-1 a3-1 t0-1 t1-1 t2-1)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn022"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 38] (set! v1-7 v0-3) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 39] (s.w! (+ arg0 600) v1-7) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L153          ;; [ 40] (b! #t L153 (nop!)) [] -> []
    sll r0, r0, 0

B5:
L146:
    addiu a0, r0, 2           ;; [ 41] (set! a0-8 2) [] -> [a0: <integer 2> ]
    bne v1, a0, L147          ;; [ 42] (b! (!= v1-3 a0-8) L147 (set! a0-9 #f)) [v1: int a0: <integer 2> ] -> [a0: '#f ]
    or a0, s7, r0

B6:
    lw a0, *gui-control*(s7)  ;; [ 43] (set! a0-10 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 44] (set! v1-8 (l.wu (+ a0-10 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 45] (set! t9-4 (l.wu (+ v1-8 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 46] (set! a1-3 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 47] (set! a2-2 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 48] (set! a3-2 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L215       ;; [ 49] (set! t0-2 L215) [] -> [t0: <string "torn023"> ] "torn023"
    lui t1, -15674            ;; [ 50] (set! t1-2 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 51] (set! t2-2 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 52] (call! a0-10 a1-3 a2-2 a3-2 t0-2 t1-2 t2-2)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn023"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 53] (set! v1-9 v0-4) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 54] (s.w! (+ arg0 600) v1-9) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L153          ;; [ 55] (b! #t L153 (nop!)) [] -> []
    sll r0, r0, 0

B7:
L147:
    addiu a0, r0, 3           ;; [ 56] (set! a0-11 3) [] -> [a0: <integer 3> ]
    bne v1, a0, L148          ;; [ 57] (b! (!= v1-3 a0-11) L148 (set! a0-12 #f)) [v1: int a0: <integer 3> ] -> [a0: '#f ]
    or a0, s7, r0

B8:
    lw a0, *gui-control*(s7)  ;; [ 58] (set! a0-13 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 59] (set! v1-10 (l.wu (+ a0-13 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 60] (set! t9-5 (l.wu (+ v1-10 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 61] (set! a1-4 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 62] (set! a2-3 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 63] (set! a3-3 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L214       ;; [ 64] (set! t0-3 L214) [] -> [t0: <string "torn026"> ] "torn026"
    lui t1, -15674            ;; [ 65] (set! t1-3 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 66] (set! t2-3 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 67] (call! a0-13 a1-4 a2-3 a3-3 t0-3 t1-3 t2-3)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn026"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 68] (set! v1-11 v0-5) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 69] (s.w! (+ arg0 600) v1-11) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L153          ;; [ 70] (b! #t L153 (nop!)) [] -> []
    sll r0, r0, 0

B9:
L148:
    addiu a0, r0, 4           ;; [ 71] (set! a0-14 4) [] -> [a0: <integer 4> ]
    bne v1, a0, L149          ;; [ 72] (b! (!= v1-3 a0-14) L149 (set! a0-15 #f)) [v1: int a0: <integer 4> ] -> [a0: '#f ]
    or a0, s7, r0

B10:
    lw a0, *gui-control*(s7)  ;; [ 73] (set! a0-16 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 74] (set! v1-12 (l.wu (+ a0-16 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 75] (set! t9-6 (l.wu (+ v1-12 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 76] (set! a1-5 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 77] (set! a2-4 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 78] (set! a3-4 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L213       ;; [ 79] (set! t0-4 L213) [] -> [t0: <string "torn033"> ] "torn033"
    lui t1, -15674            ;; [ 80] (set! t1-4 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 81] (set! t2-4 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 82] (call! a0-16 a1-5 a2-4 a3-4 t0-4 t1-4 t2-4)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn033"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 83] (set! v1-13 v0-6) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 84] (s.w! (+ arg0 600) v1-13) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L153          ;; [ 85] (b! #t L153 (nop!)) [] -> []
    sll r0, r0, 0

B11:
L149:
    addiu a0, r0, 5           ;; [ 86] (set! a0-17 5) [] -> [a0: <integer 5> ]
    bne v1, a0, L150          ;; [ 87] (b! (!= v1-3 a0-17) L150 (set! a0-18 #f)) [v1: int a0: <integer 5> ] -> [a0: '#f ]
    or a0, s7, r0

B12:
    lw a0, *gui-control*(s7)  ;; [ 88] (set! a0-19 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [ 89] (set! v1-14 (l.wu (+ a0-19 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [ 90] (set! t9-7 (l.wu (+ v1-14 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [ 91] (set! a1-6 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [ 92] (set! a2-5 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [ 93] (set! a3-5 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L212       ;; [ 94] (set! t0-5 L212) [] -> [t0: <string "torn037"> ] "torn037"
    lui t1, -15674            ;; [ 95] (set! t1-5 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [ 96] (set! t2-5 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [ 97] (call! a0-19 a1-6 a2-5 a3-5 t0-5 t1-5 t2-5)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn037"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [ 98] (set! v1-15 v0-7) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [ 99] (s.w! (+ arg0 600) v1-15) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L153          ;; [100] (b! #t L153 (nop!)) [] -> []
    sll r0, r0, 0

B13:
L150:
    addiu a0, r0, 6           ;; [101] (set! a0-20 6) [] -> [a0: <integer 6> ]
    bne v1, a0, L151          ;; [102] (b! (!= v1-3 a0-20) L151 (set! a0-21 #f)) [v1: int a0: <integer 6> ] -> [a0: '#f ]
    or a0, s7, r0

B14:
    lw a0, *gui-control*(s7)  ;; [103] (set! a0-22 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [104] (set! v1-16 (l.wu (+ a0-22 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [105] (set! t9-8 (l.wu (+ v1-16 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [106] (set! a1-7 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [107] (set! a2-6 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [108] (set! a3-6 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L211       ;; [109] (set! t0-6 L211) [] -> [t0: <string "torn038"> ] "torn038"
    lui t1, -15674            ;; [110] (set! t1-6 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [111] (set! t2-6 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [112] (call! a0-22 a1-7 a2-6 a3-6 t0-6 t1-6 t2-6)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn038"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [113] (set! v1-17 v0-8) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [114] (s.w! (+ arg0 600) v1-17) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L153          ;; [115] (b! #t L153 (nop!)) [] -> []
    sll r0, r0, 0

B15:
L151:
    addiu a0, r0, 7           ;; [116] (set! a0-23 7) [] -> [a0: <integer 7> ]
    bne v1, a0, L152          ;; [117] (b! (!= v1-3 a0-23) L152 (set! a0-24 #f)) [v1: int a0: <integer 7> ] -> [a0: '#f ]
    or a0, s7, r0

B16:
    lw a0, *gui-control*(s7)  ;; [118] (set! a0-25 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [119] (set! v1-18 (l.wu (+ a0-25 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [120] (set! t9-9 (l.wu (+ v1-18 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [121] (set! a1-8 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [122] (set! a2-7 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [123] (set! a3-7 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L210       ;; [124] (set! t0-7 L210) [] -> [t0: <string "torn039"> ] "torn039"
    lui t1, -15674            ;; [125] (set! t1-7 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [126] (set! t2-7 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [127] (call! a0-25 a1-8 a2-7 a3-7 t0-7 t1-7 t2-7)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn039"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [128] (set! v1-19 v0-9) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [129] (s.w! (+ arg0 600) v1-19) [v1: sound-id gp: port-turret ] -> []
    beq r0, r0, L153          ;; [130] (b! #t L153 (nop!)) [] -> []
    sll r0, r0, 0

B17:
L152:
    addiu a0, r0, 8           ;; [131] (set! a0-26 8) [] -> [a0: <integer 8> ]
    bne v1, a0, L153          ;; [132] (b! (!= v1-3 a0-26) L153 (set! v1-20 #f)) [v1: int a0: <integer 8> ] -> [v1: '#f ]
    or v1, s7, r0

B18:
    lw a0, *gui-control*(s7)  ;; [133] (set! a0-27 *gui-control*) [] -> [a0: gui-control ]
    lwu v1, -4(a0)            ;; [134] (set! v1-21 (l.wu (+ a0-27 -4)))
                              ;; [a0: gui-control ] -> [v1: <the type gui-control> ]
    lwu t9, 52(v1)            ;; [135] (set! t9-10 (l.wu (+ v1-21 52)))
                              ;; [v1: <the type gui-control> ] -> [t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ]
    or a1, gp, r0             ;; [136] (set! a1-9 arg0) [gp: port-turret ] -> [a1: port-turret ]
    lbu a2, 596(gp)           ;; [137] (set! a2-8 (l.bu (+ arg0 596))) [gp: port-turret ] -> [a2: uint ]
    addiu a3, r0, 2           ;; [138] (set! a3-8 2) [] -> [a3: <integer 2> ]
    daddiu t0, fp, L209       ;; [139] (set! t0-8 L209) [] -> [t0: <string "torn047"> ] "torn047"
    lui t1, -15674            ;; [140] (set! t1-8 -99.0) [] -> [t1: float ]
    addiu t2, r0, 0           ;; [141] (set! t2-8 0) [] -> [t2: <integer 0> ]
    jalr ra, t9               ;; [142] (call! a0-27 a1-9 a2-8 a3-8 t0-8 t1-8 t2-8)
                              ;; [a0: gui-control a1: port-turret a2: uint a3: <integer 2> t0: <string "torn047"> t1: float t2: <integer 0> t9: <vmethod (function gui-control process gui-channel gui-action string float time-frame sound-id)> ] -> [v0: sound-id ]
    sll v0, ra, 0

    or v1, v0, r0             ;; [143] (set! v1-22 v0-10) [v0: sound-id ] -> [v1: sound-id ]
    sw v1, 600(gp)            ;; [144] (s.w! (+ arg0 600) v1-22) [v1: sound-id gp: port-turret ] -> []
B19:
L153:
    or v0, r0, r0             ;; [145] (set! v0-11 0) [] -> [v0: <integer 0> ]
    ld ra, 0(sp)
    ld fp, 8(sp)
    lq gp, 16(sp)
    jr ra
    daddiu sp, sp, 32



;;-*-OpenGOAL-Start-*-

(defun new-wave-speech ((arg0 port-turret))
  (when (= (get-status *gui-control* (the-as sound-id (-> arg0 id))) (gui-status unknown))
    (let ((v1-3 (rand-vu-int-count 9)))
      (cond
        ((zero? v1-3)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn018" -99.0 0)
                 )
               )
         )
        ((= v1-3 1)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn022" -99.0 0)
                 )
               )
         )
        ((= v1-3 2)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn023" -99.0 0)
                 )
               )
         )
        ((= v1-3 3)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn026" -99.0 0)
                 )
               )
         )
        ((= v1-3 4)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn033" -99.0 0)
                 )
               )
         )
        ((= v1-3 5)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn037" -99.0 0)
                 )
               )
         )
        ((= v1-3 6)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn038" -99.0 0)
                 )
               )
         )
        ((= v1-3 7)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn039" -99.0 0)
                 )
               )
         )
        ((= v1-3 8)
         (set! (-> arg0 id)
               (the-as
                 uint
                 (add-process *gui-control* arg0 (the-as gui-channel (-> arg0 channel)) (gui-action play) "torn047" -99.0 0)
                 )
               )
         )
        )
      )
    )
  0
  (none)
  )

;;-*-OpenGOAL-End-*-

Control Flow Graph:
(seq
  (cond
    (b0
      (cond
        (b1
          b2
          )
        (b3
          b4
          )
        (b5
          b6
          )
        (b7
          b8
          )
        (b9
          b10
          )
        (b11
          b12
          )
        (b13
          b14
          )
        (b15
          b16
          )
        (b17
          b18
          )
        )
      )
    )
  b19
  )

;; .endfunction

L154:
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .type state
L155:
    .symbol active
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .word 0x0
    .word 0x0
    .word 0x0
    .type string
; "torn014"
L156:
    .word 0x7
    .word 0x6e726f74
    .word 0x343130
    .type string
; "city-protect-blimp-res"
L157:
    .word 0x16
    .word 0x79746963
    .word 0x6f72702d
    .word 0x74636574
    .word 0x696c622d
    .word 0x722d706d
    .word 0x7365
    .type string
; "torn062"
L158:
    .word 0x7
    .word 0x6e726f74
    .word 0x323630
    .type string
; "torn061"
L159:
    .word 0x7
    .word 0x6e726f74
    .word 0x313630
    .type string
; "torn060"
L160:
    .word 0x7
    .word 0x6e726f74
    .word 0x303630
    .type state
L161:
    .symbol idle
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .word 0x0
    .word 0x0
    .word 0x0
    .type string
; "~A invalid-state~%"
L162:
    .word 0x12
    .word 0x6920417e
    .word 0x6c61766e
    .word 0x732d6469
    .word 0x65746174
    .word 0x257e
    .word 0x0
    .type string
; "torn012"
L163:
    .word 0x7
    .word 0x6e726f74
    .word 0x323130
    .type string
; "torn011"
L164:
    .word 0x7
    .word 0x6e726f74
    .word 0x313130
    .type string
; "torn010"
L165:
    .word 0x7
    .word 0x6e726f74
    .word 0x303130
L166:
    .word 0x5
    .word 0xb
    .word 0x7
    .word 0x9
    .type string
; "idle-turret"
L167:
    .word 0xb
    .word 0x656c6469
    .word 0x7275742d
    .word 0x746572
    .word 0x0
    .word 0x0
    .word 0x0
    .type string
; "skel-torn-highres"
L168:
    .word 0x11
    .word 0x6c656b73
    .word 0x726f742d
    .word 0x69682d6e
    .word 0x65726867
    .word 0x73
    .word 0x0
    .type string
; "torn-highres"
L169:
    .word 0xc
    .word 0x6e726f74
    .word 0x6769682d
    .word 0x73657268
    .word 0x0
    .word 0x0
    .word 0x0
    .type string
; "port-turret-2"
L170:
    .word 0xd
    .word 0x74726f70
    .word 0x7275742d
    .word 0x2d746572
    .word 0x32
    .word 0x0
    .word 0x0
    .type string
; "port-turret-1"
L171:
    .word 0xd
    .word 0x74726f70
    .word 0x7275742d
    .word 0x2d746572
    .word 0x31
    .word 0x0
    .word 0x0
    .type state
L172:
    .symbol impact
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .word 0x0
    .word 0x0
    .word 0x0
    .type state
L173:
    .symbol idle
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .symbol #f
    .word 0x0
    .word 0x0
    .word 0x0
    .type string
; "skel-port-metal-head-boat"
L174:
    .word 0x19
    .word 0x6c656b73
    .word 0x726f702d
    .word 0x656d2d74
    .word 0x2d6c6174
    .word 0x64616568
    .word 0x616f622d
    .word 0x74
    .word 0x0
    .word 0x0
    .word 0x0
    .type skeleton-group
L175:
    .symbol #f
    .word L177
    .word 0x0
    .symbol #f
    .word 0x0
    .word 0x0
    .word 0x0
    .word L176
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x48dc0000
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x700
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .type string
; "port-metal-head-boat"
L176:
    .word 0x14
    .word 0x74726f70
    .word 0x74656d2d
    .word 0x682d6c61
    .word 0x2d646165
    .word 0x74616f62
    .word 0x0
    .type string
; "skel-port-metal-head-boat"
L177:
    .word 0x19
    .word 0x6c656b73
    .word 0x726f702d
    .word 0x656d2d74
    .word 0x2d6c6174
    .word 0x64616568
    .word 0x616f622d
    .word 0x74
    .word 0x0
    .word 0x0
    .word 0x0
    .type sparticle-launcher
L178:
    .word 0x0
    .word 0x0
    .word L179
L179:
    .word 0x10021
    .word 0x0
    .word 0x0
    .word 0x3f800000
    .word 0x10022
    .word 0x0
    .word 0x0
    .word 0x3f800000
    .word 0x10023
    .word 0x0
    .word 0x0
    .word 0x3f800000
    .word 0x10024
    .word 0xbcf5c28f
    .word 0xbe75c28f
    .word 0x3f800000
    .word 0x48
    .word 0x0
    .word 0x0
    .word 0x0
    .type sparticle-launcher
L180:
    .word 0x0
    .word 0x0
    .word L181
L181:
    .word 0x1001c
    .word 0x41da740e
    .word 0x40da740e
    .word 0x3f800000
    .word 0x30020
    .word 0xfffffffc
    .word 0x0
    .word 0x1
    .word 0x10021
    .word 0xc0151eb8
    .word 0x0
    .word 0x3f800000
    .word 0x10022
    .word 0xbfa3d70a
    .word 0x0
    .word 0x3f800000
    .word 0x10023
    .word 0xbe2e147b
    .word 0x0
    .word 0x3f800000
    .word 0x32
    .word 0x4b
    .word 0x18
    .word 0x1
    .word 0x60033
    .word 0x12aa
    .word 0x0
    .word 0x0
    .word 0x48
    .word 0x0
    .word 0x0
    .word 0x0
    .type sparticle-launcher
L182:
    .word 0x0
    .word 0x0
    .word L183
L183:
    .word 0x1001c
    .word 0x425a740e
    .word 0x415a740e
    .word 0x3f800000
    .word 0x30020
    .word 0xfffffffc
    .word 0x0
    .word 0x1
    .word 0x32
    .word 0x4b
    .word 0x18
    .word 0x1
    .word 0x60033
    .word 0x12a9
    .word 0x0
    .word 0x0
    .word 0x48
    .word 0x0
    .word 0x0
    .word 0x0
    .type sparticle-launcher
L184:
    .word 0x0
    .word 0x0
    .word L185
L185:
    .word 0x1
    .word 0xc00000
    .word 0x0
    .word 0x0
    .word 0x50004
    .symbol birth-func-texture-group
    .word 0x0
    .word 0x0
    .word 0x10006
    .word 0x3f000000
    .word 0x0
    .word 0x3f800000
    .word 0x1000a
    .word 0x0
    .word 0x46800000
    .word 0x3f800000
    .word 0x1000d
    .word 0x47000000
    .word 0x46800000
    .word 0x3f800000
    .word 0x10010
    .word 0x0
    .word 0x47800000
    .word 0x3f800000
    .word 0x30011
    .word 0xfffffffc
    .word 0x0
    .word 0x1
    .word 0x10012
    .word 0x437f0000
    .word 0x0
    .word 0x3f800000
    .word 0x10013
    .word 0x43760000
    .word 0x0
    .word 0x3f800000
    .word 0x10014
    .word 0x43150000
    .word 0x0
    .word 0x3f800000
    .word 0x10015
    .word 0x42000000
    .word 0x42000000
    .word 0x3f800000
    .word 0x1001a
    .word 0x43cccccd
    .word 0x43088889
    .word 0x3f800000
    .word 0x1001c
    .word 0x42da740e
    .word 0x41da740e
    .word 0x3f800000
    .word 0x1001f
    .word 0xc211a2b4
    .word 0x4291a2b4
    .word 0x3f800000
    .word 0x30020
    .word 0xfffffffc
    .word 0x0
    .word 0x1
    .word 0x10021
    .word 0xbe162fc9
    .word 0x0
    .word 0x3f800000
    .word 0x10022
    .word 0xbf4962fd
    .word 0x0
    .word 0x3f800000
    .word 0x10023
    .word 0xbf6147ae
    .word 0x0
    .word 0x3f800000
    .word 0x10024
    .word 0xbd5a740e
    .word 0xbd5a740e
    .word 0x3f800000
    .word 0x10025
    .word 0x40aec33e
    .word 0x3faec33e
    .word 0x3f800000
    .word 0x10026
    .word 0x3ed1b717
    .word 0x3ed1b717
    .word 0x3f800000
    .word 0x1002d
    .word 0x3f75c28f
    .word 0x0
    .word 0x3f800000
    .word 0x2e
    .word 0x960
    .word 0x0
    .word 0x1
    .word 0x2f
    .word 0x10004
    .word 0x0
    .word 0x1
    .word 0x40030
    .word L186
    .word 0x0
    .word 0x0
    .word 0x32
    .word 0x32
    .word 0x18
    .word 0x1
    .word 0x60033
    .word 0x12a8
    .word 0x0
    .word 0x0
    .word 0x1003f
    .word 0x0
    .word 0x49200000
    .word 0x3f800000
    .word 0x48
    .word 0x0
    .word 0x0
    .word 0x0
    .type array
L186:
    .word 0x6
    .word 0x6
    .type int32
    .word 0x28
    .word 0x1
    .word 0x0
    .word 0xc00000
    .word 0xc00000
    .word 0xc03300
    .word 0x0
    .word 0x0
    .type sparticle-launcher
L187:
    .word 0x0
    .word 0x0
    .word L188
L188:
    .word 0x1
    .word 0xc0bc00
    .word 0x0
    .word 0x0
    .word 0x10006
    .word 0x3f800000
    .word 0x0
    .word 0x3f800000
    .word 0x1000a
    .word 0x0
    .word 0x46000000
    .word 0x3f800000
    .word 0x1000b
    .word 0x45800000
    .word 0x0
    .word 0x3f800000
    .word 0x1000d
    .word 0x47400000
    .word 0x46400000
    .word 0x3f800000
    .word 0x1000e
    .word 0x4499999a
    .word 0x0
    .word 0x3f800000
    .word 0x10010
    .word 0x0
    .word 0x49200000
    .word 0x3f800000
    .word 0x30011
    .word 0xfffffffc
    .word 0x0
    .word 0x1
    .word 0x10012
    .word 0x437f0000
    .word 0x0
    .word 0x3f800000
    .word 0x10013
    .word 0x42800000
    .word 0x43000000
    .word 0x3f800000
    .word 0x10014
    .word 0x0
    .word 0x42800000
    .word 0x3f800000
    .word 0x10015
    .word 0x41400000
    .word 0x40800000
    .word 0x3f800000
    .word 0x10018
    .word 0x4948cccd
    .word 0x0
    .word 0x3f800000
    .word 0x10024
    .word 0xbf4ccccd
    .word 0x0
    .word 0x3f800000
    .word 0x2e
    .word 0x14
    .word 0x0
    .word 0x1
    .word 0x2f
    .word 0x800c
    .word 0x0
    .word 0x1
    .word 0x10030
    .word 0x45c00000
    .word 0x0
    .word 0x3f800000
    .word 0x1003f
    .word 0x0
    .word 0x49200000
    .word 0x3f800000
    .word 0x48
    .word 0x0
    .word 0x0
    .word 0x0
    .type sparticle-launch-group
L189:
    .word 0xbb80002
    .word 0x1c2
    .word L191
    .word L190
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x3f800000
    .word 0x3f800000
    .word 0x3f800000
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x46c00000
L190:
    .word 0x12a6
    .word 0x0
    .word 0x0
    .word 0x80
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x12a7
    .word 0x0
    .word 0x0
    .word 0xc0
    .word 0x0
    .word 0x0
    .word 0x0
    .word 0x0
    .type string
; "group-port-mh-boat-smoke-trail"
L191:
    .word 0x1e
    .word 0x756f7267
    .word 0x6f702d70
    .word 0x6d2d7472
    .word 0x6f622d68
    .word 0x732d7461
    .word 0x656b6f6d
    .word 0x6172742d
    .word 0x6c69
    .word 0x0
    .word 0x0
    .type string
; "torn020"
L192:
    .word 0x7
    .word 0x6e726f74
    .word 0x303230
    .type string
; "torn017"
L193:
    .word 0x7
    .word 0x6e726f74
    .word 0x373130
    .type string
; "torn057"
L194:
    .word 0x7
    .word 0x6e726f74
    .word 0x373530
    .type string
; "torn053"
L195:
    .word 0x7
    .word 0x6e726f74
    .word 0x333530
    .type string
; "torn028"
L196:
    .word 0x7
    .word 0x6e726f74
    .word 0x383230
    .type string
; "torn051"
L197:
    .word 0x7
    .word 0x6e726f74
    .word 0x313530
    .type string
; "torn048"
L198:
    .word 0x7
    .word 0x6e726f74
    .word 0x383430
    .type string
; "status ~D~%"
L199:
    .word 0xb
    .word 0x74617473
    .word 0x7e207375
    .word 0x257e44
    .word 0x0
    .word 0x0
    .word 0x0
    .type string
; "torn056"
L200:
    .word 0x7
    .word 0x6e726f74
    .word 0x363530
    .type string
; "torn052"
L201:
    .word 0x7
    .word 0x6e726f74
    .word 0x323530
    .type string
; "torn049"
L202:
    .word 0x7
    .word 0x6e726f74
    .word 0x393430
    .type string
; "torn040"
L203:
    .word 0x7
    .word 0x6e726f74
    .word 0x303430
    .type string
; "torn035"
L204:
    .word 0x7
    .word 0x6e726f74
    .word 0x353330
    .type string
; "torn034"
L205:
    .word 0x7
    .word 0x6e726f74
    .word 0x343330
    .type string
; "torn030"
L206:
    .word 0x7
    .word 0x6e726f74
    .word 0x303330
    .type string
; "torn029"
L207:
    .word 0x7
    .word 0x6e726f74
    .word 0x393230
    .type string
; "torn019"
L208:
    .word 0x7
    .word 0x6e726f74
    .word 0x393130
    .type string
; "torn047"
L209:
    .word 0x7
    .word 0x6e726f74
    .word 0x373430
    .type string
; "torn039"
L210:
    .word 0x7
    .word 0x6e726f74
    .word 0x393330
    .type string
; "torn038"
L211:
    .word 0x7
    .word 0x6e726f74
    .word 0x383330
    .type string
; "torn037"
L212:
    .word 0x7
    .word 0x6e726f74
    .word 0x373330
    .type string
; "torn033"
L213:
    .word 0x7
    .word 0x6e726f74
    .word 0x333330
    .type string
; "torn026"
L214:
    .word 0x7
    .word 0x6e726f74
    .word 0x363230
    .type string
; "torn023"
L215:
    .word 0x7
    .word 0x6e726f74
    .word 0x333230
    .type string
; "torn022"
L216:
    .word 0x7
    .word 0x6e726f74
    .word 0x323230
    .type string
; "torn018"
L217:
    .word 0x7
    .word 0x6e726f74
    .word 0x383130
L218:
    .word 0x4
    .word L219
    .word 0x0
    .word 0x0
L219:
    .word 0x3c23d70a
    .symbol set-speed-mult
    .word 0xf0
    .word 0x0
    .word 0x3fcccccd
    .symbol set-rotyvv
    .word 0xfffff6a0
    .word 0x0
    .word 0x3fe66666
    .symbol script
    .word L220
    .word 0x0
    .word 0x3ff33333
    .symbol set-rotyvv
    .word 0x0
    .word 0x0
L220: (offset 2)
    .symbol send-event
    .word L221
L221: (offset 2)
    .word L225
    .word L222
L222: (offset 2)
    .word L223
    .empty-list
L223: (offset 2)
    .symbol quote
    .word L224
L224: (offset 2)
    .symbol start-talking
    .empty-list
    .word 0x0
    .word 0x0
    .type string
; "port-turret-2"
L225:
    .word 0xd
    .word 0x74726f70
    .word 0x7275742d
    .word 0x2d746572
    .word 0x32


