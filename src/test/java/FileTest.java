
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

//文件的读写

public class FileTest {
    static final Log logger = LogFactory.getLog(FileTest.class);
    public static void main(String[] args) throws IOException {
        /****** 读入的数据存入list<>中******/
        List<String> Data=new ArrayList<String>();
        /****** 创建所要读的文本******/
        File file = new File("E:\\钱洋个人\\网络爬虫培训\\attentionword.txt");
        /****** FileReader顺序读取文件*****/
        FileReader fileReader = new FileReader(file);
        /****** 根据FileReader创建的实例******/
        BufferedReader bufferedReader =new BufferedReader(fileReader);
        String s=null;
        while ((s=bufferedReader.readLine())!=null) {
            Data.add(s);
            logger.info(s);
        }
        bufferedReader.close();
        fileReader.close();
        /****** 文件读取第二种方式  ******/
        BufferedReader reader = new BufferedReader( new InputStreamReader( new FileInputStream( new File( "E:\\钱洋个人\\网络爬虫培训\\b.txt")),"utf-8"));
        String s1=null;
        while ((s1=reader.readLine())!=null) {
            Data.add(s1);
            logger.info(s1);
        }
        reader.close();

        /****** 文件写入第一种方式  ******/
        /*File file1=new File("D:\\钱洋个人\\网络爬虫培训\\b.txt","utf-8");
        FileOutputStream fileOutputStream=new FileOutputStream(file1);
        OutputStreamWriter outputStreamWriter=new OutputStreamWriter(fileOutputStream);
        BufferedWriter bufferedWriter1=new BufferedWriter(outputStreamWriter);*/
        /****** 文件写入快捷方式******/
        BufferedWriter writer = new BufferedWriter( new OutputStreamWriter( new FileOutputStream( new File("D:\\钱洋个人\\网络爬虫培训\\d.txt")),"utf-8"));
        /****** map的使用 ******/
        Map<Integer,String> map=new HashMap<Integer,String>();
        /****** map添加数据 ******/
        for (String data : Data){
            map.put(Integer.parseInt(data.split("\\s")[0]), data.substring(1,data.length()));

        }
        /****** map遍历数据 ******/
        for( Integer key : map.keySet() ){
            System.out.println("key:"+key+"\tvalue:"+map.get(key));
            writer.append("key:"+key+"\tvalue:"+map.get(key)+"\r\n");
        }
        writer.close();
    }
}