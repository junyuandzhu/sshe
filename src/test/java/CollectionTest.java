import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;


public class CollectionTest {
	//Set集合不可以放重复数据，List可以，Map主要存放的是键值对，其中key(主键)不可以重复。
  public static void main(String[] args) {

    List<String> list = new ArrayList<String>();
    list.add("1");
    list.add("1");
    list.add("2");
    list.add("3");

    if( list.contains("1") )
      System.out.println("yes one");

    Set<String> set = new HashSet<String>();
    set.add("1");
    set.add("1");
    set.add("2");
    set.add("3");
    set.add("5");
    set.add("3");
    set.add("4");
    if( set.contains("2") )
      System.out.println("yes another");

    Map<String,Integer> map = new HashMap<String,Integer>();
    map.put("map1", 1);
    map.put("map2", 1);
    map.put("map3", 3);
    map.put("map1", 2);
    map.put("map1", 1);

    if( map.containsKey("map1") )
      System.out.println("yes the key");

    System.out.println(list);
    System.out.println(set);
    System.out.println(map);

    /****** 循环输出  ******/
    System.out.println("---------------list-------------");
    for( String str : list ){
      System.out.println(str);
    }
    for( int i=0; i<list.size(); i++ ){
      System.out.println(i+":"+list.get(i));
    }
    /******此种方式效率最高  ******/
    Iterator<String> it = list.iterator();
    while ( it.hasNext() ){
      System.out.println(it.next());
    }
    System.out.println("---------------set-------------");
    for( String str : set ){
      System.out.println(str);
    }
    Iterator<String> setIt = set.iterator();
    while ( setIt.hasNext() ){
      System.out.println(setIt.next());
    }
    System.out.println("---------------map（keyset及entryset）-------------");
    for( String str : map.keySet() ){
      System.out.println("key:"+str+"\tvalue:"+map.get(str));
    }
    /******** 此种方式快 *******/
    for( Entry<String, Integer> entry : map.entrySet() ){
      System.out.println("key:"+entry.getKey()+"\tvalue:"+entry.getValue());
    }

    /******** 集合之间的操作 *******/
    List<List<String>> list1 = new ArrayList<List<String>>();
    List<String> list2 = new ArrayList<String>();
    list2.add("one");
    list2.add("two");
    list2.add("three");
    list2.add("1");

    list1.add(list);
    System.out.println("list1:\t:"+list1);
    list1.add(list2);
    System.out.println("list1:\t:"+list1);
    list1.addAll(list1);
    System.out.println("list1:\t:"+list1);
    list.retainAll(list2);
    System.out.println("list:\t:"+list);

    Set<Set<String>> set1 = new HashSet<Set<String>>();
    Set<String> set2 = new HashSet<String>();
    set2.add("one");
    set2.add("two");
    set2.add("three");

    set1.add(set);
    set1.add(set2);
    set1.addAll(set1);
    System.out.println(set1);
    set.retainAll(set2);
    System.out.println(set);

    Map<String,Map<String,Integer>> mapNew = new HashMap<String,Map<String,Integer>>();
    mapNew.put("new1", map);
    mapNew.putAll(mapNew);
    System.out.println(mapNew);

  }

}