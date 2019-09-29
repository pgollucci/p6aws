######################################################################
#<
#
# Function:
#      = p6_aws_alexaforbusiness_contact_create(first_name)
#
# Arg(s):
#    first_name - 
#
#
#>
######################################################################
p6_aws_alexaforbusiness_contact_create() {
    local first_name="$1"
    shift 1

    p6_run_write_cmd aws alexaforbusiness create-contact --first-name $first_name "$@"
}