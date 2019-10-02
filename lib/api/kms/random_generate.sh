######################################################################
#<
#
# Function:
#	p6_aws_kms_random_generate()
#
#>
######################################################################
p6_aws_kms_random_generate() {

    p6_run_write_cmd aws kms generate-random "$@"
}