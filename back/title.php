
<div style="width:99%; height:87%; margin:auto; overflow:auto; border:#666 1px solid;">
    <p class="t cent botli"><?=$Str->header;?></p>
    <form method="post" action="./api/edit.php">
        <table width="100%">
            <tbody>
                <tr class="yel">
                    <td width="45%"><?=$Str->tdHead[0];?></td>
                    <td width="23%"><?=$Str->tdHead[1];?></td>
                    <td width="7%">顯示</td>
                    <td width="7%">刪除</td>
                    <td></td>
                </tr>
                <?php 
                    
                    $rows=$Title->all();
                    foreach($rows as $row){
                ?>
                <tr >
                    <td>
                        <img src="./img/<?=$row['img'];?>" style="width:300px;heigh:30px;">
                    </td>
                    <td>
                        <input type="text" name="text[]" value="<?=$row['text'];?>">
                    </td>
                    <td>
                        <input type="radio" name="sh" value="<?=$row['id'];?>" <?=($row['sh']==1)?'checked':'';?>>
                    </td>
                    <td>
                        <input type="checkbox" name="del[]" value="<?=$row['id'];?>">
                    </td>
                    <td>
                        <input type="button" value="<?=$Str->updateImg;?>"
                            onclick="op('#cover','#cvr','./modal/upload.php?id=<?=$row['id'];?>&table=<?=$Str->table;?>')">
                    </td>
                </tr>
                    <input type="hidden" name="id[]" value="<?=$row['id'];?>">
                <?php 
                }
                ?>
            </tbody>
        </table>
        <table style="margin-top:40px; width:70%;">
            <tbody>
                <tr>
                    <td width="200px">
                        <input type="button"
                            onclick="op('#cover','#cvr','./modal/<?=$Str->table;?>.php?do=<?=$Str->table;?>')" value="<?=$Str->addBtn;?>">
                    </td>
                    <td class="cent"><input type="submit" value="修改確定"><input type="reset" value="重置"></td>
                </tr>
            </tbody>
        </table>
        <input type="hidden" name="table" value="<?=$do;?>">
    </form>
</div>