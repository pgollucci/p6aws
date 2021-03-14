######################################################################
#<
#
# Function: words kinds = p6_aws_cfg_kinds()
#
#  Returns:
#	words - kinds
#
#>
######################################################################
p6_aws_cfg_kinds() {

    local kinds="_active _source _saved"

    p6_return_words "$kinds"
}

######################################################################
#<
#
# Function: p6_aws_cfg_save()
#
#>
######################################################################
p6_aws_cfg_save() {

    p6_aws_cfg__copy "active" "saved"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg_save_source()
#
#>
######################################################################
p6_aws_cfg_save_source() {

    p6_aws_cfg__copy "active" "source"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg_restore_saved()
#
#>
######################################################################
p6_aws_cfg_restore_saved() {

    p6_aws_cfg_restore__from "saved"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_cfg_restore_source()
#
#>
######################################################################
p6_aws_cfg_restore_source() {

    p6_aws_cfg_restore__from "source"

    p6_return_void
}
