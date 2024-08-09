# Learning-Assembly

## Assembly 64bit registers
<table>
    <tr>
        <th>Name</th>
        <th>Alias</th>
        <th>Description</th>
    </tr>
    <tr>
        <th>r0</th>
        <th>rax</th>
        <th>accumulator for arithmetic instructions</th>
    </tr>
    <tr>
        <th>r1</th>
        <th>rcx</th>
        <th>used for cycles</th>
    </tr>
    <tr>
        <th>r2</th>
        <th>rdx</th>
        <th>storage data during input/output operations</th>
    </tr>
    <tr>
        <th>r3</th>
        <th>rbx</th>
        <th>base register, used to base address on firsts processors models</th>
    </tr>
    <tr>
        <th>r4</th>
        <th>rsp</th>
        <th>storege address data of element on top of stack of the hardware</th>
    </tr>
    <tr>
        <th>r5</th>
        <th>rbp</th>
        <th>base of stack frame</th>
    </tr>
    <tr>
        <th>r6</th>
        <th>rsi</th>
        <th>origin index of commands of string manipulations</th>
    </tr>
    <tr>
        <th>r7</th>
        <th>rdi</th>
        <th>destiny index of commands of string manipulations</th>
    </tr>
</table>

## System calll mmap
<table>
    <tr>
        <th>Register</th>
        <th>Value</th>
        <th>Description</th>
    </tr>
    <tr>
        <th>rax</th>
        <th>9</th>
        <th>System call indentifier</th>
    </tr>
    <tr>
        <th>rdi</th>
        <th>addr</th>
        <th>OS page mapping</th>
    </tr>
    <tr>
        <th>rsi</th>
        <th>len</th>
        <th>region size</th>
    </tr>
    <tr>
        <th>rdx</th>
        <th>prot</th>
        <th>protection flag (read, write, execute)</th>
    </tr>
    <tr>
        <th>r10</th>
        <th>flags</th>
        <th>utils flags (shared or private, anonymous page, etc...)</th>
    </tr>
    <tr>
        <th>r8</th>
        <th>fd</th>
        <th>optinal descriptor of an mapped file</th>
    </tr>
    <tr>
        <th>r9</th>
        <th>offset</th>
        <th>file offset</th>
    </tr>
</table>