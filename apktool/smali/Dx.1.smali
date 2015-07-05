.class LDx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LDv;


# direct methods
.method constructor <init>(LDv;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, LDx;->a:LDv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, LDx;->a:LDv;

    iget-object v0, v0, LDv;->c:Lcom/yik/yak/ui/fragment/CommentFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->g:Z

    .line 335
    return-void
.end method
