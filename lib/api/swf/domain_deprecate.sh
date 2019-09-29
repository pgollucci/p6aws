######################################################################
#<
#
# Function:
#      = p6_aws_swf_domain_deprecate(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_swf_domain_deprecate() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws swf deprecate-domain --name $name "$@"
}