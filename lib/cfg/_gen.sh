######################################################################
#<
#
# Function: p6_aws_cfg__generate()
#
#>
######################################################################
p6_aws_cfg__generate() {

    local var
    for var in $(p6_aws_cfg_vars | sort); do
        local var_lc=$(p6_string_lc "$var")
        local fname=$(p6_string_replace "$var_lc" "aws_" "")

        p6_aws_cfg__generate_kinds "$fname" "$var"
    done

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg__generate_kinds(fname, var)
#
#  Args:
#	fname -
#	var -
#
#>
######################################################################
p6_aws_cfg__generate_kinds() {
    local fname="$1"
    local var="$2"

    local kind
    for kind in $(p6_aws_cfg_kinds | sort); do
        local func=$(p6_aws_cfg__accessor "$kind" "$fname" "$var")
        local fkind=$(p6_echo "$kind" | sed -e 's,^_,,')
        p6_msg "$func" >>"lib/env/${fkind}.sh"
    done

    p6_return_void
}

######################################################################
#<
#
# Function: str code = p6_aws_cfg__accessor(kind, fname, ovar)
#
#  Args:
#	kind -
#	fname -
#	ovar -
#
#  Returns:
#	str - code
#
#>
######################################################################
p6_aws_cfg__accessor() {
    local kind="$1"
    local fname="$2"
    local ovar="$3"

    local func="${fname}${kind}"

    if p6_string_eq "$kind" "_active"; then
        kind=
    fi

    local var="${ovar}${kind}"

    local code=$(
        p6_aws_template_process \
            "cfg/accessor.tmpl" \
            "FUNC=$func" \
            "VAR=$var"
    )

    p6_return_str "$code"
}
