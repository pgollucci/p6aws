######################################################################
#<
#
# Function:
#      = p6_aws_clouddirectory_schema_create(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_clouddirectory_schema_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws clouddirectory create-schema --name $name "$@"
}