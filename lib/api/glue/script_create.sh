######################################################################
#<
#
# Function:
#      = p6_aws_glue_script_create()
#
#
#
#>
######################################################################
p6_aws_glue_script_create() {

    p6_run_write_cmd aws glue create-script "$@"
}