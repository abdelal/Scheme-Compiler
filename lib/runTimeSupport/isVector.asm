/* abs.asm
 * Computes the absolute value of its argument:
 *   R0 <- | ARG[0] |
 *
 * Programmer: Mayer Goldberg, 2010
 */


  MY_IS_VECTOR:
    PUSH(FP);
    MOV(FP, SP);
    CMP(IMM(T_VECTOR),INDD(FPARG(2), 0));
    JUMP_NE(L_not_vector);
    MOV(R0, IMM(SOB_TRUE));
    JUMP(L_exit_vector);
    L_not_vector:
        MOV(R0, IMM(SOB_FALSE));
    L_exit_vector:
    POP(FP);
    RETURN;