.class public LBu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/PeekSearchActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/PeekSearchActivity;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, LBu;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    const/16 v2, 0x42

    if-eq p2, v2, :cond_0

    const/16 v2, 0x54

    if-ne p2, v2, :cond_1

    .line 155
    :cond_0
    :try_start_0
    iget-object v2, p0, LBu;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->d(Lcom/yik/yak/ui/activity/PeekSearchActivity;)LBA;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, LBA;->a:Z

    .line 156
    iget-object v2, p0, LBu;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->d(Lcom/yik/yak/ui/activity/PeekSearchActivity;)LBA;

    move-result-object v2

    invoke-virtual {v2}, LBA;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    iget-object v3, p0, LBu;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v3}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->e(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, LBu;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->e(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 159
    invoke-static {}, LHa;->a()LHa;

    move-result-object v2

    iget-object v3, p0, LBu;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v3}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->e(Lcom/yik/yak/ui/activity/PeekSearchActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LHa;->m(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return v0

    .line 162
    :catch_0
    move-exception v2

    iget-object v2, p0, LBu;->a:Lcom/yik/yak/ui/activity/PeekSearchActivity;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/PeekSearchActivity;->d(Lcom/yik/yak/ui/activity/PeekSearchActivity;)LBA;

    move-result-object v2

    iput-boolean v1, v2, LBA;->a:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 166
    goto :goto_0
.end method
