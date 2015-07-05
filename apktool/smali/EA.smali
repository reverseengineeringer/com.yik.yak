.class LEA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:LEy;


# direct methods
.method constructor <init>(LEy;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, LEA;->a:LEy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, LEA;->a:LEy;

    iget-object v0, v0, LEy;->b:LEB;

    invoke-virtual {v0, p3}, LEB;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yik/yak/data/models/PeekLocation;

    .line 162
    invoke-virtual {v0}, Lcom/yik/yak/data/models/PeekLocation;->isSectionHeader()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/yik/yak/data/models/PeekLocation;->section:Ljava/lang/String;

    const-string v2, "My Peeks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/yik/yak/data/models/PeekLocation;->location:Ljava/lang/String;

    const-string v2, "Click here to discover new places!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, LEA;->a:LEy;

    iget-object v1, v1, LEy;->c:Landroid/os/Vibrator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 166
    iget-object v1, p0, LEA;->a:LEy;

    invoke-static {v1, v0}, LEy;->a(LEy;Lcom/yik/yak/data/models/PeekLocation;)V

    .line 169
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
