# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/local/bin
# User specific environment and startup programs
multicopy(){
    if [ "${1}" == ""  ]; then
        echo "You MUST input parameters, ex> {${0} ~/filelist}"
    else
        TIME=$(date +%Y%m%d_%H%M)
        FILENAME="${HOME}/release/modifyfile_${TIME}.zip"
        rm -f ~/modifyfile/*
        for i in `cat ${1}`
        do
            cp -p `pwd`/${i} ~/modifyfile/
        done  
        #zip -r $FILENAME ~/modifyfile/*
        cat ~/filelist |xargs -i zip -r ${FILENAME} {}
    fi
}


svnmultici(){
    if [ "${1}" == "" ] || [ "${2}" == "" ]; then
        echo "You MUST input parameters, ex> {${0} ~/filelist 'code comment'}"
    else
        FILE_LIST=`cat ${1} |awk '{print $2}' | tr '\n' ' '`
        TMP_CMD="svn ci ${FILE_LIST} -m '${2}'"
        echo ${TMP_CMD}
    fi
}

zipfile(){
    cat $1 | zip ~/modifyfile_path.zip -@
}
export PATH
