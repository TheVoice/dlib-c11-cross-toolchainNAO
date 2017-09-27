# dlib-c11-cross-toolchainNAO

qiBuild framework can be downloaded from : https://github.com/aldebaran/qibuild

In order to use the toolchain for code compilation first it needs to be create in the worktree

    qitoolchain create <toolchain_name> ctc-with-c11/toolchain.xml

Then the configuration for the project

    qibuild add-config <config_name> -t <toolchain_name>

Afterwards the project can be built using these commands

    qibuild configure -c <config_name>
    qibuild make -c <config_name>



