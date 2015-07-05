.class public LBt;
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
    .line 42
    iput-object p1, p0, LBt;->a:Lcom/yik/yak/ui/activity/PhotoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, LBt;->a:Lcom/yik/yak/ui/activity/PhotoActivity;

    new-instance v1, LGg;

    iget-object v2, p0, LBt;->a:Lcom/yik/yak/ui/activity/PhotoActivity;

    iget-object v2, v2, Lcom/yik/yak/ui/activity/PhotoActivity;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, LGg;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, v0, Lcom/yik/yak/ui/activity/PhotoActivity;->b:LGg;

    .line 46
    return-void
.end method
