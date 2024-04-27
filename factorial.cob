       IDENTIFICATION DIVISION.
       PROGRAM-ID. FACTORIAL.
       DATA DIVISION.
       working-storage section.
       01 i pic 9(8).
       LINKAGE SECTION.
       01 N           PIC 9(8).
       01 RESULT      PIC 9(20).
       PROCEDURE DIVISION USING N RESULT.
           if N = 0
              move 1 to RESULT
              goback
           end-if
           perform varying i from N by -1 until i = 0
              if i = N
                move N to RESULT
              else
                compute RESULT = result * i
              end-if
           end-perform
           GOBACK.
       END PROGRAM FACTORIAL.