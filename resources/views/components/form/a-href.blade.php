
<a {{ $attributes->merge(['class' => '
text-center
grow-0

m-2
                                    px-10
                                    py-2
                                    bg-red-800
                                    border
                                    border-transparent
                                    rounded-md
                                    font-semibold
                                    text-xs
                                    text-white
                                    uppercase
                                    tracking-widest
                                    hover:bg-red-300
                                    hover:text-black
                                    active:bg-gray-900
                                    focus:outline-none
                                    focus:border-gray-900
                                    focus:ring
                                    ring-gray-300
                                    disabled:opacity-25
                                    transition ease-in-out duration-150 ']) }}>
{{ $slot }}
</a>