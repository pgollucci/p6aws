######################################################################
#<
#
# Function:
#      = p6_aws_glue_ml_transforms_get()
#
#
#
#>
######################################################################
p6_aws_glue_ml_transforms_get() {

    p6_run_read_cmd aws glue get-ml-transforms "$@"
}