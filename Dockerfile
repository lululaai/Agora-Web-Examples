 # 使用 Node.js 18 作为基础镜像
FROM node:18

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 yarn.lock
COPY package.json yarn.lock ./

# 安装依赖
RUN yarn install

# 复制源代码
COPY . .

# 暴露端口（默认为 3000）
EXPOSE 3001

# 启动应用
CMD ["yarn", "dev"]