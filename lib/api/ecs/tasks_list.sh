p6_aws_ecs_tasks_list() {

    p6_run_read_cmd aws ecs list-tasks "$@"
}
