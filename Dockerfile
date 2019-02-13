# 构建阶段
FROM node
# 指定工作目录
WORKDIR /
# 指定工作端口
EXPOSE 4000
# 安装gitbook
RUN npm install gitbook -g;
RUN npm install gitbook-cli -g;
# 拉取文件
RUN git clone https://github.com/mySoul8012/SE-Basic-knowledge.git
# 进入目录
WORKDIR /SE-Basic-knowledge
# 初始化镜像
RUN gitbook init
CMD ["gitbook", "serve"]