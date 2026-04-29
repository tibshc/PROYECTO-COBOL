       IDENTIFICATION DIVISION.
       PROGRAM-ID. CL0000.
       AUTHOR. BANC-S.
       
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
      *=================================================================
      *    VARIABLES DE BASE DE DATOS Y HOST (ESQL)
      *=================================================================
           EXEC SQL BEGIN DECLARE SECTION END-EXEC.
           
      *    Incluir el copybook generado de Clientes
           COPY CLIENTES.
           
           EXEC SQL END DECLARE SECTION END-EXEC.
           
           EXEC SQL INCLUDE SQLCA END-EXEC.
           
      *=================================================================
      *    VARIABLES DE CONTROL Y LOGICA
      *=================================================================
       01  WS-OPCION          PIC 9 VALUE 0.
       01  WS-FIN             PIC X VALUE 'N'.
       
       PROCEDURE DIVISION.
       
       0000-MAIN.
           PERFORM UNTIL WS-FIN = 'S'
               DISPLAY "======================================="
               DISPLAY "     SISTEMA BANCARIO - CLIENTES       "
               DISPLAY "======================================="
               DISPLAY " 1. Alta de Cliente (Llamar a CL0001)  "
               DISPLAY " 2. Baja de Cliente (Llamar a CL0002)  "
               DISPLAY " 3. Modificacion    (Llamar a CL0003)  "
               DISPLAY " 4. Consulta        (Llamar a CL0004)  "
               DISPLAY " 9. Salir                              "
               DISPLAY "======================================="
               DISPLAY "Seleccione una opcion: " WITH NO ADVANCING
               ACCEPT WS-OPCION
               
               EVALUATE WS-OPCION
                   WHEN 1
                       DISPLAY "Llamando a CL0001..."
      *                CALL 'CL0001'
                   WHEN 2
                       DISPLAY "Llamando a CL0002..."
      *                CALL 'CL0002'
                   WHEN 3
                       DISPLAY "Llamando a CL0003..."
      *                CALL 'CL0003'
                   WHEN 4
                       DISPLAY "Llamando a CL0004..."
      *                CALL 'CL0004'
                   WHEN 9
                       MOVE 'S' TO WS-FIN
                   WHEN OTHER
                       DISPLAY "Opcion invalida."
               END-EVALUATE
           END-PERFORM.
           
           DISPLAY "Saliendo del Modulo de Clientes...".
           STOP RUN.
