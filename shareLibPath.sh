#!/bin/sh
echo "start replace the share libary excutable_path..."

srcpath="/Users/eims/work/wxWidgets-3.0.4/build_mac_release/lib"
suffix="3.0.0.4.0.dylib"
prebase="libwx_baseu"
prefix="libwx_osx_cocoau"
cmd="install_name_tool"

# the base lib process
${cmd} -id @executable_path/../Frameworks/${prebase}-${suffix} ${prebase}-${suffix}

# the base_net lib process
${cmd} -id @executable_path/../Frameworks/${prebase}_net-${suffix} ${prebase}_net-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prebase}_net-${suffix}

# the base_xml lib process
${cmd} -id @executable_path/../Frameworks/${prebase}_xml-${suffix} ${prebase}_xml-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prebase}_xml-${suffix}

# the adv lib process
${cmd} -id @executable_path/../Frameworks/${prefix}_adv-${suffix} ${prefix}_adv-${suffix}

${cmd} -change ${srcpath}/${prefix}_core-${suffix} @executable_path/../Frameworks/${prefix}_core-${suffix} ${prefix}_adv-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prefix}_adv-${suffix}

# the aui lib process
${cmd} -id @executable_path/../Frameworks/${prefix}_aui-${suffix} ${prefix}_aui-${suffix}

${cmd} -change ${srcpath}/${prefix}_adv-${suffix} @executable_path/../Frameworks/${prefix}_adv-${suffix} ${prefix}_aui-${suffix}

${cmd} -change ${srcpath}/${prefix}_core-${suffix} @executable_path/../Frameworks/${prefix}_core-${suffix} ${prefix}_aui-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prefix}_aui-${suffix}

# the core lib process
${cmd} -id @executable_path/../Frameworks/${prefix}_core-${suffix} ${prefix}_core-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prefix}_core-${suffix}

# the gl lib process
${cmd} -id @executable_path/../Frameworks/${prefix}_gl-${suffix} ${prefix}_gl-${suffix}

${cmd} -change ${srcpath}/${prefix}_core-${suffix} @executable_path/../Frameworks/${prefix}_core-${suffix} ${prefix}_gl-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prefix}_gl-${suffix}

# the html lib process
${cmd} -id @executable_path/../Frameworks/${prefix}_html-${suffix} ${prefix}_html-${suffix}

${cmd} -change ${srcpath}/${prefix}_core-${suffix} @executable_path/../Frameworks/${prefix}_core-${suffix} ${prefix}_html-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prefix}_html-${suffix}

# the media lib process
${cmd} -id @executable_path/../Frameworks/${prefix}_media-${suffix} ${prefix}_media-${suffix}

${cmd} -change ${srcpath}/${prefix}_core-${suffix} @executable_path/../Frameworks/${prefix}_core-${suffix} ${prefix}_media-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prefix}_media-${suffix}

# the propgrid lib process
${cmd} -id @executable_path/../Frameworks/${prefix}_propgrid-${suffix} ${prefix}_propgrid-${suffix}

${cmd} -change ${srcpath}/${prefix}_adv-${suffix} @executable_path/../Frameworks/${prefix}_adv-${suffix} ${prefix}_propgrid-${suffix}

${cmd} -change ${srcpath}/${prefix}_core-${suffix} @executable_path/../Frameworks/${prefix}_core-${suffix} ${prefix}_propgrid-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prefix}_propgrid-${suffix}

# the qa lib process
${cmd} -id @executable_path/../Frameworks/${prefix}_qa-${suffix} ${prefix}_qa-${suffix}

${cmd} -change ${srcpath}/${prebase}_xml-${suffix} @executable_path/../Frameworks/${prebase}_xml-${suffix} ${prefix}_qa-${suffix}

${cmd} -change ${srcpath}/${prefix}_core-${suffix} @executable_path/../Frameworks/${prefix}_core-${suffix} ${prefix}_qa-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prefix}_qa-${suffix}

# the ribbon lib process
${cmd} -id @executable_path/../Frameworks/${prefix}_ribbon-${suffix} ${prefix}_ribbon-${suffix}

${cmd} -change ${srcpath}/${prefix}_adv-${suffix} @executable_path/../Frameworks/${prefix}_adv-${suffix} ${prefix}_ribbon-${suffix}

${cmd} -change ${srcpath}/${prefix}_core-${suffix} @executable_path/../Frameworks/${prefix}_core-${suffix} ${prefix}_ribbon-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prefix}_ribbon-${suffix}

# the richtext lib process
${cmd} -id @executable_path/../Frameworks/${prefix}_richtext-${suffix} ${prefix}_richtext-${suffix}

${cmd} -change ${srcpath}/${prefix}_adv-${suffix} @executable_path/../Frameworks/${prefix}_adv-${suffix} ${prefix}_richtext-${suffix}

${cmd} -change ${srcpath}/${prefix}_html-${suffix} @executable_path/../Frameworks/${prefix}_html-${suffix} ${prefix}_richtext-${suffix}

${cmd} -change ${srcpath}/${prebase}_xml-${suffix} @executable_path/../Frameworks/${prebase}_xml-${suffix} ${prefix}_richtext-${suffix}

${cmd} -change ${srcpath}/${prefix}_core-${suffix} @executable_path/../Frameworks/${prefix}_core-${suffix} ${prefix}_richtext-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prefix}_richtext-${suffix}

# the stc lib process
${cmd} -id @executable_path/../Frameworks/${prefix}_stc-${suffix} ${prefix}_stc-${suffix}

${cmd} -change ${srcpath}/${prefix}_core-${suffix} @executable_path/../Frameworks/${prefix}_core-${suffix} ${prefix}_stc-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prefix}_stc-${suffix}

# the webview lib process
${cmd} -id @executable_path/../Frameworks/${prefix}_webview-${suffix} ${prefix}_webview-${suffix}

${cmd} -change ${srcpath}/${prefix}_core-${suffix} @executable_path/../Frameworks/${prefix}_core-${suffix} ${prefix}_webview-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prefix}_webview-${suffix}

# the xrc lib process
${cmd} -id @executable_path/../Frameworks/${prefix}_xrc-${suffix} ${prefix}_xrc-${suffix}

${cmd} -change ${srcpath}/${prefix}_html-${suffix} @executable_path/../Frameworks/${prefix}_html-${suffix} ${prefix}_xrc-${suffix}

${cmd} -change ${srcpath}/${prefix}_adv-${suffix} @executable_path/../Frameworks/${prefix}_adv-${suffix} ${prefix}_xrc-${suffix}

${cmd} -change ${srcpath}/${prebase}_xml-${suffix} @executable_path/../Frameworks/${prebase}_xml-${suffix} ${prefix}_xrc-${suffix}

${cmd} -change ${srcpath}/${prefix}_core-${suffix} @executable_path/../Frameworks/${prefix}_core-${suffix} ${prefix}_xrc-${suffix}

${cmd} -change ${srcpath}/${prebase}-${suffix} @executable_path/../Frameworks/${prebase}-${suffix} ${prefix}_xrc-${suffix}

echo "replace end..."
