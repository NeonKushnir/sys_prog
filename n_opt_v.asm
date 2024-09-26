isPrime(int):
        push    rbp
        mov     rbp, rsp
        mov     DWORD PTR [rbp-20], edi
        cmp     DWORD PTR [rbp-20], 1
        jg      .L4
        mov     eax, 0
        jmp     .L5
.L4:
        mov     DWORD PTR [rbp-4], 2
        jmp     .L6
.L8:
        mov     eax, DWORD PTR [rbp-20]
        cdq
        idiv    DWORD PTR [rbp-4]
        mov     eax, edx
        test    eax, eax
        jne     .L7
        mov     eax, 0
        jmp     .L5
.L7:
        add     DWORD PTR [rbp-4], 1
.L6:
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, DWORD PTR [rbp-20]
        jl      .L8
        mov     eax, 1
.L5:
        pop     rbp
        ret
findPrimesNaive(int):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 40
        mov     QWORD PTR [rbp-40], rdi
        mov     DWORD PTR [rbp-44], esi
        mov     rax, QWORD PTR [rbp-40]
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::vector() [complete object constructor]
        mov     DWORD PTR [rbp-20], 2
        jmp     .L13
.L15:
        mov     eax, DWORD PTR [rbp-20]
        mov     edi, eax
        call    isPrime(int)
        test    al, al
        je      .L14
        lea     rdx, [rbp-20]
        mov     rax, QWORD PTR [rbp-40]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::push_back(int const&)
.L14:
        mov     eax, DWORD PTR [rbp-20]
        add     eax, 1
        mov     DWORD PTR [rbp-20], eax
.L13:
        mov     eax, DWORD PTR [rbp-20]
        cmp     DWORD PTR [rbp-44], eax
        jge     .L15
        jmp     .L19
        mov     rbx, rax
        mov     rax, QWORD PTR [rbp-40]
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::~vector() [complete object destructor]
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
.L19:
        mov     rax, QWORD PTR [rbp-40]
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC0:
        .string "\320\237\321\200\320\276\321\201\321\202\321\226 \321\207\320\270\321\201\320\273\320\260 \320\264\320\276 "
.LC1:
        .string ": "
.LC2:
        .string " "
main:
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 72
        mov     DWORD PTR [rbp-20], 100000
        lea     rax, [rbp-64]
        mov     edx, DWORD PTR [rbp-20]
        mov     esi, edx
        mov     rdi, rax
        call    findPrimesNaive(int)
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     rdx, rax
        mov     eax, DWORD PTR [rbp-20]
        mov     esi, eax
        mov     rdi, rdx
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     esi, OFFSET FLAT:.LC1
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        lea     rax, [rbp-64]
        mov     QWORD PTR [rbp-32], rax
        mov     rax, QWORD PTR [rbp-32]
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::begin()
        mov     QWORD PTR [rbp-72], rax
        mov     rax, QWORD PTR [rbp-32]
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::end()
        mov     QWORD PTR [rbp-80], rax
        jmp     .L21
.L22:
        lea     rax, [rbp-72]
        mov     rdi, rax
        call    __gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >::operator*() const
        mov     eax, DWORD PTR [rax]
        mov     DWORD PTR [rbp-36], eax
        mov     eax, DWORD PTR [rbp-36]
        mov     esi, eax
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     esi, OFFSET FLAT:.LC2
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        lea     rax, [rbp-72]
        mov     rdi, rax
        call    __gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > >::operator++()
.L21:
        lea     rdx, [rbp-80]
        lea     rax, [rbp-72]
        mov     rsi, rdx
        mov     rdi, rax
        call    bool __gnu_cxx::operator!=<int*, std::vector<int, std::allocator<int> > >(__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > > const&, __gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > > const&)
        test    al, al
        jne     .L22
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        mov     ebx, 0
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::~vector() [complete object destructor]
        mov     eax, ebx
        jmp     .L26
        mov     rbx, rax
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::~vector() [complete object destructor]
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
.L26:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC3:
        .string "vector::_M_realloc_append"