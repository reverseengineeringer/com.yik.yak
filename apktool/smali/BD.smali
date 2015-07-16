.class public LBD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# instance fields
.field final synthetic a:Lcom/yik/yak/ui/activity/PhotoActivity;


# direct methods
.method public constructor <init>(Lcom/yik/yak/ui/activity/PhotoActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, LBD;->a:Lcom/yik/yak/ui/activity/PhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, LBD;->a:Lcom/yik/yak/ui/activity/PhotoActivity;

    new-instance v1, LGO;

    iget-object v2, p0, LBD;->a:Lcom/yik/yak/ui/activity/PhotoActivity;

    iget-object v2, v2, Lcom/yik/yak/ui/activity/PhotoActivity;->d:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, LGO;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, v0, Lcom/yik/yak/ui/activity/PhotoActivity;->b:LGO;

    .line 169
    return-void
.end method
