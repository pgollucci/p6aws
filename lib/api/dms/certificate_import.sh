######################################################################
#<
#
# Function:
#	p6_aws_dms_certificate_import(certificate_identifier)
#
#  Args:
#	certificate_identifier - 
#
#>
######################################################################
p6_aws_dms_certificate_import() {
    local certificate_identifier="$1"
    shift 1

    p6_run_write_cmd aws dms import-certificate --certificate-identifier $certificate_identifier "$@"
}