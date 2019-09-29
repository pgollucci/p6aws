######################################################################
#<
#
# Function:
#      = p6_aws_glue_classifier_update()
#
#
#
#>
######################################################################
p6_aws_glue_classifier_update() {

    p6_run_write_cmd aws glue update-classifier "$@"
}