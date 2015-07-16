.class public LAY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/FamousActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/FamousActivity;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, LAY;->a:Lcom/yik/yak/ui/activity/FamousActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, LAY;->a:Lcom/yik/yak/ui/activity/FamousActivity;

    iget-object v1, p0, LAY;->a:Lcom/yik/yak/ui/activity/FamousActivity;

    invoke-static {v1}, Lcom/yik/yak/ui/activity/FamousActivity;->a(Lcom/yik/yak/ui/activity/FamousActivity;)Lcom/yik/yak/data/models/Yak;

    move-result-object v1

    iget-object v2, p0, LAY;->a:Lcom/yik/yak/ui/activity/FamousActivity;

    invoke-static {v2}, Lcom/yik/yak/ui/activity/FamousActivity;->b(Lcom/yik/yak/ui/activity/FamousActivity;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yik/yak/ui/activity/FamousActivity;->a(Lcom/yik/yak/ui/activity/FamousActivity;Lcom/yik/yak/data/models/Yak;IZ)V

    .line 159
    return-void
.end method
