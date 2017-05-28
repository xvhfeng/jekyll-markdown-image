# jekyll-markdown-image

## 可以做什么？
这个插件主要用来解决当你使用markdown在jekyll中写blog时，在插入图片等静态资源的时候被特别恶心到情况。  
该插件在jekyll编译blog，将markdown生成html的时候，将同时cp和markdown文件相同目录的静态资源文件到html的文件夹内。

## 怎么做？
1. 将copy_static_file.r文件放入本地jekyll的_plugins目录；
2. 在_post中为你的blog新建一个文件夹；  
3. 正常使用markdown写blog，当需要使用图片的时候，将图片cp到markdown存在的文件夹，保证图片和markdown文件同一文件夹；
4. 在mardown中，你可以这样引用图片\![image]\(img.jpg);  
5. 使用jekyll build编译blog，并且发布_site目录；

## 缺点
1. 不能在发布markdown，使用github的jekyll引擎生成blog了，因为github pages服务禁止第三方插件；  
2. 如果你的blog主题中，列表页也有文章的大纲显示并且碰巧大纲内部显示图片的话，这将出现问题，图片将不能正常的在列表页中显示；
3. 在_post中，必须为每篇blog新建一个文件夹，否则无法放置图片和markdown；  
4. 对于jekyll的permalink的配置一定要正确，千奇百怪的配置不一定可用，我的配置是/blog/:year/:title/，注意，最后那个目录分隔符 “/” 一定要带;


## what can do?

this plugin deal with the problem of upload static resource use in markdown.  

this is a manager function for static resource that from author.when you publish blog with markdown in the jekyll to github pages,the plugin will help you copy the static resource in the same floder with the markdown file.  
  
## how do?

1. put copy_static_file.rb file in to _plugins floder;  
2. create the new floder for the new blog; 
3. wirte blog with markdown in the new floder,if you use image or others in the markdown,you can copy that in the same floder with the markdown;  
4. in markdown,you can use like this \![image]\(img.jpg);  
5. when you over the blog,use "jekyll build" build the blog;  
6. publish the _site floder;

## what cannt do?
1. you can publish markdown file then use github's jekyll build html,you only publish _site floder,(because No third party plug-in in github );  
2. if you show the static resource in the list-page,the static resource cannt normally show;  
3. in the _posts floder,must keep one blog one floder;  
4. must look out the "permalink" config-item in the _config.yml.it must end with "/" like this "blog/:year/:title/";

