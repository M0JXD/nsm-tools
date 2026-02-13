add_rules("mode.debug", "mode.release")
add_requires('fltk', 'fltk_images', {system = true})
add_requires('ntk', 'ntk_images', {system = true, optional = true})

target('jacker')
	set_kind('binary')
	add_files('jacker/jacker.c')
	add_syslinks('lo', 'jack')
	add_options('NativeOptimizations')

target('jsm-proxy')
    set_kind('binary')
    add_files('jsm-proxy/jsm-proxy.cpp')
    add_files('nonlib/*.C')
	add_includedirs('nonlib')
	add_syslinks('lo')
	add_options('NativeOptimizations')

-- TODO: This
target('jsm-proxy-gui')
    set_kind('binary')
    add_files('jsm-proxy/jsm-proxy.cpp')
	add_options('NativeOptimizations', 'NtkBuild')
	if has_config("NtkBuild") then
		add_packages('ntk', 'ntk_images')
	else
		add_packages('fltk', 'fltk_images')
	end

-- SSE2 Optimisation Switch. TODO: Does xmake disable sse2 by default?
option('NativeOptimizations')
    set_default(true)
    set_showmenu(true)
    add_vectorexts('sse2')

option('NtkBuild')
	set_default(false)
	set_showmenu(true)

-- TODO: Fluid rules
