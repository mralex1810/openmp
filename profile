Flat profile:

Each sample counts as 0.01 seconds.
  %   cumulative   self              self     total           
 time   seconds   seconds    calls  ms/call  ms/call  name    
 22.27      1.42     1.42 738253729     0.00     0.00  unsigned char&& std::forward<unsigned char>(std::remove_reference<unsigned char>::type&)
  8.03      1.93     0.51 46240700     0.00     0.00  std::tuple<unsigned char, unsigned char, unsigned char> get_pixel<std::tuple<unsigned char, unsigned char, unsigned char> >(unsigned long)
  4.25      2.20     0.27 52340307     0.00     0.00  std::tuple<std::__decay_and_strip<std::decay<unsigned char>::type>::__type, std::__decay_and_strip<std::decay<unsigned char>::type>::__type, std::__decay_and_strip<std::decay<unsigned char>::type>::__type> std::make_tuple<unsigned char, unsigned char, unsigned char>(unsigned char&&, unsigned char&&, unsigned char&&)
  3.78      2.44     0.24 51273198     0.00     0.00  std::tuple<unsigned char, unsigned char, unsigned char>::tuple<unsigned char, unsigned char, unsigned char, true, true>(unsigned char&&, unsigned char&&, unsigned char&&)
  3.70      2.67     0.24 13123406     0.00     0.00  unsigned char const& std::__get_helper<2ul, unsigned char>(std::_Tuple_impl<2ul, unsigned char> const&)
  3.54      2.90     0.23 48604205     0.00     0.00  std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_Tuple_impl<unsigned char, unsigned char, unsigned char, void>(unsigned char&&, unsigned char&&, unsigned char&&)
  3.46      3.12     0.22  4778964     0.00     0.00  std::_Head_base<2ul, char&, false>::_M_head(std::_Head_base<2ul, char&, false>&)
  2.83      3.30     0.18 49153538     0.00     0.00  std::_Tuple_impl<1ul, unsigned char, unsigned char>::_Tuple_impl<unsigned char, unsigned char, void>(unsigned char&&, unsigned char&&)
  2.68      3.47     0.17 51304172     0.00     0.00  std::_Tuple_impl<2ul, unsigned char>::_Tuple_impl<unsigned char>(unsigned char&&)
  2.52      3.63     0.16 18137573     0.00     0.00  std::_Tuple_impl<2ul, unsigned char>::_M_head(std::_Tuple_impl<2ul, unsigned char> const&)
  2.05      3.76     0.13  4116994     0.00     0.00  void set_pixel<std::tuple<unsigned char, unsigned char, unsigned char> >(unsigned long, std::tuple<unsigned char, unsigned char, unsigned char>)
  2.05      3.89     0.13  4055226     0.00     0.00  std::tuple<unsigned char, unsigned char, unsigned char> stretch<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>, int, unsigned char)
  1.89      4.01     0.12 12354620     0.00     0.00  std::tuple_element<0ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<0ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&)
  1.73      4.12     0.11 50774368     0.00     0.00  std::_Head_base<0ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&)
  1.73      4.23     0.11  3714522     0.00     0.00  void std::_Tuple_impl<0ul, char&, char&, char&>::_M_assign<unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&)
  1.73      4.34     0.11 51533687     0.00     0.00  std::_Head_base<1ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&)
  1.57      4.44     0.10 49827311     0.00     0.00  std::_Head_base<2ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&)
  1.57      4.54     0.10 12204585     0.00     0.00  std::tuple_element<2ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<2ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&)
  1.42      4.63     0.09 36543871     0.00     0.00  std::tuple_element<0ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<0ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&)
  1.42      4.72     0.09  4317772     0.00     0.00  unsigned char get_max<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>)
  1.34      4.81     0.09  4006135     0.00     0.00  std::enable_if<(__assignable<unsigned char const&, unsigned char const&, unsigned char const&>)(), std::tuple<char&, char&, char&>&>::type std::tuple<char&, char&, char&>::operator=<unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&)
  1.26      4.89     0.08 12875581     0.00     0.00  unsigned char to_char<int>(int)
  1.26      4.97     0.08  4322911     0.00     0.00  unsigned char get_min<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>)
  1.18      5.04     0.08 10669822     0.00     0.00  std::tuple_element<1ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<1ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&)
  1.10      5.11     0.07 18774552     0.00     0.00  std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&)
  0.94      5.17     0.06 36863242     0.00     0.00  std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<1ul, unsigned char, unsigned char>&)
  0.94      5.23     0.06 36840344     0.00     0.00  std::tuple_element<1ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<1ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&)
  0.94      5.29     0.06 12069258     0.00     0.00  unsigned char const& std::min<unsigned char>(unsigned char const&, unsigned char const&)
  0.94      5.35     0.06  4825232     0.00     0.00  std::_Tuple_impl<2ul, char&>::_M_head(std::_Tuple_impl<2ul, char&>&)
  0.79      5.40     0.05 37447764     0.00     0.00  std::_Tuple_impl<2ul, unsigned char>::_M_head(std::_Tuple_impl<2ul, unsigned char>&)
  0.79      5.45     0.05 13731851     0.00     0.00  unsigned char const& std::__get_helper<1ul, unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&)
  0.79      5.50     0.05 12368261     0.00     0.00  unsigned char const& std::max<unsigned char>(unsigned char const&, unsigned char const&)
  0.79      5.55     0.05  4093045     0.00     0.00  std::_Tuple_impl<0ul, char&, char&, char&>::_Tuple_impl(char&, char&, char&)
  0.79      5.60     0.05  3316744     0.00     0.00  std::_Tuple_impl<1ul, char&, char&>::_Tuple_impl(char&, char&)
  0.79      5.65     0.05  3212453     0.00     0.00  std::_Tuple_impl<2ul, char&>::_Tuple_impl(char&)
  0.63      5.69     0.04 37924343     0.00     0.00  std::tuple_element<2ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<2ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&)
  0.63      5.73     0.04 37907534     0.00     0.00  unsigned char& std::__get_helper<2ul, unsigned char>(std::_Tuple_impl<2ul, unsigned char>&)
  0.63      5.77     0.04 17955369     0.00     0.00  std::_Head_base<1ul, unsigned char, false>::_M_head(std::_Head_base<1ul, unsigned char, false> const&)
  0.63      5.81     0.04 15583198     0.00     0.00  std::_Head_base<0ul, unsigned char, false>::_M_head(std::_Head_base<0ul, unsigned char, false> const&)
  0.63      5.85     0.04  5112004     0.00     0.00  void std::_Tuple_impl<2ul, char&>::_M_assign<unsigned char>(std::_Tuple_impl<2ul, unsigned char> const&)
  0.55      5.89     0.04  4790146     0.00     0.00  std::tuple<char&, char&, char&> std::tie<char, char, char>(char&, char&, char&)
  0.47      5.92     0.03 37365218     0.00     0.00  unsigned char& std::__get_helper<1ul, unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char>&)
  0.47      5.95     0.03 37191968     0.00     0.00  std::_Head_base<1ul, unsigned char, false>::_M_head(std::_Head_base<1ul, unsigned char, false>&)
  0.47      5.98     0.03 16058701     0.00     0.00  std::_Head_base<2ul, unsigned char, false>::_M_head(std::_Head_base<2ul, unsigned char, false> const&)
  0.47      6.01     0.03  4866287     0.00     0.00  std::_Head_base<1ul, char&, false>::_M_head(std::_Head_base<1ul, char&, false>&)
  0.47      6.04     0.03  4664032     0.00     0.00  std::_Tuple_impl<1ul, char&, char&>::_M_head(std::_Tuple_impl<1ul, char&, char&>&)
  0.47      6.07     0.03  4401491     0.00     0.00  std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_tail(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&)
  0.39      6.09     0.03 13089533     0.00     0.00  unsigned char const& std::__get_helper<0ul, unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&)
  0.31      6.11     0.02 37648264     0.00     0.00  std::_Head_base<0ul, unsigned char, false>::_M_head(std::_Head_base<0ul, unsigned char, false>&)
  0.31      6.13     0.02 37048699     0.00     0.00  std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>&)
  0.31      6.15     0.02 17925025     0.00     0.00  std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&)
  0.31      6.17     0.02  4723994     0.00     0.00  std::_Head_base<0ul, char&, false>::_M_head(std::_Head_base<0ul, char&, false>&)
  0.31      6.19     0.02  4283367     0.00     0.00  void std::_Tuple_impl<1ul, char&, char&>::_M_assign<unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&)
  0.31      6.21     0.02  3522572     0.00     0.00  std::_Tuple_impl<1ul, char&, char&>::_M_tail(std::_Tuple_impl<1ul, char&, char&>&)
  0.31      6.23     0.02  3512152     0.00     0.00  std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_tail(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&)
  0.31      6.25     0.02  3192582     0.00     0.00  std::_Tuple_impl<0ul, char&, char&, char&>::_M_tail(std::_Tuple_impl<0ul, char&, char&, char&>&)
  0.31      6.27     0.02                             main
  0.16      6.28     0.01  4760536     0.00     0.00  std::_Tuple_impl<0ul, char&, char&, char&>::_M_head(std::_Tuple_impl<0ul, char&, char&, char&>&)
  0.16      6.29     0.01  4182508     0.00     0.00  std::_Head_base<1ul, char&, false>::_Head_base(char&)
  0.16      6.30     0.01  3591150     0.00     0.00  std::_Head_base<2ul, char&, false>::_Head_base(char&)
  0.16      6.31     0.01  3516493     0.00     0.00  std::tuple<char&, char&, char&>::tuple<true, true>(char&, char&, char&)
  0.16      6.32     0.01  3406947     0.00     0.00  std::_Head_base<0ul, char&, false>::_Head_base(char&)
  0.16      6.33     0.01        1    10.01    10.01  std::__cxx11::stof(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, unsigned long*)
  0.16      6.34     0.01                             unsigned char get_pixel<unsigned char>(unsigned long)
  0.16      6.35     0.01                             frame_dummy
  0.08      6.36     0.01        2     2.50     2.50  void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*)
  0.08      6.36     0.01                             std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::~_Alloc_hider()
  0.00      6.36     0.00 37362752     0.00     0.00  unsigned char& std::__get_helper<0ul, unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>&)
  0.00      6.36     0.00 37068677     0.00     0.00  std::_Head_base<2ul, unsigned char, false>::_M_head(std::_Head_base<2ul, unsigned char, false>&)
  0.00      6.36     0.00        3     0.00     0.00  int __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int)
  0.00      6.36     0.00        3     0.00     0.00  std::__cxx11::stoi(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, unsigned long*, int)
  0.00      6.36     0.00        3     0.00     0.00  __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int)::_Range_chk::_S_chk(long, std::integral_constant<bool, true>)
  0.00      6.36     0.00        3     0.00     0.00  __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int)::_Save_errno::_Save_errno()
  0.00      6.36     0.00        3     0.00     0.00  __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int)::_Save_errno::~_Save_errno()
  0.00      6.36     0.00        2     0.00     0.00  bool __gnu_cxx::__is_null_pointer<char const>(char const*)
  0.00      6.36     0.00        2     0.00     0.00  std::char_traits<char>::length(char const*)
  0.00      6.36     0.00        2     0.00     0.00  void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)
  0.00      6.36     0.00        2     0.00     0.00  void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct_aux<char const*>(char const*, char const*, std::__false_type)
  0.00      6.36     0.00        2     0.00     2.50  std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string<std::allocator<char> >(char const*, std::allocator<char> const&)
  0.00      6.36     0.00        2     0.00     0.00  std::iterator_traits<char const*>::difference_type std::__distance<char const*>(char const*, char const*, std::random_access_iterator_tag)
  0.00      6.36     0.00        2     0.00     0.00  std::iterator_traits<char const*>::iterator_category std::__iterator_category<char const*>(char const* const&)
  0.00      6.36     0.00        2     0.00     0.00  std::iterator_traits<char const*>::difference_type std::distance<char const*>(char const*, char const*)
  0.00      6.36     0.00        1     0.00     0.00  _GLOBAL__sub_I_TYPE
  0.00      6.36     0.00        1     0.00     0.00  __static_initialization_and_destruction_0(int, int)
  0.00      6.36     0.00        1     0.00     0.00  void do_all<std::tuple<unsigned char, unsigned char, unsigned char> >()
  0.00      6.36     0.00        1     0.00     0.00  float __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*)
  0.00      6.36     0.00        1     0.00     0.00  std::fpos<__mbstate_t>::operator long() const
  0.00      6.36     0.00        1     0.00     0.00  __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*)::_Range_chk::_S_chk(float, std::integral_constant<bool, false>)
  0.00      6.36     0.00        1     0.00     0.00  __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*)::_Save_errno::_Save_errno()
  0.00      6.36     0.00        1     0.00     0.00  __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*)::_Save_errno::~_Save_errno()

 %         the percentage of the total running time of the
time       program used by this function.

cumulative a running sum of the number of seconds accounted
 seconds   for by this function and those listed above it.

 self      the number of seconds accounted for by this
seconds    function alone.  This is the major sort for this
           listing.

calls      the number of times this function was invoked, if
           this function is profiled, else blank.

 self      the average number of milliseconds spent in this
ms/call    function per call, if this function is profiled,
	   else blank.

 total     the average number of milliseconds spent in this
ms/call    function and its descendents per call, if this
	   function is profiled, else blank.

name       the name of the function.  This is the minor sort
           for this listing. The index shows the location of
	   the function in the gprof listing. If the index is
	   in parenthesis it shows where it would appear in
	   the gprof listing if it were to be printed.

Copyright (C) 2012-2021 Free Software Foundation, Inc.

Copying and distribution of this file, with or without modification,
are permitted in any medium without royalty provided the copyright
notice and this notice are preserved.

		     Call graph (explanation follows)


granularity: each sample hit covers 2 byte(s) for 0.16% of 6.36 seconds

index % time    self  children    called     name
                0.14    0.74 13063100/46240700     std::_Head_base<2ul, char&, false>::_M_head(std::_Head_base<2ul, char&, false>&) <cycle 1> [4]
                0.37    1.88 33177600/46240700     main [5]
[1]     49.3    0.51    2.63 46240700         std::tuple<unsigned char, unsigned char, unsigned char> get_pixel<std::tuple<unsigned char, unsigned char, unsigned char> >(unsigned long) [1]
                0.25    2.38 48695427/52340307     std::tuple<std::__decay_and_strip<std::decay<unsigned char>::type>::__type, std::__decay_and_strip<std::decay<unsigned char>::type>::__type, std::__decay_and_strip<std::decay<unsigned char>::type>::__type> std::make_tuple<unsigned char, unsigned char, unsigned char>(unsigned char&&, unsigned char&&, unsigned char&&) [3]
-----------------------------------------------
                0.02    0.18 3644880/52340307     std::tuple<unsigned char, unsigned char, unsigned char> stretch<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>, int, unsigned char) [12]
                0.25    2.38 48695427/52340307     std::tuple<unsigned char, unsigned char, unsigned char> get_pixel<std::tuple<unsigned char, unsigned char, unsigned char> >(unsigned long) [1]
[3]     44.4    0.27    2.55 52340307         std::tuple<std::__decay_and_strip<std::decay<unsigned char>::type>::__type, std::__decay_and_strip<std::decay<unsigned char>::type>::__type, std::__decay_and_strip<std::decay<unsigned char>::type>::__type> std::make_tuple<unsigned char, unsigned char, unsigned char>(unsigned char&&, unsigned char&&, unsigned char&&) [3]
                0.24    2.02 51273198/51273198     std::tuple<unsigned char, unsigned char, unsigned char>::tuple<unsigned char, unsigned char, unsigned char, true, true>(unsigned char&&, unsigned char&&, unsigned char&&) [6]
                0.29    0.00 150695674/738253729     unsigned char&& std::forward<unsigned char>(std::remove_reference<unsigned char>::type&) [8]
-----------------------------------------------
                             4778964             std::_Tuple_impl<2ul, char&>::_M_head(std::_Tuple_impl<2ul, char&>&) <cycle 1> [44]
[4]     42.8    0.22    2.50 4778964         std::_Head_base<2ul, char&, false>::_M_head(std::_Head_base<2ul, char&, false>&) <cycle 1> [4]
                0.14    0.74 13063100/46240700     std::tuple<unsigned char, unsigned char, unsigned char> get_pixel<std::tuple<unsigned char, unsigned char, unsigned char> >(unsigned long) [1]
                0.09    0.59 4317772/4317772     unsigned char get_max<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>) [10]
                0.13    0.32 4055226/4055226     std::tuple<unsigned char, unsigned char, unsigned char> stretch<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>, int, unsigned char) [12]
                0.08    0.37 4322911/4322911     unsigned char get_min<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>) [14]
                0.02    0.00 4047875/12069258     unsigned char const& std::min<unsigned char>(unsigned char const&, unsigned char const&) [43]
                0.02    0.00 4099630/12368261     unsigned char const& std::max<unsigned char>(unsigned char const&, unsigned char const&) [47]
                             4116994             void set_pixel<std::tuple<unsigned char, unsigned char, unsigned char> >(unsigned long, std::tuple<unsigned char, unsigned char, unsigned char>) <cycle 1> [16]
-----------------------------------------------
                                                 <spontaneous>
[5]     42.1    0.02    2.66                 main [5]
                0.37    1.88 33177600/46240700     std::tuple<unsigned char, unsigned char, unsigned char> get_pixel<std::tuple<unsigned char, unsigned char, unsigned char> >(unsigned long) [1]
                0.05    0.11 33177600/36840344     std::tuple_element<1ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<1ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&) [25]
                0.08    0.04 33177600/36543871     std::tuple_element<0ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<0ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&) [30]
                0.04    0.08 33177600/37924343     std::tuple_element<2ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<2ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&) [29]
                0.01    0.00       1/1           std::__cxx11::stof(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, unsigned long*) [66]
                0.00    0.01       2/2           std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string<std::allocator<char> >(char const*, std::allocator<char> const&) [69]
                0.00    0.00       3/3           std::__cxx11::stoi(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, unsigned long*, int) [78]
                0.00    0.00       1/1           std::fpos<__mbstate_t>::operator long() const [93]
                0.00    0.00       1/1           void do_all<std::tuple<unsigned char, unsigned char, unsigned char> >() [91]
-----------------------------------------------
                0.24    2.02 51273198/51273198     std::tuple<std::__decay_and_strip<std::decay<unsigned char>::type>::__type, std::__decay_and_strip<std::decay<unsigned char>::type>::__type, std::__decay_and_strip<std::decay<unsigned char>::type>::__type> std::make_tuple<unsigned char, unsigned char, unsigned char>(unsigned char&&, unsigned char&&, unsigned char&&) [3]
[6]     35.6    0.24    2.02 51273198         std::tuple<unsigned char, unsigned char, unsigned char>::tuple<unsigned char, unsigned char, unsigned char, true, true>(unsigned char&&, unsigned char&&, unsigned char&&) [6]
                0.23    1.51 48604205/48604205     std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_Tuple_impl<unsigned char, unsigned char, unsigned char, void>(unsigned char&&, unsigned char&&, unsigned char&&) [7]
                0.29    0.00 149243792/738253729     unsigned char&& std::forward<unsigned char>(std::remove_reference<unsigned char>::type&) [8]
-----------------------------------------------
                0.23    1.51 48604205/48604205     std::tuple<unsigned char, unsigned char, unsigned char>::tuple<unsigned char, unsigned char, unsigned char, true, true>(unsigned char&&, unsigned char&&, unsigned char&&) [6]
[7]     27.3    0.23    1.51 48604205         std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_Tuple_impl<unsigned char, unsigned char, unsigned char, void>(unsigned char&&, unsigned char&&, unsigned char&&) [7]
                0.18    0.84 49153538/49153538     std::_Tuple_impl<1ul, unsigned char, unsigned char>::_Tuple_impl<unsigned char, unsigned char, void>(unsigned char&&, unsigned char&&) [9]
                0.29    0.00 148974523/738253729     unsigned char&& std::forward<unsigned char>(std::remove_reference<unsigned char>::type&) [8]
                0.11    0.09 50774368/50774368     std::_Head_base<0ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&) [21]
-----------------------------------------------
                0.09    0.00 46646818/738253729     std::_Tuple_impl<2ul, unsigned char>::_Tuple_impl<unsigned char>(unsigned char&&) [13]
                0.09    0.00 47182383/738253729     std::_Head_base<2ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&) [22]
                0.09    0.00 48074906/738253729     std::_Head_base<0ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&) [21]
                0.10    0.00 50840264/738253729     std::_Head_base<1ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&) [19]
                0.19    0.00 96595369/738253729     std::_Tuple_impl<1ul, unsigned char, unsigned char>::_Tuple_impl<unsigned char, unsigned char, void>(unsigned char&&, unsigned char&&) [9]
                0.29    0.00 148974523/738253729     std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_Tuple_impl<unsigned char, unsigned char, unsigned char, void>(unsigned char&&, unsigned char&&, unsigned char&&) [7]
                0.29    0.00 149243792/738253729     std::tuple<unsigned char, unsigned char, unsigned char>::tuple<unsigned char, unsigned char, unsigned char, true, true>(unsigned char&&, unsigned char&&, unsigned char&&) [6]
                0.29    0.00 150695674/738253729     std::tuple<std::__decay_and_strip<std::decay<unsigned char>::type>::__type, std::__decay_and_strip<std::decay<unsigned char>::type>::__type, std::__decay_and_strip<std::decay<unsigned char>::type>::__type> std::make_tuple<unsigned char, unsigned char, unsigned char>(unsigned char&&, unsigned char&&, unsigned char&&) [3]
[8]     22.3    1.42    0.00 738253729         unsigned char&& std::forward<unsigned char>(std::remove_reference<unsigned char>::type&) [8]
-----------------------------------------------
                0.18    0.84 49153538/49153538     std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_Tuple_impl<unsigned char, unsigned char, unsigned char, void>(unsigned char&&, unsigned char&&, unsigned char&&) [7]
[9]     16.1    0.18    0.84 49153538         std::_Tuple_impl<1ul, unsigned char, unsigned char>::_Tuple_impl<unsigned char, unsigned char, void>(unsigned char&&, unsigned char&&) [9]
                0.17    0.28 51304172/51304172     std::_Tuple_impl<2ul, unsigned char>::_Tuple_impl<unsigned char>(unsigned char&&) [13]
                0.11    0.10 51533687/51533687     std::_Head_base<1ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&) [19]
                0.19    0.00 96595369/738253729     unsigned char&& std::forward<unsigned char>(std::remove_reference<unsigned char>::type&) [8]
-----------------------------------------------
                0.09    0.59 4317772/4317772     std::_Head_base<2ul, char&, false>::_M_head(std::_Head_base<2ul, char&, false>&) <cycle 1> [4]
[10]    10.7    0.09    0.59 4317772         unsigned char get_max<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>) [10]
                0.06    0.22 7086710/12204585     std::tuple_element<2ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<2ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) [11]
                0.09    0.08 8810347/12354620     std::tuple_element<0ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<0ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) [17]
                0.05    0.06 7043244/10669822     std::tuple_element<1ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<1ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) [27]
                0.03    0.00 8268631/12368261     unsigned char const& std::max<unsigned char>(unsigned char const&, unsigned char const&) [47]
-----------------------------------------------
                0.04    0.16 5117875/12204585     unsigned char get_min<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>) [14]
                0.06    0.22 7086710/12204585     unsigned char get_max<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>) [10]
[11]     7.6    0.10    0.38 12204585         std::tuple_element<2ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<2ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) [11]
                0.24    0.15 13123406/13123406     unsigned char const& std::__get_helper<2ul, unsigned char>(std::_Tuple_impl<2ul, unsigned char> const&) [15]
-----------------------------------------------
                0.13    0.32 4055226/4055226     std::_Head_base<2ul, char&, false>::_M_head(std::_Head_base<2ul, char&, false>&) <cycle 1> [4]
[12]     7.1    0.13    0.32 4055226         std::tuple<unsigned char, unsigned char, unsigned char> stretch<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>, int, unsigned char) [12]
                0.02    0.18 3644880/52340307     std::tuple<std::__decay_and_strip<std::decay<unsigned char>::type>::__type, std::__decay_and_strip<std::decay<unsigned char>::type>::__type, std::__decay_and_strip<std::decay<unsigned char>::type>::__type> std::make_tuple<unsigned char, unsigned char, unsigned char>(unsigned char&&, unsigned char&&, unsigned char&&) [3]
                0.08    0.00 12875581/12875581     unsigned char to_char<int>(int) [40]
                0.01    0.01 3662744/36840344     std::tuple_element<1ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<1ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&) [25]
                0.01    0.01 4746743/37924343     std::tuple_element<2ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<2ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&) [29]
                0.01    0.00 3366271/36543871     std::tuple_element<0ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<0ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&) [30]
-----------------------------------------------
                0.17    0.28 51304172/51304172     std::_Tuple_impl<1ul, unsigned char, unsigned char>::_Tuple_impl<unsigned char, unsigned char, void>(unsigned char&&, unsigned char&&) [9]
[13]     7.1    0.17    0.28 51304172         std::_Tuple_impl<2ul, unsigned char>::_Tuple_impl<unsigned char>(unsigned char&&) [13]
                0.10    0.09 49827311/49827311     std::_Head_base<2ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&) [22]
                0.09    0.00 46646818/738253729     unsigned char&& std::forward<unsigned char>(std::remove_reference<unsigned char>::type&) [8]
-----------------------------------------------
                0.08    0.37 4322911/4322911     std::_Head_base<2ul, char&, false>::_M_head(std::_Head_base<2ul, char&, false>&) <cycle 1> [4]
[14]     7.0    0.08    0.37 4322911         unsigned char get_min<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>) [14]
                0.04    0.16 5117875/12204585     std::tuple_element<2ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<2ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) [11]
                0.03    0.03 3544273/12354620     std::tuple_element<0ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<0ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) [17]
                0.03    0.03 3626578/10669822     std::tuple_element<1ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<1ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) [27]
                0.04    0.00 8021383/12069258     unsigned char const& std::min<unsigned char>(unsigned char const&, unsigned char const&) [43]
-----------------------------------------------
                0.24    0.15 13123406/13123406     std::tuple_element<2ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<2ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) [11]
[15]     6.0    0.24    0.15 13123406         unsigned char const& std::__get_helper<2ul, unsigned char>(std::_Tuple_impl<2ul, unsigned char> const&) [15]
                0.12    0.02 13971751/18137573     std::_Tuple_impl<2ul, unsigned char>::_M_head(std::_Tuple_impl<2ul, unsigned char> const&) [23]
-----------------------------------------------
                             4116994             std::_Head_base<2ul, char&, false>::_M_head(std::_Head_base<2ul, char&, false>&) <cycle 1> [4]
[16]     5.6    0.13    0.23 4116994         void set_pixel<std::tuple<unsigned char, unsigned char, unsigned char> >(unsigned long, std::tuple<unsigned char, unsigned char, unsigned char>) <cycle 1> [16]
                0.04    0.19 4790146/4790146     std::tuple<char&, char&, char&> std::tie<char, char, char>(char&, char&, char&) [18]
                             4006135             std::enable_if<(__assignable<unsigned char const&, unsigned char const&, unsigned char const&>)(), std::tuple<char&, char&, char&>&>::type std::tuple<char&, char&, char&>::operator=<unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) <cycle 1> [38]
-----------------------------------------------
                0.03    0.03 3544273/12354620     unsigned char get_min<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>) [14]
                0.09    0.08 8810347/12354620     unsigned char get_max<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>) [10]
[17]     3.6    0.12    0.11 12354620         std::tuple_element<0ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<0ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) [17]
                0.03    0.08 13089533/13089533     unsigned char const& std::__get_helper<0ul, unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) [34]
-----------------------------------------------
                0.04    0.19 4790146/4790146     void set_pixel<std::tuple<unsigned char, unsigned char, unsigned char> >(unsigned long, std::tuple<unsigned char, unsigned char, unsigned char>) <cycle 1> [16]
[18]     3.5    0.04    0.19 4790146         std::tuple<char&, char&, char&> std::tie<char, char, char>(char&, char&, char&) [18]
                0.01    0.18 3516493/3516493     std::tuple<char&, char&, char&>::tuple<true, true>(char&, char&, char&) [24]
-----------------------------------------------
                0.11    0.10 51533687/51533687     std::_Tuple_impl<1ul, unsigned char, unsigned char>::_Tuple_impl<unsigned char, unsigned char, void>(unsigned char&&, unsigned char&&) [9]
[19]     3.3    0.11    0.10 51533687         std::_Head_base<1ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&) [19]
                0.10    0.00 50840264/738253729     unsigned char&& std::forward<unsigned char>(std::remove_reference<unsigned char>::type&) [8]
-----------------------------------------------
                             3714522             std::enable_if<(__assignable<unsigned char const&, unsigned char const&, unsigned char const&>)(), std::tuple<char&, char&, char&>&>::type std::tuple<char&, char&, char&>::operator=<unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) <cycle 1> [38]
[20]     3.2    0.11    0.10 3714522         void std::_Tuple_impl<0ul, char&, char&, char&>::_M_assign<unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) <cycle 1> [20]
                0.01    0.02 4760536/4760536     std::_Tuple_impl<0ul, char&, char&, char&>::_M_head(std::_Tuple_impl<0ul, char&, char&, char&>&) [55]
                0.02    0.01 4353214/18774552     std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) [33]
                0.02    0.00 3512152/3512152     std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_tail(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) [60]
                0.02    0.00 3192582/3192582     std::_Tuple_impl<0ul, char&, char&, char&>::_M_tail(std::_Tuple_impl<0ul, char&, char&, char&>&) [61]
                             4283367             void std::_Tuple_impl<1ul, char&, char&>::_M_assign<unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) <cycle 1> [28]
-----------------------------------------------
                0.11    0.09 50774368/50774368     std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_Tuple_impl<unsigned char, unsigned char, unsigned char, void>(unsigned char&&, unsigned char&&, unsigned char&&) [7]
[21]     3.2    0.11    0.09 50774368         std::_Head_base<0ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&) [21]
                0.09    0.00 48074906/738253729     unsigned char&& std::forward<unsigned char>(std::remove_reference<unsigned char>::type&) [8]
-----------------------------------------------
                0.10    0.09 49827311/49827311     std::_Tuple_impl<2ul, unsigned char>::_Tuple_impl<unsigned char>(unsigned char&&) [13]
[22]     3.0    0.10    0.09 49827311         std::_Head_base<2ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&) [22]
                0.09    0.00 47182383/738253729     unsigned char&& std::forward<unsigned char>(std::remove_reference<unsigned char>::type&) [8]
-----------------------------------------------
                0.04    0.01 4165822/18137573     void std::_Tuple_impl<2ul, char&>::_M_assign<unsigned char>(std::_Tuple_impl<2ul, unsigned char> const&) <cycle 1> [39]
                0.12    0.02 13971751/18137573     unsigned char const& std::__get_helper<2ul, unsigned char>(std::_Tuple_impl<2ul, unsigned char> const&) [15]
[23]     3.0    0.16    0.03 18137573         std::_Tuple_impl<2ul, unsigned char>::_M_head(std::_Tuple_impl<2ul, unsigned char> const&) [23]
                0.03    0.00 16058701/16058701     std::_Head_base<2ul, unsigned char, false>::_M_head(std::_Head_base<2ul, unsigned char, false> const&) [53]
-----------------------------------------------
                0.01    0.18 3516493/3516493     std::tuple<char&, char&, char&> std::tie<char, char, char>(char&, char&, char&) [18]
[24]     3.0    0.01    0.18 3516493         std::tuple<char&, char&, char&>::tuple<true, true>(char&, char&, char&) [24]
                0.05    0.13 4093045/4093045     std::_Tuple_impl<0ul, char&, char&, char&>::_Tuple_impl(char&, char&, char&) [26]
-----------------------------------------------
                0.01    0.01 3662744/36840344     std::tuple<unsigned char, unsigned char, unsigned char> stretch<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>, int, unsigned char) [12]
                0.05    0.11 33177600/36840344     main [5]
[25]     2.8    0.06    0.12 36840344         std::tuple_element<1ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<1ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&) [25]
                0.03    0.09 37365218/37365218     unsigned char& std::__get_helper<1ul, unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char>&) [31]
-----------------------------------------------
                0.05    0.13 4093045/4093045     std::tuple<char&, char&, char&>::tuple<true, true>(char&, char&, char&) [24]
[26]     2.8    0.05    0.13 4093045         std::_Tuple_impl<0ul, char&, char&, char&>::_Tuple_impl(char&, char&, char&) [26]
                0.05    0.07 3316744/3316744     std::_Tuple_impl<1ul, char&, char&>::_Tuple_impl(char&, char&) [32]
                0.01    0.00 3406947/3406947     std::_Head_base<0ul, char&, false>::_Head_base(char&) [65]
-----------------------------------------------
                0.03    0.03 3626578/10669822     unsigned char get_min<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>) [14]
                0.05    0.06 7043244/10669822     unsigned char get_max<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>) [10]
[27]     2.7    0.08    0.10 10669822         std::tuple_element<1ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<1ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) [27]
                0.05    0.05 13731851/13731851     unsigned char const& std::__get_helper<1ul, unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) [35]
-----------------------------------------------
                             4283367             void std::_Tuple_impl<0ul, char&, char&, char&>::_M_assign<unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) <cycle 1> [20]
[28]     2.3    0.02    0.12 4283367         void std::_Tuple_impl<1ul, char&, char&>::_M_assign<unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) <cycle 1> [28]
                0.03    0.03 4664032/4664032     std::_Tuple_impl<1ul, char&, char&>::_M_head(std::_Tuple_impl<1ul, char&, char&>&) [42]
                0.03    0.00 4401491/4401491     std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_tail(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) [56]
                0.02    0.00 3522572/3522572     std::_Tuple_impl<1ul, char&, char&>::_M_tail(std::_Tuple_impl<1ul, char&, char&>&) [59]
                0.00    0.01 4125609/17925025     std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) [41]
                             5112004             void std::_Tuple_impl<2ul, char&>::_M_assign<unsigned char>(std::_Tuple_impl<2ul, unsigned char> const&) <cycle 1> [39]
-----------------------------------------------
                0.01    0.01 4746743/37924343     std::tuple<unsigned char, unsigned char, unsigned char> stretch<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>, int, unsigned char) [12]
                0.04    0.08 33177600/37924343     main [5]
[29]     2.0    0.04    0.09 37924343         std::tuple_element<2ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<2ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&) [29]
                0.04    0.05 37907534/37907534     unsigned char& std::__get_helper<2ul, unsigned char>(std::_Tuple_impl<2ul, unsigned char>&) [36]
-----------------------------------------------
                0.01    0.00 3366271/36543871     std::tuple<unsigned char, unsigned char, unsigned char> stretch<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>, int, unsigned char) [12]
                0.08    0.04 33177600/36543871     main [5]
[30]     2.0    0.09    0.04 36543871         std::tuple_element<0ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<0ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&) [30]
                0.00    0.04 37362752/37362752     unsigned char& std::__get_helper<0ul, unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>&) [48]
-----------------------------------------------
                0.03    0.09 37365218/37365218     std::tuple_element<1ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<1ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&) [25]
[31]     1.9    0.03    0.09 37365218         unsigned char& std::__get_helper<1ul, unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char>&) [31]
                0.06    0.03 36863242/36863242     std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<1ul, unsigned char, unsigned char>&) [37]
-----------------------------------------------
                0.05    0.07 3316744/3316744     std::_Tuple_impl<0ul, char&, char&, char&>::_Tuple_impl(char&, char&, char&) [26]
[32]     1.9    0.05    0.07 3316744         std::_Tuple_impl<1ul, char&, char&>::_Tuple_impl(char&, char&) [32]
                0.05    0.01 3212453/3212453     std::_Tuple_impl<2ul, char&>::_Tuple_impl(char&) [45]
                0.01    0.00 4182508/4182508     std::_Head_base<1ul, char&, false>::_Head_base(char&) [63]
-----------------------------------------------
                0.02    0.01 4353214/18774552     void std::_Tuple_impl<0ul, char&, char&, char&>::_M_assign<unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) <cycle 1> [20]
                0.05    0.03 14421338/18774552     unsigned char const& std::__get_helper<0ul, unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) [34]
[33]     1.7    0.07    0.04 18774552         std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) [33]
                0.04    0.00 15583198/15583198     std::_Head_base<0ul, unsigned char, false>::_M_head(std::_Head_base<0ul, unsigned char, false> const&) [51]
-----------------------------------------------
                0.03    0.08 13089533/13089533     std::tuple_element<0ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<0ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) [17]
[34]     1.7    0.03    0.08 13089533         unsigned char const& std::__get_helper<0ul, unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) [34]
                0.05    0.03 14421338/18774552     std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) [33]
-----------------------------------------------
                0.05    0.05 13731851/13731851     std::tuple_element<1ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<1ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) [27]
[35]     1.5    0.05    0.05 13731851         unsigned char const& std::__get_helper<1ul, unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) [35]
                0.02    0.03 13799416/17925025     std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) [41]
-----------------------------------------------
                0.04    0.05 37907534/37907534     std::tuple_element<2ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<2ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&) [29]
[36]     1.4    0.04    0.05 37907534         unsigned char& std::__get_helper<2ul, unsigned char>(std::_Tuple_impl<2ul, unsigned char>&) [36]
                0.05    0.00 37447764/37447764     std::_Tuple_impl<2ul, unsigned char>::_M_head(std::_Tuple_impl<2ul, unsigned char>&) [46]
-----------------------------------------------
                0.06    0.03 36863242/36863242     unsigned char& std::__get_helper<1ul, unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char>&) [31]
[37]     1.4    0.06    0.03 36863242         std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<1ul, unsigned char, unsigned char>&) [37]
                0.03    0.00 37191968/37191968     std::_Head_base<1ul, unsigned char, false>::_M_head(std::_Head_base<1ul, unsigned char, false>&) [52]
-----------------------------------------------
                             4006135             void set_pixel<std::tuple<unsigned char, unsigned char, unsigned char> >(unsigned long, std::tuple<unsigned char, unsigned char, unsigned char>) <cycle 1> [16]
[38]     1.3    0.09    0.00 4006135         std::enable_if<(__assignable<unsigned char const&, unsigned char const&, unsigned char const&>)(), std::tuple<char&, char&, char&>&>::type std::tuple<char&, char&, char&>::operator=<unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) <cycle 1> [38]
                             3714522             void std::_Tuple_impl<0ul, char&, char&, char&>::_M_assign<unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) <cycle 1> [20]
-----------------------------------------------
                             5112004             void std::_Tuple_impl<1ul, char&, char&>::_M_assign<unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) <cycle 1> [28]
[39]     1.3    0.04    0.04 5112004         void std::_Tuple_impl<2ul, char&>::_M_assign<unsigned char>(std::_Tuple_impl<2ul, unsigned char> const&) <cycle 1> [39]
                0.04    0.01 4165822/18137573     std::_Tuple_impl<2ul, unsigned char>::_M_head(std::_Tuple_impl<2ul, unsigned char> const&) [23]
                             4825232             std::_Tuple_impl<2ul, char&>::_M_head(std::_Tuple_impl<2ul, char&>&) <cycle 1> [44]
-----------------------------------------------
                0.08    0.00 12875581/12875581     std::tuple<unsigned char, unsigned char, unsigned char> stretch<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>, int, unsigned char) [12]
[40]     1.3    0.08    0.00 12875581         unsigned char to_char<int>(int) [40]
-----------------------------------------------
                0.00    0.01 4125609/17925025     void std::_Tuple_impl<1ul, char&, char&>::_M_assign<unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) <cycle 1> [28]
                0.02    0.03 13799416/17925025     unsigned char const& std::__get_helper<1ul, unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) [35]
[41]     0.9    0.02    0.04 17925025         std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) [41]
                0.04    0.00 17955369/17955369     std::_Head_base<1ul, unsigned char, false>::_M_head(std::_Head_base<1ul, unsigned char, false> const&) [50]
-----------------------------------------------
                0.03    0.03 4664032/4664032     void std::_Tuple_impl<1ul, char&, char&>::_M_assign<unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) <cycle 1> [28]
[42]     0.9    0.03    0.03 4664032         std::_Tuple_impl<1ul, char&, char&>::_M_head(std::_Tuple_impl<1ul, char&, char&>&) [42]
                0.03    0.00 4866287/4866287     std::_Head_base<1ul, char&, false>::_M_head(std::_Head_base<1ul, char&, false>&) [54]
-----------------------------------------------
                0.02    0.00 4047875/12069258     std::_Head_base<2ul, char&, false>::_M_head(std::_Head_base<2ul, char&, false>&) <cycle 1> [4]
                0.04    0.00 8021383/12069258     unsigned char get_min<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>) [14]
[43]     0.9    0.06    0.00 12069258         unsigned char const& std::min<unsigned char>(unsigned char const&, unsigned char const&) [43]
-----------------------------------------------
                             4825232             void std::_Tuple_impl<2ul, char&>::_M_assign<unsigned char>(std::_Tuple_impl<2ul, unsigned char> const&) <cycle 1> [39]
[44]     0.9    0.06    0.00 4825232         std::_Tuple_impl<2ul, char&>::_M_head(std::_Tuple_impl<2ul, char&>&) <cycle 1> [44]
                             4778964             std::_Head_base<2ul, char&, false>::_M_head(std::_Head_base<2ul, char&, false>&) <cycle 1> [4]
-----------------------------------------------
                0.05    0.01 3212453/3212453     std::_Tuple_impl<1ul, char&, char&>::_Tuple_impl(char&, char&) [32]
[45]     0.9    0.05    0.01 3212453         std::_Tuple_impl<2ul, char&>::_Tuple_impl(char&) [45]
                0.01    0.00 3591150/3591150     std::_Head_base<2ul, char&, false>::_Head_base(char&) [64]
-----------------------------------------------
                0.05    0.00 37447764/37447764     unsigned char& std::__get_helper<2ul, unsigned char>(std::_Tuple_impl<2ul, unsigned char>&) [36]
[46]     0.8    0.05    0.00 37447764         std::_Tuple_impl<2ul, unsigned char>::_M_head(std::_Tuple_impl<2ul, unsigned char>&) [46]
                0.00    0.00 37068677/37068677     std::_Head_base<2ul, unsigned char, false>::_M_head(std::_Head_base<2ul, unsigned char, false>&) [76]
-----------------------------------------------
                0.02    0.00 4099630/12368261     std::_Head_base<2ul, char&, false>::_M_head(std::_Head_base<2ul, char&, false>&) <cycle 1> [4]
                0.03    0.00 8268631/12368261     unsigned char get_max<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>) [10]
[47]     0.8    0.05    0.00 12368261         unsigned char const& std::max<unsigned char>(unsigned char const&, unsigned char const&) [47]
-----------------------------------------------
                0.00    0.04 37362752/37362752     std::tuple_element<0ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<0ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&) [30]
[48]     0.6    0.00    0.04 37362752         unsigned char& std::__get_helper<0ul, unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>&) [48]
                0.02    0.02 37048699/37048699     std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>&) [49]
-----------------------------------------------
                0.02    0.02 37048699/37048699     unsigned char& std::__get_helper<0ul, unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>&) [48]
[49]     0.6    0.02    0.02 37048699         std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>&) [49]
                0.02    0.00 37648264/37648264     std::_Head_base<0ul, unsigned char, false>::_M_head(std::_Head_base<0ul, unsigned char, false>&) [57]
-----------------------------------------------
                0.04    0.00 17955369/17955369     std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) [41]
[50]     0.6    0.04    0.00 17955369         std::_Head_base<1ul, unsigned char, false>::_M_head(std::_Head_base<1ul, unsigned char, false> const&) [50]
-----------------------------------------------
                0.04    0.00 15583198/15583198     std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) [33]
[51]     0.6    0.04    0.00 15583198         std::_Head_base<0ul, unsigned char, false>::_M_head(std::_Head_base<0ul, unsigned char, false> const&) [51]
-----------------------------------------------
                0.03    0.00 37191968/37191968     std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<1ul, unsigned char, unsigned char>&) [37]
[52]     0.5    0.03    0.00 37191968         std::_Head_base<1ul, unsigned char, false>::_M_head(std::_Head_base<1ul, unsigned char, false>&) [52]
-----------------------------------------------
                0.03    0.00 16058701/16058701     std::_Tuple_impl<2ul, unsigned char>::_M_head(std::_Tuple_impl<2ul, unsigned char> const&) [23]
[53]     0.5    0.03    0.00 16058701         std::_Head_base<2ul, unsigned char, false>::_M_head(std::_Head_base<2ul, unsigned char, false> const&) [53]
-----------------------------------------------
                0.03    0.00 4866287/4866287     std::_Tuple_impl<1ul, char&, char&>::_M_head(std::_Tuple_impl<1ul, char&, char&>&) [42]
[54]     0.5    0.03    0.00 4866287         std::_Head_base<1ul, char&, false>::_M_head(std::_Head_base<1ul, char&, false>&) [54]
-----------------------------------------------
                0.01    0.02 4760536/4760536     void std::_Tuple_impl<0ul, char&, char&, char&>::_M_assign<unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) <cycle 1> [20]
[55]     0.5    0.01    0.02 4760536         std::_Tuple_impl<0ul, char&, char&, char&>::_M_head(std::_Tuple_impl<0ul, char&, char&, char&>&) [55]
                0.02    0.00 4723994/4723994     std::_Head_base<0ul, char&, false>::_M_head(std::_Head_base<0ul, char&, false>&) [58]
-----------------------------------------------
                0.03    0.00 4401491/4401491     void std::_Tuple_impl<1ul, char&, char&>::_M_assign<unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) <cycle 1> [28]
[56]     0.5    0.03    0.00 4401491         std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_tail(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) [56]
-----------------------------------------------
                0.02    0.00 37648264/37648264     std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>&) [49]
[57]     0.3    0.02    0.00 37648264         std::_Head_base<0ul, unsigned char, false>::_M_head(std::_Head_base<0ul, unsigned char, false>&) [57]
-----------------------------------------------
                0.02    0.00 4723994/4723994     std::_Tuple_impl<0ul, char&, char&, char&>::_M_head(std::_Tuple_impl<0ul, char&, char&, char&>&) [55]
[58]     0.3    0.02    0.00 4723994         std::_Head_base<0ul, char&, false>::_M_head(std::_Head_base<0ul, char&, false>&) [58]
-----------------------------------------------
                0.02    0.00 3522572/3522572     void std::_Tuple_impl<1ul, char&, char&>::_M_assign<unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) <cycle 1> [28]
[59]     0.3    0.02    0.00 3522572         std::_Tuple_impl<1ul, char&, char&>::_M_tail(std::_Tuple_impl<1ul, char&, char&>&) [59]
-----------------------------------------------
                0.02    0.00 3512152/3512152     void std::_Tuple_impl<0ul, char&, char&, char&>::_M_assign<unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) <cycle 1> [20]
[60]     0.3    0.02    0.00 3512152         std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_tail(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) [60]
-----------------------------------------------
                0.02    0.00 3192582/3192582     void std::_Tuple_impl<0ul, char&, char&, char&>::_M_assign<unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) <cycle 1> [20]
[61]     0.3    0.02    0.00 3192582         std::_Tuple_impl<0ul, char&, char&, char&>::_M_tail(std::_Tuple_impl<0ul, char&, char&, char&>&) [61]
-----------------------------------------------
                                                 <spontaneous>
[62]     0.2    0.01    0.00                 frame_dummy [62]
-----------------------------------------------
                0.01    0.00 4182508/4182508     std::_Tuple_impl<1ul, char&, char&>::_Tuple_impl(char&, char&) [32]
[63]     0.2    0.01    0.00 4182508         std::_Head_base<1ul, char&, false>::_Head_base(char&) [63]
-----------------------------------------------
                0.01    0.00 3591150/3591150     std::_Tuple_impl<2ul, char&>::_Tuple_impl(char&) [45]
[64]     0.2    0.01    0.00 3591150         std::_Head_base<2ul, char&, false>::_Head_base(char&) [64]
-----------------------------------------------
                0.01    0.00 3406947/3406947     std::_Tuple_impl<0ul, char&, char&, char&>::_Tuple_impl(char&, char&, char&) [26]
[65]     0.2    0.01    0.00 3406947         std::_Head_base<0ul, char&, false>::_Head_base(char&) [65]
-----------------------------------------------
                0.01    0.00       1/1           main [5]
[66]     0.2    0.01    0.00       1         std::__cxx11::stof(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, unsigned long*) [66]
                0.00    0.00       1/1           float __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*) [92]
-----------------------------------------------
                                                 <spontaneous>
[67]     0.2    0.01    0.00                 unsigned char get_pixel<unsigned char>(unsigned long) [67]
-----------------------------------------------
                0.01    0.00       2/2           std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string<std::allocator<char> >(char const*, std::allocator<char> const&) [69]
[68]     0.1    0.01    0.00       2         void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*) [68]
                0.00    0.00       2/2           void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct_aux<char const*>(char const*, char const*, std::__false_type) [85]
-----------------------------------------------
                0.00    0.01       2/2           main [5]
[69]     0.1    0.00    0.01       2         std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string<std::allocator<char> >(char const*, std::allocator<char> const&) [69]
                0.01    0.00       2/2           void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*) [68]
                0.00    0.00       2/2           std::char_traits<char>::length(char const*) [83]
-----------------------------------------------
                                                 <spontaneous>
[70]     0.1    0.01    0.00                 std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::~_Alloc_hider() [70]
-----------------------------------------------
                0.00    0.00 37068677/37068677     std::_Tuple_impl<2ul, unsigned char>::_M_head(std::_Tuple_impl<2ul, unsigned char>&) [46]
[76]     0.0    0.00    0.00 37068677         std::_Head_base<2ul, unsigned char, false>::_M_head(std::_Head_base<2ul, unsigned char, false>&) [76]
-----------------------------------------------
                0.00    0.00       3/3           std::__cxx11::stoi(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, unsigned long*, int) [78]
[77]     0.0    0.00    0.00       3         int __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int) [77]
                0.00    0.00       3/3           __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int)::_Save_errno::_Save_errno() [80]
                0.00    0.00       3/3           __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int)::_Range_chk::_S_chk(long, std::integral_constant<bool, true>) [79]
                0.00    0.00       3/3           __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int)::_Save_errno::~_Save_errno() [81]
-----------------------------------------------
                0.00    0.00       3/3           main [5]
[78]     0.0    0.00    0.00       3         std::__cxx11::stoi(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, unsigned long*, int) [78]
                0.00    0.00       3/3           int __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int) [77]
-----------------------------------------------
                0.00    0.00       3/3           int __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int) [77]
[79]     0.0    0.00    0.00       3         __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int)::_Range_chk::_S_chk(long, std::integral_constant<bool, true>) [79]
-----------------------------------------------
                0.00    0.00       3/3           int __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int) [77]
[80]     0.0    0.00    0.00       3         __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int)::_Save_errno::_Save_errno() [80]
-----------------------------------------------
                0.00    0.00       3/3           int __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int) [77]
[81]     0.0    0.00    0.00       3         __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int)::_Save_errno::~_Save_errno() [81]
-----------------------------------------------
                0.00    0.00       2/2           void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag) [84]
[82]     0.0    0.00    0.00       2         bool __gnu_cxx::__is_null_pointer<char const>(char const*) [82]
-----------------------------------------------
                0.00    0.00       2/2           std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string<std::allocator<char> >(char const*, std::allocator<char> const&) [69]
[83]     0.0    0.00    0.00       2         std::char_traits<char>::length(char const*) [83]
-----------------------------------------------
                0.00    0.00       2/2           void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct_aux<char const*>(char const*, char const*, std::__false_type) [85]
[84]     0.0    0.00    0.00       2         void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag) [84]
                0.00    0.00       2/2           bool __gnu_cxx::__is_null_pointer<char const>(char const*) [82]
                0.00    0.00       2/2           std::iterator_traits<char const*>::difference_type std::distance<char const*>(char const*, char const*) [88]
-----------------------------------------------
                0.00    0.00       2/2           void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*) [68]
[85]     0.0    0.00    0.00       2         void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct_aux<char const*>(char const*, char const*, std::__false_type) [85]
                0.00    0.00       2/2           void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag) [84]
-----------------------------------------------
                0.00    0.00       2/2           std::iterator_traits<char const*>::difference_type std::distance<char const*>(char const*, char const*) [88]
[86]     0.0    0.00    0.00       2         std::iterator_traits<char const*>::difference_type std::__distance<char const*>(char const*, char const*, std::random_access_iterator_tag) [86]
-----------------------------------------------
                0.00    0.00       2/2           std::iterator_traits<char const*>::difference_type std::distance<char const*>(char const*, char const*) [88]
[87]     0.0    0.00    0.00       2         std::iterator_traits<char const*>::iterator_category std::__iterator_category<char const*>(char const* const&) [87]
-----------------------------------------------
                0.00    0.00       2/2           void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag) [84]
[88]     0.0    0.00    0.00       2         std::iterator_traits<char const*>::difference_type std::distance<char const*>(char const*, char const*) [88]
                0.00    0.00       2/2           std::iterator_traits<char const*>::iterator_category std::__iterator_category<char const*>(char const* const&) [87]
                0.00    0.00       2/2           std::iterator_traits<char const*>::difference_type std::__distance<char const*>(char const*, char const*, std::random_access_iterator_tag) [86]
-----------------------------------------------
                0.00    0.00       1/1           __libc_csu_init [107]
[89]     0.0    0.00    0.00       1         _GLOBAL__sub_I_TYPE [89]
                0.00    0.00       1/1           __static_initialization_and_destruction_0(int, int) [90]
-----------------------------------------------
                0.00    0.00       1/1           _GLOBAL__sub_I_TYPE [89]
[90]     0.0    0.00    0.00       1         __static_initialization_and_destruction_0(int, int) [90]
-----------------------------------------------
                0.00    0.00       1/1           main [5]
[91]     0.0    0.00    0.00       1         void do_all<std::tuple<unsigned char, unsigned char, unsigned char> >() [91]
-----------------------------------------------
                0.00    0.00       1/1           std::__cxx11::stof(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, unsigned long*) [66]
[92]     0.0    0.00    0.00       1         float __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*) [92]
                0.00    0.00       1/1           __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*)::_Save_errno::_Save_errno() [95]
                0.00    0.00       1/1           __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*)::_Range_chk::_S_chk(float, std::integral_constant<bool, false>) [94]
                0.00    0.00       1/1           __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*)::_Save_errno::~_Save_errno() [96]
-----------------------------------------------
                0.00    0.00       1/1           main [5]
[93]     0.0    0.00    0.00       1         std::fpos<__mbstate_t>::operator long() const [93]
-----------------------------------------------
                0.00    0.00       1/1           float __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*) [92]
[94]     0.0    0.00    0.00       1         __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*)::_Range_chk::_S_chk(float, std::integral_constant<bool, false>) [94]
-----------------------------------------------
                0.00    0.00       1/1           float __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*) [92]
[95]     0.0    0.00    0.00       1         __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*)::_Save_errno::_Save_errno() [95]
-----------------------------------------------
                0.00    0.00       1/1           float __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*) [92]
[96]     0.0    0.00    0.00       1         __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*)::_Save_errno::~_Save_errno() [96]
-----------------------------------------------

 This table describes the call tree of the program, and was sorted by
 the total amount of time spent in each function and its children.

 Each entry in this table consists of several lines.  The line with the
 index number at the left hand margin lists the current function.
 The lines above it list the functions that called this function,
 and the lines below it list the functions this one called.
 This line lists:
     index	A unique number given to each element of the table.
		Index numbers are sorted numerically.
		The index number is printed next to every function name so
		it is easier to look up where the function is in the table.

     % time	This is the percentage of the `total' time that was spent
		in this function and its children.  Note that due to
		different viewpoints, functions excluded by options, etc,
		these numbers will NOT add up to 100%.

     self	This is the total amount of time spent in this function.

     children	This is the total amount of time propagated into this
		function by its children.

     called	This is the number of times the function was called.
		If the function called itself recursively, the number
		only includes non-recursive calls, and is followed by
		a `+' and the number of recursive calls.

     name	The name of the current function.  The index number is
		printed after it.  If the function is a member of a
		cycle, the cycle number is printed between the
		function's name and the index number.


 For the function's parents, the fields have the following meanings:

     self	This is the amount of time that was propagated directly
		from the function into this parent.

     children	This is the amount of time that was propagated from
		the function's children into this parent.

     called	This is the number of times this parent called the
		function `/' the total number of times the function
		was called.  Recursive calls to the function are not
		included in the number after the `/'.

     name	This is the name of the parent.  The parent's index
		number is printed after it.  If the parent is a
		member of a cycle, the cycle number is printed between
		the name and the index number.

 If the parents of the function cannot be determined, the word
 `<spontaneous>' is printed in the `name' field, and all the other
 fields are blank.

 For the function's children, the fields have the following meanings:

     self	This is the amount of time that was propagated directly
		from the child into the function.

     children	This is the amount of time that was propagated from the
		child's children to the function.

     called	This is the number of times the function called
		this child `/' the total number of times the child
		was called.  Recursive calls by the child are not
		listed in the number after the `/'.

     name	This is the name of the child.  The child's index
		number is printed after it.  If the child is a
		member of a cycle, the cycle number is printed
		between the name and the index number.

 If there are any cycles (circles) in the call graph, there is an
 entry for the cycle-as-a-whole.  This entry shows who called the
 cycle (as parents) and the members of the cycle (as children.)
 The `+' recursive calls entry shows the number of function calls that
 were internal to the cycle, and the calls entry for each member shows,
 for that member, how many times it was called from other members of
 the cycle.

Copyright (C) 2012-2021 Free Software Foundation, Inc.

Copying and distribution of this file, with or without modification,
are permitted in any medium without royalty provided the copyright
notice and this notice are preserved.

Index by function name

  [89] _GLOBAL__sub_I_TYPE    [20] void std::_Tuple_impl<0ul, char&, char&, char&>::_M_assign<unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) [86] std::iterator_traits<char const*>::difference_type std::__distance<char const*>(char const*, char const*, std::random_access_iterator_tag)
  [90] __static_initialization_and_destruction_0(int, int) [26] std::_Tuple_impl<0ul, char&, char&, char&>::_Tuple_impl(char&, char&, char&) [3] std::tuple<std::__decay_and_strip<std::decay<unsigned char>::type>::__type, std::__decay_and_strip<std::decay<unsigned char>::type>::__type, std::__decay_and_strip<std::decay<unsigned char>::type>::__type> std::make_tuple<unsigned char, unsigned char, unsigned char>(unsigned char&&, unsigned char&&, unsigned char&&)
  [91] void do_all<std::tuple<unsigned char, unsigned char, unsigned char> >() [33] std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) [34] unsigned char const& std::__get_helper<0ul, unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&)
  [10] unsigned char get_max<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>) [49] std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>&) [48] unsigned char& std::__get_helper<0ul, unsigned char, unsigned char, unsigned char>(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>&)
  [14] unsigned char get_min<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>) [60] std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_M_tail(std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char> const&) [35] unsigned char const& std::__get_helper<1ul, unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&)
  [12] std::tuple<unsigned char, unsigned char, unsigned char> stretch<std::tuple<unsigned char, unsigned char, unsigned char> >(std::tuple<unsigned char, unsigned char, unsigned char>, int, unsigned char) [7] std::_Tuple_impl<0ul, unsigned char, unsigned char, unsigned char>::_Tuple_impl<unsigned char, unsigned char, unsigned char, void>(unsigned char&&, unsigned char&&, unsigned char&&) [31] unsigned char& std::__get_helper<1ul, unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char>&)
  [40] unsigned char to_char<int>(int) [42] std::_Tuple_impl<1ul, char&, char&>::_M_head(std::_Tuple_impl<1ul, char&, char&>&) [15] unsigned char const& std::__get_helper<2ul, unsigned char>(std::_Tuple_impl<2ul, unsigned char> const&)
   [1] std::tuple<unsigned char, unsigned char, unsigned char> get_pixel<std::tuple<unsigned char, unsigned char, unsigned char> >(unsigned long) [59] std::_Tuple_impl<1ul, char&, char&>::_M_tail(std::_Tuple_impl<1ul, char&, char&>&) [36] unsigned char& std::__get_helper<2ul, unsigned char>(std::_Tuple_impl<2ul, unsigned char>&)
  [67] unsigned char get_pixel<unsigned char>(unsigned long) [28] void std::_Tuple_impl<1ul, char&, char&>::_M_assign<unsigned char, unsigned char>(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) [87] std::iterator_traits<char const*>::iterator_category std::__iterator_category<char const*>(char const* const&)
  [16] void set_pixel<std::tuple<unsigned char, unsigned char, unsigned char> >(unsigned long, std::tuple<unsigned char, unsigned char, unsigned char>) [32] std::_Tuple_impl<1ul, char&, char&>::_Tuple_impl(char&, char&) [17] std::tuple_element<0ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<0ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&)
  [82] bool __gnu_cxx::__is_null_pointer<char const>(char const*) [41] std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) [30] std::tuple_element<0ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<0ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&)
  [92] float __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*) [37] std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_head(std::_Tuple_impl<1ul, unsigned char, unsigned char>&) [27] std::tuple_element<1ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<1ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&)
  [77] int __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int) [56] std::_Tuple_impl<1ul, unsigned char, unsigned char>::_M_tail(std::_Tuple_impl<1ul, unsigned char, unsigned char> const&) [25] std::tuple_element<1ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<1ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&)
  [93] std::fpos<__mbstate_t>::operator long() const [9] std::_Tuple_impl<1ul, unsigned char, unsigned char>::_Tuple_impl<unsigned char, unsigned char, void>(unsigned char&&, unsigned char&&) [11] std::tuple_element<2ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type const& std::get<2ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&)
  [58] std::_Head_base<0ul, char&, false>::_M_head(std::_Head_base<0ul, char&, false>&) [44] std::_Tuple_impl<2ul, char&>::_M_head(std::_Tuple_impl<2ul, char&>&) [29] std::tuple_element<2ul, std::tuple<unsigned char, unsigned char, unsigned char> >::type& std::get<2ul, unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char>&)
  [65] std::_Head_base<0ul, char&, false>::_Head_base(char&) [39] void std::_Tuple_impl<2ul, char&>::_M_assign<unsigned char>(std::_Tuple_impl<2ul, unsigned char> const&) [47] unsigned char const& std::max<unsigned char>(unsigned char const&, unsigned char const&)
  [51] std::_Head_base<0ul, unsigned char, false>::_M_head(std::_Head_base<0ul, unsigned char, false> const&) [45] std::_Tuple_impl<2ul, char&>::_Tuple_impl(char&) [43] unsigned char const& std::min<unsigned char>(unsigned char const&, unsigned char const&)
  [57] std::_Head_base<0ul, unsigned char, false>::_M_head(std::_Head_base<0ul, unsigned char, false>&) [23] std::_Tuple_impl<2ul, unsigned char>::_M_head(std::_Tuple_impl<2ul, unsigned char> const&) [18] std::tuple<char&, char&, char&> std::tie<char, char, char>(char&, char&, char&)
  [21] std::_Head_base<0ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&) [46] std::_Tuple_impl<2ul, unsigned char>::_M_head(std::_Tuple_impl<2ul, unsigned char>&) [8] unsigned char&& std::forward<unsigned char>(std::remove_reference<unsigned char>::type&)
  [54] std::_Head_base<1ul, char&, false>::_M_head(std::_Head_base<1ul, char&, false>&) [13] std::_Tuple_impl<2ul, unsigned char>::_Tuple_impl<unsigned char>(unsigned char&&) [88] std::iterator_traits<char const*>::difference_type std::distance<char const*>(char const*, char const*)
  [63] std::_Head_base<1ul, char&, false>::_Head_base(char&) [83] std::char_traits<char>::length(char const*) [94] __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*)::_Range_chk::_S_chk(float, std::integral_constant<bool, false>)
  [50] std::_Head_base<1ul, unsigned char, false>::_M_head(std::_Head_base<1ul, unsigned char, false> const&) [24] std::tuple<char&, char&, char&>::tuple<true, true>(char&, char&, char&) [95] __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*)::_Save_errno::_Save_errno()
  [52] std::_Head_base<1ul, unsigned char, false>::_M_head(std::_Head_base<1ul, unsigned char, false>&) [38] std::enable_if<(__assignable<unsigned char const&, unsigned char const&, unsigned char const&>)(), std::tuple<char&, char&, char&>&>::type std::tuple<char&, char&, char&>::operator=<unsigned char, unsigned char, unsigned char>(std::tuple<unsigned char, unsigned char, unsigned char> const&) [96] __gnu_cxx::__stoa<float, float, char>(float (*)(char const*, char**), char const*, char const*, unsigned long*)::_Save_errno::~_Save_errno()
  [19] std::_Head_base<1ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&) [6] std::tuple<unsigned char, unsigned char, unsigned char>::tuple<unsigned char, unsigned char, unsigned char, true, true>(unsigned char&&, unsigned char&&, unsigned char&&) [79] __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int)::_Range_chk::_S_chk(long, std::integral_constant<bool, true>)
   [4] std::_Head_base<2ul, char&, false>::_M_head(std::_Head_base<2ul, char&, false>&) [70] std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::~_Alloc_hider() [80] __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int)::_Save_errno::_Save_errno()
  [64] std::_Head_base<2ul, char&, false>::_Head_base(char&) [68] void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*) [81] __gnu_cxx::__stoa<long, int, char, int>(long (*)(char const*, char**, int), char const*, char const*, unsigned long*, int)::_Save_errno::~_Save_errno()
  [53] std::_Head_base<2ul, unsigned char, false>::_M_head(std::_Head_base<2ul, unsigned char, false> const&) [84] void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag) [62] frame_dummy
  [76] std::_Head_base<2ul, unsigned char, false>::_M_head(std::_Head_base<2ul, unsigned char, false>&) [85] void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct_aux<char const*>(char const*, char const*, std::__false_type) [5] main
  [22] std::_Head_base<2ul, unsigned char, false>::_Head_base<unsigned char>(unsigned char&&) [69] std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string<std::allocator<char> >(char const*, std::allocator<char> const&) (2) <cycle 1>
  [55] std::_Tuple_impl<0ul, char&, char&, char&>::_M_head(std::_Tuple_impl<0ul, char&, char&, char&>&) [66] std::__cxx11::stof(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, unsigned long*)
  [61] std::_Tuple_impl<0ul, char&, char&, char&>::_M_tail(std::_Tuple_impl<0ul, char&, char&, char&>&) [78] std::__cxx11::stoi(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, unsigned long*, int)
