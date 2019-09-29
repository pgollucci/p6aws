######################################################################
#<
#
# Function:
#      = p6_aws_personalize_dataset_import_jobs_list()
#
#
#
#>
######################################################################
p6_aws_personalize_dataset_import_jobs_list() {

    p6_run_read_cmd aws personalize list-dataset-import-jobs "$@"
}