add_rules("mode.debug", "mode.release")
--add_requires('ntk_images', {system = true})
--add_requires('ntk', {system = true})

target('jacker')
	set_kind('binary')
	add_files('jacker/jacker.c')
	add_syslinks('lo', 'jack')
	add_options('NativeOptimizations')

target('jsm-proxy')
    set_kind('binary')
    add_files('src/jsm_proxy.cpp')
    add_files('nonlib/*.C', 'nonlib/OSC/*.C')
	add_includedirs('nonlib', 'nonlib/OSC')
    add_syslinks('pthread', 'lo')
    add_options('NativeOptimizations')
    add_defines('VERSION=\'2\'')
    add_defines('SYSTEM_PATH=\'/usr/local/share/jsm\'')
    add_defines('DOCUMENT_PATH=\'/usr/local/share/doc\'')
    add_defines('PIXMAP_PATH=\'/usr/local/share/pixmaps\'')

-- SSE2 Optimisation Switch. TODO: Does xmake disable sse2 by default?
option('NativeOptimizations')
    set_default(true)
    set_showmenu(true)
    add_vectorexts('sse2')


