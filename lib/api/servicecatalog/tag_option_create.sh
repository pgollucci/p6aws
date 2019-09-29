######################################################################
#<
#
# Function:
#      = p6_aws_servicecatalog_tag_option_create(key, value)
#
# Arg(s):
#    key - 
#    value - 
#
#
#>
######################################################################
p6_aws_servicecatalog_tag_option_create() {
    local key="$1"
    local value="$2"
    shift 2

    p6_run_write_cmd aws servicecatalog create-tag-option --key $key --value $value "$@"
}