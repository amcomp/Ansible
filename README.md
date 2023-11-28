# Need to add to work
    - Add a host file with target hosts and groups
    - use ansible-vault create secrets.yml to create encrypted variables

# How this works at the moment
    - two .yml files at root are pointed at /tasks to perform related playbooks in the folder
    - refer to each task for its function
    - /group/all/vars.yml holds variables for task usage