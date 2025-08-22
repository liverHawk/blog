docker:
    docker compose up -d

create-md filename:
    docker compose exec hugo hugo new content/posts/{{filename}}.md

create-rst filename:
    docker compose exec hugo hugo new content/posts/{{filename}}.rst

_create-dir dir_name:
    docker compose exec mkdir content/posts/{{dir_name}}

create-adoc filename:
    docker compose exec hugo hugo new content/posts/{{filename}}.adoc

create-dir-md dir_name:
    _create-dir {{dir_name}}
    create-md {{dir_name}}/index

create-dir-rst dir_name:
    _create-dir {{dir_name}}
    create-rst {{dir_name}}/index

create-dir-adoc dir_name:
    _create-dir {{dir_name}}
    create-adoc {{dir_name}}/index
