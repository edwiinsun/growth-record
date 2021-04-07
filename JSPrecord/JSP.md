### 1. JSP动态网页

静态动态网页:

1. 不要跟是否有"动感"混为一谈
2. 是否 随着 时间 地点 用户操作的改变而改变
3. 动态网页需要使用到    服务端脚本语言(JSP)

### 2. 架构     BS CS 各有优势

#### CS 架构  Client Server

不足: 

1. 如果软件升级, 所有软件都要升级
2. 维护麻烦: 需要维护每一台软件
3. 每一台客户都需要安装客户端软件

#### BS 架构  Broswer Serve

服务端自己升级, 只需服务器自己升级

客户端可以通过浏览器直接访问服务端

### 3. Tomcat解压目录

bin :主要存放可执行文件(startup.bat  shutdown.bat)

conf: 配置文件( server.xml )

lib: Tomcat依赖的jar文件

log: 日志文件(出错会记录)

temp: 临时文件

webapps: 存放Tomcat可执行的项目(将我们开发的项目放入该文件夹)

work: 存放由jsp翻译成的java,以及编译成的class文件

​           jsp ->java ->class

### 4. 配置Tomcat

1. 配置jdk (使用Tomcat必须配置JAVA_HOME)       java_home   class_path    path   
2. 配置Tomcat   需要配置cataina_home

双击bin/startup.bat启动tomcat,

常见错误: 可能与其他服务端口号冲突   tomcat默认端口号是8080, 建议修改,此端口比较常见

##### 修改端口号

去配置文件夹conf/server.xml   打开之后大概70行左右

```xml
  <Connector port="8080" protocol="HTTP/1.1"
               connectionTimeout="20000"
               redirectPort="8443" />
```

   3.访问tomcat     浏览器地址栏localhost: [端口号]

​             访问到的页面是webapps/ROOT

常见状态码: 

404 :资源不存在  

200 : 一切正常

403 : 权限不足

3xx : 页面重定向(跳转)

500 : 服务器内部错误(代码有误)

其他编码: 积累见一个记一个

### 5. 自己写项目

在webapps里面新建文件夹project, 必须要有的文件夹是WEB-INF和里面的文件web.xml

WEB-INF里面新建一个classes文件夹和lib文件夹

在project文件夹里面新建文件index.jsp  里面写html

```jsp
<html>
    <head>
        <title>第一个jsp</title>
    </head>
    <body>
        hello jsp,,,,
        
        <%
        //这里面放java代码
        out.print("hello jsp...");
        %>
    </body>
</html>
```

  jsp : 就是在html中嵌套的java代码

在项目/WEB-INF/web.xml里面设置初始页面

```html
<welcom-file-list>
    <welcom-file>
    index.jsp
    </welcom-file>
</welcom-file-list>
```

### 6. 虚拟路径

webapps本身就是一个虚拟路径

**方式一**     *缺点: 需要重启服务器*

将web项目配置到  webapps以外的目录

首先需要进到conf文件夹的server.xml文件(配置文件基本上都在这)

```xml
<Host name="localhost" appBase="webapps" unpackWARs="true" autoDeploy="true">
//本地(localhost)的虚拟路径就是webapps
    
    
    
  <Valve className="org.apache.catalina.valves.AccessLogValve" directory="logs" prefix="localhost_access_log" suffix=".txt" pattern="%h %l %u %t &quot;%r&quot; %s %b" />
    
    //新增虚拟路径----
     <Conttext  dacBase="实际绝对路径"  path="虚拟路径(绝对路径、/相对路径 相对于[webapps])" />

</Host>
```

**方式二**

conf/Catalina/localhost       新建一个 [项目名] .xml

在新建文件中讲上述

```xml
 <Conttext  dacBase="实际绝对路径"  path="虚拟路径(绝对路径、/相对路径 相对于[webapps])" />

```

写在新文件中

*如果是将文件名设置为ROOT.xml 则访问时地址栏中可以省略项目名*

### 7. 虚拟主机

通过www.test.com访问本机

##### 1. conf/server.xml

在engine标签内仿一个新的<host>

```xml
<Host name="localhost" appBase="webapps" unpackWARs="true" autoDeploy="true">
    
    //新增----
<Host appBase="项目实际位置" name="www.test.com" >
    <Context docBase="" path=""  />
    </Host>
```

## 8. 建立一个JSP工程

在Eclipse中创建的Web项目: 浏览器可以直接访问WebContent中的文件, 但是不能通过浏览器直接访问WEB-INF中的文件, 因为WEB-INF的权限比较高, **只能通过跳转来访问**

PS: 并不是所有内部跳转都能访问WEB-INF    因为跳转分为**请求转发**和**重定向**

#### 配置tomcat运行时环境          JS<->Servlet      

1. a.增加一个jar包     tomcat/lib里面有servlet-api.jar    复制到项目里面的JavaResources/src下并且将jar包增加到构建路径  右键  BuildPath  -> add  to Build Path
2. b.直接右键工程, BuildPath   ->configure...->add  Library...   选择serve runtime  增加上tomcat然后点击apply

#### 统一字符集编码    建议使用国际统一编码  utf-8大小写都可

设置jsp文件的编码(jsp文件中的pageEncoding属性):   jsp -> java

设置浏览器读取jsp文件的编码(jsp文件中content属性)     

文本编码  (文件另存为时的编码) 

- 将整个eclipse 文件的编码统一设置  window->preferences->jsp Files -> Encoding改成utf-8

- 设置某一个项目  右键项目找到preferenses  for my jspProject

- 设置单独文件  同上

  

