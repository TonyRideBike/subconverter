# 使用官方的轻量级 Node.js 镜像作为基础镜像
FROM node:alpine

# 设置工作目录
WORKDIR /app

# 拷贝项目文件到容器内
COPY . .

# 安装项目依赖
RUN npm install

# 暴露容器需要的端口
EXPOSE 25500

# 设置容器启动时运行的命令
CMD ["node", "subconverter.js"]

