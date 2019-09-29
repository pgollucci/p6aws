######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_typed_link_detach(directory_arn, typed_link_specifier)
#
# Arg(s):
#    directory_arn - 
#    typed_link_specifier - 
#
#
#>
######################################################################
p6_aws_clouddirectory_typed_link_detach() {
    local directory_arn="$1"
    local typed_link_specifier="$2"
    shift 2

    p6_run_write_cmd aws clouddirectory detach-typed-link --directory-arn $directory_arn --typed-link-specifier $typed_link_specifier "$@"
}