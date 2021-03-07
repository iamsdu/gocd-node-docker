FROM gocd/gocd-agent-ubuntu-18.04:v21.1.0

USER go
RUN curl o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
RUN /bin/bash -c "source $HOME/.nvm/nvm.sh && nvm install 14"
RUN /bin/bash -c "source $HOME/.nvm/nvm.sh && npm install pm2 -g" 
RUN echo "[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh" >> $HOME/.bashrc
ENV PATH $HOME/.nvm/bin:$PATH