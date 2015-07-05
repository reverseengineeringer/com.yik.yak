.class Lcom/parse/ParseCommandCache$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommandCache;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommandCache;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/parse/ParseCommandCache$2;->this$0:Lcom/parse/ParseCommandCache;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/parse/ParseCommandCache$2;->this$0:Lcom/parse/ParseCommandCache;

    # invokes: Lcom/parse/ParseCommandCache;->runLoop()V
    invoke-static {v0}, Lcom/parse/ParseCommandCache;->access$000(Lcom/parse/ParseCommandCache;)V

    .line 151
    return-void
.end method
