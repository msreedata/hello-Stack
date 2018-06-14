---
- name: Setup Docker
  hosts: cent
  gather_facts: yes
  become: yes
  become_method: sudo

- name: Transfer and execute a script.
  hosts: cent
  tasks:

     - name: Copy and Execute the script 
       script: ./configDocker.sh