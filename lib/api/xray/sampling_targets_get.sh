######################################################################
#<
#
# Function:
#	p6_aws_xray_sampling_targets_get(sampling_statistics_documents)
#
#  Args:
#	sampling_statistics_documents - 
#
#>
######################################################################
p6_aws_xray_sampling_targets_get() {
    local sampling_statistics_documents="$1"
    shift 1

    p6_run_read_cmd aws xray get-sampling-targets --sampling-statistics-documents $sampling_statistics_documents "$@"
}