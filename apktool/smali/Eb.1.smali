.class LEb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LDZ;


# direct methods
.method constructor <init>(LDZ;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, LEb;->a:LDZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, LEb;->a:LDZ;

    iget-object v0, v0, LDZ;->c:Lcom/yik/yak/ui/fragment/CommentFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yik/yak/ui/fragment/CommentFragment;->h:Z

    .line 338
    return-void
.end method
