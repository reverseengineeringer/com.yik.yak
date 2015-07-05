.class public LCy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/YakarmaActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/YakarmaActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, LCy;->a:Lcom/yik/yak/ui/activity/YakarmaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, LCy;->a:Lcom/yik/yak/ui/activity/YakarmaActivity;

    const v1, 0x7f080162

    const v2, 0x7f080163

    invoke-static {v0, v1, v2}, LGM;->a(Landroid/content/Context;II)V

    .line 83
    return-void
.end method
