######################################################################
#<
#
# Function:
#	p6_aws_lakeformation_data_lake_settings_get()
#
#>
######################################################################
p6_aws_lakeformation_data_lake_settings_get() {

    p6_run_read_cmd aws lakeformation get-data-lake-settings "$@"
}