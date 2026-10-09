# Mission Reflection

Writing a `docker-compose.yml` file makes a cloud engineer's job easier because the whole system is described in one place instead of in several long `docker run` commands. One file defined both the Nextcloud and MariaDB containers, and a single `docker-compose up -d` started them together on a shared network. The file can be reused, reviewed, and stored in Git, so the deployment is repeatable and doesn't depend on remembering flags.

YAML uses indentation to show structure, so small mistakes matter. If a Tab is used instead of Spaces, or a line is misaligned, Compose either fails with a parsing error or places a setting under the wrong key. That is why I checked the indentation in nano before saving.

Environment variables let us configure containers at startup without changing the images. The `MYSQL_*` variables created the database, user, and password in MariaDB and gave Nextcloud the same details so it could connect. Nextcloud's setup page even showed an "Autoconfig file detected" message, which confirmed it had picked them up. The passwords are written in plain text here, which would not be safe in a real project.

Deploying a working private cloud storage system in a few minutes felt impressive. I wrote about twenty lines of YAML and ended up with a platform a university could actually use. Seeing the setup page load in my browser made Infrastructure as Code feel real.

Since Mission 1, I have gone from seeing cloud computing as renting someone else's servers to seeing it as building, connecting, and automating services. Comparing platforms, running single containers, and now deploying a multi-container stack showed me how each skill builds on the last.
