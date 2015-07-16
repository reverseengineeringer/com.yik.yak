.class public LCS;
.super LFw;
.source "SourceFile"


# instance fields
.field final synthetic a:LDp;

.field final synthetic b:Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;LDd;Landroid/view/View;ILDp;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, LCS;->b:Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;

    iput-object p5, p0, LCS;->a:LDp;

    invoke-direct {p0, p2, p3, p4}, LFw;-><init>(LDd;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public a(LDd;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, LCS;->b:Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;

    iget-object v1, p0, LCS;->a:LDp;

    invoke-virtual {v0, v1, p2, p3}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;->broadcastClick(LDp;Landroid/view/View;I)V

    .line 34
    return-void
.end method

.method public b(LDd;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, LCS;->b:Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;

    iget-object v1, p0, LCS;->a:LDp;

    invoke-virtual {v0, v1, p2, p3}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;->broadcastDoubleClick(LDp;Landroid/view/View;I)V

    .line 39
    return-void
.end method
