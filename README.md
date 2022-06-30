# TablePlainSectionView
![Importnew](https://github.com/rongtian/TablePlainSectionView/blob/master/Untitled.gif?raw=true)


实现UITableView Plain样式section headView和tableview的一起滑动，

在自定义HeadSectionView中重写setFrame方法：

<pre class=”brush: java; gutter: true;”>
- (void)setFrame:(CGRect)frame{
    CGRect sectionRect = [self.tableView rectForSection:self.section];
    CGRect newFrame = CGRectMake(CGRectGetMinX(frame), CGRectGetMinY(sectionRect), CGRectGetWidth(frame), CGRectGetHeight(frame)); [super setFrame:newFrame];
}
</pre>

