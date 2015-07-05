.class public LCE;
.super LEQ;
.source "SourceFile"


# instance fields
.field final synthetic a:LDb;

.field final synthetic b:Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;LCQ;Landroid/view/View;ILDb;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, LCE;->b:Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;

    iput-object p5, p0, LCE;->a:LDb;

    invoke-direct {p0, p2, p3, p4}, LEQ;-><init>(LCQ;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public a(LCQ;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, LCE;->b:Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;

    iget-object v1, p0, LCE;->a:LDb;

    invoke-virtual {v0, v1, p2, p3}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;->broadcastClick(LDb;Landroid/view/View;I)V

    .line 34
    return-void
.end method

.method public b(LCQ;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, LCE;->b:Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;

    iget-object v1, p0, LCE;->a:LDb;

    invoke-virtual {v0, v1, p2, p3}, Lcom/yik/yak/ui/adapter/DoubleClickRecyclerViewAdapter;->broadcastDoubleClick(LDb;Landroid/view/View;I)V

    .line 39
    return-void
.end method
