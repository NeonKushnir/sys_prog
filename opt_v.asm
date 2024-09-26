sieveOfEratosthenes(int):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 184
        mov     QWORD PTR [rbp-184], rdi
        mov     DWORD PTR [rbp-188], esi
        lea     rax, [rbp-114]
        mov     QWORD PTR [rbp-32], rax
        nop
        nop
        mov     BYTE PTR [rbp-113], 1
        mov     eax, DWORD PTR [rbp-188]
        add     eax, 1
        movsx   rsi, eax
        lea     rcx, [rbp-114]
        lea     rdx, [rbp-113]
        lea     rax, [rbp-160]
        mov     rdi, rax
        call    std::vector<bool, std::allocator<bool> >::vector(unsigned long, bool const&, std::allocator<bool> const&) [complete object constructor]
        lea     rax, [rbp-114]
        mov     rdi, rax
        call    std::__new_allocator<bool>::~__new_allocator() [base object destructor]
        nop
        lea     rax, [rbp-160]
        mov     esi, 1
        mov     rdi, rax
        call    std::vector<bool, std::allocator<bool> >::operator[](unsigned long)
        mov     QWORD PTR [rbp-112], rax
        mov     QWORD PTR [rbp-104], rdx
        lea     rax, [rbp-112]
        mov     esi, 0
        mov     rdi, rax
        call    std::_Bit_reference::operator=(bool)
        mov     rbx, rax
        lea     rax, [rbp-160]
        mov     esi, 0
        mov     rdi, rax
        call    std::vector<bool, std::allocator<bool> >::operator[](unsigned long)
        mov     QWORD PTR [rbp-96], rax
        mov     QWORD PTR [rbp-88], rdx
        lea     rax, [rbp-96]
        mov     rsi, rbx
        mov     rdi, rax
        call    std::_Bit_reference::operator=(std::_Bit_reference const&)
        mov     DWORD PTR [rbp-20], 2
        jmp     .L36
.L40:
        mov     eax, DWORD PTR [rbp-20]
        movsx   rdx, eax
        lea     rax, [rbp-160]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<bool, std::allocator<bool> >::operator[](unsigned long)
        mov     QWORD PTR [rbp-80], rax
        mov     QWORD PTR [rbp-72], rdx
        lea     rax, [rbp-80]
        mov     rdi, rax
        call    std::_Bit_reference::operator bool() const
        test    al, al
        je      .L37
        mov     eax, DWORD PTR [rbp-20]
        imul    eax, eax
        mov     DWORD PTR [rbp-24], eax
        jmp     .L38
.L39:
        mov     eax, DWORD PTR [rbp-24]
        movsx   rdx, eax
        lea     rax, [rbp-160]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<bool, std::allocator<bool> >::operator[](unsigned long)
        mov     QWORD PTR [rbp-64], rax
        mov     QWORD PTR [rbp-56], rdx
        lea     rax, [rbp-64]
        mov     esi, 0
        mov     rdi, rax
        call    std::_Bit_reference::operator=(bool)
        mov     eax, DWORD PTR [rbp-20]
        add     DWORD PTR [rbp-24], eax
.L38:
        mov     eax, DWORD PTR [rbp-24]
        cmp     eax, DWORD PTR [rbp-188]
        jle     .L39
.L37:
        add     DWORD PTR [rbp-20], 1
.L36:
        mov     eax, DWORD PTR [rbp-20]
        imul    eax, eax
        cmp     DWORD PTR [rbp-188], eax
        jge     .L40
        mov     rax, QWORD PTR [rbp-184]
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::vector() [complete object constructor]
        mov     DWORD PTR [rbp-164], 2
        jmp     .L41
.L43:
        mov     eax, DWORD PTR [rbp-164]
        movsx   rdx, eax
        lea     rax, [rbp-160]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<bool, std::allocator<bool> >::operator[](unsigned long)
        mov     QWORD PTR [rbp-48], rax
        mov     QWORD PTR [rbp-40], rdx
        lea     rax, [rbp-48]
        mov     rdi, rax
        call    std::_Bit_reference::operator bool() const
        test    al, al
        je      .L42
        lea     rdx, [rbp-164]
        mov     rax, QWORD PTR [rbp-184]
        mov     rsi, rdx
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::push_back(int const&)
.L42:
        mov     eax, DWORD PTR [rbp-164]
        add     eax, 1
        mov     DWORD PTR [rbp-164], eax
.L41:
        mov     eax, DWORD PTR [rbp-164]
        cmp     DWORD PTR [rbp-188], eax
        jge     .L43
        lea     rax, [rbp-160]
        mov     rdi, rax
        call    std::vector<bool, std::allocator<bool> >::~vector() [complete object destructor]
        jmp     .L51
        mov     rbx, rax
        lea     rax, [rbp-114]
        mov     rdi, rax
        call    std::__new_allocator<bool>::~__new_allocator() [base object destructor]
        nop
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
        mov     rbx, rax
        mov     rax, QWORD PTR [rbp-184]
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::~vector() [complete object destructor]
        jmp     .L47
        mov     rbx, rax
.L47:
        lea     rax, [rbp-160]
        mov     rdi, rax
        call    std::vector<bool, std::allocator<bool> >::~vector() [complete object destructor]
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
.L51:
        mov     rax, QWORD PTR [rbp-184]
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
        mov     DWORD PTR [rbp-20], 30
        lea     rax, [rbp-64]
        mov     edx, DWORD PTR [rbp-20]
        mov     esi, edx
        mov     rdi, rax
        call    sieveOfEratosthenes(int)
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
        jmp     .L53
.L54:
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
.L53:
        lea     rdx, [rbp-80]
        lea     rax, [rbp-72]
        mov     rsi, rdx
        mov     rdi, rax
        call    bool __gnu_cxx::operator!=<int*, std::vector<int, std::allocator<int> > >(__gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > > const&, __gnu_cxx::__normal_iterator<int*, std::vector<int, std::allocator<int> > > const&)
        test    al, al
        jne     .L54
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        mov     ebx, 0
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::~vector() [complete object destructor]
        mov     eax, ebx
        jmp     .L58
        mov     rbx, rax
        lea     rax, [rbp-64]
        mov     rdi, rax
        call    std::vector<int, std::allocator<int> >::~vector() [complete object destructor]
        mov     rax, rbx
        mov     rdi, rax
        call    _Unwind_Resume
.L58:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
.LC3:
        .string "vector::_M_realloc_append"